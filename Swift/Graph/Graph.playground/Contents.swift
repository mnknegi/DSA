
final class Graph {

    /*
     Terminologies:
     - vertex
     - edge
     - weightage
     */

//    adjacencyList
    var adjList: [String: Set<String>] = [:]

    // add vertex
    /**
     {
     "A":
     }
     */
    func addVertex(_ vertex: String) -> Bool {
        // Check if adjList already contains this vertex.
        guard let _ = adjList[vertex] else {
            // if no then add vertex.
            self.adjList[vertex] = []
            return true
        }
        return false
    }

    /* add edge */
    // check if both vertices are available
    // insert both vertices to each other.
    func addEdgeBetween(_ vertex1: String, and vertex2: String) -> Bool {
        guard let _ = self.adjList[vertex1], let _ = self.adjList[vertex2] else {
            return false
        }
        self.adjList[vertex1]?.insert(vertex2)
        self.adjList[vertex2]?.insert(vertex1)
        return true
    }

    // remove edge
    func removeEdgeBetween(_ vertex1: String, and vertex2: String) -> Bool {
        guard let _ = self.adjList[vertex1], let _ = self.adjList[vertex2] else {
            return false
        }
        self.adjList[vertex1]?.remove(vertex2)
        self.adjList[vertex2]?.remove(vertex1)
        return true
    }

    // remove vertex
    func removeVertex(_ vertex: String) -> Bool {
        guard let edges = self.adjList[vertex] else {
            return false
        }
        for edge in edges {
            self.adjList[edge]?.remove(vertex)
        }
        self.adjList.removeValue(forKey: vertex)
        return true
    }

    // print Graph
    func printGraph() {
        for (vertex, edges) in self.adjList {
            print("\(vertex) : [", terminator: "")
            for edge in edges {
                print("\(edge) ", terminator: "")
            }
            print("]")
        }
    }
}

// create graph
var graph = Graph()

// add vertex
graph.addVertex("A")
graph.addVertex("B")
graph.addVertex("C")

// add edge
graph.addEdgeBetween("A", and: "B")
graph.addEdgeBetween("A", and: "C")
graph.addEdgeBetween("B", and: "C")

// remove edge
graph.removeEdgeBetween("A", and: "C")
graph.removeEdgeBetween("C", and: "B")
graph.removeEdgeBetween("A", and: "B")

// remove vertex

graph.addVertex("D")
graph.addEdgeBetween("A", and: "B")
graph.addEdgeBetween("A", and: "C")
graph.addEdgeBetween("B", and: "D")
graph.addEdgeBetween("C", and: "D")
graph.addEdgeBetween("A", and: "D")

graph.removeVertex("D")

// print graph
graph.printGraph()
