# UnderTheOS

Hands-on exploration of operating system internals.  
Focus on core subsystems: processes, scheduling, concurrency, memory, filesystems, and virtualization.

## Environment Setup (WSL2)
```shell
sudo apt update && sudo apt install -y \
    build-essential \
    gdb \
    cgdb \
    clang \
    make \
    cmake \
    valgrind \
    strace \
    htop \
    git \
    qemu-system-x86
```

## Project Structure
```
UnderTheOS/
├── 01-processes/
├── 02-scheduling/
├── 03-threads/
├── 04-concurrency/
├── 05-memory/
├── 06-filesystems/
├── 07-virtualization/
├── xv6-riscv/
└── tools/
```

Each module contains:
- code/
- tests/
- Makefile
- README.md

## Build & Run
```
make <module>
```

Example:
```shell
make threads
```

Inside a module:
```shell
cd 03-threads
make
make run
make test
```
## Quick Verification
```shell
echo '#include <stdio.h>' > test.c
echo 'int main(){ printf("Setup OK!\n"); }' >> test.c
gcc test.c -o test
./test
```

Expected:
```
Setup OK!
```

## Goal

Implement and validate OS concepts through hands-on experiments covering:
- Process lifecycle and scheduling
- Threading and concurrency primitives
- Virtual memory and paging mechanisms
- File system behavior
- Virtualization using QEMU

