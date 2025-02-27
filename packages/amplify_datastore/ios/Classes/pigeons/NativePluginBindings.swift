// 
// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0
// Autogenerated from Pigeon (v10.1.2), do not edit directly.
// See also: https://pub.dev/packages/pigeon

import Foundation
#if os(iOS)
import Flutter
#elseif os(macOS)
import FlutterMacOS
#else
#error("Unsupported platform.")
#endif

private func wrapResult(_ result: Any?) -> [Any?] {
  return [result]
}

private func wrapError(_ error: Any) -> [Any?] {
  if let flutterError = error as? FlutterError {
    return [
      flutterError.code,
      flutterError.message,
      flutterError.details
    ]
  }
  return [
    "\(error)",
    "\(type(of: error))",
    "Stacktrace: \(Thread.callStackSymbols)"
  ]
}

private func nilOrValue<T>(_ value: Any?) -> T? {
  if value is NSNull { return nil }
  return value as! T?
}

/// Generated class from Pigeon that represents data sent in messages.
struct NativeAuthSession {
  var isSignedIn: Bool
  var userSub: String? = nil
  var userPoolTokens: NativeUserPoolTokens? = nil
  var identityId: String? = nil
  var awsCredentials: NativeAWSCredentials? = nil

  static func fromList(_ list: [Any?]) -> NativeAuthSession? {
    let isSignedIn = list[0] as! Bool
    let userSub: String? = nilOrValue(list[1])
    var userPoolTokens: NativeUserPoolTokens? = nil
    if let userPoolTokensList: [Any?] = nilOrValue(list[2]) {
      userPoolTokens = NativeUserPoolTokens.fromList(userPoolTokensList)
    }
    let identityId: String? = nilOrValue(list[3])
    var awsCredentials: NativeAWSCredentials? = nil
    if let awsCredentialsList: [Any?] = nilOrValue(list[4]) {
      awsCredentials = NativeAWSCredentials.fromList(awsCredentialsList)
    }

    return NativeAuthSession(
      isSignedIn: isSignedIn,
      userSub: userSub,
      userPoolTokens: userPoolTokens,
      identityId: identityId,
      awsCredentials: awsCredentials
    )
  }
  func toList() -> [Any?] {
    return [
      isSignedIn,
      userSub,
      userPoolTokens?.toList(),
      identityId,
      awsCredentials?.toList(),
    ]
  }
}

/// Generated class from Pigeon that represents data sent in messages.
struct NativeAuthUser {
  var userId: String
  var username: String

  static func fromList(_ list: [Any?]) -> NativeAuthUser? {
    let userId = list[0] as! String
    let username = list[1] as! String

    return NativeAuthUser(
      userId: userId,
      username: username
    )
  }
  func toList() -> [Any?] {
    return [
      userId,
      username,
    ]
  }
}

/// Generated class from Pigeon that represents data sent in messages.
struct NativeUserPoolTokens {
  var accessToken: String
  var refreshToken: String
  var idToken: String

  static func fromList(_ list: [Any?]) -> NativeUserPoolTokens? {
    let accessToken = list[0] as! String
    let refreshToken = list[1] as! String
    let idToken = list[2] as! String

    return NativeUserPoolTokens(
      accessToken: accessToken,
      refreshToken: refreshToken,
      idToken: idToken
    )
  }
  func toList() -> [Any?] {
    return [
      accessToken,
      refreshToken,
      idToken,
    ]
  }
}

/// Generated class from Pigeon that represents data sent in messages.
struct NativeAWSCredentials {
  var accessKeyId: String
  var secretAccessKey: String
  var sessionToken: String? = nil
  var expirationIso8601Utc: String? = nil

  static func fromList(_ list: [Any?]) -> NativeAWSCredentials? {
    let accessKeyId = list[0] as! String
    let secretAccessKey = list[1] as! String
    let sessionToken: String? = nilOrValue(list[2])
    let expirationIso8601Utc: String? = nilOrValue(list[3])

    return NativeAWSCredentials(
      accessKeyId: accessKeyId,
      secretAccessKey: secretAccessKey,
      sessionToken: sessionToken,
      expirationIso8601Utc: expirationIso8601Utc
    )
  }
  func toList() -> [Any?] {
    return [
      accessKeyId,
      secretAccessKey,
      sessionToken,
      expirationIso8601Utc,
    ]
  }
}

