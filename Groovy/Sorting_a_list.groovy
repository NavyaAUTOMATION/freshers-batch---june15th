package com.test.assignments
class Sorting_a_list {
	
	String name
	int days
	def getvalues(String n ,int d)
	{
		def name = n
		def days = d
		def l = [name:n,days:d]
	}

	static void main(args) {
		Sorting_a_list First=new Sorting_a_list()
		Sorting_a_list Second=new Sorting_a_list()
		Sorting_a_list Third=new Sorting_a_list()
		Sorting_a_list Fourth=new Sorting_a_list()
		
		def common = [First.getvalues('Navya', 25),   Second.getvalues('Sameer', 32), Third.getvalues('Saranya', 46), Fourth.getvalues('Neelima', 18)]
		
		def sort = common.sort{a, b -> b["days"] <=> a["days"] ?: a["name"] <=> b["name"]}
		sort.each { println it }
	}
}