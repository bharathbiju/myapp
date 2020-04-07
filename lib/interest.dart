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
      this.science,
      this.subject6,
      this.grouptype})
      : super(key: key);

  var language1, science, math, language2, social,subject6,grouptype;

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
    {"name": "BA ENGLISH", "code": "ba_english"},
    {"name": "BA POLITICAL SCIENCE", "code": "ba_political_science"},
    {"name": "BA HISTORY", "code": "ba_history"},
    {"name": "BA PSYCHOLOGY", "code": "ba_psychology"},
    {"name": "BA PHILOSOPHY", "code": "ba_philosophy"},
    {"name": "BA SOCIAL WORK", "code": "ba_social_work"},
    {"name": "BA ECONOMICS", "code": "ba_economics"},
    {"name": "BA ARCHAEOLOGY", "code": "ba_archaeology"},
    {"name": "BA SOCIOLOGY", "code": "ba_sociology"},
    {"name": "BA GEOGRAPHY", "code": "ba_geography"},
    {"name": "BA ANTHROPOLOGY", "code": "ba_anthropology"},
    {"name": "BA LINGUISTICS", "code": "ba_linguistics"},
    {"name": "BA RURAL SCIENCE", "code": "ba_rural_science"},
    {"name": "BA HINDI", "code": "ba_hindi"},
    {"name": "BA BENGALI", "code": "ba_bengali"},
    {"name": "BA TAMIL", "code": "ba_tamil"},
    {"name": "BA MARATHI", "code": "ba_marathi"},
    {"name": "BA TELUGU", "code": "ba_telugu"},
    {"name": "BA KANNADA", "code": "ba_kannada"},
    {"name": "BA MALAYALAM", "code": "ba_malayalam"},
    {"name": "BA ASSAMESE", "code": "ba_assamese"},
    {"name": "BA BIHARI", "code": "ba_bihari"},
    {"name": "BA ODIYA", "code": "ba_odiya"},
    {"name": "BA JOURNALISM", "code": "ba_journalism"},
    {"name": "BA  PSYCOLOGY", "code": "ba_psycology"},
    {"name": "BA GERMAN", "code": "ba_german"},
    {"name": "BA FRENCH", "code": "ba_french"},
    {"name": "BA ITALIAN", "code": "ba_italian"},
    {"name": "BA HEBREW", "code": "ba_hebrew"},
    {"name": "BA SPANISH", "code": "ba_spanish"},
    {"name": "BA RUSSIAN", "code": "ba_russian"},
    {"name": "BA CHINESE", "code": "ba_chinese"},
    {"name": "BA JAPANESE", "code": "ba_japanese"},
    {"name": "BA PHOTOGRAPHY", "code": "ba_photography"},
    {"name": "BA KOREAN", "code": "ba_korean"},
    {"name": "BA AGRO SCIENCES", "code": "ba_agro_sciences"},
    {"name": "BA AIRLINES, HOSPITALITY AND CUSTOMER CARE", "code": "ba_airlines,hospitality_and _customer_care"},
    {"name": "BA ANCIENT HISTORY", "code": "ba_ancient_history"},
    {"name": "BA ANCIENT INDIAN CULTURE", "code": "ba_ancient_indian_culture"},
    {"name": "BA ARABIC", "code": "ba_arabic"},
    {"name": "BA CINEMATOGRAPHY", "code": "ba_cinematography"},
    {"name": "BA CORPORATE SECRETARYSHIP", "code": "ba_corporate_secretaryship"},
    {"name": "BA COMPARATIVE RELIGION", "code": "ba_comparitive_religion"},
    {"name": "BA CRIMINOLOGY", "code": "ba_criminology"},
    {"name": "BA CULINARY ART", "code": "ba_culinary_art"},
    {"name": "BA DEFENCE AND STRATEGIC STUDIES", "code": "ba_defence_and_strategic_studies"},
    {"name": "BA DRAWING AND PAINTING", "code": "ba_drawing_and_painting"},
    {"name": "BA EDUCATION", "code": "ba_education"},
    {"name": "BA PUNJABI", "code": "ba_punjabi"},
    {"name": "BA GUJARATI", "code": "ba_gujarati"},
    {"name": "BBA", "code": "bba"},
    {"name": "BSC PCM", "code": "bsc_pcm"},
    {"name": "BSC PHYSICS", "code": "bsc_physics"},
    {"name": "BSC CHEMISTRY", "code": "bsc_chemistry"},
    {"name": "BSC MATHS", "code": "bsc_maths"},
    {"name": "BSC ZOOLOGY", "code": "bsc_zoology"},
    {"name": "BSC STATISTICS", "code": "bsc_statistics"},
    {"name": "BSC BOTANY", "code": "bsc_botany"},
    {"name": "BSC HOMESCIENCE", "code": "bsc_home_science"},
    {"name": "BSC AGRICULTURRE", "code": "bsc_agriculture"},
    {"name": "BSC ANIMATION", "code": "bsc_animation"},
    {"name": "BSC AQUACULTURE", "code": "bsc_aquaculture"},
    {"name": "BSC AVIATION", "code": "bsc_aviation"},
    {"name": "BSC BIOCHEMISTRY", "code": "bsc_biochemistry"},
    {"name": "BSC BIOINFOMATICS", "code": "bsc_bioinfomatics"},
    {"name": "BSC COMPUTER SCIENCE", "code": "bsc_computer_science"},
    {"name": "BSC DIETETICS", "code": "bsc_dietetics"},
    {"name": "BSC ELLECTRONICS", "code": "bsc_electronics"},
    {"name": "BSC FASHION TECHNOLOGY", "code": "bsc_fashion_technology"},
    {"name": "BSC FOOD TECHNOLOGY", "code": "bsc_food_technology"},
    {"name": "BSC FORENSIC SCIENCE", "code": "bsc_forensic_science"},
    {"name": "BSC FORESTRY", "code": "bsc_forestry"},
    {"name": "BSC MEDICAL TECHNOLOGY", "code": "bsc_medical_technology"},
    {"name": "BSC MICROBIOLOGY", "code": "bsc_microbiology"},
    {"name": "BSC MULTIMEDIA", "code": "bsc_multimedia"},
    {"name": "BSC NAUTICAL SCIENCE", "code": "bsc_nautical_science"},
    {"name": "BSC NURSING", "code": "bsc_nursing"},
    {"name": "BSC NUTRITION", "code": "bsc_nutrition"},
    {"name": "BSC PHYSIOTHERAPY", "code": "bsc_physiotherapy"},
    {"name": "BSC PSYCHOLOGY", "code": "bsc_psychology"},
    {"name": "BSC GENETICS", "code": "bsc_genetics"},
    {"name": "BSC INFORMATION TECHNOLOGY", "code": "bsc_information_technology"},
    {"name": "BSC INTERIOR DESIGN", "code": "bsc_interior_design"},
    {"name": "BSC BIOTECHNOLOGY", "code": "bsc_biotechnology"},
    {"name": "BCOM", "code": "b_com"},
    {"name": "LLB", "code": "llb"},
    {"name": "AEROSPACE ENGINEERING", "code": "aerospace_engineering"},
    {"name": "AGRICULTURE AND FOOD ENGINEERING", "code": "agriculture_and_food_engineering"},
    {"name": "AUTOMOBILE ENGINEERING", "code": "automobile_engineering"},
    {"name": "BIOTECHNOLOGY ENGINEERING", "code": "biotechnology_engineering"},
    {"name": "CERAMIC ENGINEERING", "code": "ceramic_engineering"},
    {"name": "CHEMICAL ENGINEERING", "code": "chemical_engineering"},
    {"name": "CIVIL ENGINEERING", "code": "civil_engineering"},
    {"name": "COMPUTER ENGINEERING", "code": "computer_engineering"},
    {"name": "ELECTRICAL ENGINEERING", "code": "electrical_engineering"},
    {"name": "ELECTRONICS ENGINEERING", "code": "electronics_engineering"},
    {"name": "ENGINEERING PHYSICS", "code": "engineering_physics"},
    {"name": "ENVIRONMENTAL ENGINEERING", "code": "environmental_engineering"},
    {"name": "INDUSTRIAL AND PRODUCTION ENGINEERING", "code": "industrial_and_production_engineering"},
    {"name": "INDUSTRIAL ENGINEERING", "code": "industrial_engineering"},
    {"name": "INFORMATION TECHNOLOGY ENGINEERING", "code": "information_technology_engineering"},
    {"name": "INSTRUMENTATION ENGINEERING", "code": "instrumentation_engineering"},
    {"name": "MARINE ENGINEERING", "code": "marine_engineering"},
    {"name": "MECHANICAL ENGINEERING", "code": "mechanical_engineering"},
    {"name": "METALLURGICAL ENGINEERING", "code": "metallurgical_engineering"},
    {"name": "NAVAL ARCHITECTURE AND OCEAN ENGINEERING", "code": "naval_architecture_and_ocean_engineering"},
    {"name": "PETROLEUM ENGINEERING", "code": "petroleum_engineering"},
    {"name": "TEXTILE ENGINEERING", "code": "textile_engineering"},
    {"name": "PRODUCTION AND INDUSTRIAL ENGINEERING", "code": "production_and_industrial_engineering"},
    {"name": "STRUCTURAL ENGINEERING", "code": "structural_engineering"},
    {"name": "MOTORSPORT ENGINEERING", "code": "motorsport_engineering"},
    {"name": "FIRE PROTECTION ENGINEERING", "code": "fire_protection_engineering"},
    {"name": "NAVAL ENGINEERING", "code": "naval_engineering"},
    {"name": "CORROSION ENGINEERING", "code": "corrosion_engineering"},
    {"name": "ENVIRONMENTAL ENGINEERING", "code": "environmental_engineering"},
    {"name": "WATER RESOURCES ENGINEERING", "code": "water_resources_engineering"},
    {"name": "MBBS", "code": "mbbs"},
    {"name": "BDS", "code": "bds"},
    {"name": "BSC NURSING", "code": "bsc_nursing"},
    {"name": "B PHARM", "code": "bpharm_bachelor_of_pharmacy"},
    {"name": "PHARM D", "code": "pharm_d"},
    {"name": "BHMS", "code": "bhms"},
    {"name": "BUMS", "code": "bums"},
    {"name": "BPT PHYSIOTHERAPHY", "code": "bpt_physiotheraphy"},
    {"name": "BOT", "code": "bot_bachelor_of_occupational_therapy"},
    {"name": "BASLP", "code": "baslp_bachelor_of_audiology_speech_language_pathology"},
    {"name": "BSC ENVIRONMENTAL SCIENCE", "code": "bsc_environmental_science"},
    {"name": "BSC OCCUPATIONAL THERAPY", "code": "bsc_occupational_therapy"},
    {"name": "BSC RADIOLOGY", "code": "bsc_radiology"},
    {"name": "BSC ANTHROPOLOGY", "code": "bsc_anthropology"},
    {"name": "BSC PATHOLOGY", "code": "bsc_pathology"},
    {"name": "BSC SPEECH THERAPY", "code": "bsc_speech_therapy"},
    {"name": "BFSC FISHERIES SCIENCE", "code": "bfsc_fisheries_science"},
    {"name": "BSC HORTICULTURE", "code": "bsc_horticulture"},
    {"name": "BSC HEALTH SCIENCE AND NUTRITION", "code": "bsc_health_science_and_nutrition"},
    {"name": "BSC SPORTS SCIENCE", "code": "bsc_sports_science"},
    {"name": "BSC AUDIOLOGY", "code": "bsc_audiology"},
    
    ],
                    textField: 'name',
                    valueField: 'code',
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
                                  subject6:widget.subject6,
                                  grouptype:widget.grouptype,
                                  
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
