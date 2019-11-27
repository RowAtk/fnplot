jflex syntax/FnPlotLexer
cup -parser FnPlotParser -destdir syntax syntax/FnPlotParser.cup
javac -classpath ".:/usr/share/java/cup.jar" gui/*.java syntax/*.java semantics/*.java sys/*.java values/*.java
java -classpath ".:/usr/share/java/cup.jar" gui/FnPlotFrame
