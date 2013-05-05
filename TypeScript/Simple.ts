function Fib(term: number):number
{
	if(term == 0 || term == 1){
		return 1;
	}
	else{
		return Fib(term-1) + Fib(term-2);
	}
}