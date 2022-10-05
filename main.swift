var unsortedIntegers = [String]()
func input () -> [String]{
    var line : String?
repeat {
    line = readLine()
    if line != nil {
        unsortedIntegers.append(line!)
    }

} while line != nil
return unsortedIntegers
}
bubbleSort(unsortedIntegers)
func swap(integers: inout [String], firstIndex: Int, secondIndex: Int){
let temp =  integers[firstIndex]
integers[firstIndex] = integers[secondIndex]
integers[secondIndex] = temp
}
func bubbleSort(_ unsortedIntegers: [String])  {
    var sortingIntegers = input()

    var totalSwapCount = 0
    var  swapCountPerPass: Int
    var x  = 0
//    print("Pass: 0, Swaps: 0/0, Array: \(unsortedIntegers)")
    repeat {
        x += 1
        swapCountPerPass = 0
        for index in 0 ..< sortingIntegers.count - 1{
            let thisIndex = index
            let nextIndex = index + 1

            let thisElement = sortingIntegers[thisIndex]
            let nextElement =  sortingIntegers[nextIndex]
            if thisElement > nextElement {
                swap(integers: &sortingIntegers, firstIndex: thisIndex, secondIndex: nextIndex)
            totalSwapCount += 1
            swapCountPerPass +=  1

            }
        }
  //      print("Pass: \(x), Swaps: \(swapCountPerPass)/\(totalSwapCount), Array: \(sortingIntegers)")
   
    }while swapCountPerPass > 0

}
