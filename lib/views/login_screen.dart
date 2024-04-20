import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQuery = MediaQuery.of(context);
    Size size = mediaQuery.size;
    double height = size.height;
    double width = size.width;
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        backgroundColor: const Color(0xffcceffc),
        body: Center(
          child: Stack(
            children: [
              Center(
                child: Container(
                  height: height,
                  width: width - 32,
                  decoration: const BoxDecoration(
                    color: Color(0xffa3e2f9),
                  ),
                ),
              ),
              Column(
                children: [
                  SizedBox(
                    height: height * .3,
                    child: Stack(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: const AssetImage(
                                  'assets/images/login_hero.png'),
                              fit: BoxFit.cover,
                              colorFilter: ColorFilter.mode(
                                Colors.grey.shade100,
                                BlendMode.saturation,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.blue.withOpacity(.4),
                          ),
                          padding: const EdgeInsets.symmetric(
                            horizontal: 16,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              SafeArea(
                                  child: Image.asset('assets/images/logo.png')),
                            ],
                          ),
                        ),
                        Positioned(
                          bottom: 0,
                          child: Container(
                            height: 10,
                            width: width,
                            color: Colors.yellow,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: height * .7,
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(horizontal: 48),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        UserInputFields(height: height),
                        Buttons(height: height),
                        const DisplayText(),
                        SizedBox(
                          height: (mediaQuery.padding.bottom + 80) / 16,
                        ),
                      ],
                    ),
                  )
                ],
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  width: width,
                  height: mediaQuery.padding.bottom + 80,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        'assets/images/bottomBar.png',
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                  alignment: const AlignmentDirectional(0.03, 0),
                  padding: const EdgeInsets.only(top: 32),
                  child: SizedBox(
                      height: 60,
                      width: 60,
                      child: Image.asset('assets/images/logo.png',
                          fit: BoxFit.cover)),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class DisplayText extends StatelessWidget {
  const DisplayText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Embark on a journey of discipline, strength, and mastery. Unleash your inner warrior with step-by-step tutorials and expert-led lessons. Train at your own pace, anytime, anywhere. Join us on the path of self-discovery, empowerment, and excellence. Let the training begin!',
      textAlign: TextAlign.center,
    );
  }
}

class Buttons extends StatelessWidget {
  const Buttons({
    super.key,
    required this.height,
  });

  final double height;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Forgot Password?',
          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                color: const Color(0xff00aeef),
                fontWeight: FontWeight.bold,
              ),
        ),
        SizedBox(
          height: 8 + height * .02,
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            AuthButton(heading: 'Login', sub: 'Guest'),
            AuthButton(heading: 'Create', sub: 'Profile'),
          ],
        ),
      ],
    );
  }
}

class AuthButton extends StatelessWidget {
  const AuthButton({
    required this.heading,
    required this.sub,
    super.key,
  });

  final String heading;
  final String sub;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xff2491fe),
        borderRadius: BorderRadius.circular(12),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 4),
      child: Column(
        children: [
          Text(
            heading.toUpperCase(),
            style: Theme.of(context).textTheme.titleLarge!.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
          ),
          Text(
            sub.toUpperCase(),
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
          ),
        ],
      ),
    );
  }
}

class UserInputFields extends StatelessWidget {
  const UserInputFields({
    super.key,
    required this.height,
  });

  final double height;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          TextFormField(
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  fontWeight: FontWeight.bold,
                ),
            textAlign: TextAlign.center,
            decoration: InputDecoration(
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(100),
                borderSide: const BorderSide(
                  color: Color(0xff88a3ad),
                  width: 3,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(100),
                borderSide: const BorderSide(
                  color: Color(0xff88a3ad),
                  width: 3,
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(100),
                borderSide: const BorderSide(
                  color: Color(0xff88a3ad),
                  width: 3,
                ),
              ),
              hintText: 'Email',
            ),
          ),
          SizedBox(
            height: 8 + height * .02,
          ),
          TextFormField(
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  fontWeight: FontWeight.bold,
                ),
            obscureText: true,
            textAlign: TextAlign.center,
            decoration: InputDecoration(
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(100),
                borderSide: const BorderSide(
                  color: Color(0xff88a3ad),
                  width: 3,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(100),
                borderSide: const BorderSide(
                  color: Color(0xff88a3ad),
                  width: 3,
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(100),
                borderSide: const BorderSide(
                  color: Color(0xff88a3ad),
                  width: 3,
                ),
              ),
              hintText: 'Password',
            ),
          ),
        ],
      ),
    );
  }
}
