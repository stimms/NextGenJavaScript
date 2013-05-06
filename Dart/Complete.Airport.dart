import 'dart:html';
import 'dart:core';

main()
{
	var edmontonAirport = new Airport();

	Terminal terminalOne = new Terminal(12);
	Terminal terminalTwo = new Terminal(8, "Terminial two");
	Terminal terminalThree = new Terminal(40, "Terminal three");

	edmontonAirport.AddTerminal(terminalOne);
	edmontonAirport.AddTerminal(terminalTwo);
	edmontonAirport.AddTerminal(terminalThree);
	print (edmontonAirport._terminals.length);
	edmontonAirport.Render();
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
		buffer.add("<ul>");
		for(Terminal terminal in _terminals)
		{
			buffer.add("<li>${terminal.Name}</li>");
		}
		buffer.add("</ul>");
		var element = new Element.html(buffer.toString());
		query("#airportInformation").append(element);
	}
}

class Terminal
{
	List<Gate> _gates = new List<Gate>();

	final String Name;

 	Terminal(int numberOfGates, [String this.Name: "Terminal 1"])
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