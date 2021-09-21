//
//  CountryDetailView.swift
//  CoronavirusApp
//
//  Created by Mehmet Ali ÇAKIR on 21.09.2021.
//

import SwiftUI

struct CountryDetailView: View {
    
    @ObservedObject var countryStatsRequest = CountryStatsFetchRequest()
    
    var countryName: String
    
    var body: some View {
        
        VStack {
            VStack {
                CountryDetailRow(number: countryStatsRequest.detailedCountryData?.confirmedCases.formatNumber() ?? "Err", name: "Confirmed")
                    .padding(.top)
                
                CountryDetailRow(number: countryStatsRequest.detailedCountryData?.activeCases.formatNumber() ?? "Err", name: "Active Cases")
                CountryDetailRow(number: "+" + (countryStatsRequest.detailedCountryData?.newCases.formatNumber() ?? "Err"), name: "New Cases")
                CountryDetailRow(number: countryStatsRequest.detailedCountryData?.recoveredCases.formatNumber() ?? "Err", name: "Recovered Cases", color: .green)
                CountryDetailRow(number: countryStatsRequest.detailedCountryData?.criticalCases.formatNumber() ?? "Err", name: "Critical Cases", color: .yellow)
                
                CountryDetailRow(number: countryStatsRequest.detailedCountryData?.deaths.formatNumber() ?? "Err", name: "Deaths", color: .red)
                CountryDetailRow(number: "+" + (countryStatsRequest.detailedCountryData?.newDeaths.formatNumber() ?? "Err"), name: "New Deaths", color: .red)
                
                CountryDetailRow(number: countryStatsRequest.detailedCountryData?.testsDone.formatNumber() ?? "Err", name: "Tests Done", color: .yellow)
                
                CountryDetailRow(number: String(format: "%.2f", countryStatsRequest.detailedCountryData?.fatalityRate ?? 0.0) + "%", name: "Fatality Rate", color: .red)
                CountryDetailRow(number: String(format: "%.2f", countryStatsRequest.detailedCountryData?.recoveredRate ?? 0.0) + "%", name: "Recovery Rate", color: .green)
                
                
            }
            .background(Color("cardBackgroundGray"))
            .cornerRadius(8)
            .padding()
            
            
            Spacer()
        }
        .padding(.top, 25)
        .navigationBarTitle(countryName)
        .onAppear() {
            self.getStatistics()
        }
    }
    
    private func getStatistics() {
        countryStatsRequest.getStatsFor(country: self.countryName.replacingOccurrences(of: " ", with: "-"))
    }
    
}

