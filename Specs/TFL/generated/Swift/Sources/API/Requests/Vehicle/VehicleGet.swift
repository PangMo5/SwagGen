//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation
import JSONUtilities

extension API.Vehicle {

    public enum VehicleGet {

      public static let service = APIService<Response>(id: "Vehicle_Get", tag: "Vehicle", method: "GET", path: "/Vehicle/{ids}/Arrivals", hasBody: false)

      public class Request: APIRequest<Response> {

          public struct Options {

              /** A comma-separated list of vehicle ids e.g. LX58CFV,LX11AZB,LX58CFE. Max approx. 25 ids. */
              public var ids: [String]

              public init(ids: [String]) {
                  self.ids = ids
              }
          }

          public var options: Options

          public init(options: Options) {
              self.options = options
              super.init(service: VehicleGet.service)
          }

          /// convenience initialiser so an Option doesn't have to be created
          public convenience init(ids: [String]) {
              let options = Options(ids: ids)
              self.init(options: options)
          }

          public override var path: String {
              return super.path.replacingOccurrences(of: "{" + "ids" + "}", with: "\(self.options.ids)")
          }
        }

        public enum Response: APIResponseValue, CustomStringConvertible, CustomDebugStringConvertible {
            public typealias SuccessType = [Prediction]

            /** OK */
            case success200([Prediction])

            public var success: [Prediction]? {
                switch self {
                case .success200(let response): return response
                default: return nil
                }
            }

            public var response: Any {
                switch self {
                case .success200(let response): return response
                }
            }

            public var statusCode: Int {
              switch self {
              case .success200: return 200
              }
            }

            public var successful: Bool {
              switch self {
              case .success200: return true
              }
            }

            public init(statusCode: Int, data: Data) throws {
                switch statusCode {
                case 200: self = try .success200(JSONDecoder.decode(data: data))
                default: throw APIError.unexpectedStatusCode(statusCode: statusCode, data: data)
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