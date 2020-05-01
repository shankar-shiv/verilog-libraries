// look in pins.pcf for all the pin names on the TinyFPGA BX board
module top (
    input CLK,    // 16MHz clock
    output LED,   // User/boot LED next to power LED
    output USBPU,  // USB pull-up resistor
    output [30:0] data
);
    // drive USB pull-up resistor to '0' to disable USB
    assign USBPU = 0;

    wire CLK;

    //-- Output is 26-bit bus, initialized at 0
    reg [30:0] data = 0;

    //-- Sensitive to rising edge
    always @(posedge CLK) begin
      //-- Incrementar el registro
      data <= data + 1;
    end


endmodule
