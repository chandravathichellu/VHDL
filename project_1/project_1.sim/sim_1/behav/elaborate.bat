@echo off
set xv_path=C:\\Xilinx\\Vivado\\2016.2\\bin
call %xv_path%/xelab  -wto 5c29abbe59e74474a891e8d73e369958 -m64 --debug typical --relax --mt 2 -L xil_defaultlib -L secureip --snapshot CLATEST_behav xil_defaultlib.CLATEST -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
