//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

extension TFL.Occupancy {

    /** Gets the occupancy for a car park with a given id */
    public enum GetOccupant {

        public static let service = APIService<Response>(id: "getOccupant", tag: "Occupancy", method: "GET", path: "/Occupancy/CarPark/{id}", hasBody: false, securityRequirements: [])

        public final class Request: APIRequest<Response> {

            public struct Options {

                public var id: String

                public init(id: String) {
                    self.id = id
                }
            }

            public var options: Options

            public init(options: Options) {
                self.options = options
                super.init(service: GetOccupant.service)
            }

            /// convenience initialiser so an Option doesn't have to be created
            public convenience init(id: String) {
                let options = Options(id: id)
                self.init(options: options)
            }

            public override var path: String {
                return super.path.replacingOccurrences(of: "{" + "id" + "}", with: "\(self.options.id)")
            }
        }

        public enum Response: APIResponseValue, CustomStringConvertible, CustomDebugStringConvertible {

            public class Status200: APIModel {

                public var bays: [Bay]?

                public var carParkDetailsUrl: String?

                public var id: String?

                public var name: String?

                public init(bays: [Bay]? = nil, carParkDetailsUrl: String? = nil, id: String? = nil, name: String? = nil) {
                    self.bays = bays
                    self.carParkDetailsUrl = carParkDetailsUrl
                    self.id = id
                    self.name = name
                }

                public required init(from decoder: Decoder) throws {
                    let container = try decoder.container(keyedBy: StringCodingKey.self)

                    bays = try container.decodeArrayIfPresent("bays")
                    carParkDetailsUrl = try container.decodeIfPresent("carParkDetailsUrl")
                    id = try container.decodeIfPresent("id")
                    name = try container.decodeIfPresent("name")
                }

                public func encode(to encoder: Encoder) throws {
                    var container = encoder.container(keyedBy: StringCodingKey.self)

                    try container.encodeIfPresent(bays, forKey: "bays")
                    try container.encodeIfPresent(carParkDetailsUrl, forKey: "carParkDetailsUrl")
                    try container.encodeIfPresent(id, forKey: "id")
                    try container.encodeIfPresent(name, forKey: "name")
                }

                public func isEqual(to object: Any?) -> Bool {
                  guard let object = object as? Status200 else { return false }
                  guard self.bays == object.bays else { return false }
                  guard self.carParkDetailsUrl == object.carParkDetailsUrl else { return false }
                  guard self.id == object.id else { return false }
                  guard self.name == object.name else { return false }
                  return true
                }

                public static func == (lhs: Status200, rhs: Status200) -> Bool {
                    return lhs.isEqual(to: rhs)
                }
            }
            public typealias SuccessType = Status200

            /** OK */
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
