`timescale 1ns / 1ps

module CUT_tb;

  // Inputs
  reg a;
  reg b;
  reg cin;

  // Outputs
  wire [1:0] dataIn;

  // Instantiate the Unit Under Test (UUT)
  CUT uut (
    .a(a), 
    .b(b), 
    .cin(cin), 
    .dataIn(dataIn)
  );

  initial begin
    // Initialize Inputs
    a = 0;
    b = 0;
    cin = 0;

    // Wait 100 ns for global reset to finish
    #100;
    
    // Apply test inputs
    a = 0; b = 0; cin = 0; #10;
    a = 0; b = 0; cin = 1; #10;
    a = 0; b = 1; cin = 0; #10;
    a = 0; b = 1; cin = 1; #10;
    a = 1; b = 0; cin = 0; #10;
    a = 1; b = 0; cin = 1; #10;
    a = 1; b = 1; cin = 0; #10;
    a = 1; b = 1; cin = 1; #10;

    // Add more cases as needed

    $finish;
  end
endmodule
