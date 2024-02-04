import 'package:flutter/material.dart';
import 'package:flutter_messenger/common/extension/custom_theme_extension.dart';
import 'package:flutter_messenger/common/utils/coloors.dart';

class LanguageButton extends StatelessWidget {
  const LanguageButton({
    super.key,
  });

  showBottomSheet(context) {
    return showModalBottomSheet(
        context: context,
        builder: (context){
          return Container(
            child: const Center(
              child: Text('Contenu de la feuille inférieure'),
            ),
            height: 400,
            // color: Colors.red,
          );
        }
        );

  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: context.theme.langBtnBgColor,
      borderRadius: BorderRadius.circular(20),
      child: InkWell(
        onTap: () => showBottomSheet(context),
        borderRadius: BorderRadius.circular(20),
        splashFactory: NoSplash.splashFactory,
        highlightColor: context.theme.langBtnHighlightColor,
        child: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.language, color: Coloors.greenDark,
              ),
              SizedBox(width: 10,),
              Text('English', style: TextStyle(color: Coloors.greenDark)),
              SizedBox(width: 10,),
              Icon(Icons.keyboard_arrow_down, color: Coloors.greenDark
              ),
            ],
          ),
        ),
      ),
    );
  }
}