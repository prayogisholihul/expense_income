// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'expense_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$repositoryHash() => r'578cc20adeab2ac8b17729470fafe39e8437a3f3';

/// See also [repository].
@ProviderFor(repository)
final repositoryProvider = AutoDisposeProvider<Repository>.internal(
  repository,
  name: r'repositoryProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$repositoryHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef RepositoryRef = AutoDisposeProviderRef<Repository>;
String _$insertExpenseHash() => r'2e9efff347533460d2b0bc0559af24037b8caab1';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

/// See also [insertExpense].
@ProviderFor(insertExpense)
const insertExpenseProvider = InsertExpenseFamily();

/// See also [insertExpense].
class InsertExpenseFamily extends Family<AsyncValue<int>> {
  /// See also [insertExpense].
  const InsertExpenseFamily();

  /// See also [insertExpense].
  InsertExpenseProvider call(
    ExpenseData expense,
  ) {
    return InsertExpenseProvider(
      expense,
    );
  }

  @override
  InsertExpenseProvider getProviderOverride(
    covariant InsertExpenseProvider provider,
  ) {
    return call(
      provider.expense,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'insertExpenseProvider';
}

/// See also [insertExpense].
class InsertExpenseProvider extends AutoDisposeFutureProvider<int> {
  /// See also [insertExpense].
  InsertExpenseProvider(
    ExpenseData expense,
  ) : this._internal(
          (ref) => insertExpense(
            ref as InsertExpenseRef,
            expense,
          ),
          from: insertExpenseProvider,
          name: r'insertExpenseProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$insertExpenseHash,
          dependencies: InsertExpenseFamily._dependencies,
          allTransitiveDependencies:
              InsertExpenseFamily._allTransitiveDependencies,
          expense: expense,
        );

  InsertExpenseProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.expense,
  }) : super.internal();

  final ExpenseData expense;

  @override
  Override overrideWith(
    FutureOr<int> Function(InsertExpenseRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: InsertExpenseProvider._internal(
        (ref) => create(ref as InsertExpenseRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        expense: expense,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<int> createElement() {
    return _InsertExpenseProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is InsertExpenseProvider && other.expense == expense;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, expense.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin InsertExpenseRef on AutoDisposeFutureProviderRef<int> {
  /// The parameter `expense` of this provider.
  ExpenseData get expense;
}

class _InsertExpenseProviderElement
    extends AutoDisposeFutureProviderElement<int> with InsertExpenseRef {
  _InsertExpenseProviderElement(super.provider);

  @override
  ExpenseData get expense => (origin as InsertExpenseProvider).expense;
}

String _$getAllExpensesHash() => r'f5e61896136c01b7e0187ce66fb6a6a695002469';

/// See also [getAllExpenses].
@ProviderFor(getAllExpenses)
final getAllExpensesProvider =
    AutoDisposeFutureProvider<List<ExpenseData>>.internal(
  getAllExpenses,
  name: r'getAllExpensesProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$getAllExpensesHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef GetAllExpensesRef = AutoDisposeFutureProviderRef<List<ExpenseData>>;
String _$deleteExpenseHash() => r'7784d4a56ad5f86839316fabd2eee55987dc70db';

/// See also [deleteExpense].
@ProviderFor(deleteExpense)
const deleteExpenseProvider = DeleteExpenseFamily();

/// See also [deleteExpense].
class DeleteExpenseFamily extends Family<AsyncValue<int>> {
  /// See also [deleteExpense].
  const DeleteExpenseFamily();

  /// See also [deleteExpense].
  DeleteExpenseProvider call(
    int id,
  ) {
    return DeleteExpenseProvider(
      id,
    );
  }

  @override
  DeleteExpenseProvider getProviderOverride(
    covariant DeleteExpenseProvider provider,
  ) {
    return call(
      provider.id,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'deleteExpenseProvider';
}

/// See also [deleteExpense].
class DeleteExpenseProvider extends AutoDisposeFutureProvider<int> {
  /// See also [deleteExpense].
  DeleteExpenseProvider(
    int id,
  ) : this._internal(
          (ref) => deleteExpense(
            ref as DeleteExpenseRef,
            id,
          ),
          from: deleteExpenseProvider,
          name: r'deleteExpenseProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$deleteExpenseHash,
          dependencies: DeleteExpenseFamily._dependencies,
          allTransitiveDependencies:
              DeleteExpenseFamily._allTransitiveDependencies,
          id: id,
        );

  DeleteExpenseProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.id,
  }) : super.internal();

  final int id;

  @override
  Override overrideWith(
    FutureOr<int> Function(DeleteExpenseRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: DeleteExpenseProvider._internal(
        (ref) => create(ref as DeleteExpenseRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        id: id,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<int> createElement() {
    return _DeleteExpenseProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is DeleteExpenseProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin DeleteExpenseRef on AutoDisposeFutureProviderRef<int> {
  /// The parameter `id` of this provider.
  int get id;
}

class _DeleteExpenseProviderElement
    extends AutoDisposeFutureProviderElement<int> with DeleteExpenseRef {
  _DeleteExpenseProviderElement(super.provider);

  @override
  int get id => (origin as DeleteExpenseProvider).id;
}

String _$updateExpenseHash() => r'5a44bec4409a133a7c03a5769fcbac304f76cd15';

/// See also [updateExpense].
@ProviderFor(updateExpense)
const updateExpenseProvider = UpdateExpenseFamily();

/// See also [updateExpense].
class UpdateExpenseFamily extends Family<AsyncValue<int>> {
  /// See also [updateExpense].
  const UpdateExpenseFamily();

  /// See also [updateExpense].
  UpdateExpenseProvider call(
    ExpenseData expense,
  ) {
    return UpdateExpenseProvider(
      expense,
    );
  }

  @override
  UpdateExpenseProvider getProviderOverride(
    covariant UpdateExpenseProvider provider,
  ) {
    return call(
      provider.expense,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'updateExpenseProvider';
}

/// See also [updateExpense].
class UpdateExpenseProvider extends AutoDisposeFutureProvider<int> {
  /// See also [updateExpense].
  UpdateExpenseProvider(
    ExpenseData expense,
  ) : this._internal(
          (ref) => updateExpense(
            ref as UpdateExpenseRef,
            expense,
          ),
          from: updateExpenseProvider,
          name: r'updateExpenseProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$updateExpenseHash,
          dependencies: UpdateExpenseFamily._dependencies,
          allTransitiveDependencies:
              UpdateExpenseFamily._allTransitiveDependencies,
          expense: expense,
        );

  UpdateExpenseProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.expense,
  }) : super.internal();

  final ExpenseData expense;

  @override
  Override overrideWith(
    FutureOr<int> Function(UpdateExpenseRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: UpdateExpenseProvider._internal(
        (ref) => create(ref as UpdateExpenseRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        expense: expense,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<int> createElement() {
    return _UpdateExpenseProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is UpdateExpenseProvider && other.expense == expense;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, expense.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin UpdateExpenseRef on AutoDisposeFutureProviderRef<int> {
  /// The parameter `expense` of this provider.
  ExpenseData get expense;
}

class _UpdateExpenseProviderElement
    extends AutoDisposeFutureProviderElement<int> with UpdateExpenseRef {
  _UpdateExpenseProviderElement(super.provider);

  @override
  ExpenseData get expense => (origin as UpdateExpenseProvider).expense;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
