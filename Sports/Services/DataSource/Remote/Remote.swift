//
//  Remote.swift
//  Sports
//
//  Created by Nada Ashraf Hamed on 21/04/2021.
//

import Foundation
import Alamofire
class Remote: RemoteProtocol {
    func getAllLeagues(strSport: String!, completionHandler:@escaping ([LeagueItem]) ->Void ) {
        let parameters = ["s": strSport]

        AF.request(Helper.leaguesURL,parameters: parameters).responseDecodable(of: Leagues.self) { (response) in
            if(response.data != nil){
                completionHandler((response.value)!.countrys)
            }
        }
    }
    
}
