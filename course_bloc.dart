import 'package:flutter_bloc/flutter_bloc.dart';
import 'course_event.dart';
import 'course_state.dart';
import 'course.dart';

class CourseBloc extends Bloc<CourseEvent, CourseState> {
  CourseBloc() : super(CourseLoading()) {
    on<LoadCourses>(_onLoadCourses);
  }

  void _onLoadCourses(LoadCourses event, Emitter<CourseState> emit) {
    final courses = [
      Course(
        title: "Course 1",
        imageUrl:
            "https://images.unsplash.com/photo-1506748686214-e9df14d4d9d0?q=80&w=1913&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
        price: 19.99,
      ),
      Course(
        title: "Course 2",
        imageUrl:
            "https://images.unsplash.com/photo-1522202176988-66273c2fd55f?q=80&w=1913&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
        price: 24.99,
      ),
      Course(
        title: "Course 3",
        imageUrl:
            "https://images.unsplash.com/photo-1498931299472-f7a63a5a1cfa?q=80&w=1913&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
        price: 14.99,
      ),
      Course(
        title: "Course 4",
        imageUrl:
            "https://images.unsplash.com/photo-1498931299472-f7a63a5a1cfa?q=80&w=1913&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
        price: 29.99,
      ),
    ];

    emit(CourseLoaded(courses: courses));
}
}