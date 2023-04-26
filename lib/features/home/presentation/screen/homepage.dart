import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_starter_project/core/di/injection.dart';
import 'package:flutter_starter_project/core/response/api_response.dart';
import 'package:flutter_starter_project/features/home/bloc/home_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<HomeBloc>(
      create: (context) => locator<HomeBloc>(),
      child: const HomePageBody(),
    );
  }
}

class HomePageBody extends StatefulWidget {
  const HomePageBody({super.key});

  @override
  State<HomePageBody> createState() => _HomePageBodyState();
}

class _HomePageBodyState extends State<HomePageBody> {
  @override
  void initState() {
    context.read<HomeBloc>().add(const HomeEvent.getCategories());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var homeState = context.watch<HomeBloc>().state;
    return Scaffold(
      appBar: AppBar(title: const Text('Home')),
      body: SizedBox(
        width: double.maxFinite,
        height: double.maxFinite,
        child: _getViewByState(homeState),
      ),
    );
  }

  Widget _getViewByState(HomeState homeState) {
    switch (homeState.categoriesResponse.status) {
      case Status.loading:
        return const Center(child: CircularProgressIndicator());
      case Status.init:
        return Container();
      case Status.error:
        return Center(child: Text(homeState.apiResponse.message ?? ""));
      case Status.success:
        var categories = homeState.categoriesResponse.data?.categories ?? [];
        return ListView.separated(
            padding: const EdgeInsets.all(8),
            itemBuilder: (context, index) => ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: const [
                        BoxShadow(
                            color: Colors.grey,
                            offset: Offset(0, 2),
                            blurRadius: 2,
                            spreadRadius: 1),
                      ],
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Row(
                      children: [
                        Image.network(
                          categories[index].strCategoryThumb,
                          width:
                              MediaQuery.of(context).size.shortestSide * 0.35,
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Expanded(
                            child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Text(
                              categories[index].strCategory,
                              style: const TextStyle(
                                  fontWeight: FontWeight.w600, fontSize: 18),
                            ),
                            const SizedBox(
                              height: 4,
                            ),
                            Text(
                              categories[index].strCategoryDescription,
                              style: const TextStyle(fontSize: 12),
                              maxLines: 3,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                        )),
                      ],
                    ),
                  ),
                ),
            separatorBuilder: (context, index) => const SizedBox(height: 8),
            itemCount: categories.length);
      default:
        return Container();
    }
  }
}
