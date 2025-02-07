//
//  Bookmarkmodel.swift
//  HotCha
//
//  Created by 문재윤 on 2/7/25.
//

import SwiftData

@Model
class Bookmarkmodel: Identifiable {
    var route_id: String
    var city_code: String
    var destination_stop_id: String
    var destination_stop_name: String
    var bus_no: String
    var route_type: String
    var bookmark_label: String
    

    init(route_id: String, city_code: String, destination_stop_id: String, destination_stop_name: String, bus_no: String, route_type: String, bookmark_label: String) {
        self.route_id = route_id
        self.city_code = city_code
        self.destination_stop_id = destination_stop_id
        self.destination_stop_name = destination_stop_name
        self.bus_no = bus_no
        self.route_type = route_type
        self.bookmark_label = bookmark_label
    }
}
