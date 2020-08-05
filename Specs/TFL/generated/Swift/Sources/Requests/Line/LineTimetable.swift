//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

extension TFL.Line {

    /** Gets the timetable for a specified station on the give line */
    public enum LineTimetable {

        public static let service = APIService<Response>(id: "Line_Timetable", tag: "Line", method: "GET", path: "/Line/{id}/Timetable/{fromStopPointId}", hasBody: false, securityRequirements: [])

        public final class Request: APIRequest<Response> {

            public struct Options {

                /** The originating station's stop point id (station naptan code e.g. 940GZZLUASL, you can use /StopPoint/Search/{query} endpoint to find a stop point id from a station name) */
                public var fromStopPointId: String

                /** A single line id e.g. victoria */
                public var id: String

                public init(fromStopPointId: String, id: String) {
                    self.fromStopPointId = fromStopPointId
                    self.id = id
                }
            }

            public var options: Options

            public init(options: Options) {
                self.options = options
                super.init(service: LineTimetable.service)
            }

            /// convenience initialiser so an Option doesn't have to be created
            public convenience init(fromStopPointId: String, id: String) {
                let options = Options(fromStopPointId: fromStopPointId, id: id)
                self.init(options: options)
            }

            public override var path: String {
                return super.path.replacingOccurrences(of: "{" + "fromStopPointId" + "}", with: "\(self.options.fromStopPointId)").replacingOccurrences(of: "{" + "id" + "}", with: "\(self.options.id)")
            }
        }

        public enum Response: APIResponseValue, CustomStringConvertible, CustomDebugStringConvertible {

            public class Status200: APIModel {

                public var direction: String?

                public var disambiguation: Disambiguation?

                public var lineId: String?

                public var lineName: String?

                public var pdfUrl: String?

                public var stations: [MatchedStop]?

                public var statusErrorMessage: String?

                public var stops: [MatchedStop]?

                public var timetable: Timetable?

                public init(direction: String? = nil, disambiguation: Disambiguation? = nil, lineId: String? = nil, lineName: String? = nil, pdfUrl: String? = nil, stations: [MatchedStop]? = nil, statusErrorMessage: String? = nil, stops: [MatchedStop]? = nil, timetable: Timetable? = nil) {
                    self.direction = direction
                    self.disambiguation = disambiguation
                    self.lineId = lineId
                    self.lineName = lineName
                    self.pdfUrl = pdfUrl
                    self.stations = stations
                    self.statusErrorMessage = statusErrorMessage
                    self.stops = stops
                    self.timetable = timetable
                }

                public required init(from decoder: Decoder) throws {
                    let container = try decoder.container(keyedBy: StringCodingKey.self)

                    direction = try container.decodeIfPresent("direction")
                    disambiguation = try container.decodeIfPresent("disambiguation")
                    lineId = try container.decodeIfPresent("lineId")
                    lineName = try container.decodeIfPresent("lineName")
                    pdfUrl = try container.decodeIfPresent("pdfUrl")
                    stations = try container.decodeArrayIfPresent("stations")
                    statusErrorMessage = try container.decodeIfPresent("statusErrorMessage")
                    stops = try container.decodeArrayIfPresent("stops")
                    timetable = try container.decodeIfPresent("timetable")
                }

                public func encode(to encoder: Encoder) throws {
                    var container = encoder.container(keyedBy: StringCodingKey.self)

                    try container.encodeIfPresent(direction, forKey: "direction")
                    try container.encodeIfPresent(disambiguation, forKey: "disambiguation")
                    try container.encodeIfPresent(lineId, forKey: "lineId")
                    try container.encodeIfPresent(lineName, forKey: "lineName")
                    try container.encodeIfPresent(pdfUrl, forKey: "pdfUrl")
                    try container.encodeIfPresent(stations, forKey: "stations")
                    try container.encodeIfPresent(statusErrorMessage, forKey: "statusErrorMessage")
                    try container.encodeIfPresent(stops, forKey: "stops")
                    try container.encodeIfPresent(timetable, forKey: "timetable")
                }

                public func isEqual(to object: Any?) -> Bool {
                  guard let object = object as? Status200 else { return false }
                  guard self.direction == object.direction else { return false }
                  guard self.disambiguation == object.disambiguation else { return false }
                  guard self.lineId == object.lineId else { return false }
                  guard self.lineName == object.lineName else { return false }
                  guard self.pdfUrl == object.pdfUrl else { return false }
                  guard self.stations == object.stations else { return false }
                  guard self.statusErrorMessage == object.statusErrorMessage else { return false }
                  guard self.stops == object.stops else { return false }
                  guard self.timetable == object.timetable else { return false }
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
