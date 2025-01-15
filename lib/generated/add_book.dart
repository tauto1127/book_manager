part of repos;

class AddBookVariablesBuilder {
  Optional<String> _author = Optional.optional(nativeFromJson, nativeToJson);
DateTime created;
int currentPage;
Optional<String> _isbn = Optional.optional(nativeFromJson, nativeToJson);
int lastPage;
Optional<String> _publisher = Optional.optional(nativeFromJson, nativeToJson);
Optional<String> _thumbnail = Optional.optional(nativeFromJson, nativeToJson);
String title;

  
  FirebaseDataConnect _dataConnect;
  AddBookVariablesBuilder author(String? t) {
this._author.value = t;
return this;
}
AddBookVariablesBuilder isbn(String? t) {
this._isbn.value = t;
return this;
}
AddBookVariablesBuilder publisher(String? t) {
this._publisher.value = t;
return this;
}
AddBookVariablesBuilder thumbnail(String? t) {
this._thumbnail.value = t;
return this;
}

  AddBookVariablesBuilder(this._dataConnect, {required DateTime this.created,required int this.currentPage,required int this.lastPage,required String this.title,});
  Deserializer<AddBookData> dataDeserializer = (dynamic json)  => AddBookData.fromJson(jsonDecode(json));
  Serializer<AddBookVariables> varsSerializer = (AddBookVariables vars) => jsonEncode(vars.toJson());
  Future<OperationResult<AddBookData, AddBookVariables>> execute() {
    return this.ref().execute();
  }
  MutationRef<AddBookData, AddBookVariables> ref() {
    AddBookVariables vars=AddBookVariables(author: _author,created: created,currentPage: currentPage,isbn: _isbn,lastPage: lastPage,publisher: _publisher,thumbnail: _thumbnail,title: title,);

    return _dataConnect.mutation("AddBook", dataDeserializer, varsSerializer, vars);
  }
}


  class AddBookBookInsert {
  
   String id;

  
  
    
    
    
    AddBookBookInsert.fromJson(dynamic json):
        id = 
 
    nativeFromJson<String>(json['id'])
  

        
        
       {
      
        
      
    }


  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    
      
      json['id'] = 
  
    nativeToJson<String>(id)
    
;
      
    
    return json;
  }

  AddBookBookInsert({
    
      required this.id,
    
  });
}



  class AddBookData {
  
   AddBookBookInsert book_insert;

  
  
    
    
    
    AddBookData.fromJson(dynamic json):
        book_insert = 
 
    AddBookBookInsert.fromJson(json['book_insert'])
  

        
        
       {
      
        
      
    }


  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    
      
      json['book_insert'] = 
  
      book_insert.toJson()
  
;
      
    
    return json;
  }

  AddBookData({
    
      required this.book_insert,
    
  });
}



  class AddBookVariables {
  
   late Optional<String>author;

  
   DateTime created;

  
   int currentPage;

  
   late Optional<String>isbn;

  
   int lastPage;

  
   late Optional<String>publisher;

  
   late Optional<String>thumbnail;

  
   String title;

  
  
    
    
     @Deprecated('fromJson is deprecated for Variable classes as they are no longer required for deserialization.')
    
    
    AddBookVariables.fromJson(Map<String, dynamic> json):
        created = 
 
    nativeFromJson<DateTime>(json['created'])
  

        
        ,
      
        currentPage = 
 
    nativeFromJson<int>(json['currentPage'])
  

        
        ,
      
        lastPage = 
 
    nativeFromJson<int>(json['lastPage'])
  

        
        ,
      
        title = 
 
    nativeFromJson<String>(json['title'])
  

        
        
       {
      
        
          author = Optional.optional(nativeFromJson, nativeToJson);
          author.value = json['author'] == null ? null : 
 
    nativeFromJson<String>(json['author'])
  
;
        
      
        
      
        
      
        
          isbn = Optional.optional(nativeFromJson, nativeToJson);
          isbn.value = json['isbn'] == null ? null : 
 
    nativeFromJson<String>(json['isbn'])
  
;
        
      
        
      
        
          publisher = Optional.optional(nativeFromJson, nativeToJson);
          publisher.value = json['publisher'] == null ? null : 
 
    nativeFromJson<String>(json['publisher'])
  
;
        
      
        
          thumbnail = Optional.optional(nativeFromJson, nativeToJson);
          thumbnail.value = json['thumbnail'] == null ? null : 
 
    nativeFromJson<String>(json['thumbnail'])
  
;
        
      
        
      
    }


  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    
      
        if(author.state == OptionalState.set) {
          json['author'] = author.toJson();
        }
     
    
      
      json['created'] = 
  
    nativeToJson<DateTime>(created)
    
;
      
    
      
      json['currentPage'] = 
  
    nativeToJson<int>(currentPage)
    
;
      
    
      
        if(isbn.state == OptionalState.set) {
          json['isbn'] = isbn.toJson();
        }
     
    
      
      json['lastPage'] = 
  
    nativeToJson<int>(lastPage)
    
;
      
    
      
        if(publisher.state == OptionalState.set) {
          json['publisher'] = publisher.toJson();
        }
     
    
      
        if(thumbnail.state == OptionalState.set) {
          json['thumbnail'] = thumbnail.toJson();
        }
     
    
      
      json['title'] = 
  
    nativeToJson<String>(title)
    
;
      
    
    return json;
  }

  AddBookVariables({
    
      required this.author,
    
      required this.created,
    
      required this.currentPage,
    
      required this.isbn,
    
      required this.lastPage,
    
      required this.publisher,
    
      required this.thumbnail,
    
      required this.title,
    
  });
}







