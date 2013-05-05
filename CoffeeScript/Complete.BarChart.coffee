class BarChart
  constructor: (@name) ->
 
	print: ->
		console.log("")
		if(this.name.length > 5)
			console.log("long name")
		else
			console.log("short name")
 
usersThisWeek = new BarChart("long name here")
usersThisWeek.print()