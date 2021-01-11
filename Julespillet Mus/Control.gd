extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var mus = 5
var rng = RandomNumberGenerator.new()


# Called when the node enters the scene tree for the first time.
func _ready():
	rng.randomize()
	var rngI = rng.randi_range(1,10)
	$MusControlCount.set_text(str(rngI))
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_AMus1_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton:
		if event.is_pressed():
			print("Object Click1")
			$PebernodControlCount.set_text(str(int($PebernodControlCount.get_text())+1))
			
			if (int($MusControlCount.get_text()) == 1 && $PebernodControlCount.get_text()=="10"):
				#show mus Player wins the game!
				disableCollisionShape2D()
				
				$Mus1.visible = true
				$Mus1/AnimationPlayer.play("Mus1_ani")
				$vind_notification.visible = true
				$vind_notification/AnimationPlayer.play("vind_ani_notif")
				$AudioStreamPlayer_mus_win.play()
				playAgain()
				
			if (int($MusControlCount.get_text()) == 1 && $PebernodControlCount.get_text()!="10"):
				#show mus player loses game
				disableCollisionShape2D()
				
				$Mus1.visible = true
				$Mus1/AnimationPlayer.play("Mus1_ani")
				$tabt_notification.visible = true
				$tabt_notification/AnimationPlayer.play("ani_tabt_notif")
				$AudioStreamPlayer_mus_loss.play()
				playAgain()
			
			if int($MusControlCount.get_text()) != 1:
				#player eats a pebernut with no mus
				$AMus1/CollisionShape2D.disabled = true
				$AMus1/MusPeppernut1.visible = false
				$AntalPebernodCounterLabel.set_text(str(int($AntalPebernodCounterLabel.get_text())+1))
				$AudioStreamPlayer_Crunch.play()
	pass # Replace with function body.


func _on_AMus2_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton:
		if event.is_pressed():
			print("Object Click2")
			$PebernodControlCount.set_text(str(int($PebernodControlCount.get_text())+1))
			
			if (int($MusControlCount.get_text()) == 2 && $PebernodControlCount.get_text()=="10"):
				#show mus Player wins the game!
				disableCollisionShape2D()
				
				$Mus2.visible = true
				$Mus2/AnimationPlayer.play("Mus2_ani")
				$vind_notification.visible = true
				$vind_notification/AnimationPlayer.play("vind_ani_notif")
				$AudioStreamPlayer_mus_win.play()
				playAgain()
				
			if (int($MusControlCount.get_text()) == 2 && $PebernodControlCount.get_text()!="10"):
				#show mus player loses game
				disableCollisionShape2D()
				
				$Mus2.visible = true
				$Mus2/AnimationPlayer.play("Mus2_ani")
				$tabt_notification.visible = true
				$tabt_notification/AnimationPlayer.play("ani_tabt_notif")
				$AudioStreamPlayer_mus_loss.play()
				playAgain()
			
			if int($MusControlCount.get_text()) != 2:
				#player eats a pebernut with no mus
				$AMus2/CollisionShape2D.disabled = true
				$AMus2/MusPeppernut2.visible = false
				$AntalPebernodCounterLabel.set_text(str(int($AntalPebernodCounterLabel.get_text())+1))
				$AudioStreamPlayer_Crunch.play()
	pass # Replace with function body.


func _on_AMus3_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton:
		if event.is_pressed():
			print("Object Click3")
			$PebernodControlCount.set_text(str(int($PebernodControlCount.get_text())+1))
			
			if (int($MusControlCount.get_text()) == 3 && $PebernodControlCount.get_text()=="10"):
				#show mus Player wins the game!
				disableCollisionShape2D()
				
				$Mus3.visible = true
				$Mus3/AnimationPlayer.play("Mus3_ani")
				$vind_notification.visible = true
				$vind_notification/AnimationPlayer.play("vind_ani_notif")
				$AudioStreamPlayer_mus_win.play()
				playAgain()
				
			if (int($MusControlCount.get_text()) == 3 && $PebernodControlCount.get_text()!="10"):
				#show mus player loses game
				disableCollisionShape2D()
				
				$Mus3.visible = true
				$Mus3/AnimationPlayer.play("Mus3_ani")
				$tabt_notification.visible = true
				$tabt_notification/AnimationPlayer.play("ani_tabt_notif")
				$AudioStreamPlayer_mus_loss.play()
				playAgain()
			
			if int($MusControlCount.get_text()) != 3:
				#player eats a pebernut with no mus
				$AMus3/CollisionShape2D.disabled = true
				$AMus3/MusPeppernut3.visible = false
				$AntalPebernodCounterLabel.set_text(str(int($AntalPebernodCounterLabel.get_text())+1))
				$AudioStreamPlayer_Crunch.play()
	pass # Replace with function body.


