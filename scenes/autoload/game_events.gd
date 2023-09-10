extends Node

signal experiance_vial_collected(number:float)

func emit_experiance_vial_collected(number: float):
	experiance_vial_collected.emit(number)
