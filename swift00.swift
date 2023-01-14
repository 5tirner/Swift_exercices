/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   swift00.swift                                      :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: zasabri <zasabri@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/01/14 16:43:18 by zasabri           #+#    #+#             */
/*   Updated: 2023/01/14 16:43:21 by zasabri          ###   ########.fr       */
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
			exit(0)
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
firstShip.moveLeft()
firstShip.printInfos()
firstShip.moveRight()
firstShip.wasHit()
firstShip.moveRight()
firstShip.wasHit()
firstShip.moveRight()
firstShip.printInfos()
firstShip.wasHit()
firstShip.wasHit()