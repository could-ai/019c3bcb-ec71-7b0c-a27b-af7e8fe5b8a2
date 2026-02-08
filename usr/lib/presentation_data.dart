class Slide {
  final String title;
  final List<String> bulletPoints;
  final String? visualSuggestion;
  final String? footer;

  const Slide({
    required this.title,
    required this.bulletPoints,
    this.visualSuggestion,
    this.footer,
  });
}

const List<Slide> presentationSlides = [
  Slide(
    title: "e-Education: Empowering Dreams",
    bulletPoints: [
      "Japan-based e-Education Initiative",
      "Revolutionizing University Admission in Bangladesh",
      "100% Free Support for Meritorious Students",
      "Sustainable Education Model",
    ],
    visualSuggestion: "Logo of e-Education, images of happy students, Japan & Bangladesh flags",
    footer: "Introduction",
  ),
  Slide(
    title: "Mission & Vision",
    bulletPoints: [
      "Mission: Eliminate the education gap for rural and underprivileged students.",
      "Vision: A world where every student has equal access to quality education.",
      "Social Impact: Turning dreams into reality for HSC graduates.",
    ],
    visualSuggestion: "Iconography representing equality, education, and growth",
    footer: "Why We Exist",
  ),
  Slide(
    title: "Past Achievements (Last Year)",
    bulletPoints: [
      "Supported 281 Students (100% Free)",
      "29 Students Admitted to University of Dhaka (DU)",
      "Success Rate: ~10% in the most competitive exam",
      "Proven track record of excellence",
    ],
    visualSuggestion: "Bar chart showing 281 students vs 29 successes. Photos of successful students.",
    footer: "Success Stories",
  ),
  Slide(
    title: "The Problem",
    bulletPoints: [
      "Geographical Barriers: Quality coaching is Dhaka-centric.",
      "Financial Constraints: Traditional coaching is expensive.",
      "Lack of Guidance: Rural students lack mentorship.",
    ],
    visualSuggestion: "Map of Bangladesh highlighting rural vs urban gap. Icon of broken piggy bank.",
    footer: "Problem Statement",
  ),
  Slide(
    title: "The Solution: e-Education Model",
    bulletPoints: [
      "Online-Based Support: Accessible from anywhere.",
      "Hybrid Model: Free Program + Paid Premium Courses.",
      "Quality Mentorship: Classes by top university students.",
      "Affordability: High quality at a fraction of the cost.",
    ],
    visualSuggestion: "Diagram showing 'Online Platform' connecting 'Mentors' to 'Students'.",
    footer: "Our Solution",
  ),
  Slide(
    title: "Target Audience",
    bulletPoints: [
      "Primary: Recent HSC Examinees (Science, Arts, Commerce).",
      "Secondary: Parents & Guardians concerned about future.",
      "Focus: Ambitious students seeking DU admission.",
    ],
    visualSuggestion: "Persona cards for 'The Ambitious Student' and 'The Supportive Parent'.",
    footer: "Who We Serve",
  ),
  Slide(
    title: "Marketing Strategy (1,000 Paid Students)",
    bulletPoints: [
      "Channels: Facebook, YouTube, WhatsApp, Telegram.",
      "Funnel: Free Webinar -> Free Support Group -> Trust -> Paid Course.",
      "Content: Success stories, result showcases, daily quizzes.",
      "Referral: Ambassador program for previous students.",
    ],
    visualSuggestion: "Funnel diagram: Awareness -> Interest -> Decision -> Action.",
    footer: "Growth Strategy",
  ),
  Slide(
    title: "Conversion Strategy",
    bulletPoints: [
      "Pricing: Competitive and value-driven.",
      "Urgency: 'Limited Seats' for premium batches.",
      "Value: ROI of a public university degree.",
      "Scholarships: Merit-based discounts to attract top talent.",
    ],
    visualSuggestion: "Icons of price tag, clock (urgency), and graduation cap.",
    footer: "Sales Strategy",
  ),
  Slide(
    title: "Projected Impact (Upcoming Year)",
    bulletPoints: [
      "300 Students: Full Free Support (Scholarship).",
      "1,000 Students: Paid Premium Enrollments.",
      "Goal: Increase DU admission success rate.",
      "Sustainability: Paid courses fund the free program.",
    ],
    visualSuggestion: "Pie chart or split screen showing 300 Free vs 1000 Paid.",
    footer: "Future Goals",
  ),
  Slide(
    title: "Sustainability & Vision",
    bulletPoints: [
      "Ethical Business: Profit fuels social impact.",
      "Scaling: Expanding to national level coverage.",
      "Long-term: Partnering with more universities.",
    ],
    visualSuggestion: "Cycle diagram: Revenue -> Free Education -> Social Impact -> Brand Value -> Revenue.",
    footer: "Long-Term Vision",
  ),
  Slide(
    title: "Join Our Journey",
    bulletPoints: [
      "Invest in the future of Bangladesh.",
      "Partner with a proven, impactful initiative.",
      "Let's build the next generation of leaders.",
      "Contact us to collaborate.",
    ],
    visualSuggestion: "Handshake icon, contact details, QR code.",
    footer: "Conclusion",
  ),
];
