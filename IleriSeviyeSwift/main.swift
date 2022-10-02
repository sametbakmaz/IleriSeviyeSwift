//
//  main.swift
//  IleriSeviyeSwift
//
//  Created by Abdulsamet Bakmaz on 2.10.2022.
//

import Foundation

//Struct -> Inheritance yok, işlem stack - filo (RAM) çalışır, daha hızlı ve basiti, value type(değer tip),immutable(değiştirişemez davranış)
//Class -> Inheritance var, işlem heap - fifo (RAM) çalışır, reference type(referans tip), mutable(değiştirilebilir davranış)

let sametClass = UserClass(isim: "Samet", yas: 24, meslek: "Bilgisayar Mühendisi")
print(sametClass.isim + " " + String(sametClass.yas) + " " + sametClass.meslek)

var sametStruct = UserStruct(isim: "SametStruct", yas: 24, meslek: "BMstruct")
print(sametStruct.isim + " " + String(sametStruct.yas) + " " + sametStruct.meslek)

sametClass.yas = 30
print(sametClass.yas) //değiştirilebilir

sametStruct.yas = 30 //normal struct tanımıda bu şekilde değiştirilemez fakar sametStruct değişkenini var olarak tanımlarsak sorun kalmaz
print(sametStruct.yas)

// referans ve değer farkı
let sametClassKopyası = sametClass
var sametStructKoyası = sametStruct

print(sametClassKopyası.yas)
print(sametStructKoyası.yas)

sametClassKopyası.yas = 34
sametStructKoyası.yas = 34

print(sametClassKopyası.yas)
print(sametStructKoyası.yas)

print(sametClass.yas) //ekran çıktısı 34. reference type -> class/kopyalama yapıldığında tek bir obje var, 2 referans var
print(sametStruct.yas) //ekran çıktısı 33. value type -> struct/kopyalama yapıldığında iki obje var

print(sametClass.yas)
sametClass.yasiBirArttir()
print(sametClass.yas)

print(sametStruct.yas)
sametStruct.yasiBirArttir()
print(sametStruct.yas)

//tupple -> koleksiyon yapısı içerisinde birden fazla değer barındırmamızı sağlıyor

var benimTupple = (10,20)
print(benimTupple.0)
var tupple2 = ("samet",123)
print(tupple2.0)
var tupple3 = (23,[1,2,3,4,5])
print(tupple3.1[2])
let oncedenBelirlenenTupple : (String,String)
oncedenBelirlenenTupple.0 = "samet"
oncedenBelirlenenTupple.1 = "bakmaz"
print(oncedenBelirlenenTupple.1)

//Guard Let -> şunu yapabilirsen bunu yap gibi algoritmalar

let numaraStringi = "5"

func intCevirenIfLetFonksiyonu(string : String) -> Int {
    if let benimInteger = Int(string){
        return benimInteger
    }else{
        return 0
    }
}
print(intCevirenIfLetFonksiyonu(string: numaraStringi))

func intCevirenGuardLetFonksiyonu(string: String) -> Int {
    guard let benimInteger = Int(string) else { //Guard Let işlemi zaten yapacağını düşünür ve direk ya yapamazsam yani else koşulunu ister bizden
        return 0
    }
    return benimInteger
}
print(intCevirenGuardLetFonksiyonu(string: numaraStringi))

//Switch - Case

let günSayisi = 4
var günStringi = ""

if günSayisi == 1 {
    günStringi = "pazartesi"
}else if günSayisi == 2 {
    günStringi = "salı"
}else if günSayisi == 3 {
    günStringi = "çarşamba"
}else {
    günStringi = "pazar"
}
print(günStringi)

switch günSayisi {
case 1 :
    günStringi = "pazartesi"
case 2 :
    günStringi = "salı"
case 3 :
    günStringi = "çarşamba"
default:
    günStringi = "pazar"
}
print(günStringi)
