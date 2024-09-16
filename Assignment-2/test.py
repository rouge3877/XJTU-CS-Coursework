import random


def binsearch(list, key, length):
    left = 0
    right = length - 1

    while left <= right:
        mid = (left + right) // 2
        if list[mid] == key:
            return mid, mid
        elif list[mid] > key:
            right = mid - 1
        elif list[mid] < key:
            left = mid + 1

    if right < 0:
        return -100000, left
    elif left > length - 1:
        return right, 100000

    return right, left


def checkMain_hash(list, length):
    check = length / 2
    res = False

    hmap: dict = {}
    for i in range(length):
        hmap[list[i]] = 0

    for i in range(length):
        hmap[list[i]] += 1
        if hmap[list[i]] > check:
            res = True
            break

    return res


def checkMain_minus(list, length):
    count = 1
    now = list[0]
    for i in range(1, length):
        if now == list[i]:
            count += 1
        elif count > 0:
            count -= 1
        else:
            now = list[i]
            count = 1

    count = 0
    for i in list:
        if i == now:
            count += 1
    if count > length / 2:
        return True
    else:
        return False


def partition(arr, left, right):
    pivot = arr[left]
    low = left + 1
    high = right

    while True:
        while low <= high and arr[low] <= pivot:
            low += 1
        while low <= high and arr[high] >= pivot:
            high -= 1
        if low <= high:
            arr[low], arr[high] = arr[high], arr[low]
        else:
            break
    
    arr[left], arr[high] = arr[high], arr[left]
    return high

def select_kth(list, left, right, k):
    f = left
    r = right
    parti = partition(list,f,r)
    relative_parti = parti - left + 1
    if relative_parti == k:
        return list[parti]
    elif relative_parti > k:
        return select_kth(list, f, parti-1, k)
    elif relative_parti < k:
        new_k = k - relative_parti 
        return select_kth(list, parti+1, right, new_k)
   
   
def checkMain_qs(list, length):
    if length %2 == 1:
        ifMain = select_kth(list, 0, length-1, (length+1)/2)
    else:
        ifMain = select_kth(list, 0, length-1, length/2 + 1)
    
    count = 0
    for i in list:
        if i == ifMain:
            count += 1
            
    if count > length / 2:
        return True 
    else:
        return False



def check(fun1, fun2):
    Flag = 0
    for i in range(100000):
        testLength = random.randint(5, 55)
        testUpperBound = random.randint(10, 55)
        testLowerBound = random.randint(1, testUpperBound - 1)
        testArray = []
        for i in range(testLength):
            testArray.append(random.randint(testLowerBound, testUpperBound))

        if not (
            fun1(testArray, testLength)
            == fun2(testArray, testLength)
        ):
            Flag = 1
            print("!!!!!!!ERROR!!!!!!!")
            print(testArray)
            print("fun1 return ")
            print(fun1(testArray, testLength))
            print()
            print("fun2 return ")
            print(fun2(testArray, testLength))
            break
    if Flag == 0:
        print("SUCCESS!!!")


check(checkMain_hash,checkMain_qs)
