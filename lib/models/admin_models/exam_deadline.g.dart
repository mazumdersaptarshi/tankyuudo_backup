// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exam_deadline.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ExamDeadline _$ExamDeadlineFromJson(Map<String, dynamic> json) => ExamDeadline(
      examId: json['examId'] as String,
      courseId: json['courseId'] as String,
      usersPassed: json['usersPassed'] as int,
      allUsersCount: json['allUsersCount'] as int,
      examTitle: json['examTitle'] as String,
      courseTitle: json['courseTitle'] as String,
      contentLanguage: json['contentLanguage'] as String,
      nearestCompletionDeadline: json['nearestCompletionDeadline'] as String,
    );

Map<String, dynamic> _$ExamDeadlineToJson(ExamDeadline instance) =>
    <String, dynamic>{
      'examId': instance.examId,
      'courseId': instance.courseId,
      'usersPassed': instance.usersPassed,
      'allUsersCount': instance.allUsersCount,
      'examTitle': instance.examTitle,
      'courseTitle': instance.courseTitle,
      'contentLanguage': instance.contentLanguage,
      'nearestCompletionDeadline': instance.nearestCompletionDeadline,
    };
