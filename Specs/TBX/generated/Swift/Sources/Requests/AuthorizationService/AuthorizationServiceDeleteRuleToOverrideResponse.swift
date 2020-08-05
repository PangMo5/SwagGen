//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

extension TBX.AuthorizationService {

    /** Delete a rule to override the IDP response's */
    public enum AuthorizationServiceDeleteRuleToOverrideResponse {

        public static let service = APIService<Response>(id: "AuthorizationService.deleteRuleToOverrideResponse", tag: "AuthorizationService", method: "DELETE", path: "/AuthorizationServices/overrideRule/{ruleId}", hasBody: false, securityRequirements: [])

        public final class Request: APIRequest<Response> {

            public struct Options {

                /** The Rule ID */
                public var ruleId: String

                public init(ruleId: String) {
                    self.ruleId = ruleId
                }
            }

            public var options: Options

            public init(options: Options) {
                self.options = options
                super.init(service: AuthorizationServiceDeleteRuleToOverrideResponse.service)
            }

            /// convenience initialiser so an Option doesn't have to be created
            public convenience init(ruleId: String) {
                let options = Options(ruleId: ruleId)
                self.init(options: options)
            }

            public override var path: String {
                return super.path.replacingOccurrences(of: "{" + "ruleId" + "}", with: "\(self.options.ruleId)")
            }
        }

        public enum Response: APIResponseValue, CustomStringConvertible, CustomDebugStringConvertible {

            public class Status200: APIModel {

                public var status: Bool?

                public init(status: Bool? = nil) {
                    self.status = status
                }

                public required init(from decoder: Decoder) throws {
                    let container = try decoder.container(keyedBy: StringCodingKey.self)

                    status = try container.decodeIfPresent("status")
                }

                public func encode(to encoder: Encoder) throws {
                    var container = encoder.container(keyedBy: StringCodingKey.self)

                    try container.encodeIfPresent(status, forKey: "status")
                }

                public func isEqual(to object: Any?) -> Bool {
                  guard let object = object as? Status200 else { return false }
                  guard self.status == object.status else { return false }
                  return true
                }

                public static func == (lhs: Status200, rhs: Status200) -> Bool {
                    return lhs.isEqual(to: rhs)
                }
            }

            public class Status400: APIModel {

                /** CloudPass error code */
                public var errorCode: String

                /** CloudPass error description */
                public var message: String

                /** This is completed if the IDP returns an error */
                public var externalCode: String?

                /** This is completed if the IDP returns an error */
                public var externalMessage: String?

                public init(errorCode: String, message: String, externalCode: String? = nil, externalMessage: String? = nil) {
                    self.errorCode = errorCode
                    self.message = message
                    self.externalCode = externalCode
                    self.externalMessage = externalMessage
                }

                public required init(from decoder: Decoder) throws {
                    let container = try decoder.container(keyedBy: StringCodingKey.self)

                    errorCode = try container.decode("errorCode")
                    message = try container.decode("message")
                    externalCode = try container.decodeIfPresent("externalCode")
                    externalMessage = try container.decodeIfPresent("externalMessage")
                }

                public func encode(to encoder: Encoder) throws {
                    var container = encoder.container(keyedBy: StringCodingKey.self)

                    try container.encode(errorCode, forKey: "errorCode")
                    try container.encode(message, forKey: "message")
                    try container.encodeIfPresent(externalCode, forKey: "externalCode")
                    try container.encodeIfPresent(externalMessage, forKey: "externalMessage")
                }

                public func isEqual(to object: Any?) -> Bool {
                  guard let object = object as? Status400 else { return false }
                  guard self.errorCode == object.errorCode else { return false }
                  guard self.message == object.message else { return false }
                  guard self.externalCode == object.externalCode else { return false }
                  guard self.externalMessage == object.externalMessage else { return false }
                  return true
                }

                public static func == (lhs: Status400, rhs: Status400) -> Bool {
                    return lhs.isEqual(to: rhs)
                }
            }

            public class Status401: APIModel {

                /** CloudPass error code */
                public var errorCode: String

                /** CloudPass error description */
                public var message: String

                /** This is completed if the IDP returns an error */
                public var externalCode: String?

                /** This is completed if the IDP returns an error */
                public var externalMessage: String?

                public init(errorCode: String, message: String, externalCode: String? = nil, externalMessage: String? = nil) {
                    self.errorCode = errorCode
                    self.message = message
                    self.externalCode = externalCode
                    self.externalMessage = externalMessage
                }

                public required init(from decoder: Decoder) throws {
                    let container = try decoder.container(keyedBy: StringCodingKey.self)

                    errorCode = try container.decode("errorCode")
                    message = try container.decode("message")
                    externalCode = try container.decodeIfPresent("externalCode")
                    externalMessage = try container.decodeIfPresent("externalMessage")
                }

                public func encode(to encoder: Encoder) throws {
                    var container = encoder.container(keyedBy: StringCodingKey.self)

                    try container.encode(errorCode, forKey: "errorCode")
                    try container.encode(message, forKey: "message")
                    try container.encodeIfPresent(externalCode, forKey: "externalCode")
                    try container.encodeIfPresent(externalMessage, forKey: "externalMessage")
                }

