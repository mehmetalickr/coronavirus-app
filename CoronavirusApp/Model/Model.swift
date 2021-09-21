//
//  Model.swift
//  CoronavirusApp
//
//  Created by Mehmet Ali ÇAKIR on 21.09.2021.
//

import Foundation


struct TotalData {
    
    let confirmed: Int
    let critical: Int
    let deaths: Int
    let recovered: Int
    
    var fatalityRate: Double {
        return (100.00 * Double(deaths)) / Double(confirmed)
    }
    
    var recoveredRate: Double {
        return (100.00 * Double(recovered)) / Double(confirmed)
    }
}


struct CountryData {
    
    let country: String
    let confirmed: Int64
    let critical: Int64
    let deaths: Int64
    let recovered: Int64
    let longitude: Double
    let latitude: Double
    
    var fatalityRate: Double {
        return (100.00 * Double(deaths)) / Double(confirmed)
    }
    
    var recoveredRate: Double {
        return (100.00 * Double(recovered)) / Double(confirmed)
    }
}

struct DetailedCountryData {
    
    let country: String
    
    let confirmedCases: Int
    let newCases: Int
    
    let recoveredCases: Int
    let criticalCases: Int
    let activeCases: Int
    
    let deaths: Int
    let newDeaths: Int
    
    let testsDone: Int
    
    var fatalityRate: Double {
        return (100.00 * Double(deaths)) / Double(confirmedCases)
    }
    
    var recoveredRate: Double {
        return (100.00 * Double(recoveredCases)) / Double(confirmedCases)
    }
}



let testTotalData = TotalData(confirmed: 200, critical: 100, deaths: 20, recovered: 50)
let testCountryData = CountryData(country: "Test", confirmed: 500, critical: 300, deaths: 200, recovered: 100, longitude: 0.0, latitude: 0.0)

