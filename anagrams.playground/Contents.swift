import Foundation

class Anagram {
    private static var tempString:String = ""
    static var anagramedString: String = ""
   
    static func generateAnagrams(line : String) -> String {
        if(line.count == 1){
            
            tempString.append(contentsOf: line)
            anagramedString.append("\(tempString) ")
            tempString =  tempString.replacingOccurrences(of: line, with: "")
        }
        else
        {
            for i in line{
                tempString.append(i)
                generateAnagrams(line: line.replacingOccurrences(of: String(i), with: ""))
                tempString =  tempString.replacingOccurrences(of: String(i), with: "")
            }
        }
        return anagramedString
    }
}
let string = Anagram.generateAnagrams(line: "dog")
Anagram.anagramedString = ""
print(string)
