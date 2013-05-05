class BarChart
	data = [2,4,5,9,10,3]
	constructor: (@name) ->
 
	checkTitleLength: ->
		if(this.name.length > 25)
			console.log("long name")
		else
			console.log("short name")

	firstElement: ->
		return data[0]

	first3Elements: ->
		return data[0..2]

	first2Elements: ->
		return data[0...2]

	lastElement: ->
		return data[data.length]

	listDataElements: ->
		for d, i in data
			console.log "Data element #{i}: #{d}"

	fillDataRandomly: ->
		for d in [0..10]
			data.push(Math.random())

	checkDataLength: ->
		if data.length is 6
			console.log "Exactly 6"

	dataContains: (toCheck) ->
		if toCheck in data
			console.log "In there"
		else
			console.log "not there"
 
 
woodChuckChart = new BarChart("Quantity of Wood Chucked by Average Woodchuck")
woodChuckChart.checkTitleLength()
console.log(woodChuckChart.first2Elements())
woodChuckChart.listDataElements()
woodChuckChart.checkDataLength()
woodChuckChart.fillDataRandomly()
woodChuckChart.listDataElements()
woodChuckChart.dataContains(2)