# Assignment 2
## 2-3
```python
def binsearch(list, key, length):
    left = 0
    right = length-1

    while(left <= right):
        mid = (left + right) // 2
        if list[mid] == key:
            return mid, mid
        elif list[mid] > key:
            right = mid - 1
        elif list[mid] < key:
            left = mid + 1
    
    if right < 0:
        return -INF, left
    elif left > length-1:
        return right, INF

    return right, left
```
## 2-9


