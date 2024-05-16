import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'constants.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 50.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SvgPicture.asset(
                  'assets/icons/backward.svg',
                  height: 11.0,
                ),
                SvgPicture.asset(
                  'assets/icons/menu.svg',
                  height: 11.0,
                ),
              ],
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 20.0),
              padding: const EdgeInsets.all(6.0),
              height: 305.0,
              width: 305.0,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: kSecondColor,
              ),
              child: Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/image_1_big.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'Vegan salad bowl\n',
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                      TextSpan(
                        text: ' with tomato',
                        style: TextStyle(color: kTextColor.withOpacity(.4)),
                      ),
                    ],
                  ),
                ),
                Text(
                  '\$20',
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium!
                      .copyWith(color: kPrimaryColor),
                ),
              ],
            ),
            const SizedBox(height: 20.0),
            const Text(
              'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source.',
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(
                    vertical: 20.0,
                    horizontal: 27.0,
                  ),
                  decoration: BoxDecoration(
                    color: kPrimaryColor.withOpacity(.19),
                    borderRadius: BorderRadius.circular(27.0),
                  ),
                  child: Row(
                    children: [
                      Text(
                        'Add to bag',
                        style: Theme.of(context).textTheme.labelLarge,
                      ),
                      const SizedBox(width: 30.0),
                      SvgPicture.asset(
                        'assets/icons/forward.svg',
                        height: 11.0,
                      )
                    ],
                  ),
                ),
                Container(
                  height: 80.0,
                  width: 80.0,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: kPrimaryColor.withOpacity(.26),
                  ),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(15.0),
                        height: 60.0,
                        width: 60.0,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: kPrimaryColor,
                        ),
                        child: SvgPicture.asset('assets/icons/bag.svg'),
                      ),
                      Positioned(
                        right: 10.0,
                        bottom: 10.0,
                        child: Container(
                          alignment: Alignment.center,
                          height: 28.0,
                          width: 28.0,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: kWhiteColor,
                          ),
                          child: Text(
                            '0',
                            style: Theme.of(context)
                                .textTheme
                                .labelLarge!
                                .copyWith(color: kPrimaryColor, fontSize: 16.0),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
