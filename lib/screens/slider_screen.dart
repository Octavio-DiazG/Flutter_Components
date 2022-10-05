import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
   
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  double _sliderValue = 100;
  bool _sliderEnabled = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Slider & Checks'),
      ),
      body: Column(
        children: [
          Slider.adaptive( //adaptative define el estilo dependiendo de la plataforma.
            min: 50,
            max: 400,
            activeColor: AppTheme.primary,
            value: _sliderValue, 
            onChanged: _sliderEnabled 
            ? ( value ){
              _sliderValue = value;
              setState(() {});
            }
            : null
          ),

          Checkbox(
            activeColor: AppTheme.primary,
            value: _sliderEnabled,
            onChanged: (value){
              _sliderEnabled = value ?? true;
              setState(() {});
            }
          ),

          Switch(
            value: _sliderEnabled, 
            onChanged:  (value) => setState(() {_sliderEnabled = value;})
          ),

          CheckboxListTile(
            activeColor: AppTheme.primary,
            title: const Text('Habilitar Slider'),
            value: _sliderEnabled,
            onChanged: (value) => setState(() {_sliderEnabled = value?? true;})
          ),

          SwitchListTile.adaptive(
            activeColor: AppTheme.primary,
            title: const Text('Habilitar Slider'),
            value: _sliderEnabled,
            onChanged: (value) => setState(() {_sliderEnabled = value;})
          ),

          const AboutListTile(),

          Expanded(
            child: SingleChildScrollView(
              child: Image(
                image: const NetworkImage('https://preview.redd.it/p9tq1ibjuh461.png?width=640&crop=smart&auto=webp&s=4dd1064186914659135928e1996486e0b542dc71'),
                fit: BoxFit.contain,
                width: _sliderValue,
              ),
            ),
          ),
        ],
      )
    );
  }
}