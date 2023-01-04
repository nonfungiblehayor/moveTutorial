module 0x42::Company {
    use std::debug;
    use std::vector;

    const Contract:address = @0x42;

    struct Employees has key, drop, store, copy {
        people: vector<Employee>
    }

    struct Employee has drop, key, store, copy {
        name: vector<u8>,
        age: u8,
        income: u64
    }

    public fun createEmployee(newEmployee: Employee, newEmployees: &mut Employees): Employee {
        let createdEmployee = Employee {
            name: newEmployee.name,
            age: newEmployee.age,
            income: newEmployee.income
        };
        addEmployee(createdEmployee, newEmployees);
        return createdEmployee
    }

    fun addEmployee(_employee: Employee,_employees:&mut Employees) {
        vector::push_back(&mut _employees.people, _employee);
    }
}