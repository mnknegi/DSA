
final class Node {
    let key: String
    let value: Int
    var next: Node?

    init(key: String, value: Int) {
        self.key = key
        self.value = value
        self.next = nil
    }
}

final class HashTable {

    let size: Int
    var data: [Int: Node]

    init(size: Int) {
        self.size = size
        self.data = [Int: Node]()
    }

    // hash function
    func hash(_ key: String) -> Int {
        var hash = 0
        let keyElements = key.map { $0 } // This will convert key string into key's character array as we can't index the key chars inside string using Integer indexes.
        for index in 0..<keyElements.count {
            let ascii = Int(keyElements[index].asciiValue!) // Convert Uint8 ascii value into Int
            hash = (hash + ascii * 23) % self.size // this will create hash values between 0 and self.size and 23(prime number) will insure less hash collisions.
        }
        return hash
    }

    // set
    func set(_ value: Int, for key: String) {
        // create a new node.
        let newNode = Node(key: key, value: value)

        // create a hash address.
        let hash = self.hash(key)

        // chech if data array at that address(or index) is empty.
        if data[hash] == nil {
            data[hash] = newNode // set new node at empty place
        } else {
            /* add the new node after the existing node as a linked list. */
            var temp = data[hash]
            while(temp?.next != nil) {
                temp = temp?.next
            }
            temp?.next = newNode
        }
    }

    // get hash value
    func getHashValue(for key: String) -> Int {
        // create a hash from the key.
        let hashValue = self.hash(key)

        var temp = data[hashValue]
        while(temp != nil) {
            if temp?.key == key {
                return temp!.value
            } else {
                temp = temp?.next
            }
        }

        return 0 // No data available at index or key not found in the link list at index.
    }

    func getAllkeys() -> [String] {
        var allKeys: [String] = []
        for index in 0..<self.size {
            if data[index] != nil {
                var temp = data[index]
                while(temp != nil) {
                    allKeys.append(temp!.key)
                    temp = temp?.next
                }
            }
        }
        return allKeys
    }

    // print table
    func printHashTable() {
        for index in 0..<size {
            print("\(index): ")
            if (data[index] != nil) {
                var temp = data[index]
                while(temp != nil) {
                    print("{ Key: \(temp!.key) and value: \(temp!.value) }")
                    temp = temp?.next
                }
            }
        }
    }
}

// create a hash table with size 7
var ht = HashTable(size: 7)

// set nodes inside hash table
ht.set(600, for: "paint") // 5
ht.set(400, for: "nail") // 1
ht.set(200, for: "tap") // 0
ht.set(100, for: "shower") // 6
ht.set(50, for: "door") // 3
ht.set(80, for: "flush") // 2
ht.set(250, for: "window") // 1
ht.set(450, for: "tiles") // 2

ht.printHashTable()

// get value of item at hash index.
print("nails -> ", ht.getHashValue(for: "nail"))
print("window -> ", ht.getHashValue(for: "window"))
print("shower -> ", ht.getHashValue(for: "shower"))
print("tiles -> ", ht.getHashValue(for: "tiles"))


// get all keys inside the hash table.
print("get all keys inside hash table -> ", ht.getAllkeys())
