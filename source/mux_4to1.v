module mux_4to1 (
  input wire a,
  input wire b,
  input wire c,
  inpud wire d,
  input wire sel,

  output wire out
);
  
  assign out = sel[1] ? (sel[0] ? d : c) : (sel[0] ? b : a);
endmodule