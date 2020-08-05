//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

extension Rocket.Content {

    /** Returns the list of items related to the parent item.
Note for now, due to the size of the list being unknown, only a single page will be returned.
 */
    public enum GetItemRelatedList {

        public static let service = APIService<Response>(id: "getItemRelatedList", tag: "content", method: "GET", path: "/items/{id}/related", hasBody: false, securityRequirements: [])

        public final class Request: APIRequest<Response> {

            public struct Options {

                /** The identifier of the item to based related items off. */
                public var id: String

                /** The page of items to load. Starts from page 1. */
                public var page: Int?

                /** The number of items to return in a page. */
                public var pageSize: Int?

                /** The maximum rating (inclusive) of items returned, e.g. 'auoflc-pg'. */
                public var maxRating: String?

                /** The type of device the content is targeting. */
                public var device: String?

                /** The active subscription code. */
                public var sub: String?

                /** The list of segments to filter the response by. */
                public var segments: [String]?

                /** The set of opt in feature flags which cause breaking changes to responses.
While Rocket APIs look to avoid breaking changes under the active major version, the formats of responses
may need to evolve over this time.
These feature flags allow clients to select which response formats they expect and avoid breaking
clients as these formats evolve under the current major version.
### Flags
- `all` - Enable all flags. Useful for testing. _Don't use in production_.
- `idp` - Dynamic item detail pages with schedulable rows.
- `ldp` - Dynamic list detail pages with schedulable rows.
See the `feature-flags.md` for available flag details.
 */
                public var ff: [FeatureFlags]?

                public init(id: String, page: Int? = nil, pageSize: Int? = nil, maxRating: String? = nil, device: String? = nil, sub: String? = nil, segments: [String]? = nil, ff: [FeatureFlags]? = nil) {
                    self.id = id
                    self.page = page
                    self.pageSize = pageSize
                    self.maxRating = maxRating
                    self.device = device
                    self.sub = sub
                    self.segments = segments
                    self.ff = ff
                }
            }

            public var options: Options

            public init(options: Options) {
                self.options = options
                super.init(service: GetItemRelatedList.service)
            }

            /// convenience initialiser so an Option doesn't have to be created
            public convenience init(id: String, page: Int? = nil, pageSize: Int? = nil, maxRating: String? = nil, device: String? = nil, sub: String? = nil, segments: [String]? = nil, ff: [FeatureFlags]? = nil) {
                let options = Options(id: id, page: page, pageSize: pageSize, maxRating: maxRating, device: device, sub: sub, segments: segments, ff: ff)
                self.init(options: options)
            }

            public override var path: String {
                return super.path.replacingOccurrences(of: "{" + "id" + "}", with: "\(self.options.id)")
            }

            public override var queryParameters: [String: Any] {
                var params: [String: Any] = [:]
                if let page = options.page {
                  params["page"] = page
                }
                if let pageSize = options.pageSize {
                  params["page_size"] = pageSize
                }
                if let maxRating = options.maxRating {
                  params["max_rating"] = maxRating
                }
                if let device = options.device {
                  params["device"] = device
                }
                if let sub = options.sub {
                  params["sub"] = sub
                }
                if let segments = options.segments?.joined(separator: ",") {
                  params["segments"] = segments
                }
                if let ff = options.ff?.encode().map({ String(describing: $0) }).joined(separator: ",") {
                  params["ff"] = ff
                }
                return params
            }
        }

        public enum Response: APIResponseValue, CustomStringConvertible, CustomDebugStringConvertible {

            /** A pageable list of items. */
            public class Status200: APIModel {

                /** The id of this list */
                public var id: String

                /** The total size of the list */
                public var size: Int

                /** A list of items */
                public var items: [ItemSummary]

                /** Metadata describing how to load the next or previous page of the list */
                public var paging: Pagination

                /** The path of this list */
                public var path: String

                /** A map of custom fields defined by a curator for a list. */
                public var customFields: [String: Any]?

                /** A full description of this list. */
                public var description: String?

                public var images: [String: URL]?

                /** The types of items in the list */
                public var itemTypes: [ItemType]?

                /** If this list is parameterized, then this contains the parameter of the list in the format `name:value`.
            For example the Movies Genre list will take a parameter `genre` with a given value. e.g. `genre:action` or `genre:drama`. */
                public var parameter: String?

                /** A short description of this list. */
                public var shortDescription: String?

                /** The tagline of the item. */
                public var tagline: String?

                /** The title of this list */
                public var title: String?

