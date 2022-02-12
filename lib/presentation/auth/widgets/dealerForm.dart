import 'package:chalak_app/presentation/auth/widgets/text_field_form.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
            TextFieldForm(
              hintText: 'Select City',
              textInputType: TextInputType.text,
              iconData: FontAwesomeIcons.route,
              controller: cityController,
              onTap: () {
                {}
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
