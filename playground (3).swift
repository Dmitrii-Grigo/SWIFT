

func fibonacci(n: Int) -> [Int] {

    var fibarray = [0, 1]

    while fibarray.count < n {
        fibarray.append(fibarray[fibarray.count - 1] + fibarray[fibarray.count - 2])
    }
    return fibarray
}

print(fibonacci(n: 50))

