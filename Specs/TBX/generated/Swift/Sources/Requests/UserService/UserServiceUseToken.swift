//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

extension TBX.UserService {

    /** Use a Token */
    public enum UserServiceUseToken {

        public static let service = APIService<Response>(id: "UserService.useToken", tag: "UserService", method: "PUT", path: "/UserServices/token/{token}", hasBody: true, securityRequirements: [])

        public final class Request: APIRequest<Response> {

            public struct Options {

                /** The token id */
                public var token: String

                /** Device Type */
                public var deviceType: String

                /** Description to device for example the user agent */
                public var description: String

                /** Only for activatable devices type * DEPRECATED * */
                public var identifier: String?

                public init(token: String, deviceType: String, description: String, identifier: String? = nil) {
                    self.token = token
                    self.deviceType = deviceType
                    self.description = description
                    self.identifier = identifier
                }
            }

            public var options: Options

            public init(options: Options) {
                self.options = options
                super.init(service: UserServiceUseToken.service)
            }

            /// convenience initialiser so an Option doesn't have to be created
            public convenience init(token: String, deviceType: String, description: String, identifier: String? = nil) {
                let options = Options(token: token, deviceType: deviceType, description: description, identifier: identifier)
                self.init(options: options)
            }

            public override var path: String {
                return super.path.replacingOccurrences(of: "{" + "token" + "}", with: "\(self.options.token)")
            }

            public override var formParameters: [String: Any] {
                var params: [String: Any] = [:]
                params["deviceType"] = options.deviceType
                params["description"] = options.description
                if let identifier = options.identifier {
                  params["identifier"] = identifier
                }
                return params
            }
        }

        public enum Response: APIResponseValue, CustomStringConvertible, CustomDebugStringConvertible {

            public class Status200: APIModel {

                public var token: String

                /** When this device was created */
                public var createdAt: DateTime

                public var type: `Type`

                public var customer: Customer

                public var description: String?

                public class `Type`: APIModel {

                    public var code: String?

                    public var description: String?

                    public init(code: String? = nil, description: String? = nil) {
                        self.code = code
                        self.description = description
                    }

                    public required init(from decoder: Decoder) throws {
                        let container = try decoder.container(keyedBy: StringCodingKey.self)

                        code = try container.decodeIfPresent("code")
                        description = try container.decodeIfPresent("description")
                    }

                    public func encode(to encoder: Encoder) throws {
                        var container = encoder.container(keyedBy: StringCodingKey.self)

                        try container.encodeIfPresent(code, forKey: "code")
                        try container.encodeIfPresent(description, forKey: "description")
                    }

                    public func isEqual(to object: Any?) -> Bool {
                      guard let object = object as? `Type` else { return false }
                      guard self.code == object.code else { return false }
                      guard self.description == object.description else { return false }
                      return true
                    }

                    public static func == (lhs: `Type`, rhs: `Type`) -> Bool {
                        return lhs.isEqual(to: rhs)
                    }
                }

                public class Customer: APIModel {

                    public var country: Country?

                    /** When the customer was created */
                    public var createdAt: DateTime?

                    public var id: String?

                    public var idp: Idp?

                    public var subscriberId: String?

                    public class Country: APIModel {

                        public var code: String?

                        public var description: String?

                        public init(code: String? = nil, description: String? = nil) {
                            self.code = code
                            self.description = description
                        }

                        public required init(from decoder: Decoder) throws {
                            let container = try decoder.container(keyedBy: StringCodingKey.self)

                            code = try container.decodeIfPresent("code")
                            description = try container.decodeIfPresent("description")
                        }

                        public func encode(to encoder: Encoder) throws {
                            var container = encoder.container(keyedBy: StringCodingKey.self)

                            try container.encodeIfPresent(code, forKey: "code")
                            try container.encodeIfPresent(description, forKey: "description")
                        }

                        public func isEqual(to object: Any?) -> Bool {
                          guard let object = object as? Country else { return false }
                          guard self.code == object.code else { return false }
                          guard self.description == object.description else { return false }
                          return true
                        }

