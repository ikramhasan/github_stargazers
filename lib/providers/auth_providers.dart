import 'package:auth/application/auth_notifier.dart';
import 'package:auth/domain/credential_storage.dart';
import 'package:auth/infrastructure/github_authenticator.dart';
import 'package:auth/infrastructure/oauth2_inteceptor.dart';
import 'package:auth/infrastructure/secure_credential_storage.dart';
import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:riverpod/riverpod.dart';

final flutterSecureStorage = Provider((ref) => const FlutterSecureStorage());

final dioForAuthProvider = Provider((ref) => Dio());

final oAuth2InterceptorProvider = Provider(
  (ref) => OAuth2Interceptor(
    ref.watch(githubAuthenticatorProvider),
    ref.watch(authNotifierProvider.notifier),
    ref.watch(dioForAuthProvider),
  ),
);

final credentialStorageProvider = Provider<CredentialStorage>(
  (ref) => SecureCredentialStorage(
    ref.watch(flutterSecureStorage),
  ),
);

final githubAuthenticatorProvider = Provider(
  (ref) => GithubAuthenticator(
    ref.watch(credentialStorageProvider),
    ref.watch(dioForAuthProvider),
  ),
);

final authNotifierProvider = StateNotifierProvider<AuthNotifier, AuthState>(
  (ref) => AuthNotifier(ref.watch(githubAuthenticatorProvider)),
);
