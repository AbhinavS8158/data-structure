class Graph{
Map<int,List<int>>adjList={};

addVertex(vertex){
  if(!adjList.containsKey(vertex)){
    adjList[vertex]=[];
  }
}

addEdges(vertex1,vertex2){
  addVertex(vertex1);
  addVertex(vertex2);

  adjList[vertex1]!.add(vertex2);
  adjList[vertex2]!.add(vertex1);
}


  void dfs(startVertex, Set<int> visited) {
    if (!visited.contains(startVertex)) {
      print(startVertex);
      visited.add(startVertex);

      for (int vertex in adjList[startVertex] ?? []) {
        dfs(vertex, visited);
      }
    }
  }

//---------------BFS-----------------

void bfs(startVertex){
List<int>queue=[];
  Set<int> visited={};

  queue.add(startVertex);
  visited.add(startVertex);

  while(queue.isNotEmpty){
    int vertex=queue.removeAt(0);
    print(vertex);

    for(int adjvertex in adjList[vertex]??[]){
      if(!visited.contains(adjvertex)){
      queue.add(adjvertex);
      visited.add(adjvertex);
      }
     
    }
  }
}

//-----------count leaf-------------

int countLeaf(){

  int leafCount=0;
  for(var vertex in adjList.keys){
    if(adjList[vertex]!.length==1){
      leafCount++;
    }
  }
  return leafCount;
}

display(){
  adjList.forEach((vertex,edges){
    print('$vertex:$edges');
  });
}
}

void main(){
  Graph g=Graph();

  g.addEdges(1,2);
  g.addEdges(1,3);
  g.addEdges(3,4);
  g.display();
  g.dfs(1,{});
  // g.bfs(1);

}