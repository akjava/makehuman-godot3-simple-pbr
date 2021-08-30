extends Spatial


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
export(Material) var material=null setget set_material, get_material

func get_material():
	return material
	
func set_material(newmaterial):
	
	$Tmp01_deform/Skeleton/Tmp01Body.set_surface_material(0,newmaterial)
	
	#$Tmp01_deform/Skeleton/Tmp01Body.mesh.surface_set_material(0,newmaterial)
	
# Called when the node enters the scene tree for the first time.
func _ready():
	
	#material=$Tmp01_deform/Skeleton/Tmp01Body.mesh.surface_get_material(0)
	material=$Tmp01_deform/Skeleton/Tmp01Body.get_surface_material(0)


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
