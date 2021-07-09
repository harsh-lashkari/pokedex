import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pokedex/shared/color_constants.dart';
import 'package:pokedex/shared/sizeconfig.dart';
import 'package:pokedex/shared/text_style_constants.dart';

class SearchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(15),
      // elevation: 10,
      child: Container(
        width: SizeConfig.safeBlockHorizontal * 500,
        height: SizeConfig.safeBlockVertical * 50,
        decoration: BoxDecoration(
          color: kLightBackgroundColor,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Padding(
          padding: EdgeInsets.only(
            left: SizeConfig.safeBlockHorizontal * 20,
            right: SizeConfig.safeBlockHorizontal * 20,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Icon(
                FeatherIcons.search,
              ),
              SizedBox(
                width: SizeConfig.safeBlockHorizontal * 10,
              ),
              Expanded(
                  child: TextField(
                onChanged: (value) {},
                style: GoogleFonts.quicksand(
                  textStyle: kFormFieldTextStyle,
                  color: Colors.black,
                ),
                decoration: const InputDecoration(
                  focusedBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  border: InputBorder.none,
                  hintText: 'Search...',
                ),
              )),
              SizedBox(
                width: SizeConfig.safeBlockHorizontal * 10,
              ),
              const Icon(
                FeatherIcons.mic,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