func _on_AMus4_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton:
		if event.is_pressed():
			print("Object Click4")
			$PebernodControlCount.set_text(str(int($PebernodControlCount.get_text())+1))
			
			if (int($MusControlCount.get_text()) == 4 && $PebernodControlCount.get_text()=="10"):
				#show mus Player wins the game!
				disableCollisionShape2D()
				
				$Mus4.visible = true
				$Mus4/AnimationPlayer.play("Mus4_ani")
				$vind_notification.visible = true
				$vind_notification/AnimationPlayer.play("vind_ani_notif")
				$AudioStreamPlayer_mus_win.play()
				playAgain()
				
			if (int($MusControlCount.get_text()) == 4 && $PebernodControlCount.get_text()!="10"):
				#show mus player loses game
				disableCollisionShape2D()
				
				$Mus4.visible = true
				$Mus4/AnimationPlayer.play("Mus4_ani")
				$tabt_notification.visible = true
				$tabt_notification/AnimationPlayer.play("ani_tabt_notif")
				$AudioStreamPlayer_mus_loss.play()
				playAgain()
			
			if int($MusControlCount.get_text()) != 4:
				#player eats a pebernut with no mus
				$AMus4/CollisionShape2D.disabled = true
				$AMus4/MusPeppernut4.visible = false
				$AntalPebernodCounterLabel.set_text(str(int($AntalPebernodCounterLabel.get_text())+1))
				$AudioStreamPlayer_Crunch.play()
	pass # Replace with function body.


func _on_AMus5_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton:
		if event.is_pressed():
			print("Object Click5")
			$PebernodControlCount.set_text(str(int($PebernodControlCount.get_text())+1))
			
			if (int($MusControlCount.get_text()) == 5 && $PebernodControlCount.get_text()=="10"):
				#show mus Player wins the game!
				disableCollisionShape2D()
				
				$Mus5.visible = true
				$Mus5/AnimationPlayer.play("Mus5_ani")
				$vind_notification.visible = true
				$vind_notification/AnimationPlayer.play("vind_ani_notif")
				$AudioStreamPlayer_mus_win.play()
				playAgain()
				
			if (int($MusControlCount.get_text()) == 5 && $PebernodControlCount.get_text()!="10"):
				#show mus player loses game
				disableCollisionShape2D()
				
				$Mus5.visible = true
				$Mus5/AnimationPlayer.play("Mus5_ani")
				$tabt_notification.visible = true
				$tabt_notification/AnimationPlayer.play("ani_tabt_notif")
				$AudioStreamPlayer_mus_loss.play()
				playAgain()
			
			if int($MusControlCount.get_text()) != 5:
				#player eats a pebernut with no mus
				$AMus5/CollisionShape2D.disabled = true
				$AMus5/MusPeppernut5.visible = false
				$AntalPebernodCounterLabel.set_text(str(int($AntalPebernodCounterLabel.get_text())+1))
				$AudioStreamPlayer_Crunch.play()
	pass # Replace with function body.


func _on_AMus6_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton:
		if event.is_pressed():
			print("Object Click6")
			$PebernodControlCount.set_text(str(int($PebernodControlCount.get_text())+1))
			
			if (int($MusControlCount.get_text()) == 6 && $PebernodControlCount.get_text()=="10"):
				#show mus Player wins the game!
				disableCollisionShape2D()
				
				$Mus6.visible = true
				$Mus6/AnimationPlayer.play("Mus6_ani")
				$vind_notification.visible = true
				$vind_notification/AnimationPlayer.play("vind_ani_notif")
				$AudioStreamPlayer_mus_win.play()
				playAgain()
				
			if (int($MusControlCount.get_text()) == 6 && $PebernodControlCount.get_text()!="10"):
				#show mus player loses game
				disableCollisionShape2D()
				
				$Mus6.visible = true
				$Mus6/AnimationPlayer.play("Mus6_ani")
				$tabt_notification.visible = true
				$tabt_notification/AnimationPlayer.play("ani_tabt_notif")
				$AudioStreamPlayer_mus_loss.play()
				playAgain()
			
			if int($MusControlCount.get_text()) != 6:
				#player eats a pebernut with no mus
				$AMus6/CollisionShape2D.disabled = true
				$AMus6/MusPeppernut6.visible = false
				$AntalPebernodCounterLabel.set_text(str(int($AntalPebernodCounterLabel.get_text())+1))
				$AudioStreamPlayer_Crunch.play()
	pass # Replace with function body.


