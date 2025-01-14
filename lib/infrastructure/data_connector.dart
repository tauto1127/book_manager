import 'package:book_manager/generated/default.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final dataConnectorProvider = Provider((ref) => DefaultConnector.instance);
