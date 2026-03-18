# debug_add_shift.py

# This script is designed to analyze the add_shift test step-by-step with detailed trace information.

class DebugAddShift:
    def __init__(self, initial_value):
        self.value = initial_value

    def add(self, increment):
        print(f"Adding {increment} to {self.value}")
        self.value += increment
        print(f"New value is {self.value}")
        return self.value

    def shift(self, positions):
        print(f"Shifting {self.value} by {positions} positions")
        self.value <<= positions
        print(f"New value after shift is {self.value}")
        return self.value

if __name__ == '__main__':
    debug_instance = DebugAddShift(10)  # starting with an initial value of 10
    debug_instance.add(5)  # add 5
    debug_instance.shift(2)  # shift left by 2 positions