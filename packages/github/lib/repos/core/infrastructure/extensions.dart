import 'package:github/core/domain/github_repo.dart';
import 'package:github/core/infrastructure/githup_repo_dto.dart';

extension DTOListTODomainList on List<GithubRepoDTO> {
  List<GithubRepo> toDomain() {
    return map((e) => e.toDomain()).toList();
  }
}
