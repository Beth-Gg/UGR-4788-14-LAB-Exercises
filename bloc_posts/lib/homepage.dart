

import 'package:bloc_posts/bloc/posts_bloc_bloc.dart';
import 'package:bloc_posts/models/model.dart';
import 'package:bloc_posts/repo/repositories.dart';
import 'package:flutter/material.dart';
// import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<PostsBloc>(
          create: (BuildContext context) => PostsBloc(postRepository()),
        ),
      ],
      child: Scaffold(
          appBar: AppBar(title: const Text('The BloC App')), body: blocBody()),
    );
  }

  Widget blocBody() {
    return BlocProvider(
      create: (context) => PostsBloc(
        postRepository(),
      )..add(LoadPostEvent()),
      child: BlocBuilder<PostsBloc, PostsBlocState>(
        builder: (context, state) {
          if (state is postLoadingState) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          if (state is postErrorState) {
            return const Center(child: Text("Error"));
          }
          if (state is postLoadedState) {
            List<postModel> userList = state.posts;
            return ListView.builder(
                itemCount: userList.length,
                itemBuilder: (_, index) {
                  return Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                    child: Card(
                        color: Theme.of(context).primaryColor,
                        child: ListTile(
                          title: Text(
                            '${userList[index].title}}',
                            style: const TextStyle(color: Colors.white),
                          ),
                          subtitle: Text(
                            '${userList[index].description}',
                            style: const TextStyle(color: Colors.white),
                          ),
                        )),
                  );
                });
          }

          return Container();
        },
      ),
    );
  }
}
