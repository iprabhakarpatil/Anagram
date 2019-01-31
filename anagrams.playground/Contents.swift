import Foundation

class Anagram {
    private static var trace:String = ""
    static var anagramedString: String = ""
   
    static func generateAnagrams(line : String) -> String {
        if(line.count == 1){
            
            trace.append(contentsOf: line)
            anagramedString.append("\(trace) ")
//            print("\(trace)")
            trace =  trace.replacingOccurrences(of: line, with: "")
        }
        else
        {
            for i in line{
                trace.append(i)
                generateAnagrams(line: line.replacingOccurrences(of: String(i), with: ""))
                trace =  trace.replacingOccurrences(of: String(i), with: "")
            }
        }
        return anagramedString
    }
}
let string = Anagram.generateAnagrams(line: "dog")
Anagram.anagramedString = ""
print(string)
