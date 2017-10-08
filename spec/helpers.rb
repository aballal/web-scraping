module Helpers
  def page
    getter = Getter.new
    url = 'https://jobonline.thecareersgroup.co.uk/careersgroup/student/Vacancies.aspx?st=java'
    getter.page(url)
  end

  def job_details
    [
      {
        title: 'Application Development',
        recruiter: 'Baillie Gifford',
        salary: 'Competitive'
      },
      {
        title: 'Operations Analyst',
        recruiter: 'Salmon Ltd',
        salary: 'Market Rates'
      },
      {
        title: 'Junior Java Developer & Support Consultant',
        recruiter: 'Salmon Ltd',
        salary: 'Market Rates'
      },
      {
        title: 'Junior Front End Developer',
        recruiter: 'Salmon Ltd',
        salary: 'Market Rates'
      },
      {
        title: 'Junior Performance Tester',
        recruiter: 'Salmon Ltd',
        salary: 'Market Rates'
      },
      {
        title: 'Junior Java Developer',
        recruiter: 'Salmon Ltd',
        salary: 'Market Rates'
      },
      {
        title: 'Graduate Software Developer',
        recruiter: 'eBay UK',
        salary: 'Competitive'
      },
      {
        title: 'Junior Front End Developer (Intern)',
        recruiter: 'Graduate Internships',
        salary: '£400 per week'
      },
      {
        title: 'JUNIOR DEVELOPER | LAMP Stack (Laravel/MySQL/.PHP/Javascript/HTML) | LONDON',
        recruiter: 'The Happiness Index Ltd',
        salary: 'Negotiable dep. on experience'
      },
      {
        title: 'Ad Operations Executive - Graduate/Entry Level',
        recruiter: 'Haymarket',
        salary: 'Dependent on Experience'
      },
      {
        title: 'Software Engineering Graduates',
        recruiter: 'MI6',
        salary: '£33,005 - £39,176 (depending on experience)'
      },
      {
        title: 'Web Application Developer (Java or Angular 2)',
        recruiter: 'Camlin Group',
        salary: '£30-£45k'
      },
      {
        title: 'Junior Java Developer - Talent Pool-170001JQ',
        recruiter: 'ITV',
        salary: 'TBC'
      },
      {
        title: 'IT developer (Intern / Full time)',
        recruiter: 'Illiquidx Securities Limited',
        salary: 'negotiable'
      }
    ]
  end
end
