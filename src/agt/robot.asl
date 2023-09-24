// Agent sample_agent in project main
{ include("$jacamo/templates/common-cartago.asl") }
{ include("$jacamo/templates/common-moise.asl") }

/* Initial beliefs and rules */

/* Initial goals */

!start.

/* Plans */
+!start : true <- makeArtifact("rooms", "example.Rooms", [2], ID);
    focus(ID);
    !searchTrash.

+!searchTrash <- .drop_all_intentions;
    !move;
    .wait(1000);
    !searchTrash.

+!move : at(X) & X == 0 <- .println("Moving to room ", X + 1);
    goRight.

+!move : at(X) & X == 1 <- .println("Moving to room ", X - 1);
    goLeft.

+dirty: at(x) <- .println("Cleaning room ", X);
    clean.
 