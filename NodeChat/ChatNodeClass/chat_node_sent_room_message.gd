extends ChatNode
class_name ChatNodeSentRoomMessage
func _init(root:NodeRoot) -> void:
	super._init(root)
	type=4
	input_port_array=["String"]
	output_port_array=[]
	init_input()

func process_input(id:String)->bool:
	if input_port_data[0] is String:
		IIROSE.sent_room_message(input_port_data[0])
		return true
	else:
		return false
