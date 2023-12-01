import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TextInput extends StatelessWidget {
  const TextInput({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Container(
          decoration: BoxDecoration(
              color: const Color(0xFFEEF2F5),
              borderRadius: BorderRadius.circular(9)),
          child: TextField(
            keyboardType: TextInputType.visiblePassword,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 13,
              fontWeight: FontWeight.w500,
              height: 1.9,
            ),
            maxLines: 1,
            inputFormatters: [
              LengthLimitingTextInputFormatter(30),
            ],
            decoration: const InputDecoration(
              icon: Padding(
                  padding: EdgeInsets.only(left: 10, right: 0),
                  child: Icon(
                    Icons.search,
                    color: Color(0xFF9CA3AF),
                  )),
              contentPadding: EdgeInsets.only(left: 0),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(9)),
                borderSide: BorderSide(color: Colors.transparent, width: 0.6),
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(9)),
                borderSide: BorderSide(color: Colors.transparent, width: 0.6),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(9)),
                borderSide: BorderSide(color: Colors.transparent, width: 0.6),
              ),
              hintText: "What do you learn today?",
              hintStyle: TextStyle(
                color: Color(0xFF9CA3AF),
                fontSize: 15,
                fontWeight: FontWeight.w500,
                height: 0,
              ),
            ),
          ),
        ));
  }
}
