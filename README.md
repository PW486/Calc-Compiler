# Calc Compiler

JFlex & JavaCUP Calculator Compiler

```bash
java -jar jflex-1.6.1.jar scanner.jflex
java -jar java-cup-11a.jar parser.cup
javac -cp java-cup-11a.jar Main.java parser.java scanner.java sym.java
java -cp java-cup-11a.jar:. Main
```