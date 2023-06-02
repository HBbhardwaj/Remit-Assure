import 'package:flutter/material.dart';
import 'package:freshproject/app_routes/routes.dart';
import 'package:freshproject/modules/stepper/stepper_widget/step_five.dart';
import 'package:freshproject/modules/stepper/stepper_widget/step_four.dart';
import 'package:freshproject/modules/stepper/stepper_widget/step_one.dart';
import 'package:freshproject/modules/stepper/stepper_widget/step_seven.dart';
import 'package:freshproject/modules/stepper/stepper_widget/step_six.dart';
import 'package:freshproject/modules/stepper/stepper_widget/step_three.dart';
import 'package:freshproject/modules/stepper/stepper_widget/step_two.dart';
import 'package:freshproject/utils/app_colors.dart';
import 'package:freshproject/view_controller/home/home_controller.dart';
import 'package:get/get.dart';

class StepperScreen extends StatelessWidget {
  StepperScreen({Key? key}) : super(key: key);
  final _homeController = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: Get.height,
        child: Obx(
          () => Stepper(
elevation: 0,
              type: StepperType.horizontal,
            // physics:AlwaysScrollableScrollPhysics(),

              currentStep: _homeController.currentStep.value,
              onStepContinue: () {
                 debugPrint("send data to server ${_homeController.currentStep.value}");
                if (_homeController.currentStep.value ==
                    buildStep().length - 1 && _homeController.currentStep.value != 5) {
                      
                  debugPrint("send data to server ${_homeController.currentStep.value}");
                

            
                }else if(_homeController.currentStep.value == 5){
                  Get.toNamed(Routes.home);
                }
                
                 else {
                  _homeController.currentStep.value++;
               
                }
              },
              onStepCancel: () {
                _homeController.currentStep.value == 0
                    ? null
                    : _homeController.currentStep.value--;
              },
              onStepTapped: (index) {
                _homeController.currentStep.value = index;
              },
              controlsBuilder: (context, details) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 0.0,),
                  child: Row(
                    children: [
                       if (_homeController.currentStep.value != 0)
                        Expanded(
                          child:
                             Container(
                        color: AppColor.buttoncolor,
                        child: TextButton(
                          onPressed: details.onStepCancel,
                          child: Text(
                            "Back",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      )
                      
                        ),
                          SizedBox(width: 20,),
                        
                      Expanded(
                        
                          child: Container(
                        color: AppColor.buttoncolor,
                        child: TextButton(
                        
                          onPressed: details.onStepContinue,
                          
                       
                            
                        
                          

                          child: Text(
                            "Next",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      )),
                    
                     
                    ],
                  ),
                );
              },
              steps: buildStep(),
           
              ),
        ),
      ),
    );
  }

  List<Step> buildStep() {

    return [
   
      Step(
          title: Text(""),
          content: StepOneScreen(),
          isActive: _homeController.currentStep.value >= 0,
          state: _homeController.currentStep.value > 0
              ? StepState.complete
              : StepState.indexed),
      Step(
          title: Text(""),
          content: StepTwoScreen(),
          isActive: _homeController.currentStep.value >= 1,
          state: _homeController.currentStep.value > 1
              ? StepState.complete
              : StepState.indexed),
      Step(
          title: Text(""),
          content: StepThreeScreen(),
          isActive: _homeController.currentStep.value >= 2,
          state: _homeController.currentStep.value > 2
              ? StepState.complete
              : StepState.indexed),
      Step(
          title: Text(""),
          content: StepFourScreen(),
          isActive: _homeController.currentStep.value >= 3,
          state: _homeController.currentStep.value > 3
              ? StepState.complete
              : StepState.indexed),
      Step(
          title: Text(""),
          content: StepfiveScreen(),
          isActive: _homeController.currentStep.value >= 4,
          state: _homeController.currentStep.value > 4
              ? StepState.complete
              : StepState.indexed),
      Step(
          title: Text(""),
          content: StepSixScreen(),
          isActive: _homeController.currentStep.value >= 5,
          state: _homeController.currentStep.value > 5
              ? StepState.complete
              : StepState.indexed),
      // Step(
      //     title: Text(""),
      //     content: StepSevenScreen(),
      //     isActive: _homeController.currentStep.value >= 6,
      //     state: _homeController.currentStep.value > 6
      //         ? StepState.complete
      //         : StepState.indexed),
    ];
    
  }
}
