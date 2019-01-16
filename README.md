# BenchmarkyourFillit [![LaunchinBenchmark](https://avatars0.githubusercontent.com/u/35011456?s=70&v=4)](avatars0.githubusercontent.com/u/35011456?s=70&v=4)

This script has been made for benchmarking <a href="https://cdn.intra.42.fr/pdf/pdf/886/fillit.en.pdf" target="_blank">Fillit [a 42 project]</a>.

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
- 4 depending on difficulty

#### Checking parsing

- Test invalid inputs

The purpose is to check if ./fillit is handling


#### Depending on difficulty

- Super easy tests
- Easy tests
- Medium tests
- Hardcore tests

---

## Usage demo

<a href="https://asciinema.org/a/a9dNz7LOjWMecmT9RbcFXKvel" target="_blank"><img src="https://asciinema.org/a/a9dNz7LOjWMecmT9RbcFXKvel.svg" /></a>
