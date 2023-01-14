/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   swift01.swift                                      :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: zasabri <zasabri@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/01/14 15:48:49 by zasabri           #+#    #+#             */
/*   Updated: 2023/01/14 16:06:16 by zasabri          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

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
			print("Sorry, Your ship was hit one too many times.\nDo you want to play again?")
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
destroyer.moveRight()
destroyer.printInfos()
//|var Falcon = spaceShip()| this doesn't work bec the super class spaceShip can't inherits from
//|Falcon.weapon   = "Hell"| Fighter (The subclass), this is because a subclass is considered 
//|||||print(Falcon.weapon)| to be a specialized version of the superclass.
// Swift follows a single inheritance model, where a class can only inherit from a superclass.
