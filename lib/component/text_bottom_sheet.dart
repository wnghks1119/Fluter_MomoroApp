import 'package:flutter/material.dart';

class TextBottomSheet extends StatelessWidget {
  final String label;

  const TextBottomSheet({required this.label, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bottomInsets = MediaQuery.of(context).viewInsets.bottom;
    //FocusNode textFocus = FocusNode();

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(FocusNode());
      },
      child: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height / 2 + bottomInsets,
          color: Colors.white,
          child: Padding(
            padding: EdgeInsets.only(bottom: bottomInsets),
            child: Padding(
              padding: EdgeInsets.only(
                  left: 10.0, right: 10.0, top: 20.0, bottom: 10.0),
              child: TextContainer(label: label,),
            ),
          ),
        ),
      ),
    );
  }
}

class TextContainer extends StatelessWidget {
  final String label;

  const TextContainer({required this.label, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Expanded(
            child: TextField(
              cursorColor: Colors.black,
              maxLines: null,
              expands: true,
              autofocus: true,
              decoration: InputDecoration(
                border: InputBorder.none,
                filled: true,
                fillColor: Colors.grey,
              ),
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            children: [
              Expanded(
                child: ElevatedButton(
                  onPressed: () {
                    FocusScope.of(context).requestFocus(FocusNode());
                  },
                  child: Text(
                    "완료",
                    style: TextStyle(
                      //fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}


