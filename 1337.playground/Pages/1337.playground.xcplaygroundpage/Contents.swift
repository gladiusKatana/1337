
var leetDict = [
    "A" : "4",
    "B" : "8",
    "C" : "<",
    "D" : "|)",
    "E" : "3",
    "F" : "|=",
    "G" : "9",
    "H" : "|-|",
    "I" : "1",
    "J" : "_|",
    "K" : "|<",
    "L" : "|_",
    "M" : "M",
    "N" : "N",
    "O" : "0",
    "P" : "|>",
    "Q" : "().",
    "R" : ".-",
    "S" : "5",
    "T" : "7",
    "U" : "U",
    "V" : "V",
    "W" : "W",
    "X" : "><",
    "Y" : "`/",
    //    "." : ".",
    "," : ",",
    "!" : "!",
    " " : " ",
]

extension Dictionary where Value: Equatable {
    func key(forValue value: Value) -> Key? {
        return first { $0.1 == value }?.0
    }
}


func leetConverter(leet: String, dict: [String:String]) -> String {
    let str = leet.map { dict[String($0).uppercased()] ?? String($0) }.joined()
    return str
}


func teelConverter(stringToRevert: String) -> String {
    var accumulator = ""
    var gnirts = ""
    
    for char in stringToRevert.indices {
        let clip = "\(stringToRevert[char])"                //; print("\n\(clip)\n")
        
        if accumulator == "" {
            if let pilc = leetDict.key(forValue: clip) {
                //printStringDescribingLeetDictKeyForValue(clip: clip) // just for fun (jff)
                gnirts += pilc
            }
            else {
                accumulator += clip
            }
        }
        else {
            accumulator += clip
            if let pilc = leetDict.key(forValue: accumulator) {
                //printStringDescribingLeetDictKeyForValue(clip: accumulator) // jff
                gnirts += pilc
                accumulator = ""
            }
        }
    }
    return gnirts
}


func printStringDescribingLeetDictKeyForValue(clip: String) {   // jff (just for fun)
    print(String(describing:leetDict.key(forValue: clip)!))
}


let string = leetConverter(leet: "Hello, World!", dict: leetDict)       ; print(string)
let gnirts = teelConverter(stringToRevert: string)                      ; print(gnirts)

