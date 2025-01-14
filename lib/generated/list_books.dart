part of repos;

class ListBooksVariablesBuilder {
  
  
  FirebaseDataConnect _dataConnect;
  
  ListBooksVariablesBuilder(this._dataConnect, );
  Deserializer<ListBooksData> dataDeserializer = (dynamic json)  => ListBooksData.fromJson(jsonDecode(json));
  
  Future<QueryResult<ListBooksData, void>> execute() {
    return this.ref().execute();
  }
  QueryRef<ListBooksData, void> ref() {
    
    return _dataConnect.query("ListBooks", dataDeserializer, emptySerializer, null);
  }
}


  class ListBooksBooks {
  
   String id;

  
   String title;

  
   int currentPage;

  
   int lastPage;

  
  
    
    
    
    ListBooksBooks.fromJson(dynamic json):
        id = 
 
    nativeFromJson<String>(json['id'])
  

        
        ,
      
        title = 
 
    nativeFromJson<String>(json['title'])
  

        
        ,
      
        currentPage = 
 
    nativeFromJson<int>(json['currentPage'])
  

        
        ,
      
        lastPage = 
 
    nativeFromJson<int>(json['lastPage'])
  

        
        
       {
      
        
      
        
      
        
      
        
      
    }


  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    
      
      json['id'] = 
  
    nativeToJson<String>(id)
    
;
      
    
      
      json['title'] = 
  
    nativeToJson<String>(title)
    
;
      
    
      
      json['currentPage'] = 
  
    nativeToJson<int>(currentPage)
    
;
      
    
      
      json['lastPage'] = 
  
    nativeToJson<int>(lastPage)
    
;
      
    
    return json;
  }

  ListBooksBooks({
    
      required this.id,
    
      required this.title,
    
      required this.currentPage,
    
      required this.lastPage,
    
  });
}



  class ListBooksData {
  
   List<ListBooksBooks> books;

  
  
    
    
    
    ListBooksData.fromJson(dynamic json):
        books = 
 
    
      (json['books'] as List<dynamic>)
        .map((e) => ListBooksBooks.fromJson(e))
        .toList()
    
  

        
        
       {
      
        
      
    }


  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    
      
      json['books'] = 
  
    
      books.map((e) => e.toJson()).toList()
    
  
;
      
    
    return json;
  }

  ListBooksData({
    
      required this.books,
    
  });
}







