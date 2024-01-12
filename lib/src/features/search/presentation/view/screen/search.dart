import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


import '../../../../../core/manger/size_app.dart';
import '../../../../home_lap/domain/entities/models/product_model.dart';
import '../../logic/cubit_search/search_cubit.dart';
import '../widget/search_card.dart';
import '../widget/text_field_search.dart';

class SearchLap extends StatefulWidget{
  final List<LapItemsModel> modelLap;
   SearchLap({super.key, required this.modelLap});


  @override
  _SearchLapState createState() => _SearchLapState();
}

class _SearchLapState extends State<SearchLap> {
  final searchController = TextEditingController();
  List<LapItemsModel> filteredProducts = [];

  @override
  void initState() {
    super.initState();
    filteredProducts = widget.modelLap;
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SearchCubit,List<LapItemsModel> >(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, search) {
        return Scaffold(
          body: Column(
            children: [
              const SizedBox(
                height: SizeApp.size30,
              ),
              TextFieldSearch(
                  searchController: searchController,
                  onChanged: (value) {
                  //  BlocProvider.of<SearchCubit>(context).searchProducts(value);
                   return searchProducts(value);
                  }),
              Expanded(
                child: ListView.builder(
                    physics: const BouncingScrollPhysics(),
                    shrinkWrap: true,
                    itemCount:  filteredProducts.length,
                    itemBuilder: (context, index) {
                      return SearchLapCard(
                        lapHomeModel:  filteredProducts[index],
                      );
                    }),
              ),
            ],
          ),
        );
      },
    );
  }

void searchProducts(String query) {
  setState(() {
    filteredProducts = widget.modelLap
        .where((product) => product.name.toLowerCase().contains(query))
        .toList();
  });
}
}
