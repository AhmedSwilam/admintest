import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SharedAppTitle extends StatefulWidget {
  final Widget title;
  final Widget title1;
  final Widget? notify;

  const SharedAppTitle({Key? key, required this.title, this.notify,required this.title1})
      : super(key: key);

  @override
  _SharedAppTitleState createState() => _SharedAppTitleState();
}

class _SharedAppTitleState extends State<SharedAppTitle> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              SizedBox(
                child: SvgPicture.asset("assets/svg/notification.svg"),
              ),
              Positioned(
                bottom: 15.0,
                right: 15.0,
                child: SvgPicture.asset("assets/svg/notiNumber.svg"),
              ),
            ],
          ),
          widget.title,
          widget.title1,
        ],
      ),
    );
  }
}