func _on_AMus7_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton:
		if event.is_pressed():
			print("Object Click7")
			$PebernodControlCount.set_text(str(int($PebernodControlCount.get_text())+1))
			
			if (int($MusControlCount.get_text()) == 7 && $PebernodControlCount.get_text()=="10"):
				#show mus Player wins the game!
				disableCollisionShape2D()
				
				$Mus7.visible = true
				$Mus7/AnimationPlayer.play("Mus7_ani")
				$vind_notification.visible = true
				$vind_notification/AnimationPlayer.play("vind_ani_notif")
				$AudioStreamPlayer_mus_win.play()
				playAgain()

			if (int($MusControlCount.get_text()) == 7 && $PebernodControlCount.get_text()!="10"):
				#show mus player loses game
				disableCollisionShape2D()
				
				$Mus7.visible = true
				$Mus7/AnimationPlayer.play("Mus7_ani")
				$tabt_notification.visible = true
				$tabt_notification/AnimationPlayer.play("ani_tabt_notif")
				$AudioStreamPlayer_mus_loss.play()
				playAgain()
			
			if int($MusControlCount.get_text()) != 7:
				#player eats a pebernut with no mus
				$AMus7/CollisionShape2D.disabled = true
				$AMus7/MusPeppernut7.visible = false
				$AntalPebernodCounterLabel.set_text(str(int($AntalPebernodCounterLabel.get_text())+1))
				$AudioStreamPlayer_Crunch.play()
	pass # Replace with function body.


func _on_AMus8_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton:
		if event.is_pressed():
			print("Object Click8")
			$PebernodControlCount.set_text(str(int($PebernodControlCount.get_text())+1))
			
			if (int($MusControlCount.get_text()) == 8 && $PebernodControlCount.get_text()=="10"):
				#show mus Player wins the game!
				disableCollisionShape2D()
				
				$Mus8.visible = true
				$Mus8/AnimationPlayer.play("Mus8_ani")
				$vind_notification.visible = true
				$vind_notification/AnimationPlayer.play("vind_ani_notif")
				$AudioStreamPlayer_mus_win.play()
				playAgain()
				
			if (int($MusControlCount.get_text()) == 8 && $PebernodControlCount.get_text()!="10"):
				#show mus player loses game
				disableCollisionShape2D()
				
				$Mus8.visible = true
				$Mus8/AnimationPlayer.play("Mus8_ani")
				$tabt_notification.visible = true
				$tabt_notification/AnimationPlayer.play("ani_tabt_notif")
				$AudioStreamPlayer_mus_loss.play()
				playAgain()
			
			if int($MusControlCount.get_text()) != 8:
				#player eats a pebernut with no mus
				$AMus8/CollisionShape2D.disabled = true
				$AMus8/MusPeppernut8.visible = false
				$AntalPebernodCounterLabel.set_text(str(int($AntalPebernodCounterLabel.get_text())+1))
				$AudioStreamPlayer_Crunch.play()
	pass # Replace with function body.


func _on_AMus9_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton:
		if event.is_pressed():
			print("Object Click9")
			$PebernodControlCount.set_text(str(int($PebernodControlCount.get_text())+1))
			
			if (int($MusControlCount.get_text()) == 9 && $PebernodControlCount.get_text()=="10"):
				#show mus Player wins the game!
				disableCollisionShape2D()
				
				$Mus9.visible = true
				$Mus9/AnimationPlayer.play("Mus9_ani")
				$vind_notification.visible = true
				$vind_notification/AnimationPlayer.play("vind_ani_notif")
				$AudioStreamPlayer_mus_win.play()
				playAgain()
				
			if (int($MusControlCount.get_text()) == 9 && $PebernodControlCount.get_text()!="10"):
				#show mus player loses game
				disableCollisionShape2D()
				
				$Mus9.visible = true
				$Mus9/AnimationPlayer.play("Mus9_ani")
				$tabt_notification.visible = true
				$tabt_notification/AnimationPlayer.play("ani_tabt_notif")
				$AudioStreamPlayer_mus_loss.play()
				playAgain()
			
			if int($MusControlCount.get_text()) != 9:
				#player eats a pebernut with no mus
				$AMus9/CollisionShape2D.disabled = true
				$AMus9/MusPeppernut9.visible = false
				$AntalPebernodCounterLabel.set_text(str(int($AntalPebernodCounterLabel.get_text())+1))
				$AudioStreamPlayer_Crunch.play()
	pass # Replace with function body.


