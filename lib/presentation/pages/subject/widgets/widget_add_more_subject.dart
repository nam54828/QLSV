import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:template/core/utils/color_resources.dart';

class AddMoreSubject extends StatefulWidget {
  final TextEditingController textEditingController;
  final Function(String) onSave;
  const AddMoreSubject({Key? key, required this.textEditingController, required this.onSave}) : super(key: key);

  @override
  State<AddMoreSubject> createState() => _AddMoreSubjectState();
}

class _AddMoreSubjectState extends State<AddMoreSubject> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            Text("Add more subjects", style: GoogleFonts.poppins(
            fontSize: 12,
            fontWeight: FontWeight.w600,
            color: ColorResources.BLUE_STUDENT
        )
        ),
              const SizedBox(
                height: 15,
              ),
              Text("Subject", style: GoogleFonts.poppins(
                fontWeight: FontWeight.w600,
                fontSize: 14,
                color: ColorResources.YELLOW_STUDENT
              ),),
              Container(
                height: 30,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: ColorResources.GREY_STUDENT,
                  borderRadius: BorderRadius.circular(5)
                ),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "Enter name of subject",
                    hintStyle: GoogleFonts.poppins(
                      fontSize: 12,
                      fontWeight: FontWeight.w400
                    ),
                    border: InputBorder.none,
                    contentPadding:const EdgeInsets.only(bottom: 20, left: 10)
                  ),
                  controller: widget.textEditingController,
                  onSaved: (value){
                    widget.textEditingController.text = value!;
                  },
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  InkWell(
                    onTap: (){
                      widget.onSave(widget.textEditingController.text);
                    },
                    child: Container(
                      height: 20,
                      width: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: ColorResources.YELLOW_ACCENT_STUDENT
                      ),
                      child: Center(
                        child: Text("Save", style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w700,
                          fontSize: 12,
                          color: ColorResources.BLUE_STUDENT
                        ),
                        ),
                      )
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  InkWell(
                    onTap: (){
                      Get.back();
                    },
                    child: Container(
                        height: 20,
                        width:50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          child: Text("Cancel", style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                              color: ColorResources.BLUE_STUDENT
                          ),
                          ),
                        )
                    ),
                  )
                ],
              )
    ],
    ),
      )
    ,
    );
  }
}
