// Agent sample_agent in project main
{ include("$jacamo/templates/common-cartago.asl") }
{ include("$jacamo/templates/common-moise.asl") }

/* Initial beliefs and rules */
raining.                     // Chovendo
name(luis).                  // nome do agente é luis
isAt(luis, unesp).           // está na unesp
car("Ecosport").             // carro ecosport
has(luis, car("Ecosport")).  // luis tem ecosport
temperature(10).             // temperatura é 10
/* Initial goals */

!start.

/* Plans */
+!start : name(X) & isAt(X, Y) <- .print("Ola, ", X, ", onde vc está? vamos ver como esta o clima?");
                                  .println("hmm... voce esta na ", Y, ", bons estudos!");
                                  !checkWeather;
                                  !checkTemperature.

+!checkWeather: raining <- .println("Ta chovendo! pega um guarda-chuvas!");
                           !goByCar.

+!checkWeather: sunny <- .println("TA SOLZAO, BORA PRAIA!").

+!checkTemperature: temperature(X) & X < 15 <- .println("Ta friozao!!!").
 
+!checkTemperature: temperature(X) & X > 25 <- .println("Ta muito calor, bixo!!!").

+!goByCar : name(X) & has(X, car(Y)) <- .print(X, ", é melhor voce ir trabalhar com sua ", Y).

-!goByCar.