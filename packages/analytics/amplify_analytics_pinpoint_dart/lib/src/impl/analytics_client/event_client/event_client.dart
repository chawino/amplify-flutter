import 'package:built_collection/built_collection.dart';
import 'package:uuid/uuid.dart';

import '../../../sdk/pinpoint.dart';
import '../endpoint_client/endpoint_client.dart';
import '../shared_prefs.dart';
import 'events_storage_adapter.dart';

/// Manage sending of AnalyticsEvent
///
///
///
///

class EventClient {
  final EventStorageAdapter _storageAdapter = EventStorageAdapter();

  final String _appId;
  final PinpointClient _pinpointClient;
  final EndpointClient _endpointClient;
  final SharedPrefs _sharedPrefs;

  final _uuid = const Uuid();

  EventClient(this._appId, this._sharedPrefs, this._endpointClient,
      this._pinpointClient);

  void recordEvent(Event event) {
    _storageAdapter.saveEvent(event);
  }

  Future<void> flushEvents() async {
    List<Event> eventsToFlush = await _storageAdapter.retrieveEvents();

    var eventsMap = <String, Event>{};
    for (var event in eventsToFlush) {
      eventsMap[_uuid.v1()] = event;
      // How event ids are created in Android ->
      //  a UUID must be sent as key for eventbatch, Android
      //  InternalEvent stores this, but it is converted to a
      //  Pinpoint Event class on Request object creation
    }

    EventsBatch batch = EventsBatch(
        endpoint: _endpointClient.getPublicEndpoint(),
        events: BuiltMap<String, Event>(eventsMap));
    // TODO : handle response object???

    var batchItems =
        BuiltMap<String, EventsBatch>({_sharedPrefs.getUniqueId(): batch});
    await _pinpointClient.putEvents(PutEventsRequest(
        applicationId: _appId,
        eventsRequest: EventsRequest(batchItem: batchItems)));
  }
}
