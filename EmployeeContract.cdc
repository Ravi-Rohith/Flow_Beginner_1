// Creating a new contract
pub contract EmployeeContract {

  pub var Id : [Int]
  pub var EmployeeDict : { Int: Employee }

  pub struct Employee {
    pub let name: String
    pub let age: Int

    init(_name: String, _age: Int){
      self.name = _name
      self.age = _age
    }
  }

  pub fun addId(id: Int){
    self.Id.append(id)
  }
  
  // Function to add a new Employee to the array
  pub fun addEmployee(id: Int, name: String, age: Int) {
      pre{
        self.Id.contains(id): "This Id is not Present"
      }

      self.EmployeeDict[id] = Employee(_name: name, _age: age)     
  }


  init() {
    self.Id = []
    self.EmployeeDict = {}
  }
}