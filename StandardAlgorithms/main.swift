import Foundation

let sorting = Sorting()
let searching = Searching()

func algorithmPrinter (name: String, description: String, timeAve: String,  timeBest: String, timeWorst: String, space: String) {
    print("\nThis algorithm is called a \(name) \nA \(name) \(description)")
    print("The best time complexity is O(\(timeBest))")
    print("The worst time complexity is O(\(timeWorst))")
    print("The average time complexity is O(\(timeAve))")
    print("The worst case space complexity is O(\(space))")
    
    var data = [Int] ()
    for _ in 0...20 {
        data.append(Int.random(in:1...100))
    }
    
    if name == "Bubble Sort" {
        print("\nI will now test the algorithm with this data: \(data)")
        print("The result was ", sorting.bubbleSort(data: data))
    } else if name == "Merge Sort" {
        print("\nI will now test the algorithm with this data: \(data)")
        print("The result was ", sorting.mergeSort(array: data))
    } else if name == "Quick Sort" {
        print("\nI will now test the algorithm with this data: \(data)")
        print("The result was ", sorting.quickSort(array: data))
    } else if name == "Insertion Sort" {
        print("\nI will now test the algorithm with this data: \(data)")
        print("The result was ", sorting.insertionSort(array: data))
    } else if name == "Linear Search" {
        let target = Int.random(in: 1...100)
        print("\nI will now test the algorithm with this data: \(data), where the target is \(target)")
        print("The result was ", searching.linearSearch(array: data, target: target))
    } else if name == "Binary Search" {
        let target = Int.random(in: 1...100)
        print("\nI will now test the algorithm with this data: \(data), and the target is \(target)")
        print("The result was ", searching.binarySearch(array: data, target: target))
    }
}

algorithmPrinter(name: "Bubble Sort", description: "compares an element and its following neighbour, and swaps them if they are not in order. At the end of each pass, a new element will in the right position, in decreasing size.", timeAve: "n^2", timeBest: "n", timeWorst: "n^2", space: "1")

algorithmPrinter(name: "Merge Sort", description: "splits an array down recursively until there are only single arrays. It then rejoins arrays, pairing them, putting them in increasing size, until there is one completed, sorted arrray.", timeAve: "n log n", timeBest: "n log n", timeWorst: "n log n", space: "n")

algorithmPrinter(name: "Quick Sort", description: "chooses a pivot, usually the first element, and decides whether each subsequent elements is greater than (move to right array) or less than the pivot (move to left array). It splits the array into a left and right array, which are then done the same too recursively, as the same function is called on the left adn array arrays until there is only one element in the array, so it cannot be sorted further, and it is returned and appended with all previous recursions.", timeAve: "n log n", timeBest: "n log n", timeWorst: "n^2", space: "log n")

algorithmPrinter(name: "Insertion Sort", description: "effectively one element in the correct position each pass. It usually starts a new sorted array, and on each pass compares the new element with an element already in the sorted array, and will compare unitl it has found the right position for it, and inserts it in.", timeAve: "n^2", timeBest: "n", timeWorst: "n^2", space: "1")

algorithmPrinter(name: "Linear Search", description: "checks every element in an array for an element, and either it finds it and returns true, or passes through the whole array and does not find it, so returns false.", timeAve: "n", timeBest: "1", timeWorst: "n", space: "1")

algorithmPrinter(name: "Binary Search", description: "has two pointers, beginning at the start and end of the array. It compares the midpoint of the two with the target, and if they match, it has been found. If not, it will compare to see which is larger, either discarding the top or bottom half of the array. It does this by moving one of the pointers, as it if the target was smaller than the midpoint, the end pointer is move too the midpoint, and the process starts again until the element is found, or the two pointers meet, in which case it is not there.  \nIT REQUIRES AN ALREADY SORTED ARRAY", timeAve: "log n", timeBest: "1", timeWorst: "log n", space: "1")
