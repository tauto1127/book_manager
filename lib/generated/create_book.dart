part of repos;

class CreateBookVariablesBuilder {
  String title;
int currentPage;
int lastPage;

  
  FirebaseDataConnect _dataConnect;
  
  CreateBookVariablesBuilder(this._dataConnect, {required String this.title,required int this.currentPage,required int this.lastPage,});
  Deserializer<CreateBookData> dataDeserializer = (dynamic json)  => CreateBookData.fromJson(jsonDecode(json));
  Serializer<CreateBookVariables> varsSerializer = (CreateBookVariables vars) => jsonEncode(vars.toJson());
  Future<OperationResult<CreateBookData, CreateBookVariables>> execute() {
    return this.ref().execute();
  }
  MutationRef<CreateBookData, CreateBookVariables> ref() {
    CreateBookVariables vars=CreateBookVariables(title: title,currentPage: currentPage,lastPage: lastPage,);

    return _dataConnect.mutation("CreateBook", dataDeserializer, varsSerializer, vars);
  }
}


  class CreateBookBookInsert {
  
   String id;

  
  
    
    
    
    CreateBookBookInsert.fromJson(dynamic json):
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

  CreateBookBookInsert({
    
      required this.id,
    
  });
}



  class CreateBookData {
  
   CreateBookBookInsert book_insert;

  
  
    
    
    
    CreateBookData.fromJson(dynamic json):
        book_insert = 
 
    CreateBookBookInsert.fromJson(json['book_insert'])
  

        
        
       {
      
        
      
    }


  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    
      
      json['book_insert'] = 
  
      book_insert.toJson()
  
;
      
    
    return json;
  }

  CreateBookData({
    
      required this.book_insert,
    
  });
}



  class CreateBookVariables {
  
   String title;

  
   int currentPage;

  
   int lastPage;

  
  
    
    
     @Deprecated('fromJson is deprecated for Variable classes as they are no longer required for deserialization.')
    
    
    CreateBookVariables.fromJson(Map<String, dynamic> json):
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

  CreateBookVariables({
    
      required this.title,
    
      required this.currentPage,
    
      required this.lastPage,
    
  });
}







