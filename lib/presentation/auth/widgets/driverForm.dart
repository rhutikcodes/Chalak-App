import 'package:chalak_app/presentation/auth/widgets/text_field_form.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DriverForm extends StatelessWidget {
  const DriverForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextEditingController nameController = TextEditingController();
    final TextEditingController ageController = TextEditingController();
    final TextEditingController truckNumberController = TextEditingController();
    final TextEditingController mobileNumberController =
        TextEditingController();
    final TextEditingController truckCapacityController =
        TextEditingController();
    final TextEditingController transporterNameController =
        TextEditingController();
    final TextEditingController drivingExperienceController =
        TextEditingController();
    final TextEditingController interesetedController = TextEditingController();
    final TextEditingController searchController = TextEditingController();
    final _formKeyDriver = GlobalKey<FormState>();

    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Form(
        key: _formKeyDriver,
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
            Row(
              children: [
                Expanded(
                  child: TextFieldForm(
                    hintText: 'Source #1',
                    textInputType: TextInputType.text,
                    iconData: FontAwesomeIcons.route,
                    controller: interesetedController,
                    onTap: () {
                      {}
                    },
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: TextFieldForm(
                    hintText: 'Destination #1',
                    textInputType: TextInputType.text,
                    iconData: FontAwesomeIcons.route,
                    controller: interesetedController,
                    onTap: () {
                      {}
                    },
                  ),
                ),
              ],
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
                if (_formKeyDriver.currentState!.validate()) {
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
}
