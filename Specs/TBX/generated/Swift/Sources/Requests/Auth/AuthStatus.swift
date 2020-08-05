//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

extension TBX.Auth {

    /** Check user device status */
    public enum AuthStatus {

        public static let service = APIService<Response>(id: "auth.status", tag: "auth", method: "GET", path: "/auth/{cp}/status.json", hasBody: false, securityRequirements: [])

        public final class Request: APIRequest<Response> {

            public struct Options {

                /** ShortName of Content Provider */
                public var cp: String

                /** *deprecated* if this parameter is sent the response will be a JSONP */
                public var callback: String?

                public init(cp: String, callback: String? = nil) {
                    self.cp = cp
                    self.callback = callback
                }
            }

            public var options: Options

            public init(options: Options) {
                self.options = options
                super.init(service: AuthStatus.service)
            }

            /// convenience initialiser so an Option doesn't have to be created
            public convenience init(cp: String, callback: String? = nil) {
                let options = Options(cp: cp, callback: callback)
                self.init(options: options)
            }

            public override var path: String {
                return super.path.replacingOccurrences(of: "{" + "cp" + "}", with: "\(self.options.cp)")
            }

            public override var queryParameters: [String: Any] {
                var params: [String: Any] = [:]
                if let callback = options.callback {
                  params["callback"] = callback
                }
                return params
            }
        }

        public enum Response: APIResponseValue, CustomStringConvertible, CustomDebugStringConvertible {

            public class Status200: APIModel {

                public var status: Bool

                /** this appears if the user is logged in */
                public var userToken: String?

                public init(status: Bool, userToken: String? = nil) {
                    self.status = status
                    self.userToken = userToken
                }

                public required init(from decoder: Decoder) throws {
                    let container = try decoder.container(keyedBy: StringCodingKey.self)

                    status = try container.decode("status")
                    userToken = try container.decodeIfPresent("user_token")
                }

                public func encode(to encoder: Encoder) throws {
                    var container = encoder.container(keyedBy: StringCodingKey.self)

                    try container.encode(status, forKey: "status")
                    try container.encodeIfPresent(userToken, forKey: "user_token")
                }

                public func isEqual(to object: Any?) -> Bool {
                  guard let object = object as? Status200 else { return false }
                  guard self.status == object.status else { return false }
                  guard self.userToken == object.userToken else { return false }
                  return true
                }

                public static func == (lhs: Status200, rhs: Status200) -> Bool {
                    return lhs.isEqual(to: rhs)
                }
            }
            public typealias SuccessType = Status200

            /** Request was successful */
            case status200(Status200)

            public var success: Status200? {
                switch self {
                case .status200(let response): return response
                }
            }

            public var response: Any {
                switch self {
                case .status200(let response): return response
                }
            }

            public var statusCode: Int {
                switch self {
                case .status200: return 200
                }
            }

            public var successful: Bool {
                switch self {
                case .status200: return true
                }
            }

            public init(statusCode: Int, data: Data, decoder: ResponseDecoder) throws {
                switch statusCode {
                case 200: self = try .status200(decoder.decode(Status200.self, from: data))
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
