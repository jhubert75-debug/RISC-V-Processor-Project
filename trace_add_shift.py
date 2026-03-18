import subprocess
import time

# Define the RISC-V assembler file to trace
asm_file = 'add_shift.s'

# Function to execute and trace the RISC-V assembly

def trace_execution(asm_file):
    print(f'Tracing execution of {asm_file}...')

    # Simulate instruction execution in the RISC-V pipeline
    # Here we would normally invoke the RISC-V simulator/assembler
    try:
        # Assuming there is a command to execute the RISC-V program
        command = f'riscv-simulator {asm_file}'
        start_time = time.time()
        subprocess.run(command, shell=True, check=True)
        end_time = time.time()
        execution_time = end_time - start_time

        print(f'Execution completed in {execution_time:.2f} seconds.')
    except subprocess.CalledProcessError as e:
        print(f'An error occurred: {e}')

if __name__ == '__main__':
    trace_execution(asm_file)
