import Cocoa

class spaceShip
{
	var name: String = ""
	var health = 0
	var position = 0
	func moveLeft()
	{
		position -= 1
		print("--------\n| left |\n--------")
	}
	func moveRight()
	{
		position += 1
		print("---------\n| Right |\n---------")
	}
	func wasHit()
	{
		health -= 1;
		if health > 0
		{
			print("⚠️ your ship was hit\nyou health now is:\(health)")
		}
		else if health <= 0
		{
			print("Sorry, Your ship was hit one too many times.\nDo you want to play again?")
			return;
		}
	}
	func printInfos()
	{
		print("Name: \(name)\nHealth: \(health)\nPos: \(position)")
	}
}

let firstShip = spaceShip()
firstShip.name = "Falcon"
firstShip.health = 6
firstShip.printInfos()
firstShip.moveLeft()
firstShip.printInfos()
firstShip.moveRight()
firstShip.moveRight()
firstShip.moveRight()
firstShip.printInfos()
firstShip.wasHit()