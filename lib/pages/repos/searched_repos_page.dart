import 'package:auth/shared/provider.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart' hide SearchBar;
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:github/core/shared/providers.dart';
import 'package:github_star_gazer/pages/repos/components/paginated_repos_tile.dart';
import 'package:github_star_gazer/pages/search/components/search_bar.dart';
import 'package:github_star_gazer/routes/routes.gr.dart';

@RoutePage()
class SearchedReposPage extends ConsumerStatefulWidget {
  final String searchTerm;
  const SearchedReposPage({super.key, required this.searchTerm});

  @override
  // ignore: library_private_types_in_public_api
  _SearchedReposPageState createState() => _SearchedReposPageState();
}

class _SearchedReposPageState extends ConsumerState<SearchedReposPage> {
  @override
  void initState() {
    super.initState();
    Future.microtask(
      () {
        // ignore: unused_result
        ref.refresh(searchedReposNotifierProvider);
        ref
            .read(searchedReposNotifierProvider.notifier)
            .getFirstSearchedReposPage(
              widget.searchTerm,
            );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SearchBar(
        title: widget.searchTerm,
        hint: 'Search all repositories...',
        onShouldNavigateToResultPage: (searchTerm) {
          AutoRouter.of(context).pushAndPopUntil(
            SearchedReposRoute(searchTerm: searchTerm),
            predicate: (route) => route.settings.name == StarredReposRoute.name,
          );
        },
        onSignOutButtonPressed: () {
          ref.read(authNotifierProvider.notifier).signOut();
        },
        body: PaginatedReposListView(
          paginatedReposNotifierProvider: searchedReposNotifierProvider,
          getNextPage: (ref) {
            ref
                .read(searchedReposNotifierProvider.notifier)
                .getNextSearchedReposPage(widget.searchTerm);
          },
          noResultMessage:
              'This is all we could find for your search term. Really...',
        ),
      ),
    );
  }
}
