import '../../../../config/route/route.dart' as route;
import 'pages.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    context.read<ProductBloc>().add(LoadAllProductEvent());

    return Scaffold(
      floatingActionButton: GestureDetector(
        onTap: () {
          // context.read<ProductBloc>().add(CreateProductEvent());
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
                    userProfile(context),
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
                    if (state.products.length == 0) {
                      return const Center(
                        child: CustomText(
                          text: 'No product avalible. add new product',
                          fontSize: 20,
                        ),
                      );
                    }
                    return SizedBox(
                      height: 600,
                      child: ListView.builder(
                        itemCount: state.products.length,
                        itemBuilder: (context, idx) => GestureDetector(
                          onTap: () {
                            BlocProvider.of<ProductBloc>(context).add(
                                GetSingleProductEvent(
                                    id: state.products[idx].id));
                            Navigator.pushNamed(context, route.detailPage);
                          },
                          child: prodcutList(state.products[idx]),
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
