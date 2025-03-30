
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

    private let size: Int
    private var data: [Int: Node?] = [:]

    init(size: Int) {
        self.size = size
    }

    // hash function
    func hash(_ key: String) -> Int {
        var hash = 0
        let keyElements = key.map { $0 } // This will convert key string into key's character array as we can't index the key chars inside string using Integer indexes.
        for keyElement in keyElements {
            let asciiValue = Int(keyElement.asciiValue!) // Convert Uint8 ascii value into Int
            hash = (hash + asciiValue * 23) % self.size // this will create hash values between 0 and self.size and 23(prime number) will insure less hash collisions.
        }
        return hash
    }

    // set
    func set(_ value: Int, for key: String) {
        // create a new node.
        let newNode = Node(key: key, value: value)

        // create a hash address.
        let index = self.hash(key)

        // chech if data array at that address(or index) is empty.
        if data[index] == nil {
            self.data[index] = newNode // set new node at empty place
        } else {
            /* add the new node after the existing node as a linked list. */
            var temp = data[index]!
            while(temp?.next != nil) {
                temp = temp?.next
            }
            temp?.next = newNode
        }
    }

    // get hash value
    func get(for key: String) -> Int? {
        // create a hash from the key.
        let index = self.hash(key)
        guard var temp = self.data[index] else { return nil }
        while let node = temp {
            if node.key == key { return node.value }
            temp = node.next
        }
        return nil // No data available at index or key not found in the link list at index.
    }

    func getAllkeys() -> [String] {
        var allKeys: [String] = []
        for index in 0..<self.size {
            if var temp = data[index] {
                while let node = temp {
                    allKeys.append(node.key)
                    temp = node.next
                }
            }
        }
        return allKeys
    }

    // print table
    func printHashTable() {
        for index in 0..<self.size {
            print("\(index): ", terminator: "")
            if var temp = data[index] {
                while let node = temp {
                    print("(\(node.key): \(node.value))", terminator: " ")
                    temp = node.next
                }
            }
            print("")
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
if let nails = ht.get(for: "nail") {
    print("nails: \(nails)")
}

if let windows = ht.get(for: "window") {
    print("windows: \(windows)")
}

if let showers = ht.get(for: "shower") {
    print("showers: \(showers)")
}

if let tiles = ht.get(for: "tiles") {
    print("tiles: \(tiles)")
}


// get all keys inside the hash table.
print("get all keys inside hash table -> ", ht.getAllkeys())
