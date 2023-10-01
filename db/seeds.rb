# db/seeds.rb

advice_data = [
  { title: 'Stay Active', description: 'Engage in regular physical activity, such as walking or yoga.', age_recommendation: 65 },
  { title: 'Healthy Eating', description: 'Incorporate more whole foods and reduce processed foods for better health.', age_recommendation: 60 },
  { title: 'Mindfulness', description: 'Practice meditation and mindfulness for mental well-being.', age_recommendation: 70 },
  { title: 'Regular Checkups', description: 'Visit your doctor regularly to stay on top of health issues.', age_recommendation: 65 }
]

advice_data.each do |advice|
  Advice.create(advice)
end
