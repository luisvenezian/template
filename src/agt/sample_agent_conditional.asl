// Agent sample_agent in project main
{ include("$jacamo/templates/common-cartago.asl") }
{ include("$jacamo/templates/common-moise.asl") }

/* Initial beliefs and rules */
raining.                     // Chovendo
name(luis).                  // nome do agente é luis
isAt(luis, unesp).           // está na unesp
car("Ecosport").             // carro ecosport
has(luis, car("Ecosport")).  // luis tem ecosport

/* Initial goals */

!start.

/* Plans */
+!start : name(X) <- .print("Ola, ", X, " vamos ver como esta o clima?");
                        !checkWeather.
+!checkWeather: raining <- .println("Ta chovendo! pega um guarda-chuvas!").
+!checkWeather: sunny <- .println("TA SOLZAO, BORA PRAIA!").
