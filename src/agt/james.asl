// Agent sample_agent in project main
{ include("$jacamo/templates/common-cartago.asl") }
{ include("$jacamo/templates/common-moise.asl") }

/* Initial beliefs and rules */

/* Initial goals */

!start.

/* Plans */
+!start : true <- !createCounter.

+!createCounter <- makeArtifact("counter", "example.Counter", [0], ID);
    focus(ID);
    inc.

+tick <- .println("o contador foi incrementado!").