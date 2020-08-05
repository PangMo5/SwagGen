//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

extension TFL.StopPoint {

    /** Gets Stopoints that are reachable from a station/line combination. */
    public enum StopPointReachableFrom {

        public static let service = APIService<Response>(id: "StopPoint_ReachableFrom", tag: "StopPoint", method: "GET", path: "/StopPoint/{id}/CanReachOnLine/{lineId}", hasBody: false, securityRequirements: [])

        /** A comma-separated list of service types to filter on. If not specified. Supported values: Regular, Night. Defaulted to 'Regular' if not specified */
        public enum ServiceTypes: String, Codable, Equatable, CaseIterable {
            case regular = "Regular"
            case night = "Night"
        }

        public final class Request: APIRequest<Response> {

            public struct Options {

                /** The id (station naptan code e.g. 940GZZLUASL, you can use /StopPoint/Search/{query} endpoint to find a stop point id from a station name) of the stop point to filter by */
                public var id: String

                /** Line id of the line to filter by (e.g. victoria) */
                public var lineId: String

                /** A comma-separated list of service types to filter on. If not specified. Supported values: Regular, Night. Defaulted to 'Regular' if not specified */
                public var serviceTypes: [ServiceTypes]?

                public init(id: String, lineId: String, serviceTypes: [ServiceTypes]? = nil) {
                    self.id = id
                    self.lineId = lineId
                    self.serviceTypes = serviceTypes
                }
            }

            public var options: Options

            public init(options: Options) {
                self.options = options
                super.init(service: StopPointReachableFrom.service)
            }

            /// convenience initialiser so an Option doesn't have to be created
            public convenience init(id: String, lineId: String, serviceTypes: [ServiceTypes]? = nil) {
                let options = Options(id: id, lineId: lineId, serviceTypes: serviceTypes)
                self.init(options: options)
            }

            public override var path: String {
                return super.path.replacingOccurrences(of: "{" + "id" + "}", with: "\(self.options.id)").replacingOccurrences(of: "{" + "lineId" + "}", with: "\(self.options.lineId)")
            }

            public override var queryParameters: [String: Any] {
                var params: [String: Any] = [:]
                if let serviceTypes = options.serviceTypes?.encode().map({ String(describing: $0) }).joined(separator: ",") {
                  params["serviceTypes"] = serviceTypes
                }
                return params
            }
        }

        public enum Response: APIResponseValue, CustomStringConvertible, CustomDebugStringConvertible {
            public typealias SuccessType = [StopPoint]

            /** OK */
            case status200([StopPoint])

            public var success: [StopPoint]? {
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
                case 200: self = try .status200(decoder.decode([StopPoint].self, from: data))
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
