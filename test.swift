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