import os

print(os.getcwd())

import numpy as np

def main():
    """Function that prints pi to 8 deciemal places."""
    print(f"Pi is {round(np.pi, 8)} to eight deciemal places.")

if __name__=="__main__":
    main()