func _on_AMus10_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton:
		if event.is_pressed():
			print("Object Click10")
			$PebernodControlCount.set_text(str(int($PebernodControlCount.get_text())+1))
			
			if (int($MusControlCount.get_text()) == 10 && $PebernodControlCount.get_text()=="10"):
				#show mus Player wins the game!
				disableCollisionShape2D()
				
				$Mus10.visible = true
				$Mus10/AnimationPlayer.play("Mus10_ani")
				$vind_notification.visible = true
				$vind_notification/AnimationPlayer.play("vind_ani_notif")
				$AudioStreamPlayer_mus_win.play()
				playAgain()
				
			if (int($MusControlCount.get_text()) == 10 && $PebernodControlCount.get_text()!="10"):
				#show mus player loses game
				disableCollisionShape2D()

				$Mus10.visible = true
				$Mus10/AnimationPlayer.play("Mus10_ani")
				$tabt_notification.visible = true
				$tabt_notification/AnimationPlayer.play("ani_tabt_notif")
				$AudioStreamPlayer_mus_loss.play()
				playAgain()
			
			if int($MusControlCount.get_text()) != 10:
				#player eats a pebernut with no mus
				$AMus10/CollisionShape2D.disabled = true
				$AMus10/MusPeppernut10.visible = false
				$AntalPebernodCounterLabel.set_text(str(int($AntalPebernodCounterLabel.get_text())+1))
				$AudioStreamPlayer_Crunch.play()
	pass # Replace with function body.
func disableCollisionShape2D():
				$AMus1/CollisionShape2D.disabled = true
				$AMus2/CollisionShape2D.disabled = true
				$AMus3/CollisionShape2D.disabled = true
				$AMus4/CollisionShape2D.disabled = true
				$AMus5/CollisionShape2D.disabled = true
				$AMus6/CollisionShape2D.disabled = true
				$AMus7/CollisionShape2D.disabled = true
				$AMus8/CollisionShape2D.disabled = true
				$AMus9/CollisionShape2D.disabled = true
				$AMus10/CollisionShape2D.disabled = true
				pass
func activateCollisionShape2D():
				$Mus1.visible = false
				$Mus2.visible = false
				$Mus3.visible = false
				$Mus4.visible = false
				$Mus5.visible = false
				$Mus6.visible = false
				$Mus7.visible = false
				$Mus8.visible = false
				$Mus9.visible = false
				$Mus10.visible = false
				$AMus1/CollisionShape2D.disabled = false
				$AMus2/CollisionShape2D.disabled = false
				$AMus3/CollisionShape2D.disabled = false
				$AMus4/CollisionShape2D.disabled = false
				$AMus5/CollisionShape2D.disabled = false
				$AMus6/CollisionShape2D.disabled = false
				$AMus7/CollisionShape2D.disabled = false
				$AMus8/CollisionShape2D.disabled = false
				$AMus9/CollisionShape2D.disabled = false
				$AMus10/CollisionShape2D.disabled = false
				pass

func playAgain():
	#$StartButton.set_scale(Vector2(0.4,0.4))
	#$StartButton.set_position($StartButton.get_position()+ Vector2(490,210))
	$StartButton.visible = true
	pass

func activatePebernutObjects():
	$AMus1.visible = true
	$AMus2.visible = true
	$AMus3.visible = true
	$AMus4.visible = true
	$AMus5.visible = true
	$AMus6.visible = true
	$AMus7.visible = true
	$AMus8.visible = true
	$AMus9.visible = true
	$AMus10.visible = true
	$AMus1/MusPeppernut1.visible = true
	$AMus2/MusPeppernut2.visible = true
	$AMus3/MusPeppernut3.visible = true
	$AMus4/MusPeppernut4.visible = true
	$AMus5/MusPeppernut5.visible = true
	$AMus6/MusPeppernut6.visible = true
	$AMus7/MusPeppernut7.visible = true
	$AMus8/MusPeppernut8.visible = true
	$AMus9/MusPeppernut9.visible = true
	$AMus10/MusPeppernut10.visible = true
	pass

