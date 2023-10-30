func binarySearch<T: Comparable>(array: [T], target: T) -> Int? {
    var low = 0
    var high = array.count - 1

    while low <= high {
        let mid = low + (high - low) / 2

        if array[mid] == target {
            return mid
        } else if array[mid] < target {
            low = mid + 1
        } else {
            high = mid - 1
        }
    }

    return nil
}

let sortedArray = [1, 3, 5, 7, 9, 11, 13, 15, 17, 19]
let target = 9

if let index = binarySearch(array: sortedArray, target: target) {
    print("Found \(target) at index \(index)")
} else {
    print("\(target) not found in the array.")
}
