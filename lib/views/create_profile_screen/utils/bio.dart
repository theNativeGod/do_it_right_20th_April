import 'package:do_it_right/models/fighter.dart';
import 'package:do_it_right/view_models/create_profile_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Bio extends StatelessWidget {
  const Bio({
    super.key,
    required this.height,
  });

  final double height;

  @override
  Widget build(BuildContext context) {
    var pageProver = Provider.of<CreateProfileProvider>(context);
    Fighter fighter = pageProver.fighter;
    return Flexible(
      flex: 8,
      child: ClipRRect(
        child: Container(
          height: height * .18,
          padding: const EdgeInsets.only(left: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                fighter.name,
                style: Theme.of(context).textTheme.titleMedium!.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
              ),
              BioData()
            ],
          ),
        ),
      ),
    );
  }
}

class BioData extends StatelessWidget {
  const BioData({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var pageProver = Provider.of<CreateProfileProvider>(context);
    Fighter fighter = pageProver.fighter;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            BioDataHeading(text: 'Age'),
            BioDataHeading(text: 'Height'),
            BioDataHeading(text: 'Weight'),
            BioDataHeading(text: 'Club'),
            BioDataHeading(text: 'Instructor'),
            BioDataHeading(text: 'Randburg'),
            BioDataHeading(text: 'Belt'),
          ],
        ),
        const SizedBox(width: 8),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            BioDataText(text: fighter.age),
            BioDataText(text: fighter.height),
            BioDataText(text: fighter.weight),
            BioDataText(text: fighter.club),
            BioDataText(text: fighter.instructor),
            BioDataText(text: fighter.country),
            BioDataText(text: fighter.belt),
          ],
        ),
      ],
    );
  }
}

class BioDataText extends StatelessWidget {
  const BioDataText({
    required this.text,
    super.key,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(text, style: Theme.of(context).textTheme.bodySmall);
  }
}

class BioDataHeading extends StatelessWidget {
  const BioDataHeading({
    required this.text,
    super.key,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        text.toUpperCase(),
        style: Theme.of(context).textTheme.bodySmall!.copyWith(
              fontWeight: FontWeight.bold,
            ),
      ),
    );
  }
}
