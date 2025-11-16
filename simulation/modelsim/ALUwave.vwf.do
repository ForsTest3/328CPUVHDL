vlog -work work C:/altera/13.0sp1/FILES/Lab6/simulation/modelsim/ALUwave.vwf.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.ALU_vlg_vec_tst
onerror {resume}
add wave {ALU_vlg_vec_tst/i1/clk}
add wave {ALU_vlg_vec_tst/i1/neg}
add wave {ALU_vlg_vec_tst/i1/opcode}
add wave {ALU_vlg_vec_tst/i1/opcode[7]}
add wave {ALU_vlg_vec_tst/i1/opcode[6]}
add wave {ALU_vlg_vec_tst/i1/opcode[5]}
add wave {ALU_vlg_vec_tst/i1/opcode[4]}
add wave {ALU_vlg_vec_tst/i1/opcode[3]}
add wave {ALU_vlg_vec_tst/i1/opcode[2]}
add wave {ALU_vlg_vec_tst/i1/opcode[1]}
add wave {ALU_vlg_vec_tst/i1/opcode[0]}
add wave {ALU_vlg_vec_tst/i1/Reg1}
add wave {ALU_vlg_vec_tst/i1/Reg1[7]}
add wave {ALU_vlg_vec_tst/i1/Reg1[6]}
add wave {ALU_vlg_vec_tst/i1/Reg1[5]}
add wave {ALU_vlg_vec_tst/i1/Reg1[4]}
add wave {ALU_vlg_vec_tst/i1/Reg1[3]}
add wave {ALU_vlg_vec_tst/i1/Reg1[2]}
add wave {ALU_vlg_vec_tst/i1/Reg1[1]}
add wave {ALU_vlg_vec_tst/i1/Reg1[0]}
add wave {ALU_vlg_vec_tst/i1/Reg2}
add wave {ALU_vlg_vec_tst/i1/Reg2[7]}
add wave {ALU_vlg_vec_tst/i1/Reg2[6]}
add wave {ALU_vlg_vec_tst/i1/Reg2[5]}
add wave {ALU_vlg_vec_tst/i1/Reg2[4]}
add wave {ALU_vlg_vec_tst/i1/Reg2[3]}
add wave {ALU_vlg_vec_tst/i1/Reg2[2]}
add wave {ALU_vlg_vec_tst/i1/Reg2[1]}
add wave {ALU_vlg_vec_tst/i1/Reg2[0]}
add wave {ALU_vlg_vec_tst/i1/res}
add wave {ALU_vlg_vec_tst/i1/Result}
add wave {ALU_vlg_vec_tst/i1/Result[7]}
add wave {ALU_vlg_vec_tst/i1/Result[6]}
add wave {ALU_vlg_vec_tst/i1/Result[5]}
add wave {ALU_vlg_vec_tst/i1/Result[4]}
add wave {ALU_vlg_vec_tst/i1/Result[3]}
add wave {ALU_vlg_vec_tst/i1/Result[2]}
add wave {ALU_vlg_vec_tst/i1/Result[1]}
add wave {ALU_vlg_vec_tst/i1/Result[0]}
run -all
