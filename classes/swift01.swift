/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   swift01.swift                                      :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: zasabri <zasabri@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/01/14 15:48:49 by zasabri           #+#    #+#             */
/*   Updated: 2023/01/14 18:22:25 by zasabri          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

import Cocoa

class spaceShip
{
	var name = ""
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
			print("Sorry, Your ship was hit one too many times.\nDo you want to play again?")
			exit (0)
		}
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
	func printInfos()
	{
		print("Name: \(name)\nHealth: \(health)\nPos: \(position)\nremainingFirePower: \(remainingFirePower)")
	}
}

var destroyer = Fighter()
destroyer.name = "Destroyer"
destroyer.weapon = "Laser"
destroyer.health = 10
destroyer.remainingFirePower = 10
destroyer.printInfos();
destroyer.moveLeft()
destroyer.moveLeft()
destroyer.wasHit()
destroyer.fire()
destroyer.moveRight()
destroyer.fire()
destroyer.fire()
destroyer.fire()
destroyer.fire()
destroyer.fire()
destroyer.fire()
destroyer.fire()
destroyer.printInfos()
//|var Falcon = spaceShip()| this doesn't work bec the super class spaceShip can't inherits from
//|Falcon.weapon   = "Hell"| Fighter (The subclass), this is because a subclass is considered 
//|||||print(Falcon.weapon)| to be a specialized version of the superclass.
// Swift follows a single inheritance model, where a class can only inherit from a superclass.
