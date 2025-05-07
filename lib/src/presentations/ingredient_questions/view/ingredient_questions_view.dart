import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/components/custom_scaffold.dart';
import 'package:flutter_application_1/src/presentations/presentation.dart';
import 'package:flutter_application_1/src/presentations/questions/widget/custom_container2.dart';
import 'package:go_router/go_router.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class IngredientQuestionsView extends StatefulWidget {
  const IngredientQuestionsView({super.key});

  @override
  State<IngredientQuestionsView> createState() =>
      _IngredientQuestionsViewState();
}

class _IngredientQuestionsViewState extends State<IngredientQuestionsView> {
  int currentQuestionIndex = 0;
  int? selectedIndex;
  int remainingSeconds = 30;

  final List<QuestionModel> questions = [
    QuestionModel(
      image: 'assets/images/manti_cook.png',
      answers: ['Manti', 'Samsa', 'meat'],
      correctIndex: 0,
    ),
    QuestionModel(
      image: 'assets/images/manti_cook.png',
      answers: ['Manti', 'pilaf', 'Lagman'],
      correctIndex: 1,
    ),
    QuestionModel(
      image: 'assets/images/manti_cook.png',
      answers: ['Manti', 'Samsa', 'Lagman'],
      correctIndex: 1,
    ),
    QuestionModel(
      image: 'assets/images/manti_cook.png',
      answers: ['soup', 'manti', 'Lagman'],
      correctIndex: 0,
    ),
    QuestionModel(
      image: 'assets/images/manti_cook.png',
      answers: ['lagman', 'soup', 'samsa'],
      correctIndex: 0,
    ),
    QuestionModel(
      image: 'assets/images/manti_cook.png',
      answers: ['lagman', 'soup', 'kurdak'],
      correctIndex: 2,
    ),
  ];

  void _onAnswerTap(int index) {
    if (selectedIndex != null) return;

    setState(() => selectedIndex = index);

    Future.delayed(const Duration(seconds: 1), () {
      _goToNextQuestion();
    });
  }

  void _goToNextQuestion() {
    if (currentQuestionIndex < questions.length - 1) {
      setState(() {
        currentQuestionIndex++;
        selectedIndex = null;
      });
    } else {
      context.go('/result');
    }
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final question = questions[currentQuestionIndex];

    return CustomScaffold(
      backgrounImageHave: true,
      backgrounImage: 'assets/images/questions_bac.png',
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.sp),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () => context.pop(),
                child: Icon(
                  Icons.arrow_back_ios,
                  color: Colors.white,
                  size: 22.sp,
                ),
              ),
              SizedBox(height: 2.h),
              Row(
                children: [
                  Container(
                    height: 3.5.h,
                    width: 20.w,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(131, 0, 0, 0),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Center(
                      child: Text(
                        '${currentQuestionIndex + 1}/${questions.length}',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.1.sp,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                  const Spacer(),
                  Container(
                    height: 3.5.h,
                    width: 22.w,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(131, 0, 0, 0),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8.sp),
                      child: Row(
                        children: [
                          Image.asset('assets/images/coin.png', width: 6.5.w),
                          SizedBox(width: 1.5.w),
                          Text(
                            '120',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16.1.sp,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 2.h),
              Center(
                child: Text(
                  'What kind of dishes\nare these?',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22.8.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              SizedBox(height: 1.h),
              Center(child: Image.asset(question.image, height: 25.h)),
              ...List.generate(question.answers.length, (index) {
                final answerText = question.answers[index];
                final bool? isCorrect =
                    selectedIndex != null && selectedIndex == index
                        ? index == question.correctIndex
                        : null;
                return CustomContainer2(
                  text: answerText,
                  isCorrect: isCorrect,
                  onTap: () => _onAnswerTap(index),
                );
              }),
            ],
          ),
        ),
      ),
    );
  }
}
