extends Area2D
@export_file("*.tscn") var target_level: String

func _on_body_entered(_body: Node2D) -> void:
 if target_level:
  call_deferred("_change_scene")

func _change_scene() -> void:
 get_tree().change_scene_to_file(target_level)
