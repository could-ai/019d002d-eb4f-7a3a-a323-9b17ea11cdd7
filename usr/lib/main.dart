import 'package:flutter/material.dart';

void main() {
  runApp(const UrologicEquityReviewApp());
}

class UrologicEquityReviewApp extends StatelessWidget {
  const UrologicEquityReviewApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Academic Review Viewer',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF1A365D), // Deep academic blue
          brightness: Brightness.light,
        ),
        useMaterial3: true,
        textTheme: const TextTheme(
          bodyLarge: TextStyle(fontSize: 16, height: 1.6, color: Colors.black87),
          bodyMedium: TextStyle(fontSize: 14, height: 1.5, color: Colors.black87),
          headlineMedium: TextStyle(fontWeight: FontWeight.bold, color: Color(0xFF1A365D)),
        ),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const ReviewArticleScreen(),
      },
    );
  }
}

class ReviewArticleScreen extends StatelessWidget {
  const ReviewArticleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F9FA),
      appBar: AppBar(
        title: const Text('Academic Review Draft'),
        backgroundColor: Theme.of(context).colorScheme.primary,
        foregroundColor: Theme.of(context).colorScheme.onPrimary,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 32.0),
        child: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 800),
            child: Card(
              elevation: 2,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
              child: Padding(
                padding: const EdgeInsets.all(32.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Health Inequity Among Migrants in Urologic Care: A Comprehensive Review',
                      style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                        fontSize: 28,
                        height: 1.3,
                      ),
                    ),
                    const SizedBox(height: 24),
                    const Divider(),
                    const SizedBox(height: 24),
                    Text(
                      'Introduction',
                      style: Theme.of(context).textTheme.titleLarge?.copyWith(
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).colorScheme.primary,
                      ),
                    ),
                    const SizedBox(height: 16),
                    Text(
                      'Health inequities among migrant populations represent a critical and growing concern in urologic care, reflecting broader systemic disparities in healthcare access and outcomes. As global migration accelerates, urologists increasingly encounter diverse patient populations facing multifaceted barriers to care, including precarious legal status, language and cultural differences, socioeconomic challenges, and limited health literacy [1, 2]. These barriers frequently impede timely and equitable access to specialized urologic services. Consequently, migrants experience suboptimal screening, delayed diagnosis, and inadequate treatment across a broad spectrum of urologic diseases. This encompasses both urologic malignancies—such as prostate, bladder, and kidney cancers, where delayed intervention significantly impacts survival—and non-malignant conditions, including urolithiasis, benign prostatic hyperplasia, and recurrent urinary tract infections, which profoundly affect quality of life [3, 4, 5]. Furthermore, structural factors like geographic isolation and low urologist density disproportionately affect marginalized migrant groups [6]. Despite these pressing issues, targeted research on migrants’ specific urologic health needs remains limited [7]. This review synthesizes the latest evidence on health inequities affecting migrants in urologic care. By highlighting the social determinants, systemic barriers, and policy gaps that perpetuate these disparities, we propose strategies to promote equitable, culturally competent, and accessible urologic healthcare for migrant populations [8].',
                      style: Theme.of(context).textTheme.bodyLarge,
                      textAlign: TextAlign.justify,
                    ),
                    const SizedBox(height: 40),
                    Text(
                      'References',
                      style: Theme.of(context).textTheme.titleLarge?.copyWith(
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).colorScheme.primary,
                      ),
                    ),
                    const SizedBox(height: 16),
                    _buildReferenceItem(
                      '1',
                      'Immigrants’ self-perceived barriers to healthcare: A systematic review of quantitative evidence in European countries. ScienceDirect, 2025.',
                    ),
                    _buildReferenceItem(
                      '2',
                      'Health and Health Care Experiences of Immigrants: The 2023 KFF/LA Times Survey of Immigrants. KFF, 2023.',
                    ),
                    _buildReferenceItem(
                      '3',
                      'Striving for Equity: Examining Health Disparities in Urologic Oncology. PMC, 2024.',
                    ),
                    _buildReferenceItem(
                      '4',
                      'Racial disparities in urologic health care. PubMed.',
                    ),
                    _buildReferenceItem(
                      '5',
                      'Rural Health Disparities in Urologic Care. American Urological Association, 2025.',
                    ),
                    _buildReferenceItem(
                      '6',
                      'Combining Drive Time and Urologist Density to Understand Access to Urologic Care. PMC, 2020.',
                    ),
                    _buildReferenceItem(
                      '7',
                      'Migrant-sensitive healthcare in Europe: advancing health equity through accessibility, acceptability, quality, and trust. PMC, 2024.',
                    ),
                    _buildReferenceItem(
                      '8',
                      'Spatial variations in health service utilization among migrant population: a perspective on health equity. Frontiers in Public Health, 2024.',
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildReferenceItem(String number, String text) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 24,
            child: Text(
              '[$number]',
              style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.black54),
            ),
          ),
          Expanded(
            child: Text(
              text,
              style: const TextStyle(fontSize: 14, color: Colors.black87, height: 1.4),
            ),
          ),
        ],
      ),
    );
  }
}
