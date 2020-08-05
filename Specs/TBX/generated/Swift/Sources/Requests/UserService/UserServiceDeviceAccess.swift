//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

extension TBX.UserService {

    /** Check if the Device has access to execute an action in many URNs */
    public enum UserServiceDeviceAccess {

        public static let service = APIService<Response>(id: "UserService.deviceAccess", tag: "UserService", method: "GET", path: "/UserServices/device/{device}/access", hasBody: false, securityRequirements: [])

        public final class Request: APIRequest<Response> {

            public struct Options {

                /** The device token */
                public var device: String

                /** list of urn separated by pipe "|", each urn must start with 'urn:' */
                public var urn: String

                /** Value that identifies what type of action the CP user is executing. */
                public var action: String

                /** The client IP, is necessary to prevent many user use the same token */
                public var ip: String

                public init(device: String, urn: String, action: String, ip: String) {
                    self.device = device
                    self.urn = urn
                    self.action = action
                    self.ip = ip
                }
            }

            public var options: Options

            public init(options: Options) {
                self.options = options
                super.init(service: UserServiceDeviceAccess.service)
            }

            /// convenience initialiser so an Option doesn't have to be created
            public convenience init(device: String, urn: String, action: String, ip: String) {
                let options = Options(device: device, urn: urn, action: action, ip: ip)
                self.init(options: options)
            }

            public override var path: String {
                return super.path.replacingOccurrences(of: "{" + "device" + "}", with: "\(self.options.device)")
            }

            public override var queryParameters: [String: Any] {
                var params: [String: Any] = [:]
                params["urn"] = options.urn
                params["action"] = options.action
                params["ip"] = options.ip
                return params
            }
        }

        public enum Response: APIResponseValue, CustomStringConvertible, CustomDebugStringConvertible {

            public class Status200: APIModel {

                public var granted: [String]

                public var denied: [String]

                public var failed: [String]

                public var details: [HasAccessToObject]

                public init(granted: [String], denied: [String], failed: [String], details: [HasAccessToObject]) {
                    self.granted = granted
                    self.denied = denied
                    self.failed = failed
                    self.details = details
                }

                public required init(from decoder: Decoder) throws {
                    let container = try decoder.container(keyedBy: StringCodingKey.self)

                    granted = try container.decodeArray("granted")
                    denied = try container.decodeArray("denied")
                    failed = try container.decodeArray("failed")
                    details = try container.decodeArray("details")
                }

                public func encode(to encoder: Encoder) throws {
                    var container = encoder.container(keyedBy: StringCodingKey.self)

                    try container.encode(granted, forKey: "granted")
                    try container.encode(denied, forKey: "denied")
                    try container.encode(failed, forKey: "failed")
                    try container.encode(details, forKey: "details")
                }

                public func isEqual(to object: Any?) -> Bool {
                  guard let object = object as? Status200 else { return false }
                  guard self.granted == object.granted else { return false }
                  guard self.denied == object.denied else { return false }
                  guard self.failed == object.failed else { return false }
                  guard self.details == object.details else { return false }
                  return true
                }

                public static func == (lhs: Status200, rhs: Status200) -> Bool {
                    return lhs.isEqual(to: rhs)
                }
            }

            public class Status400: APIModel {

                public var error: ErrorObject

                public init(error: ErrorObject) {
                    self.error = error
                }

                public required init(from decoder: Decoder) throws {
                    let container = try decoder.container(keyedBy: StringCodingKey.self)

                    error = try container.decode("error")
                }

                public func encode(to encoder: Encoder) throws {
                    var container = encoder.container(keyedBy: StringCodingKey.self)

                    try container.encode(error, forKey: "error")
                }

                public func isEqual(to object: Any?) -> Bool {
                  guard let object = object as? Status400 else { return false }
                  guard self.error == object.error else { return false }
                  return true
                }

                public static func == (lhs: Status400, rhs: Status400) -> Bool {
                    return lhs.isEqual(to: rhs)
                }
            }

            public class Status401: APIModel {

                public var error: ErrorObject

                public init(error: ErrorObject) {
                    self.error = error
                }

                public required init(from decoder: Decoder) throws {
                    let container = try decoder.container(keyedBy: StringCodingKey.self)

                    error = try container.decode("error")
                }

                public func encode(to encoder: Encoder) throws {
                    var container = encoder.container(keyedBy: StringCodingKey.self)

                    try container.encode(error, forKey: "error")
                }

                public func isEqual(to object: Any?) -> Bool {
                  guard let object = object as? Status401 else { return false }
                  guard self.error == object.error else { return false }
                  return true
                }

                public static func == (lhs: Status401, rhs: Status401) -> Bool {
                    return lhs.isEqual(to: rhs)
                }
            }

            public class Status404: APIModel {

                public var error: ErrorObject

                public init(error: ErrorObject) {
                    self.error = error
                }

                public required init(from decoder: Decoder) throws {
                    let container = try decoder.container(keyedBy: StringCodingKey.self)

                    error = try container.decode("error")
                }

