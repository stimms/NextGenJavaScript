module Cafe
{
	export class Seating
	{
		capacity: number;
	}

	export class Booth extends Seating
	{
		constructor()
		{
			super();
			this.capacity = 8;
		}
	}

	export class Table extends Seating
	{
		constructor()
		{
			super();
			this.capacity = 6;
		}
	}
}

var tableByTheDoor: Cafe.Seating;
tableByTheDoor = new Cafe.Booth();
console.log(tableByTheDoor.capacity);

