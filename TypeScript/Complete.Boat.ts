module Vehicles.OceanGoing
{
	export class Boat
	{
		distanceTraveled: number;
		constructor(public length: number, public name: string)
		{

		}

		travel(distance: number)
		{
			this.distanceTraveled += distance;
		}
	}

	export class Yatch extends Boat
	{
		capacity: number;
		setCapacity(passengers: number)
		{
			this.capacity = passengers;
		}
	}
}

var ssMinow = new Vehicles.OceanGoing.Yatch(50, "Minow");
console.log(ssMinow.capacity);
ssMinow.setCapacity(7);
console.log(ssMinow.capacity);