                public init(id: String, size: Int, items: [ItemSummary], paging: Pagination, path: String, customFields: [String: Any]? = nil, description: String? = nil, images: [String: URL]? = nil, itemTypes: [ItemType]? = nil, parameter: String? = nil, shortDescription: String? = nil, tagline: String? = nil, title: String? = nil) {
                    self.id = id
                    self.size = size
                    self.items = items
                    self.paging = paging
                    self.path = path
                    self.customFields = customFields
                    self.description = description
                    self.images = images
                    self.itemTypes = itemTypes
                    self.parameter = parameter
                    self.shortDescription = shortDescription
                    self.tagline = tagline
                    self.title = title
                }

                public required init(from decoder: Decoder) throws {
                    let container = try decoder.container(keyedBy: StringCodingKey.self)

                    id = try container.decode("id")
                    size = try container.decode("size")
                    items = try container.decodeArray("items")
                    paging = try container.decode("paging")
                    path = try container.decode("path")
                    customFields = try container.decodeAnyIfPresent("customFields")
                    description = try container.decodeIfPresent("description")
                    images = try container.decodeIfPresent("images")
                    itemTypes = try container.decodeArrayIfPresent("itemTypes")
                    parameter = try container.decodeIfPresent("parameter")
                    shortDescription = try container.decodeIfPresent("shortDescription")
                    tagline = try container.decodeIfPresent("tagline")
                    title = try container.decodeIfPresent("title")
                }

                public func encode(to encoder: Encoder) throws {
                    var container = encoder.container(keyedBy: StringCodingKey.self)

                    try container.encode(id, forKey: "id")
                    try container.encode(size, forKey: "size")
                    try container.encode(items, forKey: "items")
                    try container.encode(paging, forKey: "paging")
                    try container.encode(path, forKey: "path")
                    try container.encodeAnyIfPresent(customFields, forKey: "customFields")
                    try container.encodeIfPresent(description, forKey: "description")
                    try container.encodeIfPresent(images, forKey: "images")
                    try container.encodeIfPresent(itemTypes, forKey: "itemTypes")
                    try container.encodeIfPresent(parameter, forKey: "parameter")
                    try container.encodeIfPresent(shortDescription, forKey: "shortDescription")
                    try container.encodeIfPresent(tagline, forKey: "tagline")
                    try container.encodeIfPresent(title, forKey: "title")
                }

                public func isEqual(to object: Any?) -> Bool {
                  guard let object = object as? Status200 else { return false }
                  guard self.id == object.id else { return false }
                  guard self.size == object.size else { return false }
                  guard self.items == object.items else { return false }
                  guard self.paging == object.paging else { return false }
                  guard self.path == object.path else { return false }
                  guard NSDictionary(dictionary: self.customFields ?? [:]).isEqual(to: object.customFields ?? [:]) else { return false }
                  guard self.description == object.description else { return false }
                  guard self.images == object.images else { return false }
                  guard self.itemTypes == object.itemTypes else { return false }
                  guard self.parameter == object.parameter else { return false }
                  guard self.shortDescription == object.shortDescription else { return false }
                  guard self.tagline == object.tagline else { return false }
                  guard self.title == object.title else { return false }
                  return true
                }

                public static func == (lhs: Status200, rhs: Status200) -> Bool {
                    return lhs.isEqual(to: rhs)
                }
            }

            /** Returns the list of items related to the parent item.
            Note for now, due to the size of the list being unknown, only a single page will be returned.
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

            /** Returns the list of items related to the parent item.
            Note for now, due to the size of the list being unknown, only a single page will be returned.
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

            /** Returns the list of items related to the parent item.
            Note for now, due to the size of the list being unknown, only a single page will be returned.
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

            /** Returns the list of items related to the parent item.
            Note for now, due to the size of the list being unknown, only a single page will be returned.
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

            /** The list of items requested. */
            case status200(Status200)

            /** Bad request. */
            case status400(Status400)

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
                case .status404(let response): return response
                case .status500(let response): return response
                case .defaultResponse(_, let response): return response
                }
            }

            public var statusCode: Int {
                switch self {
                case .status200: return 200
                case .status400: return 400
                case .status404: return 404
                case .status500: return 500
                case .defaultResponse(let statusCode, _): return statusCode
                }
            }

            public var successful: Bool {
                switch self {
                case .status200: return true
                case .status400: return false
                case .status404: return false
                case .status500: return false
                case .defaultResponse: return false
                }
            }

            public init(statusCode: Int, data: Data, decoder: ResponseDecoder) throws {
                switch statusCode {
                case 200: self = try .status200(decoder.decode(Status200.self, from: data))
                case 400: self = try .status400(decoder.decode(Status400.self, from: data))
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
