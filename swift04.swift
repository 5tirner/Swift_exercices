/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   swift04.swift                                      :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: zasabri <zasabri@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/01/14 18:12:33 by zasabri           #+#    #+#             */
/*   Updated: 2023/01/17 23:54:34 by zasabri          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

import Cocoa

class spaceShip
{
	var name: String
	var health: Int
	var position: Int
	init (name: String , health: Int , position: Int)
	{
		self.name = name
		self.health = health
		self.position = position
	}
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
	var weapon: String
	var	remainingFirePower: Int
	init (name: String, health: Int, position: Int, weapon: String, remainingFirePower: Int)
	{
		self.weapon = weapon
		self.remainingFirePower = remainingFirePower
		super.init(name: name, health: health, position: position)
	}
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
	override func wasHit()
	{
		print("⚠️ your weapon \(weapon)was hit")
		remainingFirePower = 0
	}
	override func printInfos()
	{
		print("Name: \(name)\nHealth: \(health)\nPos: \(position)\nweapon: \(weapon)\nremainingFirePower: \(remainingFirePower)")
	}
}

class ShieldShip: Fighter
{
	var shieldStrenght: Int
	init (name: String, health: Int, position: Int, weapon: String, remainingFirePower: Int, shieldStrenght: Int)
	{
		self.shieldStrenght = shieldStrenght
		super.init(name: name, health: health, position: position, weapon: weapon, remainingFirePower: remainingFirePower)
	}
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
		print("Name: \(name)\nHealth: \(health)\nPos: \(position)\nweapon: \(weapon)\nremainingFirePower: \(remainingFirePower)\nshieldStrenght:\(shieldStrenght)")
	}
}

var falcon = spaceShip(name: "FalconX", health: 5, position: 0)
falcon.printInfos()
print("---------------")
var destroyer = Fighter(name: "Destroyer", health: 10, position: 0, weapon: "Laser", remainingFirePower: 5)
destroyer.printInfos()
print("---------------")
let defender = ShieldShip(name: "Defender", health: 10, position: 0, weapon: "Gama", remainingFirePower: 5, shieldStrenght: 5);
defender.printInfos()
print("---------------")
let sameShip = falcon
print(falcon.position, sameShip.position)
sameShip.moveLeft()
print(falcon.position, sameShip.position)
// 1) Both positions will change, because in this case sameShip and falcon are references to the same object in memory
/* 2) If both sameShip and falcon were structs instead of classes, the position of sameShip would change
but the position of falcon would not change, because in this case sameShip would be a copy of the falcon struct,
and changing sameShip does not affect falcon*/