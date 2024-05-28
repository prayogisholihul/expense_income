// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'conversion_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$repositoryHash() => r'ed37dc5c0f257d1773eccfd000c7387b04110cf3';

/// See also [repository].
@ProviderFor(repository)
final repositoryProvider = AutoDisposeProvider<ConversionRepo>.internal(
  repository,
  name: r'repositoryProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$repositoryHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef RepositoryRef = AutoDisposeProviderRef<ConversionRepo>;
String _$getCurrenciesHash() => r'9fad698a7ba9a3b1a3d95a01dece035aa480f433';

/// See also [getCurrencies].
@ProviderFor(getCurrencies)
final getCurrenciesProvider =
    AutoDisposeFutureProvider<ConversionModel>.internal(
  getCurrencies,
  name: r'getCurrenciesProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$getCurrenciesHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef GetCurrenciesRef = AutoDisposeFutureProviderRef<ConversionModel>;
String _$conversionAmountHash() => r'52eabe0fd5dd337bfe1fca4b9db1d65e2941ff9a';

/// See also [ConversionAmount].
@ProviderFor(ConversionAmount)
final conversionAmountProvider =
    AutoDisposeNotifierProvider<ConversionAmount, int>.internal(
  ConversionAmount.new,
  name: r'conversionAmountProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$conversionAmountHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$ConversionAmount = AutoDisposeNotifier<int>;
String _$conversionDirectionHash() =>
    r'82c1085a9274754ffa7252f407fad072fef228d7';

/// See also [ConversionDirection].
@ProviderFor(ConversionDirection)
final conversionDirectionProvider =
    AutoDisposeNotifierProvider<ConversionDirection, bool>.internal(
  ConversionDirection.new,
  name: r'conversionDirectionProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$conversionDirectionHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$ConversionDirection = AutoDisposeNotifier<bool>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
