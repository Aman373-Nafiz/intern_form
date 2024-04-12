// To parse this JSON data, do
//
//     final course = courseFromJson(jsonString);

import 'dart:convert';

Course courseFromJson(String str) => Course.fromJson(json.decode(str));

String courseToJson(Course data) => json.encode(data.toJson());

class Course {
    String status;
    Data data;

    Course({
        required this.status,
        required this.data,
    });

    factory Course.fromJson(Map<String, dynamic> json) => Course(
        status: json["status"],
        data: Data.fromJson(json["data"]),
    );

    Map<String, dynamic> toJson() => {
        "status": status,
        "data": data.toJson(),
    };
}

class Data {
    int id;
    String title;
    String subTitle;
    String categoryId;
    String subCategoryId;
    String instructorId;
    List<String> learningTopic;
    String requirements;
    String description;
    double price;
    bool status;
    String isFeatured;
    String greetings;
    String congratulationMessage;
    String thumb;
    DateTime createdAt;
    DateTime updatedAt;
    List<Section> sections;
    List<MoreCourse> moreCourse;
    dynamic courseIntroVideo;
    String videoSourceType;
    String videoLinkPath;
    Intro intro;

    Data({
        required this.id,
        required this.title,
        required this.subTitle,
        required this.categoryId,
        required this.subCategoryId,
        required this.instructorId,
        required this.learningTopic,
        required this.requirements,
        required this.description,
        required this.price,
        required this.status,
        required this.isFeatured,
        required this.greetings,
        required this.congratulationMessage,
        required this.thumb,
        required this.createdAt,
        required this.updatedAt,
        required this.sections,
        required this.moreCourse,
        required this.courseIntroVideo,
        required this.videoSourceType,
        required this.videoLinkPath,
        required this.intro,
    });