                        public static func == (lhs: Country, rhs: Country) -> Bool {
                            return lhs.isEqual(to: rhs)
                        }
                    }

                    public class Idp: APIModel {

                        public var code: String?

                        public var description: String?

                        public init(code: String? = nil, description: String? = nil) {
                            self.code = code
                            self.description = description
                        }

                        public required init(from decoder: Decoder) throws {
                            let container = try decoder.container(keyedBy: StringCodingKey.self)

                            code = try container.decodeIfPresent("code")
                            description = try container.decodeIfPresent("description")
                        }

                        public func encode(to encoder: Encoder) throws {
                            var container = encoder.container(keyedBy: StringCodingKey.self)

                            try container.encodeIfPresent(code, forKey: "code")
                            try container.encodeIfPresent(description, forKey: "description")
                        }

                        public func isEqual(to object: Any?) -> Bool {
                          guard let object = object as? Idp else { return false }
                          guard self.code == object.code else { return false }
                          guard self.description == object.description else { return false }
                          return true
                        }

                        public static func == (lhs: Idp, rhs: Idp) -> Bool {
                            return lhs.isEqual(to: rhs)
                        }
                    }

                    public init(country: Country? = nil, createdAt: DateTime? = nil, id: String? = nil, idp: Idp? = nil, subscriberId: String? = nil) {
                        self.country = country
                        self.createdAt = createdAt
                        self.id = id
                        self.idp = idp
                        self.subscriberId = subscriberId
                    }

                    public required init(from decoder: Decoder) throws {
                        let container = try decoder.container(keyedBy: StringCodingKey.self)

                        country = try container.decodeIfPresent("country")
                        createdAt = try container.decodeIfPresent("createdAt")
                        id = try container.decodeIfPresent("id")
                        idp = try container.decodeIfPresent("idp")
                        subscriberId = try container.decodeIfPresent("subscriberId")
                    }

                    public func encode(to encoder: Encoder) throws {
                        var container = encoder.container(keyedBy: StringCodingKey.self)

                        try container.encodeIfPresent(country, forKey: "country")
                        try container.encodeIfPresent(createdAt, forKey: "createdAt")
                        try container.encodeIfPresent(id, forKey: "id")
                        try container.encodeIfPresent(idp, forKey: "idp")
                        try container.encodeIfPresent(subscriberId, forKey: "subscriberId")
                    }

                    public func isEqual(to object: Any?) -> Bool {
                      guard let object = object as? Customer else { return false }
                      guard self.country == object.country else { return false }
                      guard self.createdAt == object.createdAt else { return false }
                      guard self.id == object.id else { return false }
                      guard self.idp == object.idp else { return false }
                      guard self.subscriberId == object.subscriberId else { return false }
                      return true
                    }

                    public static func == (lhs: Customer, rhs: Customer) -> Bool {
                        return lhs.isEqual(to: rhs)
                    }
                }

                public init(token: String, createdAt: DateTime, type: `Type`, customer: Customer, description: String? = nil) {
                    self.token = token
                    self.createdAt = createdAt
                    self.type = type
                    self.customer = customer
                    self.description = description
                }

                public required init(from decoder: Decoder) throws {
                    let container = try decoder.container(keyedBy: StringCodingKey.self)

                    token = try container.decode("token")
                    createdAt = try container.decode("createdAt")
                    type = try container.decode("type")
                    customer = try container.decode("customer")
                    description = try container.decodeIfPresent("description")
                }

                public func encode(to encoder: Encoder) throws {
                    var container = encoder.container(keyedBy: StringCodingKey.self)

                    try container.encode(token, forKey: "token")
                    try container.encode(createdAt, forKey: "createdAt")
                    try container.encode(type, forKey: "type")
                    try container.encode(customer, forKey: "customer")
                    try container.encodeIfPresent(description, forKey: "description")
                }

                public func isEqual(to object: Any?) -> Bool {
                  guard let object = object as? Status200 else { return false }
                  guard self.token == object.token else { return false }
                  guard self.createdAt == object.createdAt else { return false }
                  guard self.type == object.type else { return false }
                  guard self.customer == object.customer else { return false }
                  guard self.description == object.description else { return false }
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
