//
//  User.swift
//  LogInApp
//
//  Created by Maksim Grischenko on 24.04.2022.
//

import Foundation


struct User {
    let login: String
    let password: String
    let person: Person
    
    static func getUser() -> User {
        User(
            login: "Maksim",
            password: "SwiftBook",
            person: Person(
                name: "Максим",
                surname: "Грищенко",
                hobbies: Hobby(
                    buildPC: "Мой ПК",
                               favoriteGame: "Моя любимая игра - BloodBorne",
                               favoriteFilm: "Мой любимый фильм - Форест Гамп",
                               favoriteBook: "Моя любимая трилогия книг - В память о прошлом Земли "
                ),
                work: Work(
                    position: "Должность: Технический директор",
                    nameOfCompany: "Компания: ООО УниверЭко",
                    kindOfActivity: "Вид деятельности: Разработка природоохранной документации"
                ),
                education: Education(
                    nameOfUniversity: "Университет: Сибирский Федеральный Универститет",
                    nameOfSpecialization: "Специализация: Экологический мониторинг и защита атмосферы",
                    nameOfQualification: "Квалификация: Инженер",
                    yearOfAdmission: 2004,
                    yearOfGraduation: 2009
                 )
            )
        )
}
}

struct Person {
    let name: String
    let surname: String
    let hobbies: Hobby
    let work: Work
    let education: Education
}

struct Hobby {
    let buildPC: String
    let favoriteGame: String
    let favoriteFilm: String
    let favoriteBook: String
}

struct Work {
    let position: String
    let nameOfCompany: String
    let kindOfActivity: String
}

struct Education {
    let nameOfUniversity: String
    let nameOfSpecialization: String
    let nameOfQualification: String
    let yearOfAdmission: Int
    let yearOfGraduation: Int
}
