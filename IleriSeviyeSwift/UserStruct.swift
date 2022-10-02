//
//  UserStruct.swift
//  IleriSeviyeSwift
//
//  Created by Abdulsamet Bakmaz on 2.10.2022.
//

import Foundation

struct UserStruct{
    var isim : String
    var yas : Int
    var meslek : String
    
    mutating func yasiBirArttir(){
        self.yas += 1 //self yani structın ta kendisi değiştirilemez mutable özelliğinden dolayı. Ancak fonksiyonu mutating olarak tanımlarsak bu işlemi yapabiliriz
    }
}
