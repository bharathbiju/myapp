import 'package:flutter/material.dart';
import 'package:flutter_multiselect/flutter_multiselect.dart';
import 'package:myapp/cganalyser.dart';


class InterestPage extends StatefulWidget {
InterestPage(
      {Key key,
      this.language1,
      this.language2,
      this.math,
      this.social,
      this.science})
      : super(key: key);

  var language1, science, math, language2, social;

  @override
  _InterestPageState createState() => _InterestPageState();
}

class _InterestPageState extends State<InterestPage> {
  final GlobalKey<FormState> _formKey = new GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Intrest"),
      ),
      body: Center(
        child: new Form(
          key: _formKey,
          autovalidate: true,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: new MultiSelect(
                    autovalidate: true,
                    initialValue: [],
                    titleText: 'Select your preference',
                    maxLength: 5, // optional
                    validator: (dynamic value) {
                      if (value == null) {
                        return 'Please select one or more option(s)';
                      }
                      return null;
                    },
                    errorText: 'Please select one or more option(s)',
                    dataSource: [
    {"name": "BA ENGLISH", "code": "1"},
    {"name": "BA POLITICAL SCIENCE", "code": "2"},
    {"name": "BA HISTORY", "code": "3"},
    {"name": "BA PSYCHOLOGY", "code": "4"},
    {"name": "BA PHILOSOPHY", "code": "5"},
    {"name": "BA SOCIAL WORK", "code": "6"},
    {"name": "BA ECONOMICS", "code": "7"},
    {"name": "BA ARCHAEOLOGY", "code": "8"},
    {"name": "BA SOCIOLOGY", "code": "9"},
    {"name": "BA GEOGRAPHY", "code": "10"},
    {"name": "BA ANTHROPOLOGY", "code": "11"},
    {"name": "BA LINGUISTICS", "code": "12"},
    {"name": "BA RURAL SCIENCE", "code": "13"},
    {"name": "BA HINDI", "code": "14"},
    {"name": "BA BENGALI", "code": "15"},
    {"name": "BA TAMIL", "code": "16"},
    {"name": "BA MARATHI", "code": "17"},
    {"name": "BA TELUGU", "code": "18"},
    {"name": "BA KANNADA", "code": "19"},
    {"name": "BA MALAYALAM", "code": "20"},
    {"name": "BA ASSAMESE", "code": "21"},
    {"name": "BA BIHARI", "code": "22"},
    {"name": "BA ODIYA", "code": "23"},
    {"name": "BA JOURNALISM", "code": "24"},
    {"name": "BA  PSYCOLOGY", "code": "25"},
    {"name": "BA GERMAN", "code": "26"},
    {"name": "BA FRENCH", "code": "27"},
    {"name": "BA ITALIAN", "code": "28"},
    {"name": "BA HEBREW", "code": "29"},
    {"name": "BA SPANISH", "code": "30"},
    {"name": "BA RUSSIAN", "code": "31"},
    {"name": "BA CHINESE", "code": "32"},
    {"name": "BA JAPANESE", "code": "33"},
    {"name": "BA PHOTOGRAPHY", "code": "34"},
    {"name": "BA KOREAN", "code": "35"},
    {"name": "BA AGRO SCIENCES", "code": "36"},
    {"name": "BA AIRLINES, HOSPITALITY AND CUSTOMER CARE", "code": "37"},
    {"name": "BA ANCIENT HISTORY", "code": "38"},
    {"name": "BA ANCIENT INDIAN CULTURE", "code": "39"},
    {"name": "BA ARABIC", "code": "40"},
    {"name": "BA CINEMATOGRAPHY", "code": "41"},
    {"name": "BA CORPORATE SECRETARYSHIP", "code": "42"},
    {"name": "BA COMPARATIVE RELIGION", "code": "43"},
    {"name": "BA CRIMINOLOGY", "code": "44"},
    {"name": "BA CULINARY ART", "code": "45"},
    {"name": "BA DEFENCE AND STRATEGIC STUDIES", "code": "46"},
    {"name": "BA DRAWING AND PAINTING", "code": "47"},
    {"name": "BA EDUCATION", "code": "48"},
    {"name": "BA PUNJABI", "code": "49"},
    {"name": "BA GUJARATI", "code": "50"},
    {"name": "BBA", "code": "51"},
    {"name": "BSC PCM", "code": "52"},
    {"name": "BSC PHYSICS", "code": "53"},
    {"name": "BSC CHEMISTRY", "code": "54"},
    {"name": "BSC MATHS", "code": "55"},
    {"name": "BSC ZOOLOGY", "code": "56"},
    {"name": "BSC STATISTICS", "code": "57"},
    {"name": "BSC BOTANY", "code": "58"},
    {"name": "BSC HOMESCIENCE", "code": "59"},
    {"name": "BSC AGRICULTURRE", "code": "60"},
    {"name": "BSC ANIMATION", "code": "61"},
    {"name": "BSC AQUACULTURE", "code": "62"},
    {"name": "BSC AVIATION", "code": "63"},
    {"name": "BSC BIOCHEMISTRY", "code": "64"},
    {"name": "BSC BIOINFOMATICS", "code": "65"},
    {"name": "BSC COMPUTER SCIENCE", "code": "66"},
    {"name": "BSC DIETETICS", "code": "67"},
    {"name": "BSC ELLECTRONICS", "code": "68"},
    {"name": "BSC FASION TECHNOLOGY", "code": "69"},
    {"name": "BSC FOOD TECHNOLOGY", "code": "70"},
    {"name": "BSC FORENSIC SCIENCE", "code": "71"},
    {"name": "BSC FORESTRY", "code": "72"},
    {"name": "BSC MEDICAL TECHNOLOGY", "code": "73"},
    {"name": "BSC MICROBIOLOGY", "code": "74"},
    {"name": "BSC MULTIMEDIA", "code": "75"},
    {"name": "BSC NAUTICAL SCIENCE", "code": "76"},
    {"name": "BSC NURSING", "code": "77"},
    {"name": "BSC NUTRITION", "code": "78"},
    {"name": "BSC PHYSIOTHERAPY", "code": "79"},
    {"name": "BSC PSYCHOLOGY", "code": "80"},
    {"name": "BSC GENETICS", "code": "81"},
    {"name": "BSC INFORMATION TECHNOLOGY", "code": "82"},
    {"name": "BSC INTERIOR DESIGN", "code": "83"},
    {"name": "BSC BIOTECHNOLOGY", "code": "84"},
    {"name": "BCOM", "code": "85"},
    {"name": "LLB", "code": "86"},
    {"name": "AEROSPACE ENGINEERING", "code": "87"},
    {"name": "AGRICULTURE AND FOOD ENGINEERING", "code": "88"},
    {"name": "AUTOMOBILE ENGINEERING", "code": "89"},
    {"name": "BIOTECHNOLOGY ENGINEERING", "code": "90"},
    {"name": "CERAMIC ENGINEERING", "code": "91"},
    {"name": "CHEMICAL ENGINEERING", "code": "92"},
    {"name": "CIVIL ENGINEERING", "code": "93"},
    {"name": "COMPUTER ENGINEERING", "code": "94"},
    {"name": "ELECTRICAL ENGINEERING", "code": "95"},
    {"name": "ELECTRONICS ENGINEERING", "code": "96"},
    {"name": "ENGINEERING PHYSICS", "code": "97"},
    {"name": "ENVIRONMENTAL ENGINEERING", "code": "98"},
    {"name": "INDUSTRIAL AND PRODUCTION ENGINEERING", "code": "99"},
    {"name": "INDUSTRIAL ENGINEERING", "code": "100"},
    {"name": "INFORMATION TECHNOLOGY ENGINEERING", "code": "101"},
    {"name": "INSTRUMENTATION ENGINEERING", "code": "102"},
    {"name": "MARINE ENGINEERING", "code": "103"},
    {"name": "MECHANICAL ENGINEERING", "code": "104"},
    {"name": "METALLURGICAL ENGINEERING", "code": "105"},
    {"name": "NAVAL ARCHITECTURE AND OCEAN ENGINEERING", "code": "106"},
    {"name": "PETROLEUM ENGINEERING", "code": "107"},
    {"name": "TEXTILE ENGINEERING", "code": "108"},
    {"name": "PRODUCTION AND INDUSTRIAL ENGINEERING", "code": "109"},
    {"name": "STRUCTURAL ENGINEERING", "code": "110"},
    {"name": "MOTORSPORT ENGINEERING", "code": "111"},
    {"name": "FIRE PROTECTION ENGINEERING", "code": "112"},
    {"name": "NAVAL ENGINEERING", "code": "113"},
    {"name": "CORROSION ENGINEERING", "code": "114"},
    {"name": "ENVIRONMENTAL ENGINEERING", "code": "115"},
    {"name": "WATER RESOURCES ENGINEERING", "code": "116"},
    {"name": "MBBS", "code": "117"},
    {"name": "BDS", "code": "118"},
    {"name": "BSC NURSING", "code": "119"},
    {"name": "B PHARM", "code": "120"},
    {"name": "PHARM D", "code": "121"},
    {"name": "BHMS", "code": "122"},
    {"name": "BUMS", "code": "123"},
    {"name": "BPT PHYSIOTHERAPHY", "code": "124"},
    {"name": "BOT", "code": "125"},
    {"name": "BASLP", "code": "126"},
    {"name": "BSC ENVIRONMENTAL SCIENCE", "code": "127"},
    {"name": "BSC OCCUPATIONAL THERAPY", "code": "128"},
    {"name": "BSC RADIOLOGY", "code": "129"},
    {"name": "BSC ANTHROPOLOGY", "code": "130"},
    {"name": "BSC PATHOLOGY", "code": "131"},
    {"name": "BSC SPEECH THERAPY", "code": "132"},
    {"name": "BFSC FISHERIES SCIENCE", "code": "133"},
    {"name": "BSC HORTICULTURE", "code": "134"},
    {"name": "BSC HEALTH SCIENCE AND NUTRITION", "code": "135"},
    {"name": "BSC SPORTS SCIENCE", "code": "136"},
    {"name": "BSC AUDIOLOGY", "code": "137"},
    
    ],
                    textField: 'name',
                    valueField: 'name',
                    filterable: true,
                    required: true,
                    onSaved: (text) {
                      print('The value is $text');
                      {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => CgAnalyser(
                                      language1: widget.language1,
                                  language2: widget.language2,
                                  math: widget.math,
                                  science: widget.science,
                                  social: widget.social,
                                  
                                  text:text
                                        
                                        )));
                          }
                    }),
              ),
              SizedBox(
                width: 10.0,
              ),
              RaisedButton(
                child: Text('Save'),
                color: Colors.white,
                onPressed: () {
                  _onFormSaved();
                },
              )
            ],
          ),
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  void _onFormSaved() {
    final FormState form = _formKey.currentState;
    form.save();
  }
}
