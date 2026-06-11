//====================================================
// File : class_handle.sv
// Description : Demonstration of Class Handle Copy
//====================================================

class packet;

    int data;

endclass


module tb;

    packet pkt1;
    packet pkt2;

    initial begin

        // Check before object creation
        if (pkt1 == null)
            $display("[INFO] pkt1 is NULL");

        // Create object
        pkt1 = new();

        pkt1.data = 100;

        $display("\nAfter Object Creation");
        $display("pkt1.data = %0d", pkt1.data);

        // Handle Copy
        pkt2 = pkt1;

        $display("\nAfter Handle Copy");
        $display("pkt1.data = %0d", pkt1.data);
        $display("pkt2.data = %0d", pkt2.data);

        // Modify through pkt1
        pkt1.data = 200;

        $display("\nAfter Modifying pkt1");
        $display("pkt1.data = %0d", pkt1.data);
        $display("pkt2.data = %0d", pkt2.data);

        // Modify through pkt2
        pkt2.data = 500;

        $display("\nAfter Modifying pkt2");
        $display("pkt1.data = %0d", pkt1.data);
        $display("pkt2.data = %0d", pkt2.data);

    end

endmodule
