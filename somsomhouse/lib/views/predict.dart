import 'package:flutter/material.dart';
import 'package:somsomhouse/views/map_geumcheon.dart';
import 'package:somsomhouse/views/map_qwangjin.dart';
import 'package:somsomhouse/views/map_songpa.dart';
import 'package:somsomhouse/views/map_yangcheon.dart';
import 'package:somsomhouse/views/map_yeongdeungpo.dart';

class Predict extends StatelessWidget {
  const Predict({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Predict'),
      ),
      body: Center(
        child: InkWell(
          splashColor: Colors.orange,
          child: Image.asset('images/서울시.png'),
          onTapDown: (TapDownDetails details) {
            _handleTapDown(
                context, details.localPosition.dx, details.localPosition.dy);
          },
        ),
      ),
    );
  }

//----function----

  _handleTapDown(BuildContext context, var dx, var dy) {
    // final vm = Provider.of<FinalViewModel>(context, listen: false);
    if ((dx > 79 && dx < 92 && dy > 148 && dy < 184) ||
        (dx > 88 && dx < 114 && dy > 163 && dy < 184) ||
        (dx > 106 && dx < 125 && dy > 143 && dy < 160)) {
      // vm.changeGuName('양천구');
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const Yangcheon(), //양천구로 이동
        ),
      );
    } else if ((dx > 129 && dx < 148 && dy > 160 && dy < 200) ||
        (dx > 152 && dx < 165 && dy > 160 && dy < 178)) {
      // vm.changeGuName('영등포구');
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const Yeongdeungpo(), //영등포구로 이동
        ),
      );
    } else if ((dx > 115 && dx < 141 && dy > 201 && dy < 228) ||
        (dx > 130 && dx < 141 && dy > 227 && dy < 236) ||
        (dx > 142 && dx < 167 && dy > 236 && dy < 247)) {
      // vm.changeGuName('금천구');
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const Geumcheon(), //금천구로 이동
        ),
      );
    } else if ((dx > 250 && dx < 277 && dy > 125 && dy < 158) ||
        (dx > 277 && dx < 287 && dy > 125 && dy < 145)) {
      // vm.changeGuName('광진구');
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const Qwangjin(), //광진구로 이동
        ),
      );
    } else if ((dx > 256 && dx < 291 && dy > 163 && dy < 182) ||
        (dx > 284 && dx < 319 && dy > 191 && dy < 217) ||
        (dx > 284 && dx < 307 && dy > 163 && dy < 217)) {
      // vm.changeGuName('송파구');
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const Songpa(), //송파구로 이동
        ),
      );
    }
  }
}//end
