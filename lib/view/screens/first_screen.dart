import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/controller/HomeController.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(
          title: const Text('News'),
          centerTitle: true,
        ),
        body: GetBuilder<HomeController>(
          builder: (controller) {

            if (controller.newsApi == null || controller.newsApi?.articles == null) {
              return const Center(child: CircularProgressIndicator());
            }

            return ListView.builder(
              itemCount: controller.newsApi!.articles.length,
              itemBuilder: (context, index) => SizedBox(
                height: 200,
                child: Card(
                  child: Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Image(
                          image: NetworkImage(
                            controller.newsApi!.articles[index].urlToImage.toString(),
                          ),
                          fit: BoxFit.contain,
                          width: 50,
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                          child: Column(
                            children: [
                              const SizedBox(height: 16.0,),
                              Text(
                                controller.newsApi!.articles[index].author.toString(),
                                style: Theme.of(context).textTheme.bodySmall,
                              ),
                              const SizedBox(height: 16.0,),
                              Text(
                                controller.newsApi!.articles[index].title.toString(),
                                style: Theme.of(context).textTheme.bodyMedium,
                              ),
                              const SizedBox(height: 16.0,),
                              Text(
                                controller.newsApi!.articles[index].description.toString(),
                                style: Theme.of(context).textTheme.bodySmall,
                                maxLines: 2,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            );
          },
        ),
    );
  }
}
