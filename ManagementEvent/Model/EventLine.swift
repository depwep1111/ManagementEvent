//


import Foundation

class EventLine
{
    // Variables
    var name: String            //Ngay trong tuan
    var events: [Event]     // cac su kien
    
    init(named: String, includeEvents: [Event])
    {
        name = named
        events = includeEvents
    }
    
    class func eventLines() -> [EventLine]
    {
        return [self.Monday(), self.Tuesday(), self.Wednesday(), self.Thursday(), self.Friday(), self.Saturday(), self.Sunday()]
    }
    
    // Private methods
    
    private class func Monday() -> EventLine { // lich thu 2
        
        var events = [Event]()
        
        events.append(Event(titled: "An sang", content: "An sang voi ban be"))
        events.append(Event(titled: "Di hoc", content: "di hoc tren truong"))
        events.append(Event(titled: "Di Choi", content: "Di choi da banh"))
        events.append(Event(titled: "Hoc them", content: "Hoc them toan"))
        events.append(Event(titled: "Hoc them", content: "Hoc them ly"))
        return EventLine(named: "Monday", includeEvents: events)
    }
    private class func Tuesday() -> EventLine { // lich thu 3
    
        
        var events = [Event]()
        
        events.append(Event(titled: "An sang", content: "An sang voi ban be"))
        events.append(Event(titled: "Di hoc", content: "di hoc tren truong"))
        events.append(Event(titled: "Di Choi", content: "Di choi da banh"))
        events.append(Event(titled: "Hoc them", content: "Hoc them toan"))
        events.append(Event(titled: "Di sieu thi", content: "Di sieu thi mua mi tom"))
        events.append(Event(titled: "Di sinh nhat", content: "Di sinh nhat ban vao buoi toi"))
        return EventLine(named: "Tuesday", includeEvents: events)
    }
    private class func Wednesday() -> EventLine { // lich thu 4
        
        var events = [Event]()
        
        events.append(Event(titled: "An sang", content: "An sang voi ban be"))
        events.append(Event(titled: "Di hoc", content: "di hoc tren truong"))
        events.append(Event(titled: "Di Choi", content: "Di choi da banh"))
        events.append(Event(titled: "Hoc them", content: "Hoc them toan"))
        events.append(Event(titled: "Ve que", content: "Ve que ngoai choi"))
        events.append(Event(titled: "Lam tu thien", content: "Di gap cac tre em ngheo hieu hoc"))
        return EventLine(named: "Wednesday", includeEvents: events)
    }
    private class func Thursday() -> EventLine{ // lich thu 5
        
        var events = [Event]()
        
        events.append(Event(titled: "An sang", content: "An sang voi ban be"))
        events.append(Event(titled: "Di hoc", content: "di hoc tren truong"))
        events.append(Event(titled: "Di Choi", content: "Di choi da banh"))
        events.append(Event(titled: "Hoc them", content: "Hoc them toan"))
        events.append(Event(titled: "Thsm gia hoi thao", content: "Tham gia hoi thao o truong"))
        return EventLine(named: "Thursday", includeEvents: events)
    }
    private class func Friday() -> EventLine { // lich thu 6
       
        var events = [Event]()
        
        events.append(Event(titled: "An sang", content: "An sang voi ban be"))
        events.append(Event(titled: "Di hoc", content: "di hoc tren truong"))
        events.append(Event(titled: "Di Choi", content: "Di choi da banh"))
        events.append(Event(titled: "Hoc them", content: "Hoc them toan"))
        events.append(Event(titled: "Hoc nhom", content: "TThao luan lam bai tap ios voi nhom"))
        events.append(Event(titled: "Gap TA", content: "Gap TA o truong de hoi ve cac thac mac"))
        return EventLine(named: "Friday", includeEvents: events)
    }
    private class func Saturday() -> EventLine { // lich thu 7
       
        var events = [Event]()
        
        events.append(Event(titled: "An sang", content: "An sang voi ban be"))
        events.append(Event(titled: "Di hoc", content: "di hoc tren truong"))
        events.append(Event(titled: "Di Choi", content: "Di choi da banh"))
        events.append(Event(titled: "Hoc them", content: "Hoc them toan"))
        events.append(Event(titled: "Thsm gia hoi thao", content: "Tham gia hoi thao o truong"))
        return EventLine(named: "Saturday", includeEvents: events)
    }
    private class func Sunday() -> EventLine { // lich chu nhat
        
        var events = [Event]()
        
        events.append(Event(titled: "An sang", content: "An sang voi ban be"))
        events.append(Event(titled: "Di hoc", content: "di hoc tren truong"))
        events.append(Event(titled: "Di Choi", content: "Di choi da banh"))
        events.append(Event(titled: "Hoc them", content: "Hoc them toan"))
        events.append(Event(titled: "Gap mat ban be", content: "Gap lai nhung ban cu thoi hoc sinh"))
        return EventLine(named: "Sunday", includeEvents: events)
    }}

