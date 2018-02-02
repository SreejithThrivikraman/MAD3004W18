
class Employee {
    var empID: Int?
    var empName: String?
    var basicPay: Double?
    
    //initializers
    init(){
        self.empID=0
        self.empName=""
        self.basicPay=0.0
    }
    //parameterized initializer
    init(ID: Int, nm: String, pay: Double){
        self.empID = ID
        self.empName = nm
        self.basicPay = pay
    }
    
    func display() {
        print("Employee ID : ",self.empID!)
        print("Employee Name : ",self.empName!)
        print("basic Pay : ",self.basicPay!)
    }
    
    //deinitializer
    deinit {
        print("Employee object deinitialized")
    }
}
