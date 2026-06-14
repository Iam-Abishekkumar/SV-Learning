//**********************************************************************
// Parameterized Class using Type Parameter
//**********************************************************************

class storage #(type T = int);

    T data;

    function T get_data();
        return data;
    endfunction

endclass


module tb;

    storage handle1 = new();             // int
    storage #(real) handle2 = new();     // real
    storage #(string) handle3 = new();   // string

    initial begin

        handle1.data = 100;
        handle2.data = 3.14;
        handle3.data = "SystemVerilog";

        $display("Integer value = %0d", handle1.get_data());
        $display("Real value    = %0.2f", handle2.get_data());
        $display("String value  = %s", handle3.get_data());

    end

endmodule
