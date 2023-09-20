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
+!start : name(X) <- .print("hello world, ", X, " how are you?!!!");
                  -raining;             // agente não crê mais que chove
                  -+isAt(luis, home);   // agente está em casa
                  +sunny.               // agente crê que o dia esta ensolarado