# Exercise Session 6
## Exercise 1
### L1
```
S -> A1A1A1A
A -> 1 | 0 | EMPTY
```

### L2
```
S -> 1A1
   | 0A0
   | 1
   | 0
A -> 0 | 1 | EMPTY
```

### L3
```
A -> 0A1
   | 0A0
   | 1A0
   | 1A1
   | 0
```

### L4
No rules is my answer
```

```

### L5
```
S -> EMPTY
```

## Exercise 2
### 1
$V = \{A,X,S,T\}$

$\Sigma = \{a,b\}$

$S = A$

$R$ is already defined within the taks.

### 2
- ab
- aab
- abb
- baa
- bba

### 3
Seeting a T can go to $\epsilon$ these might not be correct.

- aa
- bb
- aaaa
- bbbb
- bbbbbb

### 4
Read left to right then go down a row

- false
- true
- true
- true
- true
- false

## Exercise 3
### 1
```
S -> 0S
   | 1S
   | 1A
A -> 0B
   | 1B
B -> 0
   | EMPTY
```

### 2
```
S -> 0S
   | 1A
A -> 0B
   | B
   | EMPTY
B -> 1B
   | 0A
   | 1A
   | EMPTY
```

## Exercise 4
### 1
```
S -> A0A
A -> 1A
   | EMPTY
```

### 2
```
S -> 1
   | A
A -> 0A
   | EMPTY
```

### 3
```
S -> 01A
A -> 1A
   | B
B -> 01A
   | EMPTY
```
