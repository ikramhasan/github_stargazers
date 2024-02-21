// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'github_repo_detail_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GithubRepoDetailDtoImpl _$$GithubRepoDetailDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$GithubRepoDetailDtoImpl(
      fullName: json['fullName'] as String,
      html: json['html'] as String,
      starred: json['starred'] as bool,
    );

Map<String, dynamic> _$$GithubRepoDetailDtoImplToJson(
        _$GithubRepoDetailDtoImpl instance) =>
    <String, dynamic>{
      'fullName': instance.fullName,
      'html': instance.html,
      'starred': instance.starred,
    };
