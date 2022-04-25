# c++ Mutating Test Tools

## Run instructions
1. Run the installation script inside the installscripts/ folder (Ixy) associated to the desired test case
2. Inside test folder:
   1. run runBuilder.sh 
   2. run runMutator.sh

Please refer to the tables below throughout the process.

## Test Cases
id | Status | Tool | Ixy | Description 
--- | --- | --- | --- | --- 
T10 | `working` | mull-12 | I12 | gtest PoC
T11 | `working` | mull-12 | I12 | gtest + cmake PoC
T12 | `working` | mull-12 | I12 | T11, but test and src are separated
T20 | `working` | dextool | I22 | gtest PoC
T30 | `wip` | dextool | I22 | banking sys.

## Installation Scripts
id | Status | Tool | Last v. | OS comp. | LLVM comp. | Dependencies
--- | --- | --- | --- | --- | --- | ---
I10 | `working` | mull-10 | 0.17.1 | Ubuntu 18.04 | 10.0.0 | in repo
I12 | `working` | mull-12 | 0.17.1 | Ubuntu 20.04 | 12.0.0 | in repo
I20 | `failure` | dextool | 4.2.0 | Ubuntu 18.04 | 10.0.0 | llvm-10-dev libclang-10-dev cmake sqlite3 dub ldc
I22 | `working` | dextool | 4.2.0 | Ubuntu 20.04 | 12.0.0 | llvm-12-dev libclang-12-dev cmake sqlite3 dub ldc