% datos %

	pais(venezuela).
	pais(colombia).
	pais(ecuador).
	pais(peru).

	limitan(venezuela,colombia).
	limitan(colombia,venezuela).
	limitan(colombia,ecuador).
	limitan(colombia,peru).
	limitan(ecuador,peru).
	limitan(ecuador,colombia).
	limitan(peru,ecuador).
	limitan(peru,colombia).

	superficie(venezuela,916445).
	superficie(colombia,1142000).
	superficie(ecuador,283560).
	superficie(peru,1285000).


% reglas %

	limitrofe(X,Y):-pais(X),limitan(X,Y).
	km(X,Y):-superficie(X,Y),Y > 1000000.
	translimitrofe(X,Y):-limitan(X,Z),limitan(Z,Y),dif(X,Y),not(limitan(X,Y)).
