/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   self.swift                                         :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: zasabri <zasabri@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/01/14 18:39:11 by zasabri           #+#    #+#             */
/*   Updated: 2023/01/17 22:19:08 by zasabri          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

import Cocoa

class itself
{
	var str: String
	var i: Int
	init (str: String, i: Int)
	{
		self.str = str
		self.i = i
	}
	func printfff()
	{
		print("\(str)\n\(i)")
	}
}
var cheacker = itself(str: "selfmade", i: 9)
var s = "Hello World!"
var j = s.startIndex
while j < s.endIndex
{
	let char = s[j]
	print(char, separator: "", terminator: "")
	j = s.index(after: j)
}
