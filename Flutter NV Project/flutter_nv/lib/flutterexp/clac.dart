import 'package:flutter/material.dart';

class calculator extends StatelessWidget {
  const calculator({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(height: 235, width: 250),
            rowcontain(),
            SizedBox(height: 20),
            Divider(
              color: Colors.grey,
              thickness: 3,
              indent: 10,
              endIndent: 10,
            ),
            SizedBox(height: 20),
            Container(
              height: 450,
              child: Column(
                children: [
                  row1contain(),
                  SizedBox(height: 10),
                  row2contain(),
                  SizedBox(height: 10),
                  row3contain(),
                  SizedBox(height: 10),
                  row4contain(),
                  SizedBox(height: 10),
                  row5contain(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Row row5contain() {
    return Row(
      children: [
        Expanded(
          child: SizedBox(
            height: 75,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                shape: CircleBorder(),
                backgroundColor: Colors.grey,
              ),
              child: Text(
                "+/-",
                style: TextStyle(color: Colors.white, fontSize: 30),
              ),
            ),
          ),
        ),
        Expanded(
          child: SizedBox(
            height: 75,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                shape: CircleBorder(),
                backgroundColor: Colors.grey,
              ),
              child: Text(
                "0",
                style: TextStyle(color: Colors.white, fontSize: 30),
              ),
            ),
          ),
        ),
        Expanded(
          child: SizedBox(
            height: 75,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                shape: CircleBorder(),
                backgroundColor: Colors.grey,
              ),
              child: Text(
                ".",
                style: TextStyle(color: Colors.white, fontSize: 30),
              ),
            ),
          ),
        ),
        Expanded(
          child: SizedBox(
            height: 75,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                shape: CircleBorder(),
                backgroundColor: Colors.grey,
              ),
              child: Text(
                "=",
                style: TextStyle(color: Colors.white, fontSize: 30),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Row row4contain() {
    return Row(
      children: [
        Expanded(
          child: SizedBox(
            height: 75,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                shape: CircleBorder(),
                backgroundColor: Colors.grey,
              ),
              child: Text(
                "1",
                style: TextStyle(color: Colors.white, fontSize: 30),
              ),
            ),
          ),
        ),
        Expanded(
          child: SizedBox(
            height: 75,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                shape: CircleBorder(),
                backgroundColor: Colors.grey,
              ),
              child: Text(
                "2",
                style: TextStyle(color: Colors.white, fontSize: 30),
              ),
            ),
          ),
        ),
        Expanded(
          child: SizedBox(
            height: 75,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                shape: CircleBorder(),
                backgroundColor: Colors.grey,
              ),
              child: Text(
                "3",
                style: TextStyle(color: Colors.white, fontSize: 30),
              ),
            ),
          ),
        ),
        Expanded(
          child: SizedBox(
            height: 75,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                shape: CircleBorder(),
                backgroundColor: Colors.grey,
              ),
              child: Text(
                "+",
                style: TextStyle(color: Colors.white, fontSize: 30),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Row row3contain() {
    return Row(
      children: [
        Expanded(
          child: SizedBox(
            height: 75,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                shape: CircleBorder(),
                backgroundColor: Colors.grey,
              ),
              child: Text(
                "4",
                style: TextStyle(color: Colors.white, fontSize: 30),
              ),
            ),
          ),
        ),
        Expanded(
          child: SizedBox(
            height: 75,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                shape: CircleBorder(),
                backgroundColor: Colors.grey,
              ),
              child: Text(
                "5",
                style: TextStyle(color: Colors.white, fontSize: 30),
              ),
            ),
          ),
        ),
        Expanded(
          child: SizedBox(
            height: 75,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                shape: CircleBorder(),
                backgroundColor: Colors.grey,
              ),
              child: Text(
                "6",
                style: TextStyle(color: Colors.white, fontSize: 30),
              ),
            ),
          ),
        ),
        Expanded(
          child: SizedBox(
            height: 75,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                shape: CircleBorder(),
                backgroundColor: Colors.grey,
              ),
              child: Text(
                "-",
                style: TextStyle(color: Colors.white, fontSize: 30),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

Row row1contain() {
  return Row(
    children: [
      Expanded(
        child: SizedBox(
          height: 75,
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              shape: CircleBorder(),
              backgroundColor: Colors.grey,
            ),
            child: Text("C", style: TextStyle(color: Colors.red, fontSize: 30)),
          ),
        ),
      ),
      Expanded(
        child: SizedBox(
          height: 75,
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              shape: CircleBorder(),
              backgroundColor: Colors.grey,
            ),
            child: Text(
              "()",
              style: TextStyle(color: Colors.black, fontSize: 30),
            ),
          ),
        ),
      ),
      Expanded(
        child: SizedBox(
          height: 75,
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              shape: CircleBorder(),
              backgroundColor: Colors.grey,
            ),
            child: Text(
              "%",
              style: TextStyle(color: Colors.black, fontSize: 30),
            ),
          ),
        ),
      ),
      Expanded(
        child: SizedBox(
          height: 75,
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              shape: CircleBorder(),
              backgroundColor: Colors.grey,
            ),
            child: Text(
              "/",
              style: TextStyle(color: Colors.black, fontSize: 30),
            ),
          ),
        ),
      ),
    ],
  );
}

Row rowcontain() {
  return Row(
    children: [
      Expanded(
        child: SizedBox(
          height: 60,
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.grey, // set background color
            ),
            child: Text("A", style: TextStyle(color: Colors.white)),
          ),
        ),
      ),
      SizedBox(width: 10),
      Expanded(
        child: SizedBox(
          height: 60,
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.grey, // set background color
            ),
            child: Text("A", style: TextStyle(color: Colors.white)),
          ),
        ),
      ),
      SizedBox(width: 10),
      Expanded(
        child: SizedBox(
          height: 60,
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.grey, // set background color
            ),
            child: Text("A", style: TextStyle(color: Colors.white)),
          ),
        ),
      ),
      SizedBox(width: 10),
      Expanded(
        child: SizedBox(
          height: 60,
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.grey, // set background color
            ),
            child: Text("A", style: TextStyle(color: Colors.white)),
          ),
        ),
      ),
    ],
  );
}

Row row2contain() {
  return Row(
    children: [
      Expanded(
        child: SizedBox(
          height: 75,
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              shape: CircleBorder(),
              backgroundColor: Colors.grey,
            ),
            child: Text(
              "7",
              style: TextStyle(color: Colors.white, fontSize: 30),
            ),
          ),
        ),
      ),
      Expanded(
        child: SizedBox(
          height: 75,
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              shape: CircleBorder(),
              backgroundColor: Colors.grey,
            ),
            child: Text(
              "8",
              style: TextStyle(color: Colors.white, fontSize: 30),
            ),
          ),
        ),
      ),
      Expanded(
        child: SizedBox(
          height: 75,
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              shape: CircleBorder(),
              backgroundColor: Colors.grey,
            ),
            child: Text(
              "9",
              style: TextStyle(color: Colors.white, fontSize: 30),
            ),
          ),
        ),
      ),
      Expanded(
        child: SizedBox(
          height: 75,
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              shape: CircleBorder(),
              backgroundColor: Colors.grey,
            ),
            child: Text(
              "X",
              style: TextStyle(color: Colors.white, fontSize: 30),
            ),
          ),
        ),
      ),
    ],
  );
}
