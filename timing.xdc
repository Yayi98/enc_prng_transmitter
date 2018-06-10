
create_clock -period 50.000 -name clk -waveform {0.000 25.000} [get_ports clk]
create_clock -period 10.000 -name sclk -waveform {0.000 5.000} [get_ports sclk]
set_input_delay -clock [get_clocks clk] -min -add_delay 1.000 [get_ports ce]
set_input_delay -clock [get_clocks clk] -max -add_delay 1.000 [get_ports ce]
set_input_delay -clock [get_clocks clk] -min -add_delay 1.000 [get_ports reset]
set_input_delay -clock [get_clocks clk] -max -add_delay 1.000 [get_ports reset]
set_input_delay -clock [get_clocks sclk] -min -add_delay 1.000 [get_ports reset]
set_input_delay -clock [get_clocks sclk] -max -add_delay 1.000 [get_ports reset]
set_output_delay -clock [get_clocks sclk] -min -add_delay 0.000 [get_ports dout_n]
set_output_delay -clock [get_clocks sclk] -max -add_delay 1.000 [get_ports dout_n]
set_output_delay -clock [get_clocks sclk] -min -add_delay 0.000 [get_ports dout_p]
set_output_delay -clock [get_clocks sclk] -max -add_delay 1.000 [get_ports dout_p]
