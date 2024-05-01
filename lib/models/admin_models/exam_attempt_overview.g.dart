// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exam_attempt_overview.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ExamAttemptOverview _$ExamAttemptOverviewFromJson(Map<String, dynamic> json) =>
    ExamAttemptOverview(
      attemptId: json['attemptId'] as int,
      userId: json['userId'] as String,
      familyName: json['familyName'] as String,
      givenName: json['givenName'] as String,
      courseId: json['courseId'] as String,
      examId: json['examId'] as String,
      examTitle: json['examTitle'] as String,
      passed: json['passed'] as bool,
      score: json['score'] as int,
      date: json['date'] as String,
    );

Map<String, dynamic> _$ExamAttemptOverviewToJson(
        ExamAttemptOverview instance) =>
    <String, dynamic>{
      'attemptId': instance.attemptId,
      'userId': instance.userId,
      'familyName': instance.familyName,
      'givenName': instance.givenName,
      'courseId': instance.courseId,
      'examId': instance.examId,
      'examTitle': instance.examTitle,
      'passed': instance.passed,
      'score': instance.score,
      'date': instance.date,
    };