func _on_StartButton_pressed():
	$StartButton.visible = false
	activatePebernutObjects()
	activateCollisionShape2D()
	$AntalPebernodCounterLabel.set_text(str(int(0)))
	$AntalPebernodLabel.visible = true
	$AntalPebernodCounterLabel.visible = true
	$vind_notification.visible = false
	$tabt_notification.visible = false
	rng.randomize()
	var rngI = rng.randi_range(1,10)
	$MusControlCount.set_text(str(rngI))
	pass # Replace with function body.


func _make_post_request(url, data_to_send,use_ssl):
	# Convert data to json string:
	var query = JSON.print(data_to_send)
	# Add 'Content-Type' header:
	var headers = ["Content-Type: application/json"]
	$HTTPRequest.request(url, headers, HTTPClient.METHOD_POST, query)
	pass

func _on_Create_User_pressed():
	var loginCheck = str($acc.get_text())
	var passwordCheck = str($pas.get_text())
	var body
	if !"@" in loginCheck:
		
		$Error_Label.set_text("Fejl! Skal vaere en gyldig email!")
		$Error_Label.visible = true
		#print("Fejl! Skal være en gyldig email!")
		return
		
	if passwordCheck.length() < 6:
		
		$Error_Label.set_text("Fejl! Password skal vaere mindst 6 karakterer!")
		$Error_Label.visible = true
		#print("Fejl! Skal være en gyldig email!")
		return
		
	var time = OS.get_datetime()
	var day = str(time["day"])
	var year = str(time["year"])
	var hour = str(time["hour"])
	var minute = str(time["minute"])
	var second = str(time["second"])
	#print(str(time))
	
	# Add 'Content-Type' header:
	var headers = ["Content-Type: application/json"]
	body = JSON.print({"email": loginCheck,"passw": passwordCheck})
	print(body)
	$HTTPRequest_post.request("http://localhost:8080/bh-christmas-game/api/gameuser/",headers, true, HTTPClient.METHOD_POST, body)
	
	$Create_User.disabled = true
	pass # Replace with function body.


func _on_Login_Button_pressed():
	var loginCheck = str($acc.get_text())
	var passwordCheck = str($pas.get_text())
	var body
	
	if !"@" in loginCheck:
		#print("Fejl! Indtast en gyldig email!")
		$Error_Label.set_text("Fejl! Indtast en gyldig email!")
		$Error_Label.visible = true
		return
		# Add 'Content-Type' header:
	var headers = ["Content-Type: application/json"]
	body = JSON.print({"email": loginCheck,"passw": passwordCheck})
	
	$HTTPRequest.request("http://localhost:8080/bh-christmas-game/api/gameuser/login/l",headers, true, HTTPClient.METHOD_POST, body)
	
	print(loginCheck)
	print(passwordCheck)

	pass # Replace with function body.

func _on_HTTPRequest_request_completed(result, response_code, headers, body):
	
	if(response_code==200):
		$Error_Label.visible = false
		$Login_Button.visible = false
		$Create_User.visible = false
		$acc.visible = false
		$pas.visible = false
		$StartButton.visible = true
		
	if(response_code == null || response_code==500):
		print(str(response_code)+" Connection Error")
		$Error_Label.set_text("Connection Error!")

func _on_HTTPRequest_ready():
	var a = $HTTPRequest.connect("request_completed", self, "_on_request_completed")
	print(a)
	print("HTTPRequest_ready test")
	pass # Replace with function body.


func _on_HTTPRequest_post_request_completed(result, response_code, headers, body):
	if(response_code==200):
		print("post ok")
		
		$Error_Label.visible = true
		$Error_Label.set_text("User Created! Now you can login!")
	pass # Replace with function body.


func _on_HTTPRequest_post_ready():
	var a = $HTTPRequest_post.connect("request_completed", self, "_on_request_completed")
	print(a)
	print("HTTPRequest_post_ready test")
	pass # Replace with function body.
