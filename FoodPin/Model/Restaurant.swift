//
//  Restaurant.swift
//  FoodPin
//
//  Created by NDHU_CSIE on 2020/11/19.
//  Copyright © 2020 NDHU_CSIE. All rights reserved.
//

import Foundation

class Restaurant: NSObject, Codable {
    var name: String
    var type: String
    var location: String
    var phone: String
    var summary: String
    var image: String
    var isVisited: Bool
    var rating: String
    
    init(name: String, type: String, location: String, phone: String, summary: String, image: String, isVisited: Bool) {
        self.name = name
        self.type = type
        self.location = location
        self.phone = phone
        self.summary = summary
        self.image = image
        self.isVisited = isVisited
        self.rating = ""
    }
    
    convenience override init() {
        self.init(name: "", type: "", location: "", phone: "", summary: "", image: "", isVisited: false)
    }
    
    static func generateData(sourceArray: inout [Restaurant]) {
    sourceArray = [ 
           Restaurant(name: "威廚食府-平價料理", type: "亞洲融合料理", location: "970花蓮縣花蓮市明心街1之23號1F", phone: "0938 288 679", summary: "「花蓮威廚食府-平價美食位於花蓮郵政總局後方，專營個人套餐、美味小點、私房麵食及手作冷凍調理包等應有盡有的美食，用心做出好料理，讓大家吃得健康滿足且價格經濟實惠～」", image: "1.jpg", isVisited: false),
           Restaurant(name: "台灣 花蓮在地小吃~餓勢力精緻麵食", type: "台灣菜", location: "970花蓮縣花蓮市公正街6號", phone: "03 833 6081", summary: "綜合市場餓勢力麵食 三好一公道 市場微型創業 二代接班成功撐起一片天 綜合市場是花蓮唯一位在市中心的傳統市場，餓勢力麵食從早上7點就開始營業，一直到下午2點，紅色的招牌在人來人往的市場更顯得醒目，30年來始終沒有擴大店鋪。市場的人很早就開始工作，大多數的人工作到7點正好可以休息片刻，來到這的客人幾乎都是熟面孔，固定時間前來報到，點上一碗什錦麵和一盤小菜，就此補足一天的飽滿精神。", image: "2.jpg", isVisited: false),
           Restaurant(name: "花蓮公正包子店", type: "中式包點店", location: " 970花蓮縣花蓮市中山路199-2號", phone: "03 834 2933", summary: "排隊能排到馬路上，就足以證明他的威力了，價格根本就是80年90年代才會出現的價格。小籠包是舊台式做法厚厚的那種，肉餡不馬虎湯汁甜實在好吃。小籠包吃多覺得膩旁邊公正紅茶來一杯 早餐飽了！", image: "3.jpg", isVisited: false),
           Restaurant(name: "液香扁食", type: "熟食店", location: "970花蓮縣花蓮市信義街42號", phone: "03 832 6761", summary: "我是當地花蓮人 從小吃到大 回鄉第一就想吃小時候記憶中的小吃 四月中親自到店宅配我要的  知道物價上漲運費增加就算了 回來之後煮了 皮變薄 也變小顆（因沒算粒數）真讓人感嘆....以前一顆要做兩口吃 現在一口一顆也不滿足...", image: "4.jpg", isVisited: false),
           Restaurant(name: "竹陽活海鮮", type: "海鮮餐廳", location: "970花蓮縣花蓮市節約街40號", phone: "03 835 3178", summary: "「趕快來預訂外帶2019年的除夕團圓飯年菜囉！也可餐廳內用，桌數有限，年節時期正常營業，請盡早預訂喔！03-8353178」", image: "5.jpg", isVisited: false),
           Restaurant(name: "庸的廚房", type: "餐廳", location: "970花蓮縣花蓮市中華路489號", phone: "03 851 2926", summary: "務必預約，提前點餐會送小菜豆干，豆干不是小小份的，蠻有誠意的小菜，第一道麻婆豆腐差點把飯嗑光，青菜連吃素愛地球的同行友人都說好吃，三杯中卷很香，菜脯蛋厚厚的，芋泥香酥鴨不虧是招牌，芋泥綿密好吃，吃的時候要沾醬。可惜的是我們是晚餐來吃，沒法吃到午餐限定的菜色，下次再來吧！", image: "6.jpg", isVisited: false),
           Restaurant(name: "花邊美食館", type: "餐廳", location: "973花蓮縣吉安鄉自立路二段36之1號973", phone: " 03 856 0676", summary: " 食物口味中規中矩。店員服務態度很好。整體上來說可以當作一般的餐廳吃吃，但特地要找美食大老遠跑來就不必了。", image: "7.jpg", isVisited: false),
           Restaurant(name: "周家蒸餃", type: "熟食店", location: "花蓮縣花蓮市公正街4-20號970號", phone: "03 835 0006", summary: "蒸餃出乎意料地非常美味。而小籠包，請千萬不要拿鼎O豐之類的店來想像，它大顆到簡直是肉包了。皮越嚼越香甜，肉餡相當有水準。水餃的皮和蒸餃的差異相當大，也同樣好吃。", image: "8.jpg", isVisited: false),
           Restaurant(name: "炸彈蔥油餅 黃車", type: "熟食店", location: "970花蓮縣花蓮市復興街102號", phone: "0931 121 661", summary: "同時吃過藍車及黃車之後，就會明顯感受到，黃車確實比較好吃。但，就是炸過的麵粉餅（嗯，幾乎沒有蔥感），配上炸過的雞蛋，在剛起鍋仍燙口的狀態下，還算是挺美味的。若是沒有要求蛋要全熟，咬下瞬間蛋黃會噴出來，不可不慎。", image: "9.jpg", isVisited: false),
           Restaurant(name: "鵝肉先生", type: "餐廳", location: "970花蓮縣花蓮市中山路259號", phone: "03 833 1902", summary: "地道的鵝料理，有著近40年的烹煮經驗及調料配方。個人必點鵝肝，粉嫩的鵝肝慢慢的鮮香味，還可以沾著醬油與香菜拌製成的沾料！不佔據鵝肝的鮮甜味，反倒給予了淡淡的鹹香鹹香滋味。", image: "10.jpg", isVisited: false),
           Restaurant(name: "Upstate", type: "Seafood", location: "95 1st Ave New York, NY 10003", phone: "343-233221", summary: "The absolute best seafood place in town. The atmosphere here creates a very homey feeling. We open at 5 PM, and close at 10:30 PM. ", image: "upstate.jpg", isVisited: false),
           Restaurant(name: "Traif", type: "American", location: "229 S 4th St Brooklyn, NY 11211", phone: "985-723623", summary: "A young crowd populates this pork-focused American eatery in an older Williamsburg neighborhood. We open at 6PM, and close at 11 PM. If you enjoy a shared small plates dinner experience, come over and have a try.", image: "traif.jpg", isVisited: false),
           Restaurant(name: "Graham Avenue Meats", type: "Breakfast & Brunch", location: "445 Graham Ave Brooklyn, NY 11211", phone: "455-232345", summary: "Classic Italian deli & butcher draws patrons with meat-filled submarine sandwiches. We use the freshest meats and veggies to create the perfect panini for you. We look forward to seeing you!", image: "grahamavenuemeats.jpg", isVisited: false),
           Restaurant(name: "Waffle & Wolf", type: "Coffee & Tea", location: "413 Graham Ave Brooklyn, NY 11211", phone: "434-232322", summary: "Small shop, some seating, definitely something different! We open at 7 every morning except Sunday, and close at 9 PM. We offer a variety of waffles with choices of sweet & savory fillings. If you are gluten free and craving waffles, this is the place to go.", image: "wafflewolf.jpg", isVisited: false),
           Restaurant(name: "Five Leaves", type: "Bistro", location: "18 Bedford Ave Brooklyn, NY 11222", phone: "343-234553", summary: " Great food, cocktails, ambiance, service. Nothing beats having a warm dinner and a whiskey. We open at 8 every morning, and close at 1 AM. The ricotta pancakes are something you must try.", image: "fiveleaves.jpg", isVisited: false),
           Restaurant(name: "Cafe Lore", type: "Latin American", location: "Sunset Park 4601 4th Ave Brooklyn, NY 11220", phone: "342-455433", summary: "Good place, great environment and amazing food! We open at 10 every morning except Sunday, and close at 9 PM. Give us a visit! Enjoy mushroom raviolis, pumpkin raviolis, meat raviolis with sausage and peppers, pork cutlets, eggplant parmesan, and salad.", image: "cafelore.jpg", isVisited: false),
           Restaurant(name: "Confessional", type: "Spanish", location: "308 E 6th St New York, NY 10003", phone: "643-332323", summary: "Most delicious cocktail you would ever try! Our menu includes a wide range of high quality internationally inspired dishes, vegetarian options, and local cuisine. We open at 10 AM, and close at 10 PM. We welcome you into our place to enjoy a meal with your friends.", image: "confessional.jpg", isVisited: false),
           Restaurant(name: "Barrafina", type: "Spanish", location: "54 Frith Street London W1D 4SL United Kingdom", phone: "542-343434", summary: "a collection of authentic Spanish Tapas bars in Central London! We have an open kitchen, a beautiful marble-topped bar where guests can sit and watch the chefs at work and stylish red leather stools. Lunch starts at 1 PM. Dinners starts 5:30 PM.", image: "barrafina.jpg", isVisited: false),
           Restaurant(name: "Donostia", type: "Spanish", location: "10 Seymour Place London W1H 7ND United Kingdom", phone: "722-232323", summary: "Very good basque food, creative dishes with terrific flavors! Donostia is a high end tapas restaurant with a friendly relaxed ambiance. Come over to enjoy awesome tapas!", image: "donostia.jpg", isVisited: false),
           Restaurant(name: "Royal Oak", type: "British", location: "2 Regency Street London SW1P 4BZ United Kingdom", phone: "343-988834", summary: "Specialise in great pub food. Established in 1872, we have local and world lagers, craft beer and a selection of wine and spirits for people to enjoy. Don't forget to try our range of Young's Ales and Fish and Chips.", image: "royaloak.jpg", isVisited: false),
           Restaurant(name: "CASK Pub and Kitchen", type: "Thai", location: "22 Charlwood Street London SW1V 2DY Pimlico", phone: "432-344050", summary: "With kitchen serving gourmet burgers. We offer food every day of the week, Monday through to Sunday. Join us every Sunday from 4:30 – 7:30pm for live acoustic music!", image: "caskpubkitchen.jpg", isVisited: false)
       ]
    }
       
}

