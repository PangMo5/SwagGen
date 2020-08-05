//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

extension Rocket.Account {

    /** Register a playback device under an account.
If a device with the same id already exists a `409` conflict will be returned.
 */
    public enum RegisterDevice {

        public static let service = APIService<Response>(id: "registerDevice", tag: "account", method: "POST", path: "/account/devices", hasBody: true, securityRequirements: [SecurityRequirement(type: "accountAuth", scopes: ["Catalog"])])

        public final class Request: APIRequest<Response> {

            /** Register a playback device under an account.
            If a device with the same id already exists a `409` conflict will be returned.
             */
            public class Body: APIModel {

                /** The unique identifier for this device e.g. serial number. */
                public var id: String

                /** A human recognisable name for this device. */
                public var name: String

                /** The device type e.g. web_browser. */
                public var type: String

                public init(id: String, name: String, type: String) {
                    self.id = id
                    self.name = name
                    self.type = type
                }

                public required init(from decoder: Decoder) throws {
                    let container = try decoder.container(keyedBy: StringCodingKey.self)

                    id = try container.decode("id")
                    name = try container.decode("name")
                    type = try container.decode("type")
                }

                public func encode(to encoder: Encoder) throws {
                    var container = encoder.container(keyedBy: StringCodingKey.self)

                    try container.encode(id, forKey: "id")
                    try container.encode(name, forKey: "name")
                    try container.encode(type, forKey: "type")
                }

                public func isEqual(to object: Any?) -> Bool {
                  guard let object = object as? Body else { return false }
                  guard self.id == object.id else { return false }
                  guard self.name == object.name else { return false }
                  guard self.type == object.type else { return false }
                  return true
                }

                public static func == (lhs: Body, rhs: Body) -> Bool {
                    return lhs.isEqual(to: rhs)
                }
            }

            public var body: Body

            public init(body: Body, encoder: RequestEncoder? = nil) {
                self.body = body
                super.init(service: RegisterDevice.service) { defaultEncoder in
                    return try (encoder ?? defaultEncoder).encode(body)
                }
            }
        }

        public enum Response: APIResponseValue, CustomStringConvertible, CustomDebugStringConvertible {

            /** Register a playback device under an account.
            If a device with the same id already exists a `409` conflict will be returned.
             */
            public class Status200: APIModel {

                /** The unique identifier for this device e.g. serial number. */
                public var id: String

                /** The human recognisable name for this device. */
                public var name: String

                /** The date this device was registered. */
                public var registrationDate: DateTime

                /** The device type e.g. web_browser. */
                public var type: String

                public init(id: String, name: String, registrationDate: DateTime, type: String) {
                    self.id = id
                    self.name = name
                    self.registrationDate = registrationDate
                    self.type = type
                }

                public required init(from decoder: Decoder) throws {
                    let container = try decoder.container(keyedBy: StringCodingKey.self)

                    id = try container.decode("id")
                    name = try container.decode("name")
                    registrationDate = try container.decode("registrationDate")
                    type = try container.decode("type")
                }

                public func encode(to encoder: Encoder) throws {
                    var container = encoder.container(keyedBy: StringCodingKey.self)

                    try container.encode(id, forKey: "id")
                    try container.encode(name, forKey: "name")
                    try container.encode(registrationDate, forKey: "registrationDate")
                    try container.encode(type, forKey: "type")
                }

                public func isEqual(to object: Any?) -> Bool {
                  guard let object = object as? Status200 else { return false }
                  guard self.id == object.id else { return false }
                  guard self.name == object.name else { return false }
                  guard self.registrationDate == object.registrationDate else { return false }
                  guard self.type == object.type else { return false }
                  return true
                }

                public static func == (lhs: Status200, rhs: Status200) -> Bool {
                    return lhs.isEqual(to: rhs)
                }
            }

            /** Register a playback device under an account.
            If a device with the same id already exists a `409` conflict will be returned.
             */
            public class Status400: APIModel {

                /** A description of the error. */
                public var message: String

                /** An optional code classifying the error. Should be taken in the context of the http status code. */
                public var code: Int?

                public init(message: String, code: Int? = nil) {
                    self.message = message
                    self.code = code
                }

                public required init(from decoder: Decoder) throws {
                    let container = try decoder.container(keyedBy: StringCodingKey.self)

                    message = try container.decode("message")
                    code = try container.decodeIfPresent("code")
                }

                public func encode(to encoder: Encoder) throws {
                    var container = encoder.container(keyedBy: StringCodingKey.self)

                    try container.encode(message, forKey: "message")
                    try container.encodeIfPresent(code, forKey: "code")
                }

