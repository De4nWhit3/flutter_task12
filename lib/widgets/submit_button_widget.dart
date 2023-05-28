import 'package:flutter/material.dart';

class SubmitButtonWidget extends StatelessWidget {
  const SubmitButtonWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(
            Radius.circular(30),
          ),
          border: Border.all(
            color: Colors.black,
            width: 2,
          )),
      child: Material(
        clipBehavior: Clip.antiAlias,
        borderRadius: const BorderRadius.all(
          Radius.circular(30),
        ),
        child: Ink(
          height: 50,
          width: 150,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomLeft,
              end: Alignment.topRight,
              colors: [
                Colors.orange.shade400,
                Colors.orange.shade900,
              ],
            ),
          ),
          child: InkWell(
            splashColor: Colors.orangeAccent,
            onTap: () {},
            child: const Center(child: Text('Submit')),
          ),
        ),
      ),
    );
  }
}
