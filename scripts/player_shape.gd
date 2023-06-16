extends CollisionShape3D

var heads = []
var hands = []
var feet = []
var hidden_feet = []

# Number of each body part you want
var num_heads = 1 
var num_hands = 2
var num_feet = 2
var num_hidden_feet = num_feet

func _ready():

	# Instantiate hidden_feet
	for i in range(num_hidden_feet):
		var hidden_foot = CSGSphere3D.new()
		hidden_foot.radius = .2  # Adjust as needed
#		hidden_foot.material_override.set
#		hidden_foot.material.set_material("res://addons/kenney_prototype_textures/orange/texture_01.png")
		hidden_foot.position.y = -1
		if i == 0:
			hidden_foot.position.x = position.x + 1
			hidden_foot.position.z = position.z + -1
		else:
			hidden_foot.position.x = position.x - 1
			hidden_foot.position.z = position.z + -1
		add_child(hidden_foot)
		hidden_feet.append(hidden_foot)
		
	# Instantiate real feet
	for i in range(num_feet):
		var foot = CSGSphere3D.new()
		foot.radius = .2  # Adjust as needed

		if i == 0:
			foot.position.x = position.x + 1
		else:
			foot.position.x = position.x - 1
		add_child(foot)
		feet.append(foot)

	# Instantiate heads
	for i in range(num_heads):
		var head = CSGSphere3D.new()
		head.radius = .3  # Adjust as needed
		head.position.y = 1  # Adjust as needed
		add_child(head)
		heads.append(head)

	# Instantiate hands
	for i in range(num_hands):
		var hand = CSGSphere3D.new()
		hand.radius = .15  # Adjust as needed

		hand.position.y = 0  # Adjust as needed
		if i == 0:
			hand.position.x = position.x + 1
			hand.position.z = position.z + 1
		else:
			hand.position.x = position.x - 1
			hand.position.z = position.z + 1
		add_child(hand)
		hands.append(hand)
