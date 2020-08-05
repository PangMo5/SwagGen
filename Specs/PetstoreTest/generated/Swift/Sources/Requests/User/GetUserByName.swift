//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

extension PetstoreTest.User {

    /** Get user by user name */
    public enum GetUserByName {

        public static let service = APIService<Response>(id: "getUserByName", tag: "user", method: "GET", path: "/user/{username}", hasBody: false, securityRequirements: [])

        public final class Request: APIRequest<Response> {

            public struct Options {

                /** The name that needs to be fetched. Use user1 for testing.  */
                public var username: String

                public init(username: String) {
                    self.username = username
                }
            }

            public var options: Options

            public init(options: Options) {
                self.options = options
                super.init(service: GetUserByName.service)
            }

            /// convenience initialiser so an Option doesn't have to be created
            public convenience init(username: String) {
                let options = Options(username: username)
                self.init(options: options)
            }

            public override var path: String {
                return super.path.replacingOccurrences(of: "{" + "username" + "}", with: "\(self.options.username)")
            }
        }

        public enum Response: APIResponseValue, CustomStringConvertible, CustomDebugStringConvertible {

            public class Status200: APIModel {

                public var email: String?

                public var firstName: String?

                public var id: Int?

                public var lastName: String?

                public var password: String?

                public var phone: String?

                /** User Status */
                public var userStatus: Int?

                public var username: String?

                public init(email: String? = nil, firstName: String? = nil, id: Int? = nil, lastName: String? = nil, password: String? = nil, phone: String? = nil, userStatus: Int? = nil, username: String? = nil) {
                    self.email = email
                    self.firstName = firstName
                    self.id = id
                    self.lastName = lastName
                    self.password = password
                    self.phone = phone
                    self.userStatus = userStatus
                    self.username = username
                }

                public required init(from decoder: Decoder) throws {
                    let container = try decoder.container(keyedBy: StringCodingKey.self)

                    email = try container.decodeIfPresent("email")
                    firstName = try container.decodeIfPresent("firstName")
                    id = try container.decodeIfPresent("id")
                    lastName = try container.decodeIfPresent("lastName")
                    password = try container.decodeIfPresent("password")
                    phone = try container.decodeIfPresent("phone")
                    userStatus = try container.decodeIfPresent("userStatus")
                    username = try container.decodeIfPresent("username")
                }

                public func encode(to encoder: Encoder) throws {
                    var container = encoder.container(keyedBy: StringCodingKey.self)

                    try container.encodeIfPresent(email, forKey: "email")
                    try container.encodeIfPresent(firstName, forKey: "firstName")
                    try container.encodeIfPresent(id, forKey: "id")
                    try container.encodeIfPresent(lastName, forKey: "lastName")
                    try container.encodeIfPresent(password, forKey: "password")
                    try container.encodeIfPresent(phone, forKey: "phone")
                    try container.encodeIfPresent(userStatus, forKey: "userStatus")
                    try container.encodeIfPresent(username, forKey: "username")
                }

                public func isEqual(to object: Any?) -> Bool {
                  guard let object = object as? Status200 else { return false }
                  guard self.email == object.email else { return false }
                  guard self.firstName == object.firstName else { return false }
                  guard self.id == object.id else { return false }
                  guard self.lastName == object.lastName else { return false }
                  guard self.password == object.password else { return false }
                  guard self.phone == object.phone else { return false }
                  guard self.userStatus == object.userStatus else { return false }
                  guard self.username == object.username else { return false }
                  return true
                }

                public static func == (lhs: Status200, rhs: Status200) -> Bool {
                    return lhs.isEqual(to: rhs)
                }
            }
            public typealias SuccessType = Status200

            /** successful operation */
            case status200(Status200)

            /** Invalid username supplied */
            case status400

            /** User not found */
            case status404

            public var success: Status200? {
                switch self {
                case .status200(let response): return response
                default: return nil
                }
            }

            public var response: Any {
                switch self {
                case .status200(let response): return response
                default: return ()
                }
            }

            public var statusCode: Int {
                switch self {
                case .status200: return 200
                case .status400: return 400
                case .status404: return 404
                }
            }

            public var successful: Bool {
                switch self {
                case .status200: return true
                case .status400: return false
                case .status404: return false
                }
            }

            public init(statusCode: Int, data: Data, decoder: ResponseDecoder) throws {
                switch statusCode {
                case 200: self = try .status200(decoder.decode(Status200.self, from: data))
                case 400: self = .status400
                case 404: self = .status404
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
