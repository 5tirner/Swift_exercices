/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   swift00.swift                                      :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: zasabri <zasabri@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/01/18 03:13:38 by zasabri           #+#    #+#             */
/*   Updated: 2023/01/18 04:14:59 by zasabri          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

import Cocoa

var registrationList: [String] = []
registrationList.append("Sara")
print(registrationList)
print("-------------------------")
registrationList += ["Messi","Cristiano","Inesta","Modric"]
print(registrationList)
print("-------------------------")
var i = 0
while i < registrationList.count
{
	i+=1
}
registrationList.insert("Charlie",at: i)
print(registrationList)
print("-------------------------")
registrationList[i] = "Rebacca"
print(registrationList)
print("-------------------------")
registrationList.removeLast()
print(registrationList)
print("-------------------------")
let deleteItem = registrationList
print(deleteItem)