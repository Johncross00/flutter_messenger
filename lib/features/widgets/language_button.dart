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
          return Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 10,
            ),
            child: Column(
              children: [
                Container(
                  height: 4,
                  width: 30,
                  decoration: BoxDecoration(
                    color: context.theme.greyColor,
                    borderRadius: BorderRadius.circular(5)
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    IconButton(
                      onPressed: (){},
                      splashColor: Colors.red,
                      splashRadius: 22,
                      iconSize: 22,
                      padding: EdgeInsets.zero,
                      constraints: BoxConstraints(minWidth: 40),
                        icon: Icon(Icons.close_outlined),
                    ),
                    SizedBox(width: 10,),
                    Text('App Language',
                      style: TextStyle(fontSize: 20,
                      fontWeight: FontWeight.w500,),)
                  ],
                ),
                const SizedBox(height: 10,),
                Divider(color: context.theme.greyColor!.withOpacity(0.3),
                  thickness: .5,
                ),
                RadioListTile(
                    value: true,
                    groupValue: true,
                    onChanged: (value) {},
                  activeColor: Coloors.greenDark,
                  title: const Text('English'),
                  subtitle: Text("(phone's language)",
                    style: TextStyle(color: context.theme.greyColor),
                  ),
                )
              ],
            ),
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