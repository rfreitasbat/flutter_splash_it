import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:split_it/modules/login/model/user_model.dart';
import 'package:split_it/theme/app_theme.dart';

class DetailsSplitPage extends StatefulWidget {
  DetailsSplitPage({Key? key}) : super(key: key);

  @override
  _DetailsSplitPageState createState() => _DetailsSplitPageState();
}

class _DetailsSplitPageState extends State<DetailsSplitPage> {
  double finalValue = -300;

  bool valueCheckBox1 = false;
  bool valueCheckBox2 = false;

  Color checkBoxBackground1 = Colors.grey.shade200;
  Color checkBoxBackground2 = Colors.grey.shade200;

  Color valueColor1 = Colors.red;
  Color valueColor2 = Colors.red;

  void checkBoxOnChange1() {
    if (valueCheckBox1 == true) {
      checkBoxBackground1 = Colors.green.shade100;
      valueColor1 = Colors.green;
      finalValue += 150;
      print(finalValue);
    } else if (valueCheckBox1 == false) {
      checkBoxBackground1 = Colors.grey.shade200;
      valueColor1 = Colors.red;
      finalValue -= 150;
      print(finalValue);
    }
  }

  void checkBoxOnChange2() {
    if (valueCheckBox2 == true) {
      checkBoxBackground2 = Colors.green.shade100;
      valueColor2 = Colors.green;
      finalValue += 150;
      print(finalValue);
    } else if (valueCheckBox2 == false) {
      checkBoxBackground2 = Colors.grey.shade200;
      valueColor2 = Colors.red;
      finalValue -= 150;
      print(finalValue);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),
        title: Text("Churrasco", style: AppTheme.textStyles.titleDetails),
        actions: [
          Icon(
            Icons.delete,
            color: Colors.black,
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: 8,
              color: Colors.grey.shade300,
            ),
            ListTile(
              leading: Text(
                "INTEGRANTES",
                style: AppTheme.textStyles.subTitleDetails,
              ),
            ),
            ListTile(
              leading: Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(10)),
              ),
              title: Text("Você"),
              subtitle: Text(
                "R\$ 150.00",
                style: TextStyle(color: valueColor1),
              ),
              trailing: Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                    color: checkBoxBackground1,
                    borderRadius: BorderRadius.circular(10)),
                child: Checkbox(
                    activeColor: Colors.green,
                    value: valueCheckBox1,
                    onChanged: (bool? change) {
                      setState(() {
                        valueCheckBox1 = change!;
                        checkBoxOnChange1();
                      });
                    }),
              ),
            ),
            ListTile(
              leading: Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(10)),
              ),
              title: Text("Alex Buddel"),
              subtitle: Text(
                "R\$ 150.00",
                style: TextStyle(color: valueColor2),
              ),
              trailing: Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                    color: checkBoxBackground2,
                    borderRadius: BorderRadius.circular(10)),
                child: Checkbox(
                    activeColor: Colors.green,
                    value: valueCheckBox2,
                    onChanged: (bool? change) {
                      setState(() {
                        valueCheckBox2 = change!;
                        checkBoxOnChange2();
                      });
                    }),
              ),
            ),
            Container(
              height: 8,
              color: Colors.grey.shade300,
            ),
            ListTile(
              leading: Text(
                "ÍTENS",
                style: AppTheme.textStyles.subTitleDetails,
              ),
            ),
            Container(
              height: 300,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      height: 2,
                      color: Colors.grey.shade300,
                    ),
                    ListTile(
                      title: Text(
                        "Picanha",
                        style: AppTheme.textStyles.subTitleDetails,
                      ),
                      trailing: Text(
                        "R\$ 70,00",
                        style: AppTheme.textStyles.subTitleDetails,
                      ),
                    ),
                    Container(
                      height: 2,
                      color: Colors.grey.shade300,
                    ),
                    ListTile(
                      title: Text(
                        "Linguicinha",
                        style: AppTheme.textStyles.subTitleDetails,
                      ),
                      trailing: Text(
                        "R\$ 50,00",
                        style: AppTheme.textStyles.subTitleDetails,
                      ),
                    ),
                    Container(
                      height: 2,
                      color: Colors.grey.shade300,
                    ),
                    ListTile(
                      title: Text("Carvão",
                          style: AppTheme.textStyles.subTitleDetails),
                      trailing: Text(
                        "R\$ 70,00",
                        style: AppTheme.textStyles.subTitleDetails,
                      ),
                    ),
                    Container(
                      height: 2,
                      color: Colors.grey.shade300,
                    ),
                    ListTile(
                      title: Text("Cerveja",
                          style: AppTheme.textStyles.subTitleDetails),
                      trailing: Text("R\$ 70,00",
                          style: AppTheme.textStyles.subTitleDetails),
                    ),
                    Container(
                      height: 2,
                      color: Colors.grey.shade300,
                    ),
                    ListTile(
                      title: Text("Pãozinho de Alho",
                          style: AppTheme.textStyles.subTitleDetails),
                      trailing: Text("R\$ 40,00",
                          style: AppTheme.textStyles.subTitleDetails),
                    ),
                    Container(
                      height: 2,
                      color: Colors.grey.shade300,
                    ),
                    ListTile(
                      title: Text("Total",
                          style: AppTheme.textStyles.subTitleDetails),
                      trailing: Text("R\$ 360,00",
                          style: AppTheme.textStyles.subTitleDetails),
                    ),
                  ],
                ),
              ),
            ),
            if (finalValue < 0) ...[
              ListTile(
                trailing: Text(
                  "Faltam ${NumberFormat.simpleCurrency(locale: 'pt_BR').format(finalValue)}",
                  style: AppTheme.textStyles.negativeDetails,
                ),
              ),
            ] else ...[
              Container()
            ]
          ],
        ),
      ),
    );
  }
}
