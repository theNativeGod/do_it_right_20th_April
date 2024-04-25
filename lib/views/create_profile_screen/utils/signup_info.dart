import 'package:do_it_right/view_models/create_profile_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SignupInfo extends StatelessWidget {
  const SignupInfo({
    super.key,
    required this.width,
    required this.label,
  });

  final double width;
  final String label;

  @override
  Widget build(BuildContext context) {
    var pageProvider = Provider.of<CreateProfileProvider>(context);

    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label.toUpperCase(),
            style: Theme.of(context).textTheme.bodyLarge!.copyWith(
              color: const Color(0xff0040a1),
              fontWeight: FontWeight.bold,
              shadows: [
                const BoxShadow(
                  color: Colors.white,
                  blurRadius: 2,
                ),
              ],
            ),
          ),
          SizedBox(
            width: width * .45,
            child: TextFormField(
              onChanged: (value) {
                switch (label) {
                  case 'name surname':
                    pageProvider.name = value;
                    break;
                  case 'country':
                    pageProvider.country = value;
                    break;
                  case 'club dojang':
                    pageProvider.club = value;
                    break;
                  case 'instructor':
                    pageProvider.instructor = value;
                    break;
                  case 'affiliation':
                    pageProvider.affiliation = value;
                    break;
                  case 'age':
                    pageProvider.age = value;
                    break;
                  case 'weight':
                    pageProvider.weight = value;
                    break;
                  case 'height':
                    pageProvider.height = value;
                    break;
                  case 'belt':
                    pageProvider.belt = value;
                    break;
                }
              },
              validator: (value) {
                return value == null || value.isEmpty
                    ? '$label is a required field.'
                    : null;
              },
              cursorColor: Colors.black,
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium!
                  .copyWith(color: Colors.black),
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.grey.withOpacity(.5),
                contentPadding:
                    const EdgeInsets.symmetric(horizontal: 8, vertical: 0),
                border: const OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.white,
                  ),
                ),
                enabledBorder: const OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.white,
                  ),
                ),
                focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
