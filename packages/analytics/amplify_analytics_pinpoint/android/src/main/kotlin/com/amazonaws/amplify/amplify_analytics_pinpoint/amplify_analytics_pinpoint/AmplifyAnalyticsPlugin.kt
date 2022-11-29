
package com.amazonaws.amplify.amplify_analytics_pinpoint.amplify_analytics_pinpoint

import android.content.Context
import android.content.SharedPreferences
import androidx.annotation.NonNull
import io.flutter.embedding.engine.plugins.FlutterPlugin

class AmplifyAnalyticsPlugin: FlutterPlugin, Messages.PigeonDataProvider {

    lateinit var context: Context
    lateinit var sharedPrefs: SharedPreferences

    companion object {
        private const val PINPOINT_SHARED_PREFS_SUFFIX = "515d6767-01b7-49e5-8273-c8d11b0f331d"

        private const val UNIQUE_ID_KEY = "UniqueId";
        private const val CUSTOM_ATTRIBUTES_KEY = "ENDPOINT_PROFILE_CUSTOM_ATTRIBUTES";
        private const val CUSTOM_METRICS_KEY = "ENDPOINT_PROFILE_CUSTOM_METRICS";
    }

    override fun onAttachedToEngine(@NonNull binding: FlutterPlugin.FlutterPluginBinding) {
        context = binding.applicationContext
        Messages.PigeonDataProvider.setup(binding.binaryMessenger, this)
    }

    override fun onDetachedFromEngine(@NonNull binding: FlutterPlugin.FlutterPluginBinding) {
        Messages.PigeonDataProvider.setup(binding.binaryMessenger, null)
    }

    override fun initialize(pinpointAppId: String, result: Messages.Result<Void>){
        sharedPrefs = context.getSharedPreferences(
            "${pinpointAppId}$PINPOINT_SHARED_PREFS_SUFFIX",
            Context.MODE_PRIVATE
        )

        print("TESTING THE RESULT")
        print(sharedPrefs.all.toString())

        result.success(null)
    }

    override fun getEndpointId(result: Messages.Result<String?>){
        result.success(sharedPrefs.getString(UNIQUE_ID_KEY, null))
    }

    override fun getGlobalAttributes(result: Messages.Result<String?>){
        result.success(sharedPrefs.getString(CUSTOM_ATTRIBUTES_KEY, null))
    }

    override fun getGlobalMetrics(result: Messages.Result<String?>){
        result.success(sharedPrefs.getString(CUSTOM_METRICS_KEY, null))
    }

    override fun deleteLegacyData(result: Messages.Result<Void>){
        sharedPrefs.edit().clear()
        result.success(null)
    }

}