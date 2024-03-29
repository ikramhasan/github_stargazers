import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:github/core/domain/github_failure.dart';
import 'package:github_star_gazer/pages/repos/components/paginated_repos_tile.dart';

class FailureRepoTile extends ConsumerWidget {
  final GithubFailure failure;
  const FailureRepoTile({
    super.key,
    required this.failure,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ListTileTheme(
      textColor: Theme.of(context).colorScheme.onError,
      iconColor: Theme.of(context).colorScheme.onError,
      child: Card(
        margin: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 8,
        ),
        color: Theme.of(context).colorScheme.error,
        child: ListTile(
          title: const Text('An error ocurred, please retry'),
          subtitle: Text(
            failure.map(api: (_) => 'API returned ${_.errorCode}'),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          leading: const SizedBox(
            height: double.infinity,
            child: Icon(Icons.warning),
          ),
          trailing: IconButton(
            icon: const Icon(Icons.refresh),
            onPressed: () {
              context
                  .findAncestorWidgetOfExactType<PaginatedReposListView>()
                  ?.getNextPage(ref);
            },
          ),
        ),
      ),
    );
  }
}
