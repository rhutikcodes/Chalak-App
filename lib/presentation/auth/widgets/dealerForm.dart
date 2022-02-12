import 'package:chalak_app/core/city_state.dart';
import 'package:chalak_app/presentation/auth/widgets/text_field_form.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:searchfield/searchfield.dart';

class DealerForm extends StatelessWidget {
  const DealerForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextEditingController nameController = TextEditingController();
    final TextEditingController mobileNumberController =
        TextEditingController();
    final TextEditingController natureOfMaterialController =
        TextEditingController();
    final TextEditingController weightOfMaterialController =
        TextEditingController();
    final TextEditingController quantityController = TextEditingController();
    final TextEditingController cityController = TextEditingController();
    final TextEditingController searchController = TextEditingController();
    final _formKeyDealer = GlobalKey<FormState>();
    final _citiesList =
        kCitiesList.map((city) => '${city['name']}, ${city['state']}').toList();
        
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Form(
        key: _formKeyDealer,
        child: Column(
          children: [
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
              hintText: 'Nature of Material',
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
            SearchField(
              suggestions: _citiesList,
              textInputAction: TextInputAction.next,
              hint: 'Select City',
              controller: cityController,
              searchStyle: TextStyle(
                fontSize: 18,
                color: Colors.black.withOpacity(0.8),
              ),
              validator: (x) {
                if (!_citiesList.contains(x) || x!.isEmpty) {
                  return 'Please Enter a valid City';
                }
                return null;
              },
              searchInputDecoration: const InputDecoration(
                contentPadding: EdgeInsets.only(
                  top: 20,
                ),
                isDense: true,
                prefixIcon: Padding(
                  padding: EdgeInsets.only(top: 15),
                  child: Icon(FontAwesomeIcons.route),
                ),
              ),
              itemHeight: 50,
              onTap: (x) {
                print(x);
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
                if (_formKeyDealer.currentState!.validate()) {
                  // If the form is valid, display a snackbar. In the real world,
                  // you'd often call a server or save the information in a database.
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Saving Data')),
                  );
                  // BlocProvider.of<AuthCubit>(context).handleIncompleteSignUp(
                  //   email: widget.userEntity.email,
                  //   uid: widget.userEntity.uid,
                  //   name: nameController.value.text,
                  //   mobileNumber: int.parse(mobileNumberController.value.text),
                  //   natureOfMaterial: natureOfMaterialController.value.text,
                  //   weightOfMaterial:
                  //       double.parse(weightOfMaterialController.value.text),
                  //   quantity: int.parse(quantityController.value.text),
                  //   city: cityController.value.text,
                  //   age: 0,
                  //   truckNumber: "truckNumber",
                  //   truckCapacity: 0,
                  //   transporterName: "transporterName",
                  //   drivingExperience: 0,
                  //   userType: "dealer",
                  // );
                }
              },
              child: const Text('Submit'),
            )
          ],
        ),
      ),
    );
  }
}
