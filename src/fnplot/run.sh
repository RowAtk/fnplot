jflex syntax/FnPlotLexer
cup -parser FnPlotParser -destdir syntax syntax/FnPlotParser.cup
javac -cp "/home/administrator/rowan/fnplot/src/fnplot:/usr/share/java/cup.jar:cs34q.gfx.jar" -d build syntax/*.java semantics/*.java sys/*.java values/*.java 
java -cp "/home/administrator/rowan/fnplot/src/fnplot:/usr/share/java/cup.jar:cs34q.gfx.jar" fnplot.gui.FnPlotFrame
