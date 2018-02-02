class Payroll : PermanentEmployee {
    var netPay: Double {
        get {
            let vw = self.vacationWeeks!
            if vw > 5 {
                return self.basicPay! - 100
            }
            else {
                return self.basicPay!
            }
        }
    }
    
    override init()
    {
        super.init()
        //self.netPay = 0
    }
    
    override init(eID: Int, eNM: String, ePay: Double, weeks: Int)
    {
        super.init(eID: eID, eNM: eNM, ePay: ePay, weeks: weeks)
        //self.netPay=0
    }
    
    override func display()
    {
        super.display()
        //self.calculate()
        print("netPay : ",self.netPay)
    }
}
