testo : pezzo1.txt pezzo2.txt pezzo3.txt
	cat pezzo1.txt pezzo2.txt pezzo3.txt > testo.txt

pezzo1.txt : sottopezzo1-1.txt sottopezzo2-1.txt
	cat sottopezzo1-1.txt sottopezzo2-1.txt > pezzo1.txt
	
pezzo2.txt : sottopezzo1-2.txt sottopezzo2-2.txt
	cat sottopezzo1-2.txt sottopezzo2-2.txt > pezzo2.txt
	
pezzo3.txt : sottopezzo1-3.txt sottopezzo2-3.txt
	cat sottopezzo1-3.txt sottopezzo2-3.txt > pezzo3.txt
