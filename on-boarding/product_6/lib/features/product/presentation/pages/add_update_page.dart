import '../../../../config/route/route.dart' as route;

import 'pages.dart';

class AddUpdatePage extends StatefulWidget {
  const AddUpdatePage({super.key, this.isUpdate = false, this.product});
  final bool isUpdate;
  final ProductEntity? product;

  @override
  State<AddUpdatePage> createState() => _AddUpdatePageState();
}

class _AddUpdatePageState extends State<AddUpdatePage> {
  var _imagePath = '';

  final TextEditingController _nameController = TextEditingController();

  final TextEditingController _categoryController = TextEditingController();

  final TextEditingController _priceController = TextEditingController();

  final TextEditingController _descriptionController = TextEditingController();

  Future<File?> _pickImage() async {
    final pickedFile =
        await ImagePicker().pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      setState(() {
        _imagePath = pickedFile.path;
      });
      return Future.value(File(pickedFile.path));
    }
    return null;
  }

  @override
  void initState() {
    if (widget.product != null) {
      _nameController.value = TextEditingValue(text: widget.product!.name);
      _descriptionController.value =
          TextEditingValue(text: widget.product!.description);
      _priceController.value =
          TextEditingValue(text: widget.product!.price.toString());
    }
    super.initState();
  }

  @override
  void dispose() {
    _nameController.dispose();
    _priceController.dispose();
    _descriptionController.dispose();
    _categoryController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final product = widget.product;
    return BlocListener<ProductBloc, ProductState>(
      listener: (context, state) {
        if (state is ErrorState) {
          showCustomSnackBar(context, state.message);
        } else if (state is ShowMessageState) {
          showCustomSnackBar(context, state.message);
        } else if (state is LoadedAllProductsState) {
          Navigator.pushNamedAndRemoveUntil(
              context, route.homePage, (Route<dynamic> route) => false);
        }
      },
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Row(
            children: [
              backButton(
                iconColor: const Color(
                  0xFF3F51F3,
                ),
                onTap: () {
                  Navigator.of(context).pop();
                  if (!widget.isUpdate) {
                    context.read<ProductBloc>().add(LoadAllProductEvent());
                  }
                },
              ),
              const SizedBox(
                width: 70,
              ),
              CustomText(
                text: widget.isUpdate ? 'Update Product' : 'Add Product',
                fontSize: 16,
              ),
            ],
          ),
        ),
        body: BlocBuilder<ProductBloc, ProductState>(
          builder: (context, state) {
            return Padding(
              padding: const EdgeInsets.all(16),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    if (widget.isUpdate == false)
                      ImagePickerContainer(
                        pickImage: _pickImage,
                      ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Align(
                        alignment: Alignment.topLeft,
                        child: CustomText(
                          text: 'name',
                        )),
                    const SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      height: 40,
                      width: double.infinity,
                      child: CustomTextfiled(
                        controller: _nameController,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Align(
                        alignment: Alignment.topLeft,
                        child: CustomText(
                          text: 'category',
                        )),
                    const SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      height: 40,
                      width: double.infinity,
                      child: CustomTextfiled(
                        controller: _categoryController,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Align(
                        alignment: Alignment.topLeft,
                        child: CustomText(
                          text: 'price',
                        )),
                    const SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      height: 40,
                      width: double.infinity,
                      child: CustomTextfiled(
                        controller: _priceController,
                        // onChange: (value) {
                        //   context.read<ProductBloc>().add(
                        //       UpdateTextFieldEvent(name: 'price', value: value));
                        // },
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Align(
                        alignment: Alignment.topLeft,
                        child: CustomText(
                          text: 'decription',
                        )),
                    const SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      height: 80,
                      width: double.infinity,
                      child: CustomTextfiled(
                        controller: _descriptionController,
                        // onChange: (value) {
                        //   context.read<ProductBloc>().add(UpdateTextFieldEvent(
                        //       name: 'desciption', value: value));
                        // },
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    CustomOutlinedButton(
                      text: widget.isUpdate ? 'UPDATE' : 'ADD',
                      width: 300,
                      height: 44,
                      backgroundColor: const Color(0xFF3F51F3),
                      color: Colors.white,
                      onPressed: () {
                        if (widget.isUpdate) {
                          context.read<ProductBloc>().add(
                                UpdateProductEvent(
                                  id: product!.id,
                                  name: _nameController.text,
                                  description: _descriptionController.text,
                                  price: _priceController.text,
                                  imageUrl: '',
                                ),
                              );
                        } else {
                          context.read<ProductBloc>().add(
                                CreateProductEvent(
                                    id: '',
                                    name: _nameController.text,
                                    description: _descriptionController.text,
                                    price: _priceController.text,
                                    imageUrl: _imagePath),
                              );
                        }
                      },
                    ),
                    const CustomOutlinedButton(
                      text: 'DELETE',
                      width: 300,
                      height: 44,
                      color: Colors.red,
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

class ImagePickerContainer extends StatefulWidget {
  const ImagePickerContainer({super.key, required this.pickImage});

  final Future<File?> Function() pickImage;

  @override
  State<ImagePickerContainer> createState() => _ImagePickerContainerState();
}

class _ImagePickerContainerState extends State<ImagePickerContainer> {
  File? _image;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        final ret = await widget.pickImage();
        if (ret != null) {
          setState(() {
            _image = ret;
          });
        }
      },
      child: Container(
        height: 190,
        width: double.infinity,
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 230, 230, 230),
          borderRadius: const BorderRadius.all(
            Radius.circular(16),
          ),
          image: _image != null
              ? DecorationImage(
                  image: FileImage(_image!),
                  fit: BoxFit.cover,
                )
              : null,
        ),
        child: _image == null
            ? const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.image,
                    size: 36,
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  CustomText(
                    text: 'Upload Image',
                  ),
                ],
              )
            : null,
      ),
    );
  }
}
