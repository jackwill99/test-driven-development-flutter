#!/bin/bash

# Maintainer by ThetMyoKhaing(https://github.com/tomari99)

echo "input your module name"
read module

mkdir $module

cd $module

make_folder() {
  mkdir api
  mkdir domain
  mkdir presentation

  mkdir domain/entities
  mkdir domain/repositories
  mkdir domain/use_cases

  mkdir presentation/views
  mkdir presentation/controllers

  mkdir presentation/views/widgets

  touch api/${module}_api_service.dart

  touch presentation/controllers/${module}_controller.dart

  touch domain/repositories/${module}_repositories.dart
  touch domain/repositories/${module}_repositories_impl.dart

  touch domain/entities/$module.dart
  touch domain/entities/${module}_model.dart

  touch domain/use_cases/${module}_usecase.dart
}

make_folder

uppercase=$(echo "$module" | awk '{print toupper(substr($0, 1, 1)) tolower(substr($0, 2))}')

api="class ${uppercase}ApiService {}"

echo "$api" >api/${module}_api_service.dart

entity="import 'package:equatable/equatable.dart';

// Business object $module
abstract class ${uppercase} extends Equatable {
  
  const ${uppercase}();

  @override
  List<Object?> get props => [];
}"

echo "$entity" >domain/entities/$module.dart

model="import '../../domain/entities/${module}.dart';

class ${uppercase}Model extends ${uppercase} {
  const ${uppercase}Model();
}"

echo "$model" >domain/entities/$module\_model.dart

repo="// Abstract Business logic methods
import '../entities/$module.dart';

abstract class ${uppercase}Repository {}"

echo "$repo" >domain/repositories/$module\_repositories.dart

repo_impl="import 'dart:async';

import '../../domain/entities/$module.dart';
import '../../api/${module}_api_service.dart';
import '../../domain/repositories/${module}_repositories.dart';
import '../../domain/repositories/${module}_repositories.dart';
import '../entities/${module}_model.dart';

// Implemented Business logic methods
class ${uppercase}RepositoryImpl implements ${uppercase}Repository {
  late ${uppercase}ApiService _apiService;

  ${uppercase}RepositoryImpl() {
    _apiService = ${uppercase}ApiService();
  }
}
"

echo "$repo_impl" >domain/repositories/$module\_repositories_impl.dart

usecase="import '../entities/$module.dart';
import '../repositories/${module}_repositories.dart';

class ${uppercase}UseCase {
  final ${uppercase}Repository _${module}Repository;
  ${uppercase}UseCase(this._${module}Repository);

}"

echo "$usecase" >domain/use_cases/$module\_usecase.dart

controller="import 'package:get/get.dart';

import '../../domain/repositories/${module}_repositories_impl.dart';
import '../../domain/entities/$module.dart';
import '../../domain/use_cases/${module}_usecase.dart';

class ${uppercase}Controller extends GetxController {
  late ${uppercase}UseCase _${module}UseCase;

  @override
  onInit() {
    super.onInit();
    _${module}UseCase = ${uppercase}UseCase(${uppercase}RepositoryImpl());
  }

}"

echo "$controller" >presentation/controllers/$module\_controller.dart

pwd

test="import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import '../../lib/$module/domain/entities/${module}_model.dart';
import '../../lib/$module/domain/repositories/${module}_repositories.dart';
import '../../lib/$module/domain/use_cases/${module}_usecase.dart';

@GenerateMocks([${uppercase}Repository])
void main() {
  late Mock${uppercase}Repository repo;
  late ${uppercase}UseCase usecase;
  setUp(() {
    repo = Mock${uppercase}Repository();
    usecase = ${uppercase}UseCase(repo);
  });

  group(\"dummy\", () {
    test(\"test description\", () async {
      // arrange
     
      // action

      // assert

    });
  });
}"

cd ../../test && mkdir $module && cd $module && touch ${module}_test.dart && echo "$test" >${module}_test.dart
