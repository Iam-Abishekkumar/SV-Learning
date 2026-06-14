//**********************************************************************
// File : Polymorphism_Employee.sv
// Description : Demonstration of Polymorphism and Virtual Methods
//**********************************************************************

class Employee;

    string name;

    function new(string name);
        this.name = name;
    endfunction

    virtual function void display();
        $display("(Employee Class) Name = %s", name);
    endfunction

endclass


class Manager extends Employee;

    int team_size;

    function new(string name, int team_size);
        super.new(name);
        this.team_size = team_size;
    endfunction

    function void display();
        $display("(Manager Class) Name = %s, Team Size = %0d",
                  name, team_size);
    endfunction

endclass


module tb;

    Employee emp;
    Manager  mgr;

    initial begin

        mgr = new("Abishek", 10);

        // Assign child class handle to parent class handle
        emp = mgr;

        // Dynamic Binding
        // Manager display() executes because display() is virtual
        emp.display();

        // Not allowed
        // Parent handle cannot directly access child members
        // $display("Team Size = %0d", emp.team_size);

    end

endmodule
