// Design for the traffic signal controller

module traffic_signal_controller(output reg[1:0]hwy, country,input clk,reset,x);
  
`define true 1'b1
`define false 1'b0
`define y2rdelay 3
`define r2gdelay 2
  
parameter red=2'b00,
          yellow=2'b01,
          green = 2'b10;
  
parameter s0=3'd0,
          s1=3'd1,
          s2=3'd2,
          s3=3'd3,
          s4=3'd4;
  
reg [2:0] state, nextstate;

always@(posedge clk)
  if(reset)
      state <=s0;
  else
    state<=nextstate;
  
  
  always@(state)
    case(state)
       s0:begin hwy=green; country=red; end
       s1:begin hwy=yellow; country=red; end
       s2:begin hwy=red; country=red; end
       s3:begin hwy=red; country=green; end
       s4:begin hwy=red; country=yellow; end
      default : begin hwy=green; country=red; end
    endcase

  always@(state , x)
    begin
      case(state)
        s0: if(x)
          nextstate=s1;
        else
          nextstate=s0;
      
        s1: begin repeat(`y2rdelay) @(posedge clk);
          nextstate = s2;
        end
        
        s2: begin repeat(`r2gdelay) @(posedge clk);
          nextstate = s3;
        end
        
        s3: if(x)
          nextstate=s3;
        else
          nextstate=s4;
        
        s4: begin repeat(`y2rdelay) @(posedge clk);
          nextstate = s0;
        end
       default :  nextstate = s0;
      endcase 
    end
  
endmodule
