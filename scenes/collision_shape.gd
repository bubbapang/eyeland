extends CollisionShape3D

var feet = []

# Number of feet you want
var num_feet = 2

# Called when the node enters the scene tree for the first time.
func _ready():
	for i in range(num_feet):
		var foot = CSGSphere3D.new()
		foot.radius = .2  # Adjust as needed
		foot.position.y = 0
		if i == 0:
			foot.position.x = position.x + 1
			foot.position.z = position.z + -1
		else:
			foot.position.x = position.x - 1
			foot.position.z = position.z + -1
		add_child(foot)
		feet.append(foot)

#func _physics_process(_delta):
#	for i in range(num_feet):
		# Compute vector from ball to foot
#		var ball_to_foot = feet[i].position - position
		# Compute distance (this will be the new leg length)
#		var distance = ball_to_foot.length()
		
