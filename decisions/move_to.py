from colorama import init
from termcolor import colored

init()

my_values = {
    "dating": 7,
    "friends": 6,
    "family_hangouts": 3,
    "elysium": 8,
    "rk4": 11,
    "entreprenuership": 4,
    "full_time_jobs": 1,
    "newness": 5,
    "escape": 12,
    "gym": 2,
    "family_needs": 10,
    "adventure": 9,
    "rent_cost": 8,
}

options = [
    "Texas College Station",
    "Austin Texas",
    "Home",
    "Utah County",
    "Arizona",
]


def first_line(first_align, values):
    len_of_vals = []
    print(colored(f"\nYour options are: {str(options)}", (210, 212, 114)))
    with open("color_results.md", "a") as file:
        file.write(" " * (first_align + 2))
        for k in values.keys():
            len_of_vals.append(len(k))
            file.write(colored(f"{k} | ", "blue"))
        file.write(colored("Totals", (247, 159, 94)))
        len_of_vals.append(len_of_vals[0])
    return len_of_vals


def write_values(option, cur_dict, len_of_vals, first_align):
    with open("color_results.md", "a") as file:
        index = 0
        file.write("\n")
        file.write(f"{option}")
        file.write(" " * (first_align - len(option) + 2))
        cur_sum = 0
        for v in cur_dict.values():
            file.write(colored(f"{v}", "green"))
            file.write(" " * (len_of_vals[index] + 2))
            cur_sum += v
            index += 1
        file.write(colored(f"{cur_sum}", "red"))
    return cur_sum


def loop_through(options, my_values, len_of_vals, first_align):
    all_sums = {}
    for option in options:
        print("\nHow would you rank ", end="")
        print(colored(option, "green"), end="")
        print(" on a scale of 1-10 based on:")
        cur_dict = {}
        for value in my_values:
            while True:
                try:
                    input_val = input(colored(f"{value}: ", "cyan"))
                    cur_dict[value] = int(input_val)
                    break
                except ValueError:
                    print(f"Invalid entry: {input_val}, try again")
            # cur_dict[value] = 8
        cur_sum = write_values(option, cur_dict, len_of_vals, first_align)
        all_sums[option] = cur_sum
    return all_sums


def reccomendations(sorted_sums, num):
    with open("color_results.md", "a") as file:
        file.write(f"\n\nYour top {num} reccomendations are:\n")
        index = 1
        for k, v in sorted_sums.items():
            file.write(f"\n\t{index}) ")
            file.write(colored(f"{k} ", "cyan"))
            file.write(colored(f"{v}", "magenta"))
            index += 1
            if index > num:
                break


def main():
    first_align = len(max(options, key=len)) + 1
    len_of_vals = first_line(
        first_align,
        my_values,
    )
    all_sums = loop_through(options, my_values, len_of_vals, first_align)
    sorted_sums = dict(sorted(all_sums.items()))
    reccomendations(sorted_sums, 3)


if __name__ == "__main__":
    main()
