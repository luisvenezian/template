// Agent sample_agent in project main
{ include("$jacamo/templates/common-cartago.asl") }
{ include("$jacamo/templates/common-moise.asl") }

/* Initial beliefs and rules */
planet("Mercury").
planet("Venus").
planet("Earth").
planet("Mars").
planet("Jupiter").
planet("Saturn").
planet("Neptune").
planet("Uranus").
/* Initial goals */

!start.

/* Plans */
+!start : true <- .print("Listando todos os planetas do sistema solar!");
                  .findall(X, planet(X), L);
                  .println("Eles são: ", L).