private class NativeAuthPluginCodecReader: FlutterStandardReader {
  override func readValue(ofType type: UInt8) -> Any? {
    switch type {
      case 128:
        return NativeAWSCredentials.fromList(self.readValue() as! [Any?])
      case 129:
        return NativeAuthSession.fromList(self.readValue() as! [Any?])
      case 130:
        return NativeUserPoolTokens.fromList(self.readValue() as! [Any?])
      default:
        return super.readValue(ofType: type)
    }
  }
}

private class NativeAuthPluginCodecWriter: FlutterStandardWriter {
  override func writeValue(_ value: Any) {
    if let value = value as? NativeAWSCredentials {
      super.writeByte(128)
      super.writeValue(value.toList())
    } else if let value = value as? NativeAuthSession {
      super.writeByte(129)
      super.writeValue(value.toList())
    } else if let value = value as? NativeUserPoolTokens {
      super.writeByte(130)
      super.writeValue(value.toList())
    } else {
      super.writeValue(value)
    }
  }
}

private class NativeAuthPluginCodecReaderWriter: FlutterStandardReaderWriter {
  override func reader(with data: Data) -> FlutterStandardReader {
    return NativeAuthPluginCodecReader(data: data)
  }

  override func writer(with data: NSMutableData) -> FlutterStandardWriter {
    return NativeAuthPluginCodecWriter(data: data)
  }
}

class NativeAuthPluginCodec: FlutterStandardMessageCodec {
  static let shared = NativeAuthPluginCodec(readerWriter: NativeAuthPluginCodecReaderWriter())
}

/// Generated class from Pigeon that represents Flutter messages that can be called from Swift.
class NativeAuthPlugin {
  private let binaryMessenger: FlutterBinaryMessenger
  init(binaryMessenger: FlutterBinaryMessenger){
    self.binaryMessenger = binaryMessenger
  }
  var codec: FlutterStandardMessageCodec {
    return NativeAuthPluginCodec.shared
  }
  func fetchAuthSession(completion: @escaping (NativeAuthSession) -> Void) {
    let channel = FlutterBasicMessageChannel(name: "dev.flutter.pigeon.NativeAuthPlugin.fetchAuthSession", binaryMessenger: binaryMessenger, codec: codec)
    channel.sendMessage(nil) { response in
      let result = response as! NativeAuthSession
      completion(result)
    }
  }
}
/// Generated class from Pigeon that represents Flutter messages that can be called from Swift.
class NativeApiPlugin {
  private let binaryMessenger: FlutterBinaryMessenger
  init(binaryMessenger: FlutterBinaryMessenger){
    self.binaryMessenger = binaryMessenger
  }
  func getLatestAuthToken(providerName providerNameArg: String, completion: @escaping (String?) -> Void) {
    let channel = FlutterBasicMessageChannel(name: "dev.flutter.pigeon.NativeApiPlugin.getLatestAuthToken", binaryMessenger: binaryMessenger)
    channel.sendMessage([providerNameArg] as [Any?]) { response in
      let result: String? = nilOrValue(response)
      completion(result)
    }
  }
}
/// Generated protocol from Pigeon that represents a handler of messages from Flutter.
protocol NativeAmplifyBridge {
  func configure(version: String, config: String, completion: @escaping (Result<Void, Error>) -> Void)
}

/// Generated setup class from Pigeon to handle messages through the `binaryMessenger`.
class NativeAmplifyBridgeSetup {
  /// The codec used by NativeAmplifyBridge.
  /// Sets up an instance of `NativeAmplifyBridge` to handle messages through the `binaryMessenger`.
  static func setUp(binaryMessenger: FlutterBinaryMessenger, api: NativeAmplifyBridge?) {
    let configureChannel = FlutterBasicMessageChannel(name: "dev.flutter.pigeon.NativeAmplifyBridge.configure", binaryMessenger: binaryMessenger)
    if let api = api {
      configureChannel.setMessageHandler { message, reply in
        let args = message as! [Any?]
        let versionArg = args[0] as! String
        let configArg = args[1] as! String
        api.configure(version: versionArg, config: configArg) { result in
          switch result {
            case .success:
              reply(wrapResult(nil))
            case .failure(let error):
              reply(wrapError(error))
          }
        }
      }
    } else {
      configureChannel.setMessageHandler(nil)
    }
  }
}
private class NativeAuthBridgeCodecReader: FlutterStandardReader {
  override func readValue(ofType type: UInt8) -> Any? {
    switch type {
      case 128:
        return NativeAuthUser.fromList(self.readValue() as! [Any?])
      default:
        return super.readValue(ofType: type)
    }
  }
}

