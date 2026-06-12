class packet;

  int addr;
  int data;

  // Explicit constructor
  function new(int a, int d);
    addr = a;
    data = d;
  endfunction

endclass

module tb;

  packet p;

  initial begin
    p = new(10, 20);

    $display("addr = %0d", p.addr);
    $display("data = %0d", p.data);
  end

endmodule


//implicit constructor

class packet;

  int addr;
  int data;

endclass

module tb;

  packet p;

  initial begin
    p = new();   // implicit constructor

    p.addr = 10;
    p.data = 20;

    $display("addr = %0d", p.addr);
    $display("data = %0d", p.data);
  end

endmodule
