// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'activity_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$repositoryHash() => r'9bb49117af38af072e0f2b1a60bd8c3831cc5e88';

/// See also [repository].
@ProviderFor(repository)
final repositoryProvider = AutoDisposeProvider<ActivityRepo>.internal(
  repository,
  name: r'repositoryProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$repositoryHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef RepositoryRef = AutoDisposeProviderRef<ActivityRepo>;
String _$fetchActivityHash() => r'cd4b6ee9185575db99db38f5b21d404ee735b1bd';

/// See also [fetchActivity].
@ProviderFor(fetchActivity)
final fetchActivityProvider =
    AutoDisposeFutureProvider<List<ActivityModel>>.internal(
  fetchActivity,
  name: r'fetchActivityProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$fetchActivityHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef FetchActivityRef = AutoDisposeFutureProviderRef<List<ActivityModel>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
