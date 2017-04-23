//


import Foundation

class ProductLine
{
    // Variables
    var name: String            //Ngay trong tuan
    var products: [Product]     // cac su kien
    
    init(named: String, includeProducts: [Product])
    {
        name = named
        products = includeProducts
    }
    
    class func productLines() -> [ProductLine]
    {
        return [self.Monday(), self.Tuesday(), self.Wednesday(), self.Thursday(), self.Friday(), self.Saturday(), self.Sunday()]
    }
    
    // Private methods
    
    private class func Monday() -> ProductLine { // lich thu 2
        
        var products = [Product]()
        
        products.append(Product(titled: "An sang", description: "An sang voi ban be"))
        products.append(Product(titled: "Di hoc", description: "di hoc tren truong"))
        products.append(Product(titled: "Di Choi", description: "Di choi da banh"))
        products.append(Product(titled: "Hoc them", description: "Hoc them toan"))
        products.append(Product(titled: "Hoc them", description: "Hoc them ly"))
        return ProductLine(named: "Monday", includeProducts: products)
    }
    private class func Tuesday() -> ProductLine { // lich thu 3
        
        var products = [Product]()
        
        products.append(Product(titled: "An sang", description: "An sang voi ban be"))
        products.append(Product(titled: "Di hoc", description: "di hoc tren truong"))
        products.append(Product(titled: "Di Choi", description: "Di choi da banh"))
        products.append(Product(titled: "Hoc them", description: "Hoc them toan"))
        products.append(Product(titled: "Di sieu thi", description: "Di sieu thi mua mi tom"))
        products.append(Product(titled: "Di sinh nhat", description: "Di sinh nhat ban vao buoi toi"))
        return ProductLine(named: "Tuesday", includeProducts: products)
    }
    private class func Wednesday() -> ProductLine { // lich thu 4
        
        var products = [Product]()
        
        products.append(Product(titled: "An sang", description: "An sang voi ban be"))
        products.append(Product(titled: "Di hoc", description: "di hoc tren truong"))
        products.append(Product(titled: "Di Choi", description: "Di choi da banh"))
        products.append(Product(titled: "Hoc them", description: "Hoc them toan"))
        products.append(Product(titled: "Ve que", description: "Ve que ngoai choi"))
        products.append(Product(titled: "Lam tu thien", description: "Di gap cac tre em ngheo hieu hoc"))
        return ProductLine(named: "Wednesday", includeProducts: products)
    }
    private class func Thursday() -> ProductLine { // lich thu 5
        
        var products = [Product]()
        
        products.append(Product(titled: "An sang", description: "An sang voi ban be"))
        products.append(Product(titled: "Di hoc", description: "di hoc tren truong"))
        products.append(Product(titled: "Di Choi", description: "Di choi da banh"))
        products.append(Product(titled: "Hoc them", description: "Hoc them toan"))
        products.append(Product(titled: "Thsm gia hoi thao", description: "Tham gia hoi thao o truong"))
        return ProductLine(named: "Thursday", includeProducts: products)
    }
    private class func Friday() -> ProductLine { // lich thu 6
       
        var products = [Product]()
        
        products.append(Product(titled: "An sang", description: "An sang voi ban be"))
        products.append(Product(titled: "Di hoc", description: "di hoc tren truong"))
        products.append(Product(titled: "Di Choi", description: "Di choi da banh"))
        products.append(Product(titled: "Hoc them", description: "Hoc them toan"))
        products.append(Product(titled: "Hoc nhom", description: "TThao luan lam bai tap ios voi nhom"))
        products.append(Product(titled: "Gap TA", description: "Gap TA o truong de hoi ve cac thac mac"))
        return ProductLine(named: "Friday", includeProducts: products)
    }
    private class func Saturday() -> ProductLine { // lich thu 7
       
        var products = [Product]()
        
        products.append(Product(titled: "An sang", description: "An sang voi ban be"))
        products.append(Product(titled: "Di hoc", description: "di hoc tren truong"))
        products.append(Product(titled: "Di Choi", description: "Di choi da banh"))
        products.append(Product(titled: "Hoc them", description: "Hoc them toan"))
        products.append(Product(titled: "Thsm gia hoi thao", description: "Tham gia hoi thao o truong"))
        return ProductLine(named: "Saturday", includeProducts: products)
    }
    private class func Sunday() -> ProductLine { // lich chu nhat
        
        var products = [Product]()
        
        products.append(Product(titled: "An sang", description: "An sang voi ban be"))
        products.append(Product(titled: "Di hoc", description: "di hoc tren truong"))
        products.append(Product(titled: "Di Choi", description: "Di choi da banh"))
        products.append(Product(titled: "Hoc them", description: "Hoc them toan"))
        products.append(Product(titled: "Gap mat ban be", description: "Gap lai nhung ban cu thoi hoc sinh"))
        return ProductLine(named: "Sunday", includeProducts: products)
    }}

