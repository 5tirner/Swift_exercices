import Cocoa

class spaceShip
{
	var name: String = ""
	let health = 0
	var position = 0
	func moveLeft()
	{
		position -= 1
	}
	func moveRight()
	{
		position += 1
	}
	func printInfos()
	{
		print("Name: \(name)\nHealth: \(health)\nPos: \(position)")
	}
}

let firstShip = spaceShip()
firstShip.name = "Falcon"
firstShip.printInfos()
firstShip.moveLeft()
firstShip.printInfos()
firstShip.moveRight()
firstShip.moveRight()
firstShip.moveRight()
firstShip.printInfos()
