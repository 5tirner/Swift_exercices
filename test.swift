/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   test.swift                                         :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: zasabri <zasabri@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/01/14 16:41:59 by zasabri           #+#    #+#             */
/*   Updated: 2023/01/14 16:42:00 by zasabri          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */


import Cocoa

struct test
{
	let name: String
	var num: Int
	func agenda()
	{
		print("name: \(name)\nnumber\(num)")
	}
}

let p1 = test(name: "zakaria",num: 0612608931)
p1.agenda()