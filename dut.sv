//  Module: dut
//
module dut(
    input clk,
    input rst_n,
    input [7:0] data_in,
    input       valid_in,
    output [7:0] data_out,
    output      valid_out
);

assign data_out = data_out_reg;
assign valid_out = valid_out_reg;

always@(posedge clk or negedge rst_n)
begin
    if(!rst_n)
    begin
        data_out_reg <= 8'b0;
        valid_out_reg <= 1'b0;
    end
    else
    begin
        data_out_reg <= data_in;
        valid_out_reg <= valid_in;
    end
end

endmodule: dut
