library repos;
import 'package:firebase_data_connect/firebase_data_connect.dart';
import 'dart:convert';

part 'create_book.dart';

part 'list_books.dart';







class DefaultConnector {
  
  
  CreateBookVariablesBuilder createBook ({required String title,required int currentPage,required int lastPage,}) {
    return CreateBookVariablesBuilder(dataConnect, title: title,currentPage: currentPage,lastPage: lastPage,);
  }
  
  
  ListBooksVariablesBuilder listBooks () {
    return ListBooksVariablesBuilder(dataConnect, );
  }
  

  static ConnectorConfig connectorConfig = ConnectorConfig(
    'asia-northeast1',
    'default',
    'book-manager',
  );

  DefaultConnector({required this.dataConnect});
  static DefaultConnector get instance {
    return DefaultConnector(
        dataConnect: FirebaseDataConnect.instanceFor(
            connectorConfig: connectorConfig,
            sdkType: CallerSDKType.generated));
  }

  FirebaseDataConnect dataConnect;
}

