import 'package:flutter/material.dart';
import 'presentation_data.dart';

void main() {
  runApp(const EEducationApp());
}

class EEducationApp extends StatelessWidget {
  const EEducationApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'e-Education Presentation',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF1A237E), // Deep Blue for education/professionalism
          secondary: const Color(0xFFC62828), // Red accent (Japan/Bangladesh flag colors)
        ),
        useMaterial3: true,
        textTheme: const TextTheme(
          headlineMedium: TextStyle(fontWeight: FontWeight.bold, color: Color(0xFF1A237E)),
          titleLarge: TextStyle(fontWeight: FontWeight.w600),
          bodyLarge: TextStyle(fontSize: 18, height: 1.5),
        ),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const PresentationScreen(),
      },
    );
  }
}

class PresentationScreen extends StatefulWidget {
  const PresentationScreen({super.key});

  @override
  State<PresentationScreen> createState() => _PresentationScreenState();
}

class _PresentationScreenState extends State<PresentationScreen> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('e-Education Initiative'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        actions: [
          Center(
            child: Padding(
              padding: const EdgeInsets.only(right: 16.0),
              child: Text(
                "${_currentPage + 1} / ${presentationSlides.length}",
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
      body: PageView.builder(
        controller: _pageController,
        itemCount: presentationSlides.length,
        onPageChanged: (index) {
          setState(() {
            _currentPage = index;
          });
        },
        itemBuilder: (context, index) {
          return SlideWidget(slide: presentationSlides[index]);
        },
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          if (_currentPage > 0)
            FloatingActionButton(
              onPressed: () {
                _pageController.previousPage(
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.easeInOut,
                );
              },
              heroTag: 'prev',
              child: const Icon(Icons.arrow_back),
            ),
          const SizedBox(width: 16),
          if (_currentPage < presentationSlides.length - 1)
            FloatingActionButton(
              onPressed: () {
                _pageController.nextPage(
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.easeInOut,
                );
              },
              heroTag: 'next',
              child: const Icon(Icons.arrow_forward),
            ),
        ],
      ),
    );
  }
}

class SlideWidget extends StatelessWidget {
  final Slide slide;

  const SlideWidget({super.key, required this.slide});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(32.0),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Theme.of(context).colorScheme.surface,
            Theme.of(context).colorScheme.surfaceContainerHighest,
          ],
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Header
          Text(
            slide.title,
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          const Divider(thickness: 2),
          const SizedBox(height: 24),
          
          // Content
          Expanded(
            child: ListView.builder(
              itemCount: slide.bulletPoints.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.check_circle,
                        color: Theme.of(context).colorScheme.secondary,
                        size: 24,
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: Text(
                          slide.bulletPoints[index],
                          style: Theme.of(context).textTheme.bodyLarge,
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          
          // Visual Suggestion Box (Placeholder for actual image)
          if (slide.visualSuggestion != null)
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(16),
              margin: const EdgeInsets.only(bottom: 24),
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primaryContainer.withOpacity(0.3),
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                  color: Theme.of(context).colorScheme.primary.withOpacity(0.5),
                  style: BorderStyle.solid,
                ),
              ),
              child: Column(
                children: [
                  const Icon(Icons.image_search, size: 40, color: Colors.grey),
                  const SizedBox(height: 8),
                  Text(
                    "Visual Suggestion:",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  ),
                  Text(
                    slide.visualSuggestion!,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontStyle: FontStyle.italic,
                      color: Theme.of(context).colorScheme.onSurfaceVariant,
                    ),
                  ),
                ],
              ),
            ),

          // Footer
          if (slide.footer != null)
            Center(
              child: Text(
                slide.footer!,
                style: Theme.of(context).textTheme.labelLarge?.copyWith(
                  color: Colors.grey,
                ),
              ),
            ),
        ],
      ),
    );
  }
}
