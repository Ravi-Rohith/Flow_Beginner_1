import EmployeeContract from 0x05

transaction(id: Int){
    prepare(acct: AuthAccount){
    }


    execute {
        EmployeeContract.addId(id: id)
    }
}