private class NativeAuthBridgeCodecWriter: FlutterStandardWriter {
  override func writeValue(_ value: Any) {
    if let value = value as? NativeAuthUser {
      super.writeByte(128)
      super.writeValue(value.toList())
    } else {
      super.writeValue(value)
    }
  }
}

private class NativeAuthBridgeCodecReaderWriter: FlutterStandardReaderWriter {
  override func reader(with data: Data) -> FlutterStandardReader {
    return NativeAuthBridgeCodecReader(data: data)
  }

  override func writer(with data: NSMutableData) -> FlutterStandardWriter {
    return NativeAuthBridgeCodecWriter(data: data)
  }
}

class NativeAuthBridgeCodec: FlutterStandardMessageCodec {
  static let shared = NativeAuthBridgeCodec(readerWriter: NativeAuthBridgeCodecReaderWriter())
}

/// Generated protocol from Pigeon that represents a handler of messages from Flutter.
protocol NativeAuthBridge {
  func addAuthPlugin(completion: @escaping (Result<Void, Error>) -> Void)
  func updateCurrentUser(user: NativeAuthUser?) throws
}

/// Generated setup class from Pigeon to handle messages through the `binaryMessenger`.
class NativeAuthBridgeSetup {
  /// The codec used by NativeAuthBridge.
  static var codec: FlutterStandardMessageCodec { NativeAuthBridgeCodec.shared }
  /// Sets up an instance of `NativeAuthBridge` to handle messages through the `binaryMessenger`.
  static func setUp(binaryMessenger: FlutterBinaryMessenger, api: NativeAuthBridge?) {
    let addAuthPluginChannel = FlutterBasicMessageChannel(name: "dev.flutter.pigeon.NativeAuthBridge.addAuthPlugin", binaryMessenger: binaryMessenger, codec: codec)
    if let api = api {
      addAuthPluginChannel.setMessageHandler { _, reply in
        api.addAuthPlugin() { result in
          switch result {
            case .success:
              reply(wrapResult(nil))
            case .failure(let error):
              reply(wrapError(error))
          }
        }
      }
    } else {
      addAuthPluginChannel.setMessageHandler(nil)
    }
    let updateCurrentUserChannel = FlutterBasicMessageChannel(name: "dev.flutter.pigeon.NativeAuthBridge.updateCurrentUser", binaryMessenger: binaryMessenger, codec: codec)
    if let api = api {
      updateCurrentUserChannel.setMessageHandler { message, reply in
        let args = message as! [Any?]
        let userArg: NativeAuthUser? = nilOrValue(args[0])
        do {
          try api.updateCurrentUser(user: userArg)
          reply(wrapResult(nil))
        } catch {
          reply(wrapError(error))
        }
      }
    } else {
      updateCurrentUserChannel.setMessageHandler(nil)
    }
  }
}
/// Generated protocol from Pigeon that represents a handler of messages from Flutter.
protocol NativeApiBridge {
  func addApiPlugin(authProvidersList: [String], completion: @escaping (Result<Void, Error>) -> Void)
}

/// Generated setup class from Pigeon to handle messages through the `binaryMessenger`.
class NativeApiBridgeSetup {
  /// The codec used by NativeApiBridge.
  /// Sets up an instance of `NativeApiBridge` to handle messages through the `binaryMessenger`.
  static func setUp(binaryMessenger: FlutterBinaryMessenger, api: NativeApiBridge?) {
    let addApiPluginChannel = FlutterBasicMessageChannel(name: "dev.flutter.pigeon.NativeApiBridge.addApiPlugin", binaryMessenger: binaryMessenger)
    if let api = api {
      addApiPluginChannel.setMessageHandler { message, reply in
        let args = message as! [Any?]
        let authProvidersListArg = args[0] as! [String]
        api.addApiPlugin(authProvidersList: authProvidersListArg) { result in
          switch result {
            case .success:
              reply(wrapResult(nil))
            case .failure(let error):
              reply(wrapError(error))
          }
        }
      }
    } else {
      addApiPluginChannel.setMessageHandler(nil)
    }
  }
}
