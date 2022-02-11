import 'package:chalak_app/core/city_state.dart';
import 'package:chalak_app/domain/auth/entity/user_entity.dart';
import 'package:drop_down_list/drop_down_list.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../core/constants.dart';
import '../../../domain/auth/entity/route_entity.dart';

class SignUpFormDriver extends StatefulWidget {
  const SignUpFormDriver({Key? key, required this.userEntity})
      : super(key: key);
  final UserEntity userEntity;

  @override
  State<SignUpFormDriver> createState() => _SignUpFormDriverState();
}

class _SignUpFormDriverState extends State<SignUpFormDriver> {
  final List<SelectedListItem> _listCities = kCitiesList
      .map(
        (city) => SelectedListItem(false, '${city['name']} - ${city['state']}'),
      )
      .toList();
  List<RouteEntity> listOfRoutes = [];

  final TextEditingController nameController = TextEditingController();
  final TextEditingController ageController = TextEditingController();
  final TextEditingController truckNumberController = TextEditingController();
  final TextEditingController mobileNumberController = TextEditingController();
  final TextEditingController truckCapacityController = TextEditingController();
  final TextEditingController transporterNameController =
      TextEditingController();
  final TextEditingController drivingExperienceController =
      TextEditingController();
  final TextEditingController interesetedController = TextEditingController();
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
              hintText: 'Age',
              textInputType: TextInputType.number,
              iconData: FontAwesomeIcons.child,
              controller: ageController,
            ),
            const SizedBox(
              height: 8,
            ),
            TextFieldForm(
              hintText: 'Truck Number',
              textInputType: TextInputType.text,
              iconData: FontAwesomeIcons.truck,
              controller: truckNumberController,
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
              hintText: 'Truck Capacity',
              textInputType: TextInputType.number,
              iconData: FontAwesomeIcons.balanceScale,
              controller: truckCapacityController,
            ),
            const SizedBox(
              height: 8,
            ),
            TextFieldForm(
              hintText: 'Transporter Name',
              textInputType: TextInputType.name,
              iconData: FontAwesomeIcons.code,
              controller: transporterNameController,
            ),
            const SizedBox(
              height: 8,
            ),
            TextFieldForm(
              hintText: 'Driving Experience',
              textInputType: TextInputType.number,
              iconData: FontAwesomeIcons.flask,
              controller: drivingExperienceController,
            ),
            const SizedBox(
              height: 8,
            ),
            TextFieldForm(
              hintText: 'Select atleast 3 interested routes',
              textInputType: TextInputType.text,
              iconData: FontAwesomeIcons.route,
              controller: interesetedController,
              onTap: () {
                {
                  DropDownState(
                    DropDown(
                      submitButtonText: kDone,
                      submitButtonColor: const Color.fromRGBO(70, 76, 222, 1),
                      searchHintText: kSearch,
                      bottomSheetTitle: kCities,
                      dataList: _listCities,
                      selectedItems: (List<dynamic> selectedList) {
                        listOfRoutes = selectedList.map((itemInList) {
                          final itemList = itemInList.toString().split('-');
                          return RouteEntity(
                            city: itemList[0],
                            state: itemList[1],
                          );
                        }).toList();

                        if (listOfRoutes.length < 3) {
                          showSnackBar("Select atleast 3 routes");
                        } else {
                          final _newValue = listOfRoutes
                              .map((route) => '${route.city},${route.state}')
                              .toString();

                          interesetedController.value = TextEditingValue(
                            text: _newValue,
                            selection: TextSelection.fromPosition(
                              TextPosition(offset: _newValue.length),
                            ),
                          );
                          showSnackBar(_newValue);
                        }
                      },
                      enableMultipleSelection: true,
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
