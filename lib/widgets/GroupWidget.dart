import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GroupWidget extends StatelessWidget {

  final String? title;
  final String? sub;
  final String? image;
  const GroupWidget({Key? key, this.image , this.title, this.sub}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
                            width: 120.0,
                            height: 180.0,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(15.0),
                                  topLeft: Radius.circular(15.0),
                                  bottomRight: Radius.circular(15.0),
                                  bottomLeft: Radius.circular(15.0),
                                ),
                                image: DecorationImage(
                                    image: AssetImage(image!),
                                    fit: BoxFit.cover)),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    title!,
                                    style: GoogleFonts.roboto(
                                        fontSize: 18,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    sub!,
                                    style: GoogleFonts.roboto(
                                        fontSize: 18,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                          );
  }
}