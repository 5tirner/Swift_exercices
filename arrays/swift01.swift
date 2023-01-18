/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   swift01.swift                                      :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: zasabri <zasabri@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/01/18 04:15:25 by zasabri           #+#    #+#             */
/*   Updated: 2023/01/18 05:28:20 by zasabri          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

var walkingChallenge: [String] = []
var runningChallange: [String] = []
var footballChallange: [String] = []

walkingChallenge += ["Walking->2km🚶", "Walking->4km🚶"]
runningChallange += ["shot: running->100m🏃", "Marathon: running->40km🏃"]
footballChallange += ["football League⚽", "footsalle Cup⚽"]

var challenges = walkingChallenge + runningChallange + footballChallange
print(challenges[2])
print("---------------------------")

challenges.removeAll()
print(challenges)
print("---------------------------")

var yourChallenges: [String] = []
// yourChallenges += [walkingChallenge[1], footballChallange[0]]
print(yourChallenges)
print("---------------------------")

var i = 0
while i < yourChallenges.count
{
	i+=1
}
if (yourChallenges.isEmpty)
{
	print("You don't have any challenges until now.\nclick here to subscribe in one")
}
else
{
	var j = 1
	print("your challenges is: ")
	while j < i
	{
		print(yourChallenges[j])
		j+=1
	}
}