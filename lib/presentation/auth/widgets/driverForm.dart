import 'package:chalak_app/core/city_state.dart';
import 'package:chalak_app/presentation/auth/widgets/text_field_form.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:searchfield/searchfield.dart';

typedef StringDynamicFunc = dynamic Function(String?);

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
    final TextEditingController routeOneSourceController =
        TextEditingController();
    final TextEditingController routeTwoSourceController =
        TextEditingController();
    final TextEditingController routeThreeSourceController =
        TextEditingController();
    final TextEditingController routeOneDestinationController =
        TextEditingController();
    final TextEditingController routeTwoDestinationController =
        TextEditingController();
    final TextEditingController routeThreeDestinationController =
        TextEditingController();

    final _formKeyDriver = GlobalKey<FormState>();

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Form(
        key: _formKeyDriver,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
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
              SourceDestinationField(
                sourceController: routeOneSourceController,
                destinationController: routeOneDestinationController,
                sourceText: "Source #1",
                destinationText: "Destination #1",
                sourceOnTap: (x) {},
                destinationOnTap: (x) {},
              ),
              SourceDestinationField(
                sourceController: routeTwoSourceController,
                destinationController: routeTwoDestinationController,
                sourceText: "Source #2",
                destinationText: "Destination #2",
                sourceOnTap: (x) {},
                destinationOnTap: (x) {},
              ),
              SourceDestinationField(
                sourceController: routeThreeSourceController,
                destinationController: routeThreeDestinationController,
                sourceText: "Source #3",
                destinationText: "Destination #3",
                sourceOnTap: (x) {},
                destinationOnTap: (x) {},
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
      ),
    );
  }
}

class SourceDestinationField extends StatelessWidget {
  const SourceDestinationField({
    Key? key,
    required this.sourceController,
    required this.destinationController,
    required this.sourceText,
    required this.destinationText,
    required this.sourceOnTap,
    required this.destinationOnTap,
  }) : super(key: key);

  final TextEditingController sourceController;
  final TextEditingController destinationController;
  final String sourceText;
  final String destinationText;
  final StringDynamicFunc sourceOnTap;
  final StringDynamicFunc destinationOnTap;
  @override
  Widget build(BuildContext context) {
    final _citiesList =
        kCitiesList.map((city) => '${city['name']}, ${city['state']}').toList();
    return Row(
      children: [
        Expanded(
          child: SearchField(
            suggestions: _citiesList,
            textInputAction: TextInputAction.next,
            hint: sourceText,
            controller: sourceController,
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
                child: Icon(FontAwesomeIcons.locationArrow),
              ),
            ),
            itemHeight: 50,
            onTap: sourceOnTap,
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Expanded(
          child: SearchField(
            suggestions: _citiesList,
            textInputAction: TextInputAction.next,
            hint: destinationText,
            controller: destinationController,
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
            onTap: destinationOnTap,
          ),
        ),
      ],
    );
  }
}
