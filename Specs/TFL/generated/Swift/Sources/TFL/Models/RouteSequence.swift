//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation
import JSONUtilities

public class RouteSequence: JSONDecodable, JSONEncodable, PrettyPrintable {

    public var direction: String?

    public var isOutboundOnly: Bool?

    public var lineId: String?

    public var lineName: String?

    public var lineStrings: [String]?

    public var mode: String?

    public var orderedLineRoutes: [OrderedRoute]?

    public var stations: [MatchedStop]?

    public var stopPointSequences: [StopPointSequence]?

    public init(direction: String? = nil, isOutboundOnly: Bool? = nil, lineId: String? = nil, lineName: String? = nil, lineStrings: [String]? = nil, mode: String? = nil, orderedLineRoutes: [OrderedRoute]? = nil, stations: [MatchedStop]? = nil, stopPointSequences: [StopPointSequence]? = nil) {
        self.direction = direction
        self.isOutboundOnly = isOutboundOnly
        self.lineId = lineId
        self.lineName = lineName
        self.lineStrings = lineStrings
        self.mode = mode
        self.orderedLineRoutes = orderedLineRoutes
        self.stations = stations
        self.stopPointSequences = stopPointSequences
    }

    public required init(jsonDictionary: JSONDictionary) throws {
        direction = jsonDictionary.json(atKeyPath: "direction")
        isOutboundOnly = jsonDictionary.json(atKeyPath: "isOutboundOnly")
        lineId = jsonDictionary.json(atKeyPath: "lineId")
        lineName = jsonDictionary.json(atKeyPath: "lineName")
        lineStrings = jsonDictionary.json(atKeyPath: "lineStrings")
        mode = jsonDictionary.json(atKeyPath: "mode")
        orderedLineRoutes = jsonDictionary.json(atKeyPath: "orderedLineRoutes")
        stations = jsonDictionary.json(atKeyPath: "stations")
        stopPointSequences = jsonDictionary.json(atKeyPath: "stopPointSequences")
    }

    public func encode() -> JSONDictionary {
        var dictionary: JSONDictionary = [:]
        if let direction = direction {
            dictionary["direction"] = direction
        }
        if let isOutboundOnly = isOutboundOnly {
            dictionary["isOutboundOnly"] = isOutboundOnly
        }
        if let lineId = lineId {
            dictionary["lineId"] = lineId
        }
        if let lineName = lineName {
            dictionary["lineName"] = lineName
        }
        if let lineStrings = lineStrings {
            dictionary["lineStrings"] = lineStrings
        }
        if let mode = mode {
            dictionary["mode"] = mode
        }
        if let orderedLineRoutes = orderedLineRoutes?.encode() {
            dictionary["orderedLineRoutes"] = orderedLineRoutes
        }
        if let stations = stations?.encode() {
            dictionary["stations"] = stations
        }
        if let stopPointSequences = stopPointSequences?.encode() {
            dictionary["stopPointSequences"] = stopPointSequences
        }
        return dictionary
    }

    /// pretty prints all properties including nested models
    public var prettyPrinted: String {
        return "\(Swift.type(of: self)):\n\(encode().recursivePrint(indentIndex: 1))"
    }
}