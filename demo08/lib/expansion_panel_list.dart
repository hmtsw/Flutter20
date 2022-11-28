import 'package:flutter/material.dart';

class ExpansionPanelListDemo extends StatefulWidget {
  const ExpansionPanelListDemo({super.key});

  @override
  State<ExpansionPanelListDemo> createState() => _ExpansionPanelListDemoState();
}

class _ExpansionPanelListDemoState extends State<ExpansionPanelListDemo> {
  List<int> mList = [];
  List<ExpandStateBean> expandStateList = [];

  _ExpansionPanelListDemoState() {
    mList = [];
    expandStateList = [];
    for (var i = 0; i < 10; i++) {
      mList.add(i);
      expandStateList.add(ExpandStateBean(i, false));
    }
  }

  _setCurrentIndex(int index, isExpand) {
    setState(() {
      expandStateList.forEach((item) {
        if (item.index == index) {
          item.isOpen = !isExpand;
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("expansion panel list")),
      body: SingleChildScrollView(
        child: ExpansionPanelList(
          expansionCallback: (panelIndex, isExpanded) {
            _setCurrentIndex(panelIndex, isExpanded);
          },
          children: mList.map((index) {
            return ExpansionPanel(
                headerBuilder: (context, isExpanded) {
                  return ListTile(
                    title: Text("this is $index"),
                  );
                },
                body: ListTile(
                  title: Text("expansion $index"),
                ),
                isExpanded: expandStateList[index].isOpen);
          }).toList(),
        ),
      ),
    );
  }
}

class ExpandStateBean {
  var isOpen;
  var index;
  ExpandStateBean(this.index, this.isOpen);
}
