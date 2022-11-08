//
//  API.swift
//  GreenTrack
//
//  Created by 洪裕權 on 11/8/22.
//

import Foundation
struct API {



    static func getBuses(completion: @escaping ([[String:Any]]?) -> Void) {

        // ––––– TODO: Add your own API key!
        let apikey = "DUJrDN9234mjU8WU36JtavEFJ"

        // number for bus
        let busNumber = "67"
        
        let url = URL(string: "https://ctabustracker.com/bustime/api/v2/getvehicles?key=\(apikey)&rt=\(busNumber)&tmres=s&format=json")!

        var request = URLRequest(url: url, cachePolicy: .reloadIgnoringLocalCacheData, timeoutInterval: 10)

        // Insert API Key to request
        // request.setValue("Bearer \(apikey)", forHTTPHeaderField: "Authorization")

        let session = URLSession(configuration: .default, delegate: nil, delegateQueue: OperationQueue.main)
        let task = session.dataTask(with: request) { (data, response, error) in
            // This will run when the network request returns
            if let error = error {
                print(error.localizedDescription)
            } else if let data = data {



                // ––––– TODO: Get data from API and return it using completion
                print(data)
                let dataDictoionary = try! JSONSerialization.jsonObject(with: data, options: []) as! [String: Any]
                print(dataDictoionary)
                // TODO: fix this with correct format
                let buses = dataDictoionary["bustime-response"] as! [[String: Any]]
                return completion(buses)

                }
            }

            task.resume()

        }
    }
