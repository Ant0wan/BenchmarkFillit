# BenchmarkyourFillit [![42](https://i.imgur.com/9NXfcit.jpg)](i.imgur.com/9NXfcit.jpg)[![freetime](https://i.imgur.com/8IcDLkc.png)](i.imgur.com/8IcDLkc.png) 
[![HitCount](http://hits.dwyl.io/Ant0wan/BenchmarkyourFillit.svg)](http://hits.dwyl.io/Ant0wan/BenchmarkyourFillit)
[![Codacy Badge](https://api.codacy.com/project/badge/Grade/2ab976e57d6c4033b8f4f96586d955fa)](https://www.codacy.com/app/Ant0wan/BenchmarkyourFillit?utm_source=github.com&amp;utm_medium=referral&amp;utm_content=Ant0wan/BenchmarkyourFillit&amp;utm_campaign=Badge_Grade)

This script has been made for benchmarking <a href="https://github.com/Ant0wan/Fillit.git" target="_blank">Fillit [a 42 project]</a>.

---

## Installation

Clone BenchmarkyourFillit

```shell=
git clone https://github.com/Ant0wan/BenchmarkyourFillit.git
```

Copy your fillit(binary) in the repository:

```shell=
cp -f [your_fillit_binary] BenchmarkyourFillit/
```

---

## Launching benchmark

```shell=
./benchmarkyourFillit.sh
```

[![LaunchinBenchmark](https://i.imgur.com/dnhsKW9.png)](i.imgur.com/dnhsKW9.png)

---

## Select appropriate testing set

There are 5 test sets:
- 1 checking parsing
- 4 depending on the level of difficulty

#### Checking parsing

- Test invalid inputs

It checks if ./fillit is handling typical error cases concerning argument usages and the input validity.

Invalid input sample:
```
cat inv3.fillit
#..#
...#
...#
....

....
....
....
####

.###
...#
....
....

....
..##
.##.
....
```

Invalid usage of arguments:
```
./fillit .
```

#### Depending on level of difficulty

- Super easy tests

Output sample:
```
BBB
B.A
AAA
```

- Easy tests

Output sample:
```
.AABB..
AACCB..
.CC.BDD
.EE.DD.
EEFFGG.
.FFGGHH
....HH.
```

- Medium tests

In this set, your backtracking will be put to the test !

Output sample:
```
AABBBKEE
ACBKKKEE
ACCCFFJL
DDDDFFJL
HGGMNPJL
HHGMNPJL
IHGMNPOO
IIIMNPOO
```

- Hardcore tests
So far, no one succeeded these tests...

Output sample:
```
unknown
```

---

## Usage demo

[![DemoUsage](https://i.imgur.com/5273vVd.gif)](i.imgur.com/5273vVd.gif)