    factory Data.fromJson(Map<String, dynamic> json) => Data(
        id: json["id"],
        title: json["title"],
        subTitle: json["sub_title"],
        categoryId: json["category_id"],
        subCategoryId: json["sub_category_id"],
        instructorId: json["instructor_id"],
        learningTopic: List<String>.from(json["learning_topic"].map((x) => x)),
        requirements: json["requirements"],
        description: json["description"],
        price: json["price"]?.toDouble(),
        status: json["status"],
        isFeatured: json["is_featured"],
        greetings: json["greetings"],
        congratulationMessage: json["congratulation_message"],
        thumb: json["thumb"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        sections: List<Section>.from(json["sections"].map((x) => Section.fromJson(x))),
        moreCourse: List<MoreCourse>.from(json["more_course"].map((x) => MoreCourse.fromJson(x))),
        courseIntroVideo: json["course_intro_video"],
        videoSourceType: json["video_source_type"],
        videoLinkPath: json["video_link_path"],
        intro: Intro.fromJson(json["intro"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "sub_title": subTitle,
        "category_id": categoryId,
        "sub_category_id": subCategoryId,
        "instructor_id": instructorId,
        "learning_topic": List<dynamic>.from(learningTopic.map((x) => x)),
        "requirements": requirements,
        "description": description,
        "price": price,
        "status": status,
        "is_featured": isFeatured,
        "greetings": greetings,
        "congratulation_message": congratulationMessage,
        "thumb": thumb,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
        "sections": List<dynamic>.from(sections.map((x) => x.toJson())),
        "more_course": List<dynamic>.from(moreCourse.map((x) => x.toJson())),
        "course_intro_video": courseIntroVideo,
        "video_source_type": videoSourceType,
        "video_link_path": videoLinkPath,
        "intro": intro.toJson(),
    };
}

class Intro {
    int id;
    String courseId;
    dynamic assignmentId;
    dynamic lessonId;
    dynamic quizId;
    dynamic fileName;
    String resourseType;
    String videoSourceType;
    dynamic path;
    String videoLinkPath;
    dynamic mimeType;
    DateTime createdAt;
    DateTime updatedAt;
    bool isVideo;

    Intro({
        required this.id,
        required this.courseId,
        required this.assignmentId,
        required this.lessonId,
        required this.quizId,
        required this.fileName,
        required this.resourseType,
        required this.videoSourceType,
        required this.path,
        required this.videoLinkPath,
        required this.mimeType,
        required this.createdAt,
        required this.updatedAt,
        required this.isVideo,
    });

    factory Intro.fromJson(Map<String, dynamic> json) => Intro(
        id: json["id"],
        courseId: json["course_id"],
        assignmentId: json["assignment_id"],
        lessonId: json["lesson_id"],
        quizId: json["quiz_id"],
        fileName: json["file_name"],
        resourseType: json["resourse_type"],
        videoSourceType: json["video_source_type"],
        path: json["path"],
        videoLinkPath: json["video_link_path"],
        mimeType: json["mime_type"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        isVideo: json["is_video"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "course_id": courseId,
        "assignment_id": assignmentId,
        "lesson_id": lessonId,
        "quiz_id": quizId,
        "file_name": fileName,
        "resourse_type": resourseType,
        "video_source_type": videoSourceType,
        "path": path,
        "video_link_path": videoLinkPath,
        "mime_type": mimeType,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
        "is_video": isVideo,
    };
}

class MoreCourse {
    int id;
    String thumb;
    String title;
    String subTitle;
    List<String> learningTopic;
    String requirements;
    String description;
    int completedLessons;
    String completedPercentage;
    int isFree;
    dynamic totalRating;
    double price;
    int isDiscounted;
    dynamic discountType;
    dynamic discountedPrice;

    MoreCourse({
        required this.id,
        required this.thumb,
        required this.title,
        required this.subTitle,
        required this.learningTopic,
        required this.requirements,
        required this.description,
        required this.completedLessons,
        required this.completedPercentage,
        required this.isFree,
        required this.totalRating,
        required this.price,
        required this.isDiscounted,
        required this.discountType,
        required this.discountedPrice,
    });

    factory MoreCourse.fromJson(Map<String, dynamic> json) => MoreCourse(
        id: json["id"],
        thumb: json["thumb"],
        title: json["title"],
        subTitle: json["sub_title"],
        learningTopic: List<String>.from(json["learning_topic"].map((x) => x)),
        requirements: json["requirements"],
        description: json["description"],
        completedLessons: json["completedLessons"],
        completedPercentage: json["completedPercentage"],
        isFree: json["isFree"],
        totalRating: json["totalRating"],
        price: json["price"]?.toDouble(),
        isDiscounted: json["isDiscounted"],
        discountType: json["discountType"],
        discountedPrice: json["discountedPrice"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "thumb": thumb,
        "title": title,
        "sub_title": subTitle,
        "learning_topic": List<dynamic>.from(learningTopic.map((x) => x)),
        "requirements": requirements,
        "description": description,
        "completedLessons": completedLessons,
        "completedPercentage": completedPercentage,
        "isFree": isFree,
        "totalRating": totalRating,
        "price": price,
        "isDiscounted": isDiscounted,
        "discountType": discountType,
        "discountedPrice": discountedPrice,
    };
}

class Section {
    int id;
    String topic;
    String description;
    String courseId;
    DateTime createdAt;
    DateTime updatedAt;
    List<Lesson> lessons;

    Section({
        required this.id,
        required this.topic,
        required this.description,
        required this.courseId,
        required this.createdAt,
        required this.updatedAt,
        required this.lessons,
    });

    factory Section.fromJson(Map<String, dynamic> json) => Section(
        id: json["id"],
        topic: json["topic"],
        description: json["description"],
        courseId: json["course_id"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        lessons: List<Lesson>.from(json["lessons"].map((x) => Lesson.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "topic": topic,
        "description": description,
        "course_id": courseId,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
        "lessons": List<dynamic>.from(lessons.map((x) => x.toJson())),
    };
}

class Lesson {
    String id;
    String courseId;
    String sectionId;
    String lectureTitle;
    String? videoResource;
    String? videoLinkPath;
    String? videoSourceType;

    Lesson({
        required this.id,
        required this.courseId,
        required this.sectionId,
        required this.lectureTitle,
        this.videoResource,
        this.videoLinkPath,
        this.videoSourceType,
    });

    factory Lesson.fromJson(Map<String, dynamic> json) => Lesson(
        id: json["id"],
        courseId: json["course_id"],
        sectionId: json["section_id"],
        lectureTitle: json["lecture_title"],
        videoResource: json["video_resource"],
        videoLinkPath: json["video_link_path"],
        videoSourceType: json["video_source_type"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "course_id": courseId,
        "section_id": sectionId,
        "lecture_title": lectureTitle,
        "video_resource": videoResource,
        "video_link_path": videoLinkPath,
        "video_source_type": videoSourceType,
    };
}