                public func isEqual(to object: Any?) -> Bool {
                  guard let object = object as? Status401 else { return false }
                  guard self.errorCode == object.errorCode else { return false }
                  guard self.message == object.message else { return false }
                  guard self.externalCode == object.externalCode else { return false }
                  guard self.externalMessage == object.externalMessage else { return false }
                  return true
                }

                public static func == (lhs: Status401, rhs: Status401) -> Bool {
                    return lhs.isEqual(to: rhs)
                }
            }

            public class Status404: APIModel {

                /** CloudPass error code */
                public var errorCode: String

                /** CloudPass error description */
                public var message: String

                /** This is completed if the IDP returns an error */
                public var externalCode: String?

                /** This is completed if the IDP returns an error */
                public var externalMessage: String?

                public init(errorCode: String, message: String, externalCode: String? = nil, externalMessage: String? = nil) {
                    self.errorCode = errorCode
                    self.message = message
                    self.externalCode = externalCode
                    self.externalMessage = externalMessage
                }

                public required init(from decoder: Decoder) throws {
                    let container = try decoder.container(keyedBy: StringCodingKey.self)

                    errorCode = try container.decode("errorCode")
                    message = try container.decode("message")
                    externalCode = try container.decodeIfPresent("externalCode")
                    externalMessage = try container.decodeIfPresent("externalMessage")
                }

                public func encode(to encoder: Encoder) throws {
                    var container = encoder.container(keyedBy: StringCodingKey.self)

                    try container.encode(errorCode, forKey: "errorCode")
                    try container.encode(message, forKey: "message")
                    try container.encodeIfPresent(externalCode, forKey: "externalCode")
                    try container.encodeIfPresent(externalMessage, forKey: "externalMessage")
                }

                public func isEqual(to object: Any?) -> Bool {
                  guard let object = object as? Status404 else { return false }
                  guard self.errorCode == object.errorCode else { return false }
                  guard self.message == object.message else { return false }
                  guard self.externalCode == object.externalCode else { return false }
                  guard self.externalMessage == object.externalMessage else { return false }
                  return true
                }

                public static func == (lhs: Status404, rhs: Status404) -> Bool {
                    return lhs.isEqual(to: rhs)
                }
            }

            public class Status410: APIModel {

                /** CloudPass error code */
                public var errorCode: String

                /** CloudPass error description */
                public var message: String

                /** This is completed if the IDP returns an error */
                public var externalCode: String?

                /** This is completed if the IDP returns an error */
                public var externalMessage: String?

                public init(errorCode: String, message: String, externalCode: String? = nil, externalMessage: String? = nil) {
                    self.errorCode = errorCode
                    self.message = message
                    self.externalCode = externalCode
                    self.externalMessage = externalMessage
                }

                public required init(from decoder: Decoder) throws {
                    let container = try decoder.container(keyedBy: StringCodingKey.self)

                    errorCode = try container.decode("errorCode")
                    message = try container.decode("message")
                    externalCode = try container.decodeIfPresent("externalCode")
                    externalMessage = try container.decodeIfPresent("externalMessage")
                }

                public func encode(to encoder: Encoder) throws {
                    var container = encoder.container(keyedBy: StringCodingKey.self)

                    try container.encode(errorCode, forKey: "errorCode")
                    try container.encode(message, forKey: "message")
                    try container.encodeIfPresent(externalCode, forKey: "externalCode")
                    try container.encodeIfPresent(externalMessage, forKey: "externalMessage")
                }

                public func isEqual(to object: Any?) -> Bool {
                  guard let object = object as? Status410 else { return false }
                  guard self.errorCode == object.errorCode else { return false }
                  guard self.message == object.message else { return false }
                  guard self.externalCode == object.externalCode else { return false }
                  guard self.externalMessage == object.externalMessage else { return false }
                  return true
                }

                public static func == (lhs: Status410, rhs: Status410) -> Bool {
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

            /** Device was Logged Out or the customer not longer exists */
            case status410(Status410)

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
                case .status410(let response): return response
                }
            }

            public var statusCode: Int {
                switch self {
                case .status200: return 200
                case .status400: return 400
                case .status401: return 401
                case .status404: return 404
                case .status410: return 410
                }
            }

            public var successful: Bool {
                switch self {
                case .status200: return true
                case .status400: return false
                case .status401: return false
                case .status404: return false
                case .status410: return false
                }
            }

            public init(statusCode: Int, data: Data, decoder: ResponseDecoder) throws {
                switch statusCode {
                case 200: self = try .status200(decoder.decode(Status200.self, from: data))
                case 400: self = try .status400(decoder.decode(Status400.self, from: data))
                case 401: self = try .status401(decoder.decode(Status401.self, from: data))
                case 404: self = try .status404(decoder.decode(Status404.self, from: data))
                case 410: self = try .status410(decoder.decode(Status410.self, from: data))
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
