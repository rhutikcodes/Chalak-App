import 'package:chalak_app/core/city_state.dart';
import 'package:chalak_app/domain/auth/entity/user_entity.dart';
import 'package:drop_down_list/drop_down_list.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../core/constants.dart';
import '../../../domain/auth/entity/route_entity.dart';

class SignUpFormDealer extends StatefulWidget {
  const SignUpFormDealer({Key? key, required this.userEntity})
      : super(key: key);
  final UserEntity userEntity;

  @override
  State<SignUpFormDealer> createState() => _SignUpFormDealerState();
}

class _SignUpFormDealerState extends State<SignUpFormDealer> {
  final List<SelectedListItem> _listCities = kCitiesList
      .map(
        (city) => SelectedListItem(false, '${city['name']} - ${city['state']}'),
      )
      .toList();
  late RouteEntity route;
  final TextEditingController nameController = TextEditingController();
  final TextEditingController mobileNumberController = TextEditingController();
  final TextEditingController natureOfMaterialController =
      TextEditingController();
  final TextEditingController weightOfMaterialController =
      TextEditingController();
  final TextEditingController quantityController = TextEditingController();
  final TextEditingController transporterNameController =
      TextEditingController();
  final TextEditingController cityController = TextEditingController();
  final TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();

    return Form(
      autovalidateMode: AutovalidateMode.onUserInteraction,
      key: _formKey,
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            TextFieldForm(
              hintText: 'Name',
              iconData: Icons.person,
              controller: nameController,
              textInputType: TextInputType.name,
            ),
            const SizedBox(
              height: 8,
            ),
            TextFieldForm(
              hintText: 'Mobile Number',
              textInputType: TextInputType.phone,
              iconData: FontAwesomeIcons.phone,
              controller: mobileNumberController,
            ),
            const SizedBox(
              height: 8,
            ),
            TextFieldForm(
              hintText: 'Nature of Mterial',
              textInputType: TextInputType.text,
              iconData: FontAwesomeIcons.leaf,
              controller: natureOfMaterialController,
            ),
            const SizedBox(
              height: 8,
            ),
            TextFieldForm(
              hintText: 'Weight Of Material(KG)',
              textInputType: TextInputType.number,
              iconData: FontAwesomeIcons.weight,
              controller: weightOfMaterialController,
            ),
            const SizedBox(
              height: 8,
            ),
            TextFieldForm(
              hintText: 'Quantity',
              textInputType: TextInputType.number,
              iconData: FontAwesomeIcons.balanceScale,
              controller: quantityController,
            ),
            const SizedBox(
              height: 8,
            ),
            TextFieldForm(
              hintText: 'Select City',
              textInputType: TextInputType.text,
              iconData: FontAwesomeIcons.route,
              controller: cityController,
              onTap: () {
                {
                  DropDownState(
                    DropDown(
                      submitButtonText: kDone,
                      submitButtonColor: const Color.fromRGBO(70, 76, 222, 1),
                      searchHintText: kSearch,
                      bottomSheetTitle: kCities,
                      dataList: _listCities,
                      selectedItem: (item) {
                        final itemList = item.split('-');
                        route = RouteEntity(
                          city: itemList[0],
                          state: itemList[1],
                        );
                        final _newValue = '${route.city},${route.state}';
                        cityController.value = TextEditingValue(
                          text: _newValue,
                          selection: TextSelection.fromPosition(
                            TextPosition(offset: _newValue.length),
                          ),
                        );
                        showSnackBar(_newValue);
                      },
                      enableMultipleSelection: false,
                      searchController: searchController,
                    ),
                  ).showModal(context);
                }
              },
            ),
            const SizedBox(
              height: 24,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: const Size.fromHeight(
                  40,
                ),
              ),
              onPressed: () {
                // Validate returns true if the form is valid, or false otherwise.
                if (_formKey.currentState!.validate()) {
                  // If the form is valid, display a snackbar. In the real world,
                  // you'd often call a server or save the information in a database.
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Processing Data')),
                  );
                }
              },
              child: const Text('Submit'),
            )
          ],
        ),
      ),
    );
  }

  void showSnackBar(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
      ),
    );
  }
}

class TextFieldForm extends StatelessWidget {
  const TextFieldForm({
    Key? key,
    required this.hintText,
    required this.iconData,
    required this.controller,
    this.onTap,
    required this.textInputType,
  }) : super(key: key);
  final String hintText;
  final IconData iconData;
  final TextEditingController controller;
  final VoidCallback? onTap;
  final TextInputType textInputType;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: textInputType,
      controller: controller,
      onTap: onTap,
      decoration: InputDecoration(
        contentPadding:
            const EdgeInsets.only(top: 20), // add padding to adjust text
        isDense: true,
        hintText: hintText,
        prefixIcon: Padding(
          padding: const EdgeInsets.only(top: 15), // add padding to adjust icon
          child: Icon(iconData),
        ),
      ),
      validator: (value) {
        if (value!.isEmpty) {
          return "Cant be empty";
        }
        return null;
      },
    );
  }
}
