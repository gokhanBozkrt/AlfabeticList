//
//  CountryData.swift
//  SectionedAlfabeticList
//
//  Created by Gökhan Bozkurt on 11.09.2023.
//

import Foundation

class CountryData: ObservableObject {
    
    
    init() {
        createGroupedCountryList()
    }
    
    var countries = [
        "United States", "Canada", "United Kingdom", "Australia", "Germany", "France", "Japan", "India", "Brazil", "China",
        "South Africa", "Mexico", "Spain", "Italy", "Argentina", "Russia", "South Korea", "Netherlands", "Sweden", "Norway",
        "Denmark", "Finland", "Switzerland", "Austria", "Belgium", "Greece", "Turkey", "Egypt", "Saudi Arabia", "United Arab Emirates",
        "Qatar", "Kuwait", "Oman", "Bahrain", "Jordan", "Israel", "Lebanon", "Iraq", "Iran", "Pakistan", "Afghanistan", "Bangladesh",
        "Sri Lanka", "Nepal", "Bhutan", "Thailand", "Vietnam", "Cambodia", "Malaysia", "Indonesia", "Singapore", "Philippines", "New Zealand",
        "Fiji", "Papua New Guinea", "Chile", "Colombia", "Peru", "Ecuador", "Bolivia", "Paraguay", "Uruguay", "Venezuela", "Panama", "Costa Rica",
        "Nicaragua", "Honduras", "El Salvador", "Guatemala", "Belize", "Cuba", "Jamaica", "Haiti", "Dominican Republic", "Trinidad and Tobago",
        "Barbados", "Grenada", "Saint Lucia", "Saint Vincent and the Grenadines", "Antigua and Barbuda", "Saint Kitts and Nevis", "Guyana",
        "Suriname", "French Guiana", "Mauritius", "Seychelles", "Madagascar", "Kenya", "Nigeria", "South Sudan", "Ethiopia", "Somalia",
        "Uganda", "Rwanda", "Tanzania", "Zimbabwe", "Botswana", "Namibia", "Angola", "Mozambique", "Zambia"
    ]
    
    @Published var countryDictionary = [String: [String]]()
    
    func createGroupedCountryList() {
        let countryList: [String: [String]] = Dictionary(grouping: countries, by: { String($0.first!) })
        countryDictionary = countryList
       
    }
    
}
