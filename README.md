Web Scraping
---

This project implements a rake task that scrapes job information from CareersGroup (link below) and outputs the data in JSON. One can pass a search term to it on the command line (example 'java').  
https://jobonline.thecareersgroup.co.uk/careersgroup/student/Vacancies.aspx?st=java

The follow details are scraped for each job:  
- Title
- Recruiter
- Salary
- Location
- Job type
- Job description

The program checks every page, and not just the first page, and scrapes all jobs listed on each of those pages.

Each job has its own linked page and the program scrapes data from the job's linked page rather than the listing page so that its ability to scrape is not limited to the few fields available on the summary page. Job type and Job description (complete) demonstrate this fact.

Instructions
---

#### Set up  

```
$ git clone https://github.com/aballal/web-scraping.git
$ cd web-scraping
$ bundle
```

#### Running

`$ rake scrape[search_term]` example `$ rake scrape[java]` to scrape the website for job with keyword search_term.

The results are available in `./output/output.json`

#### Tests

`$ rspec` for tests.  

Please note that web pages have not been mocked as of now and hence tests can break in the future when the website content for keyword 'java' changes.

Technologies
---

Ruby  
Mechanize   
Rake

Rubocop for style guide  
RSpec, Aruba for testing  
Simplecov for coverage data

Complexity
---

```
Akshathas-MacBook-Pro:web-scraping aksjohn$ flog ./lib/app.rb
    14.5: flog total
    14.5: flog/method average

    14.5: main#none
Akshathas-MacBook-Pro:web-scraping aksjohn$ flog ./lib/getter.rb
    10.6: flog total
     2.1: flog/method average

     2.5: Getter#initialize                ./lib/getter.rb:5-6
     2.4: Getter#page                      ./lib/getter.rb:9-10
     2.4: Getter#to_s                      ./lib/getter.rb:13-14
Akshathas-MacBook-Pro:web-scraping aksjohn$ flog ./lib/outputter.rb
    13.6: flog total
     2.7: flog/method average

     6.8: Outputter#json                   ./lib/outputter.rb:9-11
     2.4: Outputter#fullpath               ./lib/outputter.rb:19-20
Akshathas-MacBook-Pro:web-scraping aksjohn$ flog ./lib/scraper.rb
    53.3: flog total
     6.7: flog/method average

    15.2: Scraper#selected_texts           ./lib/scraper.rb:47-51
    12.9: Scraper#all_texts                ./lib/scraper.rb:38-44
    10.5: Scraper#job_links                ./lib/scraper.rb:24-31
```

How it works
---

- Getter class is instantiated with a Mechanize agent.  
- Getter class method page is invoked passing a url. This returns the page corresponding to the url.  
- Scraper class is instantiate with this page.  
- Invoking Scraper class method job_details does the following  
  - Collects all job links on the page  
  - Clicks 'Next >' for next page and repeats previous step  
  - Repeats previous step until there is no next page  
  - Clicks each job link and collects all texts on the job's linked page  
  - Selects the title (first text) and texts following the keys we are interested in
  - Builds a hash of the selected texts and returns it
- Output class is instantiated with job_details  
- Output class method json is invoked which writes the output to 'output/output.json'

Approach
---

As web scraping was completely new to me I first did a sample project using a simple website. I used Nokogiri instead of Mechanize for this sample project.  Here is the sample project  
https://github.com/aballal/web-scraping-trial.git

Scraping CareersGroup however (this project) proved to be much more challenging since the details I needed to scrape did not have classes or ids. After many 'p's and examining the structure of NodeSet object I arrived at the decision of extracting the details I need from the texts.  

The commit messages provide an overview of the approach followed.
