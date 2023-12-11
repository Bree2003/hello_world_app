import "package:flutter/material.dart";

// it has no state
// class CounterScreen extends StatelessWidget {

// Allows to keep an intern state and life cycle
class CounterFunctionsScreen extends StatefulWidget {
  // constructor to the class
  const CounterFunctionsScreen({super.key});

  @override
  State<CounterFunctionsScreen> createState() => _CounterFunctionsScreenState();
}

class _CounterFunctionsScreenState extends State<CounterFunctionsScreen> {
  int clickCounter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter Functions'),
        centerTitle: true,
        // list of widgets that goes after the toolbar(title)
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh_rounded),
            onPressed: () {
              setState(() {
                clickCounter = 0;
              });
            },
          )
        ],
        // it puts before the toolbar(title)
        /* leading: IconButton(
          icon: const Icon(Icons.refresh_rounded),
          onPressed: () {},
        ), */
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '$clickCounter',
              style:
                  const TextStyle(fontSize: 160, fontWeight: FontWeight.w100),
            ),
            // condition terniario to change the text
            Text(
              'Click${clickCounter == 1 ? '' : 's'}',
              style: const TextStyle(fontSize: 25, fontWeight: FontWeight.w100),
            )
            /* (clickCounter == 1)
                ? const Text(
                    'Click',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.w300),
                  )
                : const Text(
                    'Clicks',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.w300),
                  ), */
          ],
        ),
      ),
      // add
      floatingActionButton: Column(
        // for the children it puts in an alignment
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          CustomButton(
            icon: Icons.refresh_outlined,
            onPressed: () {
              setState(() {
                clickCounter = 0;
              });
            },
          ),
          const SizedBox(
            height: 10,
          ),
          CustomButton(
            icon: Icons.plus_one_outlined,
            onPressed: () {
              setState(() {
                clickCounter++;
              });
            },
          ),
          const SizedBox(
            height: 10,
          ),
          CustomButton(
            icon: Icons.exposure_minus_1_outlined,
            onPressed: () {
              setState(() {
                if (clickCounter == 0) return;
                clickCounter--;
              });
            },
          ),
        ],
      ),
      /* floatingActionButton: FloatingActionButton(
        onPressed: () {
          clickCounter++;
          setState(() {});
          /* setState(() {
            clickCounter++;
          }); */
        },
        child: const Icon(Icons.plus_one),
      ), */
    );
  }
}

class CustomButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback? onPressed;

  const CustomButton({super.key, required this.icon, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      // makes the buttom circular
      // shape: const StadiumBorder(),
      // if onPressed is null, the buttons are not working (no hover)
      onPressed: onPressed,
      child: Icon(icon),
    );
  }
}
