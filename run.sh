jflex src/fnplot/syntax/FnPlotLexer
cup -parser FnPlotParser -destdir syntax src/fnplot/syntax/FnPlotParser.cup
javac -cp ".:/usr/share/java/cup.jar:cs34q.gfx.jar" -d build src/fnplot/syntax/*.java src/fnplot/semantics/*.java src/fnplot/sys/*.java src/fnplot/values/*.java src/fnplot/gui/*.java
java -cp ".:/usr/share/java/cup.jar:cs34q.gfx.jar" fnplot.gui.FnPlotFrame
