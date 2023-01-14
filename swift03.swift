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
			print("⚠️ your ship was hit, `health now is: \(health)`")
		}
		else if health <= 0
		{
			print("Sorry, Your ship was hit one too many times...\nDo you want to play again?")
			exit (0)
		}
	}
	func printInfos()
	{
		print("Name: \(name)\nHealth: \(health)\nPos: \(position)")
	}
}

class Fighter: spaceShip
{
	var weapon = ""
	var	remainingFirePower = 0
	func fire()
	{
		if (remainingFirePower > 0)
		{
			print("fire 🔫")
			remainingFirePower -= 1
		}
		else
		{
			print("⚠️ you have no more fire power.")
		}
	}
	override func printInfos()
	{
		print("Name: \(name)\nHealth: \(health)\nPos: \(position)\nremainingFirePower: \(remainingFirePower)")
	}
}

class ShieldShip: Fighter
{
	var shieldStrenght = 25
	override func wasHit()
	{
		if shieldStrenght > 0
		{
			shieldStrenght -= 5
			print("⚠️ your shield was hit, `shieldStrenght now is \(shieldStrenght)")
		}
		else if shieldStrenght <= 0
		{
			health -= 5
			if (health <= 0)
			{
				print("Sorry, Your ship was hit one too many times...\nDo you want to play again?")
				exit (0)
			}
			else
			{
				print("⚠️ no shield your ship was hit, `health now is: \(health)")
			}
		}
	}
	override func printInfos()
	{
		print("Name: \(name)\nHealth: \(health)\nPos: \(position)\nremainingFirePower: \(remainingFirePower)\nshieldStrenght:\(shieldStrenght)")
	}
}
var defender = ShieldShip()
defender.name = "Dfender"
defender.weapon = "Cannon"
defender.remainingFirePower = 10
defender.health = 15
defender.moveRight()
defender.fire()
defender.wasHit()
defender.wasHit()
defender.wasHit()
defender.wasHit()
defender.wasHit()
defender.printInfos()
defender.wasHit()
defender.wasHit()
defender.printInfos()