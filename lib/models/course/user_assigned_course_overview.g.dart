// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_assigned_course_overview.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserAssignedCourseOverview _$UserAssignedCourseOverviewFromJson(
        Map<String, dynamic> json) =>
    UserAssignedCourseOverview(
      courseId: json['courseId'] as String,
      courseVersion: (json['courseVersion'] as num).toDouble(),
      courseTitle: json['courseTitle'] as String,
      courseSummary: json['courseSummary'] as String,
      courseDescription: json['courseDescription'] as String,
      courseSections: (json['courseSections'] as List<dynamic>)
          .map((e) => SectionOverview.fromJson(e as Map<String, dynamic>))
          .toList(),
      courseExams: (json['courseExams'] as List<dynamic>)
          .map((e) => ExamOverview.fromJson(e as Map<String, dynamic>))
          .toList(),
      allSectionIds: json['allSectionIds'] as List<dynamic>?,
      completedSections: json['completedSections'] as List<dynamic>?,
    );

Map<String, dynamic> _$UserAssignedCourseOverviewToJson(
        UserAssignedCourseOverview instance) =>
    <String, dynamic>{
      'courseId': instance.courseId,
      'courseVersion': instance.courseVersion,
      'courseTitle': instance.courseTitle,
      'courseSummary': instance.courseSummary,
      'courseDescription': instance.courseDescription,
      'courseSections': instance.courseSections.map((e) => e.toJson()).toList(),
      'courseExams': instance.courseExams.map((e) => e.toJson()).toList(),
      'allSectionIds': instance.allSectionIds,
      'completedSections': instance.completedSections,
    };
