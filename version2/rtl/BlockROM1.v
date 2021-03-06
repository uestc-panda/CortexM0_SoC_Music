module BlockROM1 # (
    parameter ADDR_WIDTH = 8,
    parameter DATA_WIDTH = 1
)(
    input                               clk,
    input        [ADDR_WIDTH-1 : 0]     addr_i,
    output  reg  [DATA_WIDTH-1 : 0]     data_o
);

(* ramstyle = "AUTO" *) reg [DATA_WIDTH-1 : 0] mem[(2**ADDR_WIDTH-1) : 0];

initial begin
     $readmemh("C:/Users/73474/Desktop/M0/Music/rtl/signal.txt", mem);
end

always @ (posedge clk) begin
    data_o <= mem[addr_i];
end

endmodule