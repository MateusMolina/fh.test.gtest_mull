# c++ Mutating Test Tools

## Run instructions
1. Run the installation script (Ixx) associated to the desired test case (Txx)
2. Inside Txx:
   1. run runBuilder.sh 
   2. run runMutator.sh

Please refer to the tables below throughout the process.

## Test Cases
id | Status | Tool | Ixx | Description 
--- | --- | --- | --- | --- 
T10 | `passed` | mull-12 | I12 | gtest PoC
T11 | `passed` | mull-12 | I12 | gtest + cmake PoC
T12 | `passed` | mull-12 | I12 | T11, but test and src are separated
T20 | `passed` | dextool | I22 | dextool + gtest PoC
T30 | `wip` | dextool | I2x | dextool + gtest PoC

## Installation Scripts
id | Tool | Last v. | OS comp. | LLVM comp. | Dependencies
--- | --- | --- | --- | --- | ---
I10 | mull-10 | 0.17.1 | Ubuntu 18.04 | 10.0.0 | in repo
I12 | mull-12 | 0.17.1 | Ubuntu 20.04 | 10.0.0 | in repo
I20 | dextool | 4.2.0 | Ubuntu 18.04 | 10.0.0 | llvm-10-dev libclang-10-dev cmake sqlite3 dub ldc
I22 | dextool | 4.2.0 | Ubuntu 20.04 | 12.0.0 | llvm-12-dev libclang-12-dev cmake sqlite3 dub ldc