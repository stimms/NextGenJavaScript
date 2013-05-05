import 'dart:html';
import 'dart:core';

main()
{
	var edmontonAirport = new Airport();

	Terminal terminalOne = new Terminal(12);
	Terminal terminalTwo = new Terminal(8);
	Terminal terminalThree = new Terminal(40);

	edmontonAirport.AddTerminal(terminalOne);
	edmontonAirport.AddTerminal(terminalTwo);
	edmontonAirport.AddTerminal(terminalThree);
	print (edmontonAirport._terminals.length);
	edmontonAirport.	Render();
}

class Airport{

	List<Terminal> _terminals = new List<Terminal>();

	AddTerminal(terminal)
	{
		_terminals.add(terminal);
	}

	Render()
	{
		var buffer = new StringBuffer();
		buffer.write("<ul>");
		for(Terminal terminal in _terminals)
		{
			buffer..write("<li>${terminal}</li>");
		}
		buffer..write("</ul>");
		query("#airportInformation").innerHtml(buffer.ToString());
	}
}

class Terminal
{
	List<Gate> _gates = new List<Gate>();

 	Terminal(int numberOfGates)
 	{
 		for(int i = 0; i < numberOfGates; i++)
 		{
 			_gates.add(new Gate(i));
 		}
 	}
}

class Gate
{
	final int gateNumber;

	Gate(this.gateNumber);
}