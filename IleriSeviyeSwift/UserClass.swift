//
//  UserClass.swift
//  IleriSeviyeSwift
//
//  Created by Abdulsamet Bakmaz on 2.10.2022.
//

import Foundation

class UserClass{
    var isim : String
    var yas : Int
    var meslek : String
    
    init(isim: String, yas: Int, meslek: String){
        self.isim = isim
        self.yas = yas
        self.meslek = meslek
    }
    func yasiBirArttir() {
        self.yas += 1
    }
}