                public func isEqual(to object: Any?) -> Bool {
                  guard let object = object as? Status400 else { return false }
                  guard self.message == object.message else { return false }
                  guard self.code == object.code else { return false }
                  return true
                }

                public static func == (lhs: Status400, rhs: Status400) -> Bool {
                    return lhs.isEqual(to: rhs)
                }
            }

            /** Register a playback device under an account.
            If a device with the same id already exists a `409` conflict will be returned.
             */
            public class Status401: APIModel {

                /** A description of the error. */
                public var message: String

                /** An optional code classifying the error. Should be taken in the context of the http status code. */
                public var code: Int?

                public init(message: String, code: Int? = nil) {
                    self.message = message
                    self.code = code
                }

                public required init(from decoder: Decoder) throws {
                    let container = try decoder.container(keyedBy: StringCodingKey.self)

                    message = try container.decode("message")
                    code = try container.decodeIfPresent("code")
                }

                public func encode(to encoder: Encoder) throws {
                    var container = encoder.container(keyedBy: StringCodingKey.self)

                    try container.encode(message, forKey: "message")
                    try container.encodeIfPresent(code, forKey: "code")
                }

                public func isEqual(to object: Any?) -> Bool {
                  guard let object = object as? Status401 else { return false }
                  guard self.message == object.message else { return false }
                  guard self.code == object.code else { return false }
                  return true
                }

                public static func == (lhs: Status401, rhs: Status401) -> Bool {
                    return lhs.isEqual(to: rhs)
                }
            }

            /** Register a playback device under an account.
            If a device with the same id already exists a `409` conflict will be returned.
             */
            public class Status403: APIModel {

                /** A description of the error. */
                public var message: String

                /** An optional code classifying the error. Should be taken in the context of the http status code. */
                public var code: Int?

                public init(message: String, code: Int? = nil) {
                    self.message = message
                    self.code = code
                }

                public required init(from decoder: Decoder) throws {
                    let container = try decoder.container(keyedBy: StringCodingKey.self)

                    message = try container.decode("message")
                    code = try container.decodeIfPresent("code")
                }

                public func encode(to encoder: Encoder) throws {
                    var container = encoder.container(keyedBy: StringCodingKey.self)

                    try container.encode(message, forKey: "message")
                    try container.encodeIfPresent(code, forKey: "code")
                }

                public func isEqual(to object: Any?) -> Bool {
                  guard let object = object as? Status403 else { return false }
                  guard self.message == object.message else { return false }
                  guard self.code == object.code else { return false }
                  return true
                }

                public static func == (lhs: Status403, rhs: Status403) -> Bool {
                    return lhs.isEqual(to: rhs)
                }
            }

            /** Register a playback device under an account.
            If a device with the same id already exists a `409` conflict will be returned.
             */
            public class Status404: APIModel {

                /** A description of the error. */
                public var message: String

                /** An optional code classifying the error. Should be taken in the context of the http status code. */
                public var code: Int?

                public init(message: String, code: Int? = nil) {
                    self.message = message
                    self.code = code
                }

                public required init(from decoder: Decoder) throws {
                    let container = try decoder.container(keyedBy: StringCodingKey.self)

                    message = try container.decode("message")
                    code = try container.decodeIfPresent("code")
                }

                public func encode(to encoder: Encoder) throws {
                    var container = encoder.container(keyedBy: StringCodingKey.self)

                    try container.encode(message, forKey: "message")
                    try container.encodeIfPresent(code, forKey: "code")
                }

                public func isEqual(to object: Any?) -> Bool {
                  guard let object = object as? Status404 else { return false }
                  guard self.message == object.message else { return false }
                  guard self.code == object.code else { return false }
                  return true
                }

                public static func == (lhs: Status404, rhs: Status404) -> Bool {
                    return lhs.isEqual(to: rhs)
                }
            }

            /** Register a playback device under an account.
            If a device with the same id already exists a `409` conflict will be returned.
             */
            public class Status409: APIModel {

                /** A description of the error. */
                public var message: String

                /** An optional code classifying the error. Should be taken in the context of the http status code. */
                public var code: Int?

                public init(message: String, code: Int? = nil) {
                    self.message = message
                    self.code = code
                }

                public required init(from decoder: Decoder) throws {
                    let container = try decoder.container(keyedBy: StringCodingKey.self)

                    message = try container.decode("message")
                    code = try container.decodeIfPresent("code")
                }

                public func encode(to encoder: Encoder) throws {
                    var container = encoder.container(keyedBy: StringCodingKey.self)

                    try container.encode(message, forKey: "message")
                    try container.encodeIfPresent(code, forKey: "code")
                }

