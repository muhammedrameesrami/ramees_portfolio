import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ramees_portfolio/view/projects/components/project_info.dart';
import '../../../model/project_model.dart';
import '../../../res/constants.dart';
import '../../../view model/getx_controllers/projects_controller.dart';

class ProjectGrid extends StatelessWidget {
  final int crossAxisCount;
  final double ratio;
  ProjectGrid({super.key, this.crossAxisCount = 3, this.ratio = 1.3});
  final controller = Get.put(ProjectController());
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      itemCount: projectList.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: crossAxisCount, childAspectRatio: ratio),
      itemBuilder: (context, index) {
        return Obx(() => AnimatedContainer(
            duration: const Duration(milliseconds: 200),
            margin: const EdgeInsets.symmetric(
                vertical: defaultPadding, horizontal: defaultPadding),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(35),
                gradient: const LinearGradient(colors: [
                  Colors.white,
                  Colors.blueAccent,
                  Colors.blue,
                ]),
                boxShadow: [
                  BoxShadow(
                    color: Colors.white,
                    offset: const Offset(-3, 0),
                    blurRadius: controller.hovers[index] ? 8 : 3,
                  ),
                  BoxShadow(
                    color: Colors.blue,
                    offset: const Offset(1, 0),
                    blurRadius: controller.hovers[index] ? 8 : 3,
                  ),
                ]),
            child: ProjectStack(index: index)));
      },
    );
  }
}
