extends ChatNode
##或门节点，输入为两个Bool类型，输出两个输入的bool类型的或运算结果，为bool
class_name ChatNodeOr
func _init(root:NodeRoot) -> void:
	super._init(root)
	type=11
	input_port_array=["Bool","Bool"]
	output_port_array=["Bool"]
	init_input()

func process_input(id:String)->bool:
	if input_port_data[0] is bool and input_port_data[1] is bool:
		sent_data_to_out(input_port_data[0] or input_port_data[1],0,id)
		return true
	else:
		return false
