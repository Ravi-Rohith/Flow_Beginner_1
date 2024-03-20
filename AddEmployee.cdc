import EmployeeContract from 0x05

transaction(id: Int, name: String, age: Int){
    prepare(acct: AuthAccount){
    }


    execute {
        EmployeeContract.addEmployee(id: id, name: name, age: age)
    }
}