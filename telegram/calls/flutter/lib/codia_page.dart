import 'package:flutter/material.dart';
import 'package:grouped_list/grouped_list.dart';

class CodiaPage extends StatefulWidget {
  CodiaPage({super.key});

  @override
  State<StatefulWidget> createState() => _CodiaPage();
}

class _CodiaPage extends State<CodiaPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Container(
        height: 812,
        decoration: BoxDecoration(
          color: const Color(0xffefeff4),
        ),
        child: Stack(
          children: [
            Positioned(
              left: 0,
              width: 375,
              top: 88,
              height: 50,
              child: Stack(
                children: [
                  Positioned(
                    left: 0,
                    width: 375,
                    top: 0,
                    height: 50,
                    child: Container(
                      width: 375,
                      height: 50,
                      decoration: BoxDecoration(
                        color: const Color(0xffffffff),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 86,
                    top: 5,
                    child: Text(
                      'Martin Randolph',
                      textAlign: TextAlign.left,
                      style: TextStyle(decoration: TextDecoration.none, fontSize: 17, color: const Color(0xff000000), fontFamily: 'SFProText-Regular', fontWeight: FontWeight.normal),
                      maxLines: 9999,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Positioned(
                    left: 86,
                    top: 27,
                    child: Text(
                      'Outgoing (2 min)',
                      textAlign: TextAlign.left,
                      style: TextStyle(decoration: TextDecoration.none, fontSize: 14, color: const Color(0xff8e8e93), fontFamily: 'SFProText-Regular', fontWeight: FontWeight.normal),
                      maxLines: 9999,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Positioned(
                    left: 34,
                    width: 40,
                    top: 5,
                    height: 40,
                    child: Image.asset('images/imageView14_06742.png', width: 40, height: 40, fit: BoxFit.cover,),
                  ),
                  Positioned(
                    left: 292,
                    top: 15,
                    child: Text(
                      '10/13',
                      textAlign: TextAlign.right,
                      style: TextStyle(decoration: TextDecoration.none, fontSize: 15, color: const Color(0xff8e8e93), fontFamily: 'SFProText-Regular', fontWeight: FontWeight.normal),
                      maxLines: 9999,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Positioned(
                    left: 11,
                    width: 13,
                    top: 18.5,
                    height: 13,
                    child: Image.asset('images/imageView15_6744.png', width: 13, height: 13,),
                  ),
                  Positioned(
                    left: 337,
                    width: 22,
                    top: 14,
                    height: 22,
                    child: Image.asset('images/imageView16_6748.png', width: 22, height: 22,),
                  ),
                ],
              ),
            ),
            Positioned(
              left: 0,
              width: 375,
              top: 288,
              height: 50,
              child: Stack(
                children: [
                  Positioned(
                    left: 0,
                    width: 375,
                    top: 0,
                    height: 50,
                    child: Container(
                      width: 375,
                      height: 50,
                      decoration: BoxDecoration(
                        color: const Color(0xffffffff),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 86,
                    top: 5,
                    child: Text(
                      'Zack John',
                      textAlign: TextAlign.left,
                      style: TextStyle(decoration: TextDecoration.none, fontSize: 17, color: const Color(0xff000000), fontFamily: 'SFProText-Regular', fontWeight: FontWeight.normal),
                      maxLines: 9999,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Positioned(
                    left: 86,
                    top: 27,
                    child: Text(
                      'Incoming',
                      textAlign: TextAlign.left,
                      style: TextStyle(decoration: TextDecoration.none, fontSize: 14, color: const Color(0xff8e8e93), fontFamily: 'SFProText-Regular', fontWeight: FontWeight.normal),
                      maxLines: 9999,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Positioned(
                    left: 34,
                    width: 40,
                    top: 5,
                    height: 40,
                    child: Image.asset('images/imageView17_06758.png', width: 40, height: 40, fit: BoxFit.cover,),
                  ),
                  Positioned(
                    left: 296,
                    top: 15,
                    child: Text(
                      '9/24',
                      textAlign: TextAlign.right,
                      style: TextStyle(decoration: TextDecoration.none, fontSize: 15, color: const Color(0xff8e8e93), fontFamily: 'SFProText-Regular', fontWeight: FontWeight.normal),
                      maxLines: 9999,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Positioned(
                    left: 337,
                    width: 22,
                    top: 14,
                    height: 22,
                    child: Image.asset('images/imageView18_6760.png', width: 22, height: 22,),
                  ),
                ],
              ),
            ),
            Positioned(
              left: 0,
              width: 375,
              top: 488,
              height: 50,
              child: Stack(
                children: [
                  Positioned(
                    left: 0,
                    width: 375,
                    top: 0,
                    height: 50,
                    child: Container(
                      width: 375,
                      height: 50,
                      decoration: BoxDecoration(
                        color: const Color(0xffffffff),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 86,
                    top: 5,
                    child: Text(
                      'Martha Craig',
                      textAlign: TextAlign.left,
                      style: TextStyle(decoration: TextDecoration.none, fontSize: 17, color: const Color(0xff000000), fontFamily: 'SFProText-Regular', fontWeight: FontWeight.normal),
                      maxLines: 9999,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Positioned(
                    left: 86,
                    top: 27,
                    child: Text(
                      'Icoming',
                      textAlign: TextAlign.left,
                      style: TextStyle(decoration: TextDecoration.none, fontSize: 14, color: const Color(0xff8e8e93), fontFamily: 'SFProText-Regular', fontWeight: FontWeight.normal),
                      maxLines: 9999,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Positioned(
                    left: 34,
                    width: 40,
                    top: 5,
                    height: 40,
                    child: Image.asset('images/imageView19_06770.png', width: 40, height: 40, fit: BoxFit.cover,),
                  ),
                  Positioned(
                    left: 298,
                    top: 15,
                    child: Text(
                      '9/10',
                      textAlign: TextAlign.right,
                      style: TextStyle(decoration: TextDecoration.none, fontSize: 15, color: const Color(0xff8e8e93), fontFamily: 'SFProText-Regular', fontWeight: FontWeight.normal),
                      maxLines: 9999,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Positioned(
                    left: 337,
                    width: 22,
                    top: 14,
                    height: 22,
                    child: Image.asset('images/imageView20_6772.png', width: 22, height: 22,),
                  ),
                ],
              ),
            ),
            Positioned(
              left: 0,
              width: 375,
              top: 188,
              height: 50,
              child: Stack(
                children: [
                  Positioned(
                    left: 0,
                    width: 375,
                    top: 0,
                    height: 50,
                    child: Container(
                      width: 375,
                      height: 50,
                      decoration: BoxDecoration(
                        color: const Color(0xffffffff),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 86,
                    top: 5,
                    child: Text(
                      'Kieron Dotson',
                      textAlign: TextAlign.left,
                      style: TextStyle(decoration: TextDecoration.none, fontSize: 17, color: const Color(0xff000000), fontFamily: 'SFProText-Regular', fontWeight: FontWeight.normal),
                      maxLines: 9999,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Positioned(
                    left: 86,
                    top: 27,
                    child: Text(
                      'Outgoing',
                      textAlign: TextAlign.left,
                      style: TextStyle(decoration: TextDecoration.none, fontSize: 14, color: const Color(0xff8e8e93), fontFamily: 'SFProText-Regular', fontWeight: FontWeight.normal),
                      maxLines: 9999,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Positioned(
                    left: 34,
                    width: 40,
                    top: 5,
                    height: 40,
                    child: Image.asset('images/imageView21_06782.png', width: 40, height: 40, fit: BoxFit.cover,),
                  ),
                  Positioned(
                    left: 298,
                    top: 15,
                    child: Text(
                      '10/8',
                      textAlign: TextAlign.right,
                      style: TextStyle(decoration: TextDecoration.none, fontSize: 15, color: const Color(0xff8e8e93), fontFamily: 'SFProText-Regular', fontWeight: FontWeight.normal),
                      maxLines: 9999,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Positioned(
                    left: 11,
                    width: 13,
                    top: 18.5,
                    height: 13,
                    child: Image.asset('images/imageView22_6784.png', width: 13, height: 13,),
                  ),
                  Positioned(
                    left: 337,
                    width: 22,
                    top: 14,
                    height: 22,
                    child: Image.asset('images/imageView23_6788.png', width: 22, height: 22,),
                  ),
                ],
              ),
            ),
            Positioned(
              left: 0,
              width: 375,
              top: 388,
              height: 50,
              child: Stack(
                children: [
                  Positioned(
                    left: 0,
                    width: 375,
                    top: 0,
                    height: 50,
                    child: Container(
                      width: 375,
                      height: 50,
                      decoration: BoxDecoration(
                        color: const Color(0xffffffff),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 86,
                    top: 5,
                    child: Text(
                      'Kieron Dotson',
                      textAlign: TextAlign.left,
                      style: TextStyle(decoration: TextDecoration.none, fontSize: 17, color: const Color(0xff000000), fontFamily: 'SFProText-Regular', fontWeight: FontWeight.normal),
                      maxLines: 9999,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Positioned(
                    left: 86,
                    top: 27,
                    child: Text(
                      'Outgoing',
                      textAlign: TextAlign.left,
                      style: TextStyle(decoration: TextDecoration.none, fontSize: 14, color: const Color(0xff8e8e93), fontFamily: 'SFProText-Regular', fontWeight: FontWeight.normal),
                      maxLines: 9999,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Positioned(
                    left: 34,
                    width: 40,
                    top: 5,
                    height: 40,
                    child: Image.asset('images/imageView24_06798.png', width: 40, height: 40, fit: BoxFit.cover,),
                  ),
                  Positioned(
                    left: 299,
                    top: 15,
                    child: Text(
                      '9/15',
                      textAlign: TextAlign.right,
                      style: TextStyle(decoration: TextDecoration.none, fontSize: 15, color: const Color(0xff8e8e93), fontFamily: 'SFProText-Regular', fontWeight: FontWeight.normal),
                      maxLines: 9999,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Positioned(
                    left: 11,
                    width: 13,
                    top: 18.5,
                    height: 13,
                    child: Image.asset('images/imageView25_6800.png', width: 13, height: 13,),
                  ),
                  Positioned(
                    left: 337,
                    width: 22,
                    top: 14,
                    height: 22,
                    child: Image.asset('images/imageView26_6804.png', width: 22, height: 22,),
                  ),
                ],
              ),
            ),
            Positioned(
              left: 0,
              width: 375,
              top: 588,
              height: 50,
              child: Stack(
                children: [
                  Positioned(
                    left: 0,
                    width: 375,
                    top: 0,
                    height: 50,
                    child: Container(
                      width: 375,
                      height: 50,
                      decoration: BoxDecoration(
                        color: const Color(0xffffffff),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 86,
                    top: 5,
                    child: Text(
                      'Maisy Humphrey',
                      textAlign: TextAlign.left,
                      style: TextStyle(decoration: TextDecoration.none, fontSize: 17, color: const Color(0xff000000), fontFamily: 'SFProText-Regular', fontWeight: FontWeight.normal),
                      maxLines: 9999,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Positioned(
                    left: 86,
                    top: 27,
                    child: Text(
                      'Outgoing',
                      textAlign: TextAlign.left,
                      style: TextStyle(decoration: TextDecoration.none, fontSize: 14, color: const Color(0xff8e8e93), fontFamily: 'SFProText-Regular', fontWeight: FontWeight.normal),
                      maxLines: 9999,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Positioned(
                    left: 34,
                    width: 40,
                    top: 5,
                    height: 40,
                    child: Image.asset('images/imageView27_06814.png', width: 40, height: 40, fit: BoxFit.cover,),
                  ),
                  Positioned(
                    left: 305,
                    top: 15,
                    child: Text(
                      '9/6',
                      textAlign: TextAlign.right,
                      style: TextStyle(decoration: TextDecoration.none, fontSize: 15, color: const Color(0xff8e8e93), fontFamily: 'SFProText-Regular', fontWeight: FontWeight.normal),
                      maxLines: 9999,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Positioned(
                    left: 11,
                    width: 13,
                    top: 18.5,
                    height: 13,
                    child: Image.asset('images/imageView28_6816.png', width: 13, height: 13,),
                  ),
                  Positioned(
                    left: 337,
                    width: 22,
                    top: 14,
                    height: 22,
                    child: Image.asset('images/imageView29_6820.png', width: 22, height: 22,),
                  ),
                ],
              ),
            ),
            Positioned(
              left: 0,
              width: 375,
              top: 138,
              height: 50,
              child: Stack(
                children: [
                  Positioned(
                    left: 0,
                    width: 375,
                    top: 0,
                    height: 50,
                    child: Container(
                      width: 375,
                      height: 50,
                      decoration: BoxDecoration(
                        color: const Color(0xffffffff),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 86,
                    top: 5,
                    child: Text(
                      'Karen Castillo',
                      textAlign: TextAlign.left,
                      style: TextStyle(decoration: TextDecoration.none, fontSize: 17, color: const Color(0xff000000), fontFamily: 'SFProText-Regular', fontWeight: FontWeight.normal),
                      maxLines: 9999,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Positioned(
                    left: 86,
                    top: 27,
                    child: Text(
                      'Outgoing, Incoming',
                      textAlign: TextAlign.left,
                      style: TextStyle(decoration: TextDecoration.none, fontSize: 14, color: const Color(0xff8e8e93), fontFamily: 'SFProText-Regular', fontWeight: FontWeight.normal),
                      maxLines: 9999,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Positioned(
                    left: 34,
                    width: 40,
                    top: 5,
                    height: 40,
                    child: Image.asset('images/imageView30_06830.png', width: 40, height: 40, fit: BoxFit.cover,),
                  ),
                  Positioned(
                    left: 294,
                    top: 15,
                    child: Text(
                      '10/11',
                      textAlign: TextAlign.right,
                      style: TextStyle(decoration: TextDecoration.none, fontSize: 15, color: const Color(0xff8e8e93), fontFamily: 'SFProText-Regular', fontWeight: FontWeight.normal),
                      maxLines: 9999,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Positioned(
                    left: 11,
                    width: 13,
                    top: 18.5,
                    height: 13,
                    child: Image.asset('images/imageView31_6832.png', width: 13, height: 13,),
                  ),
                  Positioned(
                    left: 337,
                    width: 22,
                    top: 14,
                    height: 22,
                    child: Image.asset('images/imageView32_6836.png', width: 22, height: 22,),
                  ),
                ],
              ),
            ),
            Positioned(
              left: 0,
              width: 375,
              top: 338,
              height: 50,
              child: Stack(
                children: [
                  Positioned(
                    left: 0,
                    width: 375,
                    top: 0,
                    height: 50,
                    child: Container(
                      width: 375,
                      height: 50,
                      decoration: BoxDecoration(
                        color: const Color(0xffffffff),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 86,
                    top: 5,
                    child: Text(
                      'Kieron Dotson',
                      textAlign: TextAlign.left,
                      style: TextStyle(decoration: TextDecoration.none, fontSize: 17, color: const Color(0xff000000), fontFamily: 'SFProText-Regular', fontWeight: FontWeight.normal),
                      maxLines: 9999,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Positioned(
                    left: 86,
                    top: 27,
                    child: Text(
                      'Outgoing (4 min)',
                      textAlign: TextAlign.left,
                      style: TextStyle(decoration: TextDecoration.none, fontSize: 14, color: const Color(0xff8e8e93), fontFamily: 'SFProText-Regular', fontWeight: FontWeight.normal),
                      maxLines: 9999,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Positioned(
                    left: 34,
                    width: 40,
                    top: 5,
                    height: 40,
                    child: Image.asset('images/imageView33_06846.png', width: 40, height: 40, fit: BoxFit.cover,),
                  ),
                  Positioned(
                    left: 298,
                    top: 15,
                    child: Text(
                      '9/16',
                      textAlign: TextAlign.right,
                      style: TextStyle(decoration: TextDecoration.none, fontSize: 15, color: const Color(0xff8e8e93), fontFamily: 'SFProText-Regular', fontWeight: FontWeight.normal),
                      maxLines: 9999,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Positioned(
                    left: 11,
                    width: 13,
                    top: 18.5,
                    height: 13,
                    child: Image.asset('images/imageView34_6848.png', width: 13, height: 13,),
                  ),
                  Positioned(
                    left: 337,
                    width: 22,
                    top: 14,
                    height: 22,
                    child: Image.asset('images/imageView35_6852.png', width: 22, height: 22,),
                  ),
                ],
              ),
            ),
            Positioned(
              left: 0,
              width: 375,
              top: 538,
              height: 50,
              child: Stack(
                children: [
                  Positioned(
                    left: 0,
                    width: 375,
                    top: 0,
                    height: 50,
                    child: Container(
                      width: 375,
                      height: 50,
                      decoration: BoxDecoration(
                        color: const Color(0xffffffff),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 86,
                    top: 5,
                    child: Text(
                      'Martha Craig',
                      textAlign: TextAlign.left,
                      style: TextStyle(decoration: TextDecoration.none, fontSize: 17, color: const Color(0xff000000), fontFamily: 'SFProText-Regular', fontWeight: FontWeight.normal),
                      maxLines: 9999,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Positioned(
                    left: 86,
                    top: 27,
                    child: Text(
                      'Outgoing',
                      textAlign: TextAlign.left,
                      style: TextStyle(decoration: TextDecoration.none, fontSize: 14, color: const Color(0xff8e8e93), fontFamily: 'SFProText-Regular', fontWeight: FontWeight.normal),
                      maxLines: 9999,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Positioned(
                    left: 34,
                    width: 40,
                    top: 5,
                    height: 40,
                    child: Image.asset('images/imageView36_06862.png', width: 40, height: 40, fit: BoxFit.cover,),
                  ),
                  Positioned(
                    left: 298,
                    top: 15,
                    child: Text(
                      '9/10',
                      textAlign: TextAlign.right,
                      style: TextStyle(decoration: TextDecoration.none, fontSize: 15, color: const Color(0xff8e8e93), fontFamily: 'SFProText-Regular', fontWeight: FontWeight.normal),
                      maxLines: 9999,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Positioned(
                    left: 11,
                    width: 13,
                    top: 18.5,
                    height: 13,
                    child: Image.asset('images/imageView37_6864.png', width: 13, height: 13,),
                  ),
                  Positioned(
                    left: 337,
                    width: 22,
                    top: 14,
                    height: 22,
                    child: Image.asset('images/imageView38_6868.png', width: 22, height: 22,),
                  ),
                ],
              ),
            ),
            Positioned(
              left: 0,
              width: 375,
              top: 238,
              height: 50,
              child: Stack(
                children: [
                  Positioned(
                    left: 0,
                    width: 375,
                    top: 0,
                    height: 50,
                    child: Container(
                      width: 375,
                      height: 50,
                      decoration: BoxDecoration(
                        color: const Color(0xffffffff),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 86,
                    top: 5,
                    child: Text(
                      'Karen Castillo',
                      textAlign: TextAlign.left,
                      style: TextStyle(decoration: TextDecoration.none, fontSize: 17, color: const Color(0xfffe3b30), fontFamily: 'SFProText-Regular', fontWeight: FontWeight.normal),
                      maxLines: 9999,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Positioned(
                    left: 86,
                    top: 27,
                    child: Text(
                      'Missed',
                      textAlign: TextAlign.left,
                      style: TextStyle(decoration: TextDecoration.none, fontSize: 14, color: const Color(0xff8e8e93), fontFamily: 'SFProText-Regular', fontWeight: FontWeight.normal),
                      maxLines: 9999,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Positioned(
                    left: 34,
                    width: 40,
                    top: 5,
                    height: 40,
                    child: Image.asset('images/imageView39_06878.png', width: 40, height: 40, fit: BoxFit.cover,),
                  ),
                  Positioned(
                    left: 296,
                    top: 15,
                    child: Text(
                      '9/30',
                      textAlign: TextAlign.right,
                      style: TextStyle(decoration: TextDecoration.none, fontSize: 15, color: const Color(0xff8e8e93), fontFamily: 'SFProText-Regular', fontWeight: FontWeight.normal),
                      maxLines: 9999,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Positioned(
                    left: 337,
                    width: 22,
                    top: 14,
                    height: 22,
                    child: Image.asset('images/imageView40_6880.png', width: 22, height: 22,),
                  ),
                ],
              ),
            ),
            Positioned(
              left: 0,
              width: 375,
              top: 438,
              height: 50,
              child: Stack(
                children: [
                  Positioned(
                    left: 0,
                    width: 375,
                    top: 0,
                    height: 50,
                    child: Container(
                      width: 375,
                      height: 50,
                      decoration: BoxDecoration(
                        color: const Color(0xffffffff),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 86,
                    top: 5,
                    child: Text(
                      'Jamie Franco',
                      textAlign: TextAlign.left,
                      style: TextStyle(decoration: TextDecoration.none, fontSize: 17, color: const Color(0xff000000), fontFamily: 'SFProText-Regular', fontWeight: FontWeight.normal),
                      maxLines: 9999,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Positioned(
                    left: 86,
                    top: 27,
                    child: Text(
                      'Icoming (2 min)',
                      textAlign: TextAlign.left,
                      style: TextStyle(decoration: TextDecoration.none, fontSize: 14, color: const Color(0xff8e8e93), fontFamily: 'SFProText-Regular', fontWeight: FontWeight.normal),
                      maxLines: 9999,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Positioned(
                    left: 34,
                    width: 40,
                    top: 5,
                    height: 40,
                    child: Image.asset('images/imageView41_06890.png', width: 40, height: 40, fit: BoxFit.cover,),
                  ),
                  Positioned(
                    left: 299,
                    top: 15,
                    child: Text(
                      '9/15',
                      textAlign: TextAlign.right,
                      style: TextStyle(decoration: TextDecoration.none, fontSize: 15, color: const Color(0xff8e8e93), fontFamily: 'SFProText-Regular', fontWeight: FontWeight.normal),
                      maxLines: 9999,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Positioned(
                    left: 337,
                    width: 22,
                    top: 14,
                    height: 22,
                    child: Image.asset('images/imageView42_6892.png', width: 22, height: 22,),
                  ),
                ],
              ),
            ),
            Positioned(
              left: 0,
              width: 375,
              top: 638,
              height: 50,
              child: Stack(
                children: [
                  Positioned(
                    left: 0,
                    width: 375,
                    top: 0,
                    height: 50,
                    child: Container(
                      width: 375,
                      height: 50,
                      decoration: BoxDecoration(
                        color: const Color(0xffffffff),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 86,
                    top: 5,
                    child: Text(
                      'Jamie Franco',
                      textAlign: TextAlign.left,
                      style: TextStyle(decoration: TextDecoration.none, fontSize: 17, color: const Color(0xfffe3b30), fontFamily: 'SFProText-Regular', fontWeight: FontWeight.normal),
                      maxLines: 9999,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Positioned(
                    left: 86,
                    top: 27,
                    child: Text(
                      'Missed',
                      textAlign: TextAlign.left,
                      style: TextStyle(decoration: TextDecoration.none, fontSize: 14, color: const Color(0xff8e8e93), fontFamily: 'SFProText-Regular', fontWeight: FontWeight.normal),
                      maxLines: 9999,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Positioned(
                    left: 34,
                    width: 40,
                    top: 5,
                    height: 40,
                    child: Image.asset('images/imageView43_06902.png', width: 40, height: 40, fit: BoxFit.cover,),
                  ),
                  Positioned(
                    left: 297,
                    top: 15,
                    child: Text(
                      '8/22',
                      textAlign: TextAlign.right,
                      style: TextStyle(decoration: TextDecoration.none, fontSize: 15, color: const Color(0xff8e8e93), fontFamily: 'SFProText-Regular', fontWeight: FontWeight.normal),
                      maxLines: 9999,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Positioned(
                    left: 337,
                    width: 22,
                    top: 14,
                    height: 22,
                    child: Image.asset('images/imageView44_6904.png', width: 22, height: 22,),
                  ),
                ],
              ),
            ),
            Positioned(
              left: 0,
              width: 375,
              top: 688,
              height: 50,
              child: Stack(
                children: [
                  Positioned(
                    left: 0,
                    width: 375,
                    top: 0,
                    height: 50,
                    child: Container(
                      width: 375,
                      height: 50,
                      decoration: BoxDecoration(
                        color: const Color(0xffffffff),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 86,
                    top: 5,
                    child: Text(
                      'Maisy Humphrey',
                      textAlign: TextAlign.left,
                      style: TextStyle(decoration: TextDecoration.none, fontSize: 17, color: const Color(0xff000000), fontFamily: 'SFProText-Regular', fontWeight: FontWeight.normal),
                      maxLines: 9999,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Positioned(
                    left: 86,
                    top: 27,
                    child: Text(
                      'Outgoing (3 min)',
                      textAlign: TextAlign.left,
                      style: TextStyle(decoration: TextDecoration.none, fontSize: 14, color: const Color(0xff8e8e93), fontFamily: 'SFProText-Regular', fontWeight: FontWeight.normal),
                      maxLines: 9999,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Positioned(
                    left: 34,
                    width: 40,
                    top: 5,
                    height: 40,
                    child: Image.asset('images/imageView45_06914.png', width: 40, height: 40, fit: BoxFit.cover,),
                  ),
                  Positioned(
                    left: 296,
                    top: 15,
                    child: Text(
                      '8/20',
                      textAlign: TextAlign.right,
                      style: TextStyle(decoration: TextDecoration.none, fontSize: 15, color: const Color(0xff8e8e93), fontFamily: 'SFProText-Regular', fontWeight: FontWeight.normal),
                      maxLines: 9999,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Positioned(
                    left: 11,
                    width: 13,
                    top: 18.5,
                    height: 13,
                    child: Image.asset('images/imageView46_6916.png', width: 13, height: 13,),
                  ),
                  Positioned(
                    left: 337,
                    width: 22,
                    top: 14,
                    height: 22,
                    child: Image.asset('images/imageView47_6920.png', width: 22, height: 22,),
                  ),
                ],
              ),
            ),
            Positioned(
              left: 86,
              width: 289,
              top: 137.5,
              height: 1,
              child: Image.asset('images/imageView1_6926.png', width: 289, height: 1,),
            ),
            Positioned(
              left: 86,
              width: 289,
              top: 187.5,
              height: 1,
              child: Image.asset('images/imageView2_6927.png', width: 289, height: 1,),
            ),
            Positioned(
              left: 86,
              width: 289,
              top: 237.5,
              height: 1,
              child: Image.asset('images/imageView3_6928.png', width: 289, height: 1,),
            ),
            Positioned(
              left: 86,
              width: 289,
              top: 287.5,
              height: 1,
              child: Image.asset('images/imageView4_6929.png', width: 289, height: 1,),
            ),
            Positioned(
              left: 86,
              width: 289,
              top: 337.5,
              height: 1,
              child: Image.asset('images/imageView5_6930.png', width: 289, height: 1,),
            ),
            Positioned(
              left: 86,
              width: 289,
              top: 387.5,
              height: 1,
              child: Image.asset('images/imageView6_6931.png', width: 289, height: 1,),
            ),
            Positioned(
              left: 86,
              width: 289,
              top: 437.5,
              height: 1,
              child: Image.asset('images/imageView7_6932.png', width: 289, height: 1,),
            ),
            Positioned(
              left: 86,
              width: 289,
              top: 487.5,
              height: 1,
              child: Image.asset('images/imageView8_6933.png', width: 289, height: 1,),
            ),
            Positioned(
              left: 86,
              width: 289,
              top: 537.5,
              height: 1,
              child: Image.asset('images/imageView9_6934.png', width: 289, height: 1,),
            ),
            Positioned(
              left: 86,
              width: 289,
              top: 587.5,
              height: 1,
              child: Image.asset('images/imageView10_6935.png', width: 289, height: 1,),
            ),
            Positioned(
              left: 86,
              width: 289,
              top: 637.5,
              height: 1,
              child: Image.asset('images/imageView11_6936.png', width: 289, height: 1,),
            ),
            Positioned(
              left: 86,
              width: 289,
              top: 687.5,
              height: 1,
              child: Image.asset('images/imageView12_6937.png', width: 289, height: 1,),
            ),
            Positioned(
              left: 86,
              width: 289,
              top: 737.5,
              height: 1,
              child: Image.asset('images/imageView13_6938.png', width: 289, height: 1,),
            ),
            Positioned(
              left: 0,
              width: 375,
              top: 729,
              height: 83,
              child: Stack(
                children: [
                  Positioned(
                    left: 0,
                    width: 375,
                    top: 0,
                    height: 83,
                    child: Container(
                      width: 375,
                      height: 83,
                      decoration: BoxDecoration(
                        color: const Color(0xfff6f6f6),
                        boxShadow: const [BoxShadow(color: const Color(0xffa6a6aa), offset: Offset(0, -0.33), blurRadius: 0),],
                      ),
                    ),
                  ),
                  Positioned(
                    left: 281,
                    width: 94,
                    top: 0,
                    height: 49,
                    child: Stack(
                      children: [
                        Positioned(
                          left: 27,
                          top: 35,
                          child: Text(
                            'Settings',
                            textAlign: TextAlign.center,
                            style: TextStyle(decoration: TextDecoration.none, fontSize: 10, color: const Color(0xa5545458), fontFamily: 'SFProText-Medium', fontWeight: FontWeight.normal),
                            maxLines: 9999,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        Positioned(
                          left: 35,
                          width: 25,
                          top: 6,
                          height: 25,
                          child: Image.asset('images/imageView_06944.png', width: 25, height: 25, fit: BoxFit.cover,),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    left: 187,
                    width: 94,
                    top: 0,
                    height: 49,
                    child: Stack(
                      children: [
                        Positioned(
                          left: 33,
                          top: 35,
                          child: Text(
                            'Chats',
                            textAlign: TextAlign.center,
                            style: TextStyle(decoration: TextDecoration.none, fontSize: 10, color: const Color(0xa5545458), fontFamily: 'SFProText-Medium', fontWeight: FontWeight.normal),
                            maxLines: 9999,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        Positioned(
                          left: 33,
                          width: 29,
                          top: 6,
                          height: 26,
                          child: Image.asset('images/imageView48_6948.png', width: 29, height: 26,),
                        ),
                        Positioned(
                          left: 54,
                          width: 18,
                          top: 2,
                          height: 18,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                width: 18,
                                top: 0,
                                height: 18,
                                child: Image.asset('images/imageView49_6956.png', width: 18, height: 18,),
                              ),
                              Positioned(
                                left: 5,
                                top: 1,
                                child: Text(
                                  '2',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(decoration: TextDecoration.none, fontSize: 13, color: const Color(0xfffefffe), fontFamily: 'SFProText-Regular', fontWeight: FontWeight.normal),
                                  maxLines: 9999,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    left: 94,
                    width: 94,
                    top: 0,
                    height: 49,
                    child: Stack(
                      children: [
                        Positioned(
                          left: 35,
                          top: 35,
                          child: Text(
                            'Calls',
                            textAlign: TextAlign.center,
                            style: TextStyle(decoration: TextDecoration.none, fontSize: 10, color: const Color(0xff007aff), fontFamily: 'SFProText-Medium', fontWeight: FontWeight.normal),
                            maxLines: 9999,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        Positioned(
                          left: 31,
                          width: 29,
                          top: 5,
                          height: 29,
                          child: Image.asset('images/imageView50_6961.png', width: 29, height: 29,),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    left: 0,
                    width: 94,
                    top: 0,
                    height: 49,
                    child: Stack(
                      children: [
                        Positioned(
                          left: 35,
                          width: 25,
                          top: 5,
                          height: 25,
                          child: Image.asset('images/imageView51_6965.png', width: 25, height: 25,),
                        ),
                        Positioned(
                          left: 25,
                          top: 35,
                          child: Text(
                            'Contacts',
                            textAlign: TextAlign.center,
                            style: TextStyle(decoration: TextDecoration.none, fontSize: 10, color: const Color(0xa5545458), fontFamily: 'SFProText-Medium', fontWeight: FontWeight.normal),
                            maxLines: 9999,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              left: 0,
              width: 375,
              top: 778,
              height: 34,
              child: Stack(
                children: [
                  Positioned(
                    left: 121,
                    width: 134,
                    bottom: 9,
                    height: 5,
                    child: Container(
                      width: 134,
                      height: 5,
                      decoration: BoxDecoration(
                        color: const Color(0xff060606),
                        borderRadius: BorderRadius.circular(100),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              left: 0,
              width: 375,
              top: 0,
              height: 88,
              child: Stack(
                children: [
                  Positioned(
                    left: 0,
                    width: 375,
                    top: 0,
                    height: 88,
                    child: Container(
                      width: 375,
                      height: 88,
                      decoration: BoxDecoration(
                        color: const Color(0xfff6f6f6),
                        boxShadow: const [BoxShadow(color: const Color(0xffa6a6aa), offset: Offset(0, 0.33), blurRadius: 0),],
                      ),
                    ),
                  ),
                  Positioned(
                    left: 16,
                    top: 54,
                    child: Text(
                      'Edit',
                      textAlign: TextAlign.left,
                      style: TextStyle(decoration: TextDecoration.none, fontSize: 17, color: const Color(0xff037ee5), fontFamily: 'SFProText-Regular', fontWeight: FontWeight.normal),
                      maxLines: 9999,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Positioned(
                    left: 338,
                    width: 22,
                    top: 54,
                    height: 22,
                    child: Image.asset('images/imageView52_6977.png', width: 22, height: 22,),
                  ),
                  Positioned(
                    left: 108,
                    width: 160,
                    top: 50,
                    height: 32,
                    child: Stack(
                      children: [
                        Positioned(
                          left: 0,
                          width: 160,
                          top: 0,
                          height: 32,
                          child: Container(
                            width: 160,
                            height: 32,
                            decoration: BoxDecoration(
                              color: const Color(0x1e767680),
                              borderRadius: BorderRadius.circular(9),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 98.5,
                          width: 43,
                          top: 7,
                          height: 18,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 0,
                                child: Text(
                                  'Missed',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(decoration: TextDecoration.none, fontSize: 13, color: const Color(0xff000000), fontFamily: 'SFProText-Regular', fontWeight: FontWeight.normal),
                                  maxLines: 9999,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          left: 2,
                          width: 76,
                          top: 2,
                          height: 28,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                width: 76,
                                top: 0,
                                height: 28,
                                child: Container(
                                  width: 76,
                                  height: 28,
                                  decoration: BoxDecoration(
                                    color: const Color(0xfff7f7f7),
                                    borderRadius: BorderRadius.circular(8),
                                    boxShadow: const [BoxShadow(color: const Color(0x33000000), offset: Offset(0, 0.5), blurRadius: 1),],
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 30,
                                top: 5,
                                child: Text(
                                  'All',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(decoration: TextDecoration.none, fontSize: 13, color: const Color(0xff000000), fontFamily: 'SFProText-Semibold', fontWeight: FontWeight.normal),
                                  maxLines: 9999,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              left: 0,
              right: 0,
              top: 0,
              height: 44,
              child: Stack(
                children: [
                  Positioned(
                    left: 336,
                    width: 25,
                    top: 18,
                    height: 11,
                    child: Stack(
                      children: [
                        Positioned(
                          right: 3,
                          width: 22,
                          top: 0,
                          height: 10.5,
                          child: Image.asset('images/imageView55_6993.png', width: 22, height: 10.5,),
                        ),
                        Positioned(
                          right: 0.5,
                          width: 1.5,
                          top: 3.5,
                          height: 3.87,
                          child: Image.asset('images/imageView56_6996.png', width: 1.5, height: 3.87,),
                        ),
                        Positioned(
                          right: 5,
                          width: 18,
                          top: 2,
                          height: 6.5,
                          child: Container(
                            width: 18,
                            height: 6.5,
                            decoration: BoxDecoration(
                              color: const Color(0xff060606),
                              borderRadius: BorderRadius.circular(1),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    right: 44.040000000000006,
                    width: 15.27,
                    top: 17.33,
                    height: 10.97,
                    child: Image.asset('images/imageView53_7000.png', width: 15.27, height: 10.97,),
                  ),
                  Positioned(
                    right: 64.32999999999998,
                    width: 17,
                    top: 17.67,
                    height: 10.67,
                    child: Image.asset('images/imageView54_7004.png', width: 17, height: 10.67,),
                  ),
                  Positioned(
                    left: 21,
                    right: 300,
                    top: 14,
                    height: 18,
                    child: Stack(
                      children: [
                        Positioned(
                          left: 0,
                          right: 0,
                          top: 0,
                          child: Text(
                            '9:41',
                            textAlign: TextAlign.center,
                            style: TextStyle(decoration: TextDecoration.none, fontSize: 15, color: const Color(0xff171717), fontFamily: 'SFProText-Semibold', fontWeight: FontWeight.normal),
                            maxLines: 9999,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
