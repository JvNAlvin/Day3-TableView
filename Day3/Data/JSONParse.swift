//
//  JSONParse.swift
//  Day3
//
//  Created by Jovan A on 15/06/22.
//

import Foundation

class FetchData: ObservableObject {
    @Published var result = [Books]()
    
    func readJSON() {
        do {
            if let bundlePath = Bundle.main.path(forResource: "AmazonBooks", ofType: "json"), let jsonData = try String(contentsOfFile: bundlePath).data(using: .utf8) {
                parseJSON(data: jsonData)
            }
        }
        catch {
            print("error read")
        }
    }

    private func parseJSON(data: Data) {
        do {
            let decoded = try JSONDecoder().decode([Books].self, from: data)
            result = decoded
        }
        catch {
            print("debug: \(error)")
        }
    }
}


