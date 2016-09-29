def interp(s):
    lst = s.split(' ', 1)
    if lst[0] == "print":
        if (len(lst) >= 2):
            print(lst[1])
        else:
            print("")
    elif lst[0] == "exit":
        return False
    else:
        print("错误：未识别的语法")
    return True


def main():
    print("SBL: 一个没啥卵用的解释器")
    #
    s = input(">>> ")
    while interp(s):
        s = input(">>> ")


main()
