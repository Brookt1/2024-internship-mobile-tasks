import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import '../../../../config/route/route.dart' as route;
import '../../domain/entities/product_entity.dart';
import '../bloc/product_bloc.dart';
import '../widgets/custom_icon.dart';
import '../widgets/custom_image_container.dart';
import '../widgets/cutom_text.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<ProductBloc>(context).add(LoadAllProductEvent());
    return Scaffold(
      floatingActionButton: GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, route.addUpdatePage);
        },
        child: Container(
          width: 72,
          height: 72,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.indigo,
          ),
          child: const Icon(
            Icons.add,
            color: Colors.white,
            size: 36,
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              SizedBox(
                height: 50,
                width: double.infinity,
                child: Row(
                  children: [
                    const CustomImageContainer(
                      imagePath: 'lib/assets/images/profile.jpg',
                      height: 50,
                      width: 50,
                      borderRadius: BorderRadius.all(
                        Radius.circular(11),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: CustomText(
                            text: DateFormat('MMMM dd, yyyy')
                                .format(DateTime.now()),
                            fontSize: 12,
                            color: Colors.grey,
                            textAlign: TextAlign.left,
                          ),
                        ),
                        const Row(
                          children: [
                            CustomText(
                              text: 'Hello',
                              fontSize: 15,
                              color: Colors.grey,
                            ),
                            CustomText(
                              text: 'Yohannes',
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            )
                          ],
                        )
                      ],
                    ),
                    const Spacer(),
                    GestureDetector(
                      onTap: () {},
                      child: const CustomIconContainer(
                          Icons.notification_add_rounded),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  const CustomText(
                    text: 'Available Products',
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                  ),
                  const Spacer(),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, route.searchPage);
                    },
                    child: const CustomIconContainer(Icons.search),
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              BlocBuilder<ProductBloc, ProductState>(
                builder: (context, state) {
                  if (state is LoadingState) {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  } else if (state is LoadedAllProductsState) {
                    return SizedBox(
                      height: 600,
                      child: ListView.builder(
                        itemCount: state.products.length,
                        itemBuilder: (context, idx) => GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, route.detailPage);
                          },
                          child: prodcutList(state.products[
                              idx]), // Replace `ProductList` with your widget to display the product
                        ),
                      ),
                    );
                  } else if (state is ErrorState) {
                    return const Center(
                      child: Text(
                        'Failed to load products. Please try again later.',
                        style: TextStyle(color: Colors.red),
                      ),
                    );
                  } else {
                    return const SizedBox.shrink();
                  }
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}

Widget prodcutList(ProductEntity product) {
  return Card(
    elevation: 10,
    child: Container(
      width: 366,
      height: 220,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(16),
          topRight: Radius.circular(16),
        ),
      ),
      child: Column(
        children: [
          imageLoader(product.imageUrl),
          Padding(
            padding: EdgeInsets.only(
              left: 16,
              right: 16,
            ),
            child: Row(
              children: [
                Text(
                  product.name,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const Spacer(),
                Text(
                  '\$${product.price}',
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(
              left: 16,
              right: 16,
            ),
            child: Row(
              children: [
                CustomText(
                  text: 'Category',
                  color: Colors.grey,
                ),
                Spacer(),
                Icon(
                  Icons.star,
                  color: Colors.yellow,
                ),
                CustomText(
                  text: "(4.0)",
                  color: Colors.grey,
                )
              ],
            ),
          )
        ],
      ),
    ),
  );
}

Widget imageLoader(url) {
  return ClipRRect(
    borderRadius: const BorderRadius.only(
      topLeft: Radius.circular(16),
      topRight: Radius.circular(16),
    ),
    child: Image.network(
      url,
      height: 160,
      width: double.infinity,
      fit: BoxFit.cover,
      loadingBuilder: (BuildContext context, Widget child,
          ImageChunkEvent? loadingProgress) {
        if (loadingProgress == null) {
          return child;
        } else {
          return Center(
            child: CircularProgressIndicator(
              value: loadingProgress.expectedTotalBytes != null
                  ? loadingProgress.cumulativeBytesLoaded /
                      (loadingProgress.expectedTotalBytes ?? 1)
                  : null,
            ),
          );
        }
      },
      errorBuilder:
          (BuildContext context, Object exception, StackTrace? stackTrace) {
        return const Center(
            child: Text('Failed to load image',
                style: TextStyle(color: Colors.red)));
      },
    ),
  );
}
