import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:isms/controllers/admin_management/admin_state.dart';
import 'package:isms/controllers/testing/test_data.dart';
import 'package:isms/controllers/theme_management/theme_config.dart';
import 'package:isms/models/admin_models/users_summary_data.dart';
import 'package:isms/models/course/course_info.dart';
import 'package:isms/models/shared_widgets/custom_dropdown_item.dart';
import 'package:isms/views/widgets/admin_console/exam_attempts_analysis.dart';
import 'package:isms/views/widgets/shared_widgets/courses_scores_overview_section.dart';
import 'package:isms/views/widgets/shared_widgets/exams_status_overview.dart';
import 'package:isms/views/widgets/shared_widgets/users_scores_variation_by_attempts.dart';

class UsersPerformanceOverviewSection extends StatefulWidget {
  UsersPerformanceOverviewSection({
    super.key,
    required this.courses,
    required this.domainUsers,
  });

  List<CourseInfo> courses = [CourseInfo(courseId: 'none')];
  List<UsersSummaryData> domainUsers = [];

  @override
  State<UsersPerformanceOverviewSection> createState() => _UsersPerformanceOverviewSectionState();
}

class _UsersPerformanceOverviewSectionState extends State<UsersPerformanceOverviewSection> {
  @override
  void initState() {
    super.initState();
    adminState = AdminState();

    // Default data is set for initial display
    // _usersDataBarChart = updateUsersDataOnDifferentCourseExamSelectionBarChart('py102ex');
  }

  List<Color> coursesCompletedGradientColors = [
    ThemeConfig.primaryColor!,
    Colors.redAccent,
  ];
  List<Color> coursesEnrolledGradientColors = [
    Colors.pink!,
    Colors.orange,
  ];
  List<Color> userActivityGradientColors = [
    Colors.green,
    Colors.orangeAccent,
  ];

  List<CustomDropdownItem<String>> barChartMetrics = [
    CustomDropdownItem(key: 'avgScore', value: 'Average Score'),
    CustomDropdownItem(key: 'maxScore', value: 'Max Score'),
    CustomDropdownItem(key: 'minScore', value: 'Min Score'),
    CustomDropdownItem(key: 'numberOfAttempts', value: 'Number of Attempts'),
  ];

  late AdminState adminState;

  @override
  Widget build(BuildContext context) {
    Map<String, dynamic> metricTypeDataForLineChartWidget = {
      'All': {
        // 'data': coursesCompletedOverTimeData.map((data) => FlSpot(data.x, data.y)).toList(),
        // 'colors': coursesCompletedGradientColors,
      },
      'Courses Completed over Time': {
        'data': coursesCompletedOverTimeData.map((data) => FlSpot(data.x, data.y)).toList(),
        'colors': coursesCompletedGradientColors,
      },
      'Active Users': {
        'data': activeUsersData.map((data) => FlSpot(data.x, data.y)).toList(),
        'colors': userActivityGradientColors,
      },
      'Courses Enrolled over Time': {
        'data': coursesEnrolledOverTimeData.map((data) => FlSpot(data.x, data.y)).toList(),
        'colors': coursesEnrolledGradientColors,
      },
    };

    return Container(
      width: MediaQuery.of(context).size.width * 0.9,
      margin: EdgeInsets.fromLTRB(80, 12, 80, 30),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ExamsStatusOverview(courses: widget.courses),
              SizedBox(
                width: 20,
              ),
              UsersScoresVariationByAttempts(
                courses: widget.courses,
              ),
              //Bar Graph

              // User Activity Over Time
              // UserActivityOverTime(),
              //Courses Status Pie Chart
            ],
          ),
          SizedBox(
            height: 20,
          ),
          CoursesScoresOverview(
            courses: widget.courses,
            domainUsers: widget.domainUsers,
          ),
          SizedBox(
            height: 20,
          ),
          ExamAttemptsAnalysis(
            courses: widget.courses,
          ),
        ],
      ),
    );
  }
}