                public func encode(to encoder: Encoder) throws {
                    var container = encoder.container(keyedBy: StringCodingKey.self)

                    try container.encode(error, forKey: "error")
                }

                public func isEqual(to object: Any?) -> Bool {
                  guard let object = object as? Status404 else { return false }
                  guard self.error == object.error else { return false }
                  return true
                }

                public static func == (lhs: Status404, rhs: Status404) -> Bool {
                    return lhs.isEqual(to: rhs)
                }
            }

            public class Status408: APIModel {

                public var error: ErrorObject

                public init(error: ErrorObject) {
                    self.error = error
                }

                public required init(from decoder: Decoder) throws {
                    let container = try decoder.container(keyedBy: StringCodingKey.self)

                    error = try container.decode("error")
                }

                public func encode(to encoder: Encoder) throws {
                    var container = encoder.container(keyedBy: StringCodingKey.self)

                    try container.encode(error, forKey: "error")
                }

                public func isEqual(to object: Any?) -> Bool {
                  guard let object = object as? Status408 else { return false }
                  guard self.error == object.error else { return false }
                  return true
                }

                public static func == (lhs: Status408, rhs: Status408) -> Bool {
                    return lhs.isEqual(to: rhs)
                }
            }

            public class Status410: APIModel {

                public var error: ErrorObject

                public init(error: ErrorObject) {
                    self.error = error
                }

                public required init(from decoder: Decoder) throws {
                    let container = try decoder.container(keyedBy: StringCodingKey.self)

                    error = try container.decode("error")
                }

                public func encode(to encoder: Encoder) throws {
                    var container = encoder.container(keyedBy: StringCodingKey.self)

                    try container.encode(error, forKey: "error")
                }

                public func isEqual(to object: Any?) -> Bool {
                  guard let object = object as? Status410 else { return false }
                  guard self.error == object.error else { return false }
                  return true
                }

                public static func == (lhs: Status410, rhs: Status410) -> Bool {
                    return lhs.isEqual(to: rhs)
                }
            }

            public class Status424: APIModel {

                public var error: ErrorObject

                public init(error: ErrorObject) {
                    self.error = error
                }

                public required init(from decoder: Decoder) throws {
                    let container = try decoder.container(keyedBy: StringCodingKey.self)

                    error = try container.decode("error")
                }

                public func encode(to encoder: Encoder) throws {
                    var container = encoder.container(keyedBy: StringCodingKey.self)

                    try container.encode(error, forKey: "error")
                }

                public func isEqual(to object: Any?) -> Bool {
                  guard let object = object as? Status424 else { return false }
                  guard self.error == object.error else { return false }
                  return true
                }

                public static func == (lhs: Status424, rhs: Status424) -> Bool {
                    return lhs.isEqual(to: rhs)
                }
            }
            public typealias SuccessType = Status200

            /** Request was successful */
            case status200(Status200)

            /** Bad Request  */
            case status400(Status400)

            /** Unauthorized  */
            case status401(Status401)

            /** Customer or Device not Found */
            case status404(Status404)

            /** The IDP took too long to respond */
            case status408(Status408)

            /** Device was Logged Out or the customer not longer exists */
            case status410(Status410)

            /** The IDP return an error or the received response from IDP is invalid */
            case status424(Status424)

            public var success: Status200? {
                switch self {
                case .status200(let response): return response
                default: return nil
                }
            }

            public var response: Any {
                switch self {
                case .status200(let response): return response
                case .status400(let response): return response
                case .status401(let response): return response
                case .status404(let response): return response
                case .status408(let response): return response
                case .status410(let response): return response
                case .status424(let response): return response
                }
            }

            public var statusCode: Int {
                switch self {
                case .status200: return 200
                case .status400: return 400
                case .status401: return 401
                case .status404: return 404
                case .status408: return 408
                case .status410: return 410
                case .status424: return 424
                }
            }

            public var successful: Bool {
                switch self {
                case .status200: return true
                case .status400: return false
                case .status401: return false
                case .status404: return false
                case .status408: return false
                case .status410: return false
                case .status424: return false
                }
            }

            public init(statusCode: Int, data: Data, decoder: ResponseDecoder) throws {
                switch statusCode {
                case 200: self = try .status200(decoder.decode(Status200.self, from: data))
                case 400: self = try .status400(decoder.decode(Status400.self, from: data))
                case 401: self = try .status401(decoder.decode(Status401.self, from: data))
                case 404: self = try .status404(decoder.decode(Status404.self, from: data))
                case 408: self = try .status408(decoder.decode(Status408.self, from: data))
                case 410: self = try .status410(decoder.decode(Status410.self, from: data))
                case 424: self = try .status424(decoder.decode(Status424.self, from: data))
                default: throw APIClientError.unexpectedStatusCode(statusCode: statusCode, data: data)
                }
            }

            public var description: String {
                return "\(statusCode) \(successful ? "success" : "failure")"
            }

            public var debugDescription: String {
                var string = description
                let responseString = "\(response)"
                if responseString != "()" {
                    string += "\n\(responseString)"
                }
                return string
            }
        }
    }
}