                public func isEqual(to object: Any?) -> Bool {
                  guard let object = object as? Status409 else { return false }
                  guard self.message == object.message else { return false }
                  guard self.code == object.code else { return false }
                  return true
                }

                public static func == (lhs: Status409, rhs: Status409) -> Bool {
                    return lhs.isEqual(to: rhs)
                }
            }

            /** Register a playback device under an account.
            If a device with the same id already exists a `409` conflict will be returned.
             */
            public class Status500: APIModel {

                /** A description of the error. */
                public var message: String

                /** An optional code classifying the error. Should be taken in the context of the http status code. */
                public var code: Int?

                public init(message: String, code: Int? = nil) {
                    self.message = message
                    self.code = code
                }

                public required init(from decoder: Decoder) throws {
                    let container = try decoder.container(keyedBy: StringCodingKey.self)

                    message = try container.decode("message")
                    code = try container.decodeIfPresent("code")
                }

                public func encode(to encoder: Encoder) throws {
                    var container = encoder.container(keyedBy: StringCodingKey.self)

                    try container.encode(message, forKey: "message")
                    try container.encodeIfPresent(code, forKey: "code")
                }

                public func isEqual(to object: Any?) -> Bool {
                  guard let object = object as? Status500 else { return false }
                  guard self.message == object.message else { return false }
                  guard self.code == object.code else { return false }
                  return true
                }

                public static func == (lhs: Status500, rhs: Status500) -> Bool {
                    return lhs.isEqual(to: rhs)
                }
            }

            /** Register a playback device under an account.
            If a device with the same id already exists a `409` conflict will be returned.
             */
            public class DefaultResponse: APIModel {

                /** A description of the error. */
                public var message: String

                /** An optional code classifying the error. Should be taken in the context of the http status code. */
                public var code: Int?

                public init(message: String, code: Int? = nil) {
                    self.message = message
                    self.code = code
                }

                public required init(from decoder: Decoder) throws {
                    let container = try decoder.container(keyedBy: StringCodingKey.self)

                    message = try container.decode("message")
                    code = try container.decodeIfPresent("code")
                }

                public func encode(to encoder: Encoder) throws {
                    var container = encoder.container(keyedBy: StringCodingKey.self)

                    try container.encode(message, forKey: "message")
                    try container.encodeIfPresent(code, forKey: "code")
                }

                public func isEqual(to object: Any?) -> Bool {
                  guard let object = object as? DefaultResponse else { return false }
                  guard self.message == object.message else { return false }
                  guard self.code == object.code else { return false }
                  return true
                }

                public static func == (lhs: DefaultResponse, rhs: DefaultResponse) -> Bool {
                    return lhs.isEqual(to: rhs)
                }
            }
            public typealias SuccessType = Status200

            /** OK */
            case status200(Status200)

            /** Bad request. */
            case status400(Status400)

            /** Invalid access token. */
            case status401(Status401)

            /** Forbidden. */
            case status403(Status403)

            /** Not found. */
            case status404(Status404)

            /** A device with the provided id already exists. */
            case status409(Status409)

            /** Internal server error. */
            case status500(Status500)

            /** Service error. */
            case defaultResponse(statusCode: Int, DefaultResponse)

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
                case .status403(let response): return response
                case .status404(let response): return response
                case .status409(let response): return response
                case .status500(let response): return response
                case .defaultResponse(_, let response): return response
                }
            }

            public var statusCode: Int {
                switch self {
                case .status200: return 200
                case .status400: return 400
                case .status401: return 401
                case .status403: return 403
                case .status404: return 404
                case .status409: return 409
                case .status500: return 500
                case .defaultResponse(let statusCode, _): return statusCode
                }
            }

            public var successful: Bool {
                switch self {
                case .status200: return true
                case .status400: return false
                case .status401: return false
                case .status403: return false
                case .status404: return false
                case .status409: return false
                case .status500: return false
                case .defaultResponse: return false
                }
            }

            public init(statusCode: Int, data: Data, decoder: ResponseDecoder) throws {
                switch statusCode {
                case 200: self = try .status200(decoder.decode(Status200.self, from: data))
                case 400: self = try .status400(decoder.decode(Status400.self, from: data))
                case 401: self = try .status401(decoder.decode(Status401.self, from: data))
                case 403: self = try .status403(decoder.decode(Status403.self, from: data))
                case 404: self = try .status404(decoder.decode(Status404.self, from: data))
                case 409: self = try .status409(decoder.decode(Status409.self, from: data))
                case 500: self = try .status500(decoder.decode(Status500.self, from: data))
                default: self = try .defaultResponse(statusCode: statusCode, decoder.decode(DefaultResponse.self, from: data))
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
