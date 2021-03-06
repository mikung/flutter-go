/**
 * Created with Android Studio.
 * User: sanfan.hx
 * Date: 2019/1/6
 * Time: 下午17:08
 * email: sanfan.hx@alibaba-inc.com
 * tartget: SnackBarAction 的示例
 */

import 'package:flutter/material.dart';


class SnackBarActionDemo extends StatefulWidget {
  _Demo createState() => _Demo();
}

class _Demo extends State<SnackBarActionDemo> {
  Widget build(BuildContext context) {
      return new Center(
        child: new Column(
          children: <Widget>[
            new GestureDetector(
              onTap: () {
                final snackBar = new SnackBar(
                  content: new Text('这是一个SnackBar, 右侧有SnackBarAction, 3秒后消失'),
                  backgroundColor:Color(0xffc91b3a),
                  action: new SnackBarAction( // 提示信息上添加一个撤消的按钮
                    textColor:Colors.white,
                    label: '撤消',
                    onPressed: () {
                      // Some code to undo the change!
                    },
                  ),
                  duration:Duration(seconds: 3),// 持续时间
                  //animation,
                );
                Scaffold.of(context).showSnackBar(snackBar);
              },
             
              child: new Text('点我显示有action的SnackBar'),
            ),
            new GestureDetector(
              onTap: () async {
                final snackBar = new SnackBar(
                  content: new Text('右侧无SnackBarAction, 3秒后消失'),
                  backgroundColor:Color(0xffc91b3a),
                  duration:Duration(seconds: 3),// 持续时间
                  //animation,
                );
                Scaffold.of(context).showSnackBar(snackBar);
              },
              child: new Text('点我显示无SnackBarAction的SnackBar'),
            ),
          ],
        )
    );
  }

}
