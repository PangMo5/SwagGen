//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

extension Rocket.Profile {

    /** Get the bookmark for an item under the active profile. */
    public enum GetItemBookmark {

        public static let service = APIService<Response>(id: "getItemBookmark", tag: "profile", method: "GET", path: "/account/profile/bookmarks/{itemId}", hasBody: false, securityRequirements: [SecurityRequirement(type: "profileAuth", scopes: ["Catalog"])])

        public final class Request: APIRequest<Response> {

            public struct Options {

                /** The id of the item to get the bookmark for. */
                public var itemId: String

                public init(itemId: String) {
                    self.itemId = itemId
                }
            }

            public var options: Options

            public init(options: Options) {
                self.options = options
                super.init(service: GetItemBookmark.service)
            }

            /// convenience initialiser so an Option doesn't have to be created
            public convenience init(itemId: String) {
                let options = Options(itemId: itemId)
                self.init(options: options)
            }

            public override var path: String {
                return super.path.replacingOccurrences(of: "{" + "itemId" + "}", with: "\(self.options.itemId)")
            }
        }

        public enum Response: APIResponseValue, CustomStringConvertible, CustomDebugStringConvertible {

            /** Get the bookmark for an item under the active profile. */
            public class Status200: APIModel {

                /** The id of the item bookmarked. */
                public var itemId: String

                /** The date the bookmark was created. */
                public var creationDate: DateTime

                public init(itemId: String, creationDate: DateTime) {
                    self.itemId = itemId
                    self.creationDate = creationDate
                }

                public required init(from decoder: Decoder) throws {
                    let container = try decoder.container(keyedBy: StringCodingKey.self)

                    itemId = try container.decode("itemId")
                    creationDate = try container.decode("creationDate")
                }

                public func encode(to encoder: Encoder) throws {
                    var container = encoder.container(keyedBy: StringCodingKey.self)

                    try container.encode(itemId, forKey: "itemId")
                    try container.encode(creationDate, forKey: "creationDate")
                }

                public func isEqual(to object: Any?) -> Bool {
                  guard let object = object as? Status200 else { return false }
                  guard self.itemId == object.itemId else { return false }
                  guard self.creationDate == object.creationDate else { return false }
                  return true
                }

                public static func == (lhs: Status200, rhs: Status200) -> Bool {
                    return lhs.isEqual(to: rhs)
                }
            }

            /** Get the bookmark for an item under the active profile. */
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

            /** Get the bookmark for an item under the active profile. */
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

            /** Get the bookmark for an item under the active profile. */
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

            /** Get the bookmark for an item under the active profile. */
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

            /** Get the bookmark for an item under the active profile. */
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

            /** Get the bookmark for an item under the active profile. */
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
