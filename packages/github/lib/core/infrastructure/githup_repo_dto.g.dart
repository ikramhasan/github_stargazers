// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'githup_repo_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GithubRepoDTOImpl _$$GithubRepoDTOImplFromJson(Map<String, dynamic> json) =>
    _$GithubRepoDTOImpl(
      owner: UserDTO.fromJson(json['owner'] as Map<String, dynamic>),
      name: json['name'] as String,
      description: json['description'] as String? ?? '',
      stargazersCount: json['stargazers_count'] as int?,
    );

Map<String, dynamic> _$$GithubRepoDTOImplToJson(_$GithubRepoDTOImpl instance) =>
    <String, dynamic>{
      'owner': instance.owner,
      'name': instance.name,
      'description': instance.description,
      'stargazers_count': instance.stargazersCount,
    };
