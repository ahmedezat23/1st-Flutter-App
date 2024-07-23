import 'package:equatable/equatable.dart';
import 'course.dart';

abstract class CourseState extends Equatable {
  const CourseState();

  @override
  List<Object> get props => [];
}

class CourseLoading extends CourseState {}

class CourseLoaded extends CourseState {
  final List<Course> courses;

  const CourseLoaded({required this.courses});

  @override
  List<Object> get props => [courses];
}
