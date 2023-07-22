import math


def main():
    list = input().split(" ")
    for i in range(len(list)):
        c = (int(list[i]) - 32) * (5.0 / 9.0)
        print(round(c), end=' ')


main()
