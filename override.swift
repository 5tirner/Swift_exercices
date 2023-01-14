/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   override.swift                                     :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: zasabri <zasabri@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/01/14 16:43:25 by zasabri           #+#    #+#             */
/*   Updated: 2023/01/14 16:47:58 by zasabri          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

import Cocoa

class superone
{
	func whatClass()
	{
		print("I'm super one")
	}
}

class subone: superone
{
	override func whatClass()
	{
		print("I'm sub one")
	}
}

var checker1 = subone()
checker1.whatClass()
var checker2 = superone()
checker2.whatClass()

