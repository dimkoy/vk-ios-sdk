//
//  PostModel.swift
//  vkwatch Extension
//
//  Created by Дмитрий Червяков on 30.10.2020.
//  Copyright © 2020 VK. All rights reserved.
//

import Foundation

struct PostModel {
    let id: Int
    let postAuhtor: String
    let forrmatedDate: String
    let postImageUrl: String
    let postText: String
    let likesCount: Int
    let commentsCount: Int
    let repostCount: Int
    var isFavorite: Bool = false

    static func mock() -> [PostModel] {
        [
            PostModel(id: 0,
                      postAuhtor: "Owner name",
                      forrmatedDate: "today at 08:51",
                      postImageUrl: "https://sun9-29.userapi.com/altYM4okuyYx6wHc1yzBORNV34YCVqPyfTyggA/lekbZWPOoLU.jpg",
                      postText: "ЛОРД\n⠀\nНевероятно красивый кот Лорд, возраст около 1,5 лет, кастрирован, привит и обработан от внешних и внутренних паразитов!\n⠀\nЛорд прекрасный компаньон для тех, у кого нет возможности и времени собирать разбитый горшок с цветком. Очень умный и воспитанный кот, не склонен к агрессии, контактный и невероятно ласковый.⠀\nНапоминаем Вам:\n• команда @flagman_vet оказывает все необходимые услуги для комфортно жизни ваших и наших питомцев!\n• 🕰 работы нашего стационара:\n11:00-13:00\n17:00-19:00\nВт и Ср не приёмные дни\n⠀\nЛорд ждёт семью по адресу:\n🗺 Красноармейская 6А\n📱 89270175022",
                      likesCount: 65,
                      commentsCount: 1,
                      repostCount: 3),
            PostModel(id: 1,
                      postAuhtor: "Owner name",
                      forrmatedDate: "28 Oct at 20:30",
                      postImageUrl: "https://sun9-12.userapi.com/X_feGIYqOnRXXVDHXSOu9pobyW9TkJpQhXRWYQ/7CtP9HFp8Zg.jpg",
                      postText: "",
                      likesCount: 15,
                      commentsCount: 0,
                      repostCount: 2),
            PostModel(id: 2,
                      postAuhtor: "Owner name",
                      forrmatedDate: "today at 14:45",
                      postImageUrl: "https://sun9-76.userapi.com/T769MuNTAAz7olaMFQ5rqa3W-qb9L6M1KZcyQQ/chvuTY8VlUE.jpg",
                      postText: "Сегодня день российского кино и мы выкладываем фильм, посвященный выставке [club189991619|Бремя Модерна], [club197877259|премьера] которого состоялась в прошедшую субботу, 22 августа, в нашем дворе. Ждите новостей: цикл встреч по выставке будет в сентябре и октябре! \n\nАвторы: Даниил Сайко, Глеб Ходин \nКомпозитор: Никита Алёшин \nЗвукорежиссер: Константин Молоканов \nСъемка с квадрокоптера: Влад Виноградов \nНачальный текст фильма: Илья Саморуков \nИдея проекта: Музей Модерна \n \nСамара, 2020\n\nhttps://youtu.be/u2gBHm5kA7w",
                      likesCount: 3,
                      commentsCount: 1,
                      repostCount: 0),
            PostModel(id: 3,
                      postAuhtor: "Owner name",
                      forrmatedDate: "Two hours ago",
                      postImageUrl: "https://sun9-22.userapi.com/cX7hN2j8nuDRY1bB2idCfiVnpHvci1msk6ZJjA/vyHVHv5OwEo.jpg",
                      postText: "",
                      likesCount: 5,
                      commentsCount: 0,
                      repostCount: 0),
            PostModel(id: 4,
                      postAuhtor: "Owner name",
                      forrmatedDate: "today at 11:48",
                      postImageUrl: "https://sun9-52.userapi.com/K3tqT_XBRU6SzYOmU-djxU6A5l5KJrRLF7Z7Tw/NYBQBo59DJY.jpg",
                      postText: "VK Cup — это чемпионат ВКонтакте, организованный совместно с Codeforces и ML Bootcamp в Санкт-Петербурге.\nУ соревнования четыре параллельных направления: по олимпиадному программированию, дизайну интерфейсов, мобильной разработке и машинному обучению. Лидеры этих треков разделят общий призовой фонд — 2 752 512 рублей. Первый сезон завершился в 2012 году, финал шестого проходит прямо сейчас.\nРасписание:\n12:00 — Открытие\n12:20 — ход соревнования в треке ML\n12:35 — питчинг проектов в треке Design\n14:20 — питчинг проектов в треке Mobile\n16:00 — ход соревнования в треке ML\n16:15 — питчинг проектов в треке Design\n18:05 — ход соревнования в треке Engine\n18:10 — питчинг проектов в треке Mobile\n20:00 — ход соревнования в треке Engine, финальные результаты до разморозки\n20:15 — ход соревнования в треке ML\n20:30–21:00 — Награждение победителей",
                      likesCount: 41,
                      commentsCount: 3,
                      repostCount: 1),
            PostModel(id: 5,
                      postAuhtor: "Owner name",
                      forrmatedDate: "today at 16:30",
                      postImageUrl: "https://sun9-37.userapi.com/2WGGcIPeDedxTctsuv37qQNJgpq_lWw0cI_JwA/wVIJ05luU9Y.jpg",
                      postText: "Я перепутал время с другой стороны Земли и пропустил прямой эфир, так что слушайте мою песню на шоу \"The Loud Spot with Sebastian\" в записи \n😎\nhttps://www.spreaker.com/episode/41740129",
                      likesCount: 2,
                      commentsCount: 0,
                      repostCount: 0)
        ]
    }
}




