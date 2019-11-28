jflex src/fnplot/syntax/FnPlotLexer
cup -parser FnPlotParser -destdir src/fnplot/syntax src/fnplot/syntax/FnPlotParser.cup
javac -cp ".:/usr/share/java/cup.jar:cs34q.gfx.jar" src/fnplot/gui/*.java src/fnplot/syntax/*.java src/fnplot/semantics/*.java src/fnplot/sys/*.java src/fnplot/values/*.java
# java -cp ".:/usr/share/java/cup.jar:cs34q.gfx.jar" src/fnplot/fnplot/gui/FnPlotFrame
