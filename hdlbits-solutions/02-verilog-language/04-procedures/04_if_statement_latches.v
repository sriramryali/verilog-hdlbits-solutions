// Avoiding latches(if latches are unintentional, they might some errors)
module top_module(
    input cpu_overheated,
    output reg shut_off_computer,
    input arrived,
    input gas_tank_emppty,
    output reg keep_driving);
    always @(*) begin
        if (cpu_overheated) begin.    // if cpu is overheated, then shut off the computer
            shut_off_computer = 1;
        end
        else begin                    // if computer isnt overheated, then donot turn off the computer
            shut_off_computer = 0;    // if you dont mention the case when cpu_overheated = 0, it forms a latch (hence, try to include all possible cases)
        end
        
        if (arrived | gas_tank_empty) begin     // if the destination hass arrived or if the fuel tank is empty, then stop driving
            keep_driving = 0;                   
        end
        else begin                              // rest of the time, keep driving
            keep_driving = 1;
        end
    end
endmodule


// Latches occur if all the conditions are explicitly specified
// ex: input reg x,y;
//     if (y) x = 1'b0;   -> 'else' condition isnt mentioned, so a latch is formed(memory) 



        
