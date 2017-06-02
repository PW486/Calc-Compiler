# Calc Compiler

JFlex & JavaCUP Calculator Compiler

## Grammar
```
E -> E + T | T
T -> T * F | F
F -> (E) | id
```

## Production Rule
```
(1) E -> E + T
(2) E -> T
(3) T -> T * F
(4) T -> F
(5) F -> (E)
(6) F -> id
```

## Execution Result
```
# Initializing parser
# Current Symbol is #6
# Shift under term #6 to state #3
# Current token is #3
# Reduce with prod #6 [NT=2, SZ=1]
# Reduce rule: top state 0, lhs sym 2 -> state 1
# Goto state #1
# Reduce with prod #4 [NT=1, SZ=1]
# Reduce rule: top state 0, lhs sym 1 -> state 2
# Goto state #2
# Shift under term #3 to state #10
# Current token is #6
# Shift under term #6 to state #3
# Current token is #2
# Reduce with prod #6 [NT=2, SZ=1]
# Reduce rule: top state 10, lhs sym 2 -> state 11
# Goto state #11
# Reduce with prod #3 [NT=1, SZ=3]
# Reduce rule: top state 0, lhs sym 1 -> state 2
# Goto state #2
# Reduce with prod #2 [NT=0, SZ=1]
# Reduce rule: top state 0, lhs sym 0 -> state 4
# Goto state #4
# Shift under term #2 to state #8
# Current token is #6
# Shift under term #6 to state #3
# Current token is #0
# Reduce with prod #6 [NT=2, SZ=1]
# Reduce rule: top state 8, lhs sym 2 -> state 1
# Goto state #1
# Reduce with prod #4 [NT=1, SZ=1]
# Reduce rule: top state 8, lhs sym 1 -> state 9
# Goto state #9
# Reduce with prod #0 [NT=0, SZ=3]
# Reduce rule: top state 0, lhs sym 0 -> state 4
# Goto state #4
# Shift under term #0 to state #12
# Current token is #0
# Reduce with prod #1 [NT=0, SZ=2]
# Reduce rule: top state 0, lhs sym 0 -> state 4
# Goto state #4
38
```

## Usage
```bash
java -jar jflex-1.6.1.jar scanner.jflex
java -jar java-cup-11a.jar parser.cup
javac -cp java-cup-11a.jar Main.java parser.java scanner.java sym.java
java -cp java-cup-11a.jar:. Main
```