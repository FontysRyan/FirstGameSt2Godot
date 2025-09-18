extends CanvasLayer

@onready var VersionText: Label = $Control/VersionText

func _ready():
	var version = ProjectSettings.get_setting("application/config/version")
	VersionText.text = "v" + str(version)
