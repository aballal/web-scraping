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
        salary: 'Competitive',
        location: 'Edinburgh',
        :'job type' => 'Graduate Programme / Scheme'
      },
      {
        title: 'Operations Analyst',
        recruiter: 'Salmon Ltd',
        salary: 'Market Rates',
        location: 'Watford',
        :'job type' => 'Graduate Programme / Scheme'
      },
      {
        title: 'Junior Java Developer & Support Consultant',
        recruiter: 'Salmon Ltd',
        salary: 'Market Rates',
        location: 'Watford',
        :'job type' => 'Graduate Programme / Scheme'
      },
      {
        title: 'Junior Front End Developer',
        recruiter: 'Salmon Ltd',
        salary: 'Market Rates',
        location: 'Watford',
        :'job type' => 'Graduate Programme / Scheme'
      },
      {
        title: 'Junior Performance Tester',
        recruiter: 'Salmon Ltd',
        salary: 'Market Rates',
        location: 'Watford',
        :'job type' => 'Graduate Programme / Scheme'
      },
      {
        title: 'Junior Java Developer',
        recruiter: 'Salmon Ltd',
        salary: 'Market Rates',
        location: 'Watford',
        :'job type' => 'Graduate Programme / Scheme'
      },
      {
        title: 'Graduate Software Developer',
        recruiter: 'eBay UK',
        salary: 'Competitive',
        location: 'Richmond',
        :'job type' => 'Permanent'
      },
      {
        title: 'Junior Front End Developer (Intern)',
        recruiter: 'Graduate Internships',
        salary: '£400 per week',
        location: 'Camden',
        :'job type' => 'Graduate Programme / Scheme'
      },
      {
        title: 'JUNIOR DEVELOPER | LAMP Stack (Laravel/MySQL/.PHP/Javascript/HTML) | LONDON',
        recruiter: 'The Happiness Index Ltd',
        salary: 'Negotiable dep. on experience',
        location: 'Southwark',
        :'job type' => 'Permanent'
      },
      {
        title: 'Ad Operations Executive - Graduate/Entry Level',
        recruiter: 'Haymarket',
        salary: 'Dependent on Experience',
        location: 'South West London',
        :'job type' => 'Permanent'
      },
      {
        title: 'Software Engineering Graduates',
        recruiter: 'MI6',
        salary: '£33,005 - £39,176 (depending on experience)',
        location: 'London',
        :'job type' => 'Permanent'
      },
      {
        title: 'Web Application Developer (Java or Angular 2)',
        recruiter: 'Camlin Group',
        salary: '£30-£45k',
        location: 'Lisburn',
        :'job type' => 'Permanent'
      },
      {
        title: 'Junior Java Developer - Talent Pool-170001JQ',
        recruiter: 'ITV',
        salary: 'TBC',
        location: 'South West London',
        :'job type' => 'Permanent'
      },
      {
        title: 'IT developer (Intern / Full time)',
        recruiter: 'Illiquidx Securities Limited',
        salary: 'negotiable',
        location: 'City of London',
        :'job type' => 'Internship/Placement'
      }
    ]
  end
end
