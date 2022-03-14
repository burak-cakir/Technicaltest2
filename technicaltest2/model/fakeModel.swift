//
//  fakeModel.swift
//  technicaltest2
//
//  Created by burak cakir on 13.03.2022.
//

import Foundation

struct fakeModel : Codable , Identifiable {
    var id :  Int
    var title : String = ""
    var price : Double? = 0.0
//    var description : String = ""
//    var category : String = ""
   var image : String = ""
//    var rating : ratingModel = ratingModel()
 }

//struct ratingModel : Codable{
//    var rate : Int = 0
//    var count : Int = 0
//
//}

//{
//        "id": 1,
//        "title": "Fjallraven - Foldsack No. 1 Backpack, Fits 15 Laptops",
//        "price": 109.95,
//        "description": "Your perfect pack for everyday use and walks in the forest. Stash your laptop (up to 15 inches) in the padded sleeve, your everyday",
//        "category": "men's clothing",
//        "image": "https://fakestoreapi.com/img/81fPKd-2AYL._AC_SL1500_.jpg",
//
//    "rating": {
//            "rate": 3.9,
//            "count": 120
//        }
//    }
