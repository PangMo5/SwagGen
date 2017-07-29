//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation
import JSONUtilities

public class Crowding: JSONDecodable, JSONEncodable, PrettyPrintable {

    /** Busiest times at a station (static information) */
    public var passengerFlows: [PassengerFlow]?

    /** Train Loading on a scale 1-6, 1 being "Very quiet" and 6 being "Exceptionally busy" (static information) */
    public var trainLoadings: [TrainLoading]?

    public init(passengerFlows: [PassengerFlow]? = nil, trainLoadings: [TrainLoading]? = nil) {
        self.passengerFlows = passengerFlows
        self.trainLoadings = trainLoadings
    }

    public required init(jsonDictionary: JSONDictionary) throws {
        passengerFlows = jsonDictionary.json(atKeyPath: "passengerFlows")
        trainLoadings = jsonDictionary.json(atKeyPath: "trainLoadings")
    }

    public func encode() -> JSONDictionary {
        var dictionary: JSONDictionary = [:]
        if let passengerFlows = passengerFlows?.encode() {
            dictionary["passengerFlows"] = passengerFlows
        }
        if let trainLoadings = trainLoadings?.encode() {
            dictionary["trainLoadings"] = trainLoadings
        }
        return dictionary
    }

    /// pretty prints all properties including nested models
    public var prettyPrinted: String {
        return "\(type(of: self)):\n\(encode().recursivePrint(indentIndex: 1))"
    }
}