1. Go to ara/hardware/ and run `make verilate` with the modified testbench files that came with this commit 
2. Go to ara/apps/riscof/ and run `riscof run --config=config.ini --suite=test_suite --env=env` given the `riscv-gcc` is installed in `ara/install` dir with toolchain from 10x_scratch branch alongwith the modifications required to use `GCC` instead of `LLVM` toolchain
3. Enjoy debugging the failing tests now!
