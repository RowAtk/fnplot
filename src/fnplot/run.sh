jflex syntax/FnPlotLexer
cup -parser FnPlotParser -destdir syntax syntax/FnPlotParser.cup
javac -cp ".:/usr/share/java/cup.jar:cs34q.gfx.jar" gui/*.java syntax/*.java semantics/*.java sys/*.java values/*.java
# java -cp ".:/usr/share/java/cup.jar:cs34q.gfx.jar" fnplot/gui/FnPlotFrame
