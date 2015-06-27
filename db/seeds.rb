#
# Seed Data for testing app
#
Student.destroy_all
Officer.destroy_all
Cohort.destroy_all
Survey.destroy_all

Officer.create([
  {name: 'Kyle Lee', email: 'kyle@example.com', password: "password"},
  {name: 'Kevin Vinokur', email: 'kevin@example.com', password: "password"},
  {name: 'Michele Cruz', email: 'michele@example.com', password: "password"}
  ])

Cohort.create([
  {name: 'AlumNUTS', officer_id: 1, start_date: Date.parse('2014/05/27'), end_date: Date.parse('2014/08/21')},
  {name: 'Melville', officer_id: 1, start_date: Date.parse('2014/04/27'), end_date: Date.parse('2014/07/21')},
  {name: 'Lemon', officer_id: 1, start_date: Date.parse('2015/03/27'), end_date: Date.parse('2015/06/21')},
  {name: 'Zeus', officer_id: 2, start_date: Date.parse('2015/02/27'), end_date: Date.parse('2015/05/21')},
  {name: 'McClane', officer_id: 2, start_date: Date.parse('2015/01/27'), end_date: Date.parse('2015/04/21')},
  {name: 'Ewok', officer_id: 3, start_date: Date.parse('2014/12/27'), end_date: Date.parse('2015/03/21')},
  {name: 'Hufflepuff', officer_id: 3, start_date: Date.parse('2014/11/27'), end_date: Date.parse('2015/02/21')}
  ])

Student.create([
  {name: 'Bobby King', email: 'king.robertjoseph@gmail.com', password: "password", city: 'New York', state: 'New York', cohort_id: 1, skills: 'JavaScript, Ruby, Ruby on Rails, Sinatra, HTML, CSS,Jquery, JSON'},
  {name: 'Dasha Murauyova', email: 'dashamuravjova@gmail.com', password: "password", city: 'New York', state: 'New York', cohort_id: 1, skills: 'JavaScript, Ruby, Ruby on Rails, Sinatra, HTML, CSS,Jquery, JSON'},
  {name: 'Dasha Murauyova', email: 'dashamuravjova@gmail.com', password: "password", city: 'New York', state: 'New York', cohort_id: 1, skills: 'JavaScript, Ruby, Ruby on Rails, Sinatra, HTML, CSS,Jquery, JSON'},
  {name: 'Mark Paulson', email: 'markpaulson1@hotmail.com', password: "password", city: 'New York', state: 'New York', cohort_id: 1, skills: 'JavaScript, Ruby, Ruby on Rails, Sinatra, HTML, CSS,Jquery, JSON'},
  {name: 'Orin Xie', email: 'orin.xie@gmail.com', password: "password", city: 'New York', state: 'New York', cohort_id: 1, skills: 'JavaScript, Ruby, Ruby on Rails, Sinatra, HTML, CSS,Jquery, JSON'},
  {name: 'Domenica LaLima', email: 'dlalima@yahoo.com', password: "password", city: 'New York', state: 'New York', cohort_id: 1, skills: 'JavaScript, Ruby, Ruby on Rails, Sinatra, HTML, CSS, Jquery, JSON'},
  {name: 'Andrew Garver', email: 'a.w.garver@gmail.com', password: "password", city: 'New York', state: 'New York', cohort_id: 2, skills: 'JavaScript, Ruby, Ruby on Rails, Sinatra, HTML, CSS,Jquery, JSON'},
  {name: 'Anila Alexander', email: 'anila.j.alexander@gmail.com', password: "password", city: 'New York', state: 'New York', cohort_id: 2, skills: 'JavaScript, Ruby, Ruby on Rails, Sinatra, HTML, CSS,Jquery, JSON'},
  {name: 'Ben Sayeg', email: 'bensayeg@gmail.com', password: "password", city: 'New York', state: 'New York', cohort_id: 2, skills: 'JavaScript, Ruby, Ruby on Rails, Sinatra, HTML, CSS,Jquery, JSON'},
  {name: 'Bryant Novas', email: 'bryant.novas@gmail.com', password: "password", city: 'New York', state: 'New York', cohort_id: 2, skills: 'JavaScript, Ruby, Ruby on Rails, Sinatra, HTML, CSS,Jquery, JSON'},
  {name: 'David Neuhaus', email: 'neuhaus87@gmail.com', password: "password", city: 'New York', state: 'New York', cohort_id: 2, skills: 'JavaScript, Ruby, Ruby on Rails, Sinatra, HTML, CSS,Jquery, JSON'},
  {name: 'Devatha Kesarkodigae', email: 'k.n.devs@gmail.com', password: "password", city: 'New York', state: 'New York', cohort_id: 3, skills: 'JavaScript, Ruby, Ruby on Rails, Sinatra, HTML, CSS,Jquery, JSON'},
  {name: 'Dor Rubin', email: 'kdor.rubin@gmail.com', password: "password", city: 'New York', state: 'New York', cohort_id: 3, skills: 'JavaScript, Ruby, Ruby on Rails, Sinatra, HTML, CSS,Jquery, JSON'},
  {name: 'Fernanda Correa', email: 'nandasc@gmail.com', password: "password", city: 'New York', state: 'New York', cohort_id: 3, skills: 'JavaScript, Ruby, Ruby on Rails, Sinatra, HTML, CSS,Jquery, JSON'},
  {name: 'Gabriella Lubliner', email: 'gabriella.lubliner@gmail.com', password: "password", city: 'New York', state: 'New York', cohort_id: 3, skills: 'JavaScript, Ruby, Ruby on Rails, Sinatra, HTML, CSS,Jquery, JSON'},
  {name: 'Gordon DuGan', email: 'gordon.dugan2@gmail.com', password: "password", city: 'New York', state: 'New York', cohort_id: 3, skills: 'JavaScript, Ruby, Ruby on Rails, Sinatra, HTML, CSS,Jquery, JSON'},
  {name: 'James Kim', email: 'khkim1776@gmail.com', password: "password", city: 'New York', state: 'New York', cohort_id: 4, skills: 'JavaScript, Ruby, Ruby on Rails, Sinatra, HTML, CSS,Jquery, JSON'},
  {name: 'Jeremy Bell', email: 'jeremyianbell@gmail.com', password: "password", city: 'New York', state: 'New York', cohort_id: 4, skills: 'JavaScript, Ruby, Ruby on Rails, Sinatra, HTML, CSS,Jquery, JSON'},
  {name: 'Junho Rhee', email: 'juno0628@gmail.com', password: "password", city: 'New York', state: 'New York', cohort_id: 4, skills: 'JavaScript, Ruby, Ruby on Rails, Sinatra, HTML, CSS,Jquery, JSON'},
  {name: 'Karlyce Edwards', email: 'karlyce.edwards@gmail.com', password: "password", city: 'New York', state: 'New York', cohort_id: 4, skills: 'JavaScript, Ruby, Ruby on Rails, Sinatra, HTML, CSS,Jquery, JSON'},
  {name: 'Kelly Stevens', email: 'kllystvns@gmail.com', password: "password", city: 'New York', state: 'New York', cohort_id: 5, skills: 'JavaScript, Ruby, Ruby on Rails, Sinatra, HTML, CSS,Jquery, JSON'},
  {name: 'Kelly Devine', email: 'kellyd813@gmail.com', password: "password", city: 'New York', state: 'New York', cohort_id: 5, skills: 'JavaScript, Ruby, Ruby on Rails, Sinatra, HTML, CSS,Jquery, JSON'},
  {name: 'Mark Paulson', email: 'kmarkpaulson1@hotmail.com', password: "password", city: 'New York', state: 'New York', cohort_id: 5, skills: 'JavaScript, Ruby, Ruby on Rails, Sinatra, HTML, CSS,Jquery, JSON'},
  {name: 'Max Peterson', email: 'petersonmaxr@gmail.com', password: "password", city: 'New York', state: 'New York', cohort_id: 5, skills: 'JavaScript, Ruby, Ruby on Rails, Sinatra, HTML, CSS,Jquery, JSON'},
  {name: 'Michael Dennis', email: 'pmichaelsdennis4@gmail.com', password: "password", city: 'New York', state: 'New York', cohort_id: 6, skills: 'JavaScript, Ruby, Ruby on Rails, Sinatra, HTML, CSS,Jquery, JSON'},
  {name: 'Orlando arana', email: 'porlandoarana@hotmail.com', password: "password", city: 'New York', state: 'New York', cohort_id: 6, skills: 'JavaScript, Ruby, Ruby on Rails, Sinatra, HTML, CSS,Jquery, JSON'},
  {name: 'Ryan Burke', email: 'ryaneburke@gmail.com', password: "password", city: 'New York', state: 'New York', cohort_id: 6, skills: 'JavaScript, Ruby, Ruby on Rails, Sinatra, HTML, CSS,Jquery, JSON'},
  {name: 'Sam Xiali Hu', email: 'samuelhuxiali@gmail.com', password: "password", city: 'New York', state: 'New York', cohort_id: 6, skills: 'JavaScript, Ruby, Ruby on Rails, Sinatra, HTML, CSS,Jquery, JSON'},
  {name: 'Sam Xiali Hu', email: 'samuelhuxiali@gmail.com', password: "password", city: 'New York', state: 'New York', cohort_id: 6, skills: 'JavaScript, Ruby, Ruby on Rails, Sinatra, HTML, CSS,Jquery, JSON'},
  {name: 'Toshia Harold', email: 'toshia@gmail.com', password: "password", city: 'New York', state: 'New York', cohort_id: 7, skills: 'JavaScript, Ruby, Ruby on Rails, Sinatra, HTML, CSS,Jquery, JSON'},
  {name: 'Eric Gilley', email: 'eric@gmail.com', password: "password", city: 'New York', state: 'New York', cohort_id: 7, skills: 'JavaScript, Ruby, Ruby on Rails, Sinatra, HTML, CSS,Jquery, JSON'},
  {name: 'Jacinta Jusino', email: 'jacinta@gmail.com', password: "password", city: 'New York', state: 'New York', cohort_id: 7, skills: 'JavaScript, Ruby, Ruby on Rails, Sinatra, HTML, CSS,Jquery, JSON'},
  {name: 'Jacinta Jusino', email: 'jacinta@gmail.com', password: "password", city: 'New York', state: 'New York', cohort_id: 7, skills: 'JavaScript, Ruby, Ruby on Rails, Sinatra, HTML, CSS,Jquery, JSON'},
  {name: 'Mindi Whittemore', email: 'mindi@gmail.com', password: "password", city: 'New York', state: 'New York', cohort_id: 7, skills: 'JavaScript, Ruby, Ruby on Rails, Sinatra, HTML, CSS,Jquery, JSON'},
  {name: 'Toshia Harold', email: 'toshia@gmail.com', password: 'password', city: 'New York', state: 'New York', cohort_id: 7, skills: 'JavaScript, Ruby, Ruby on Rails, Sinatra, HTML, CSS,Jquery, JSON',is_employed: true ,employment_date: Date.parse('2015/2/22')},
  {name: 'Eric Gilley', email: 'eric@gmail.com', password: 'password', city: 'New York', state: 'New York', cohort_id: 7, skills: 'JavaScript, Ruby, Ruby on Rails, Sinatra, HTML, CSS,Jquery, JSON'},
  {name: 'Jacinta Jusinok', email: 'jacinta2@gmail.com', password: 'password', city: 'New York', state: 'New York', cohort_id: 7, skills: 'JavaScript, Ruby, Ruby on Rails, Sinatra, HTML, CSS,Jquery, JSON',is_employed: true ,employment_date: Date.parse('2015/2/25')},
  {name: 'Jacinta Jusino', email: 'jacinta@gmail.com', password: 'password', city: 'New York', state: 'New York', cohort_id: 7, skills: 'JavaScript, Ruby, Ruby on Rails, Sinatra, HTML, CSS,Jquery, JSON',is_employed: true ,employment_date: Date.parse('2015/3/25')},
  {name: 'Mindi Whittemore', email: 'mindi@gmail.com', password: 'password', city: 'New York', state: 'New York', cohort_id: 7, skills: 'JavaScript, Ruby, Ruby on Rails, Sinatra, HTML, CSS,Jquery, JSON',is_employed: true ,employment_date: Date.parse('2015/3/5')},
  {name: 'Toshia Harold2', email: 'toshia2@gmail.com', password: 'password', city: 'New York', state: 'New York', cohort_id: 7, skills: 'JavaScript, Ruby, Ruby on Rails, Sinatra, HTML, CSS,Jquery, JSON'},
  {name: 'Eric Gilley2', email: 'eric2@gmail.com', password: 'password', city: 'New York', state: 'New York', cohort_id: 7, skills: 'JavaScript, Ruby, Ruby on Rails, Sinatra, HTML, CSS,Jquery, JSON',is_employed: true ,employment_date: Date.parse('2015/4/1')},
  {name: 'Jacinta Jusinok2', email: 'jacinta2222@gmail.com', password: 'password', city: 'New York', state: 'New York', cohort_id: 7, skills: 'JavaScript, Ruby, Ruby on Rails, Sinatra, HTML, CSS,Jquery, JSON',is_employed: true ,employment_date: Date.parse('2015/3/15')},
  {name: 'Jacinta Jusino2', email: 'jacinta222@gmail.com', password: 'password', city: 'New York', state: 'New York', cohort_id: 7, skills: 'JavaScript, Ruby, Ruby on Rails, Sinatra, HTML, CSS,Jquery, JSON',is_employed: true ,employment_date: Date.parse('2015/2/27')},
  {name: 'Mindi Whittemore2', email: 'mindi2@gmail.com', password: 'password', city: 'New York', state: 'New York', cohort_id: 7, skills: 'JavaScript, Ruby, Ruby on Rails, Sinatra, HTML, CSS,Jquery, JSON',is_employed: true ,employment_date: Date.parse('2015/3/1')},
  {name: 'Toshia Harold3', email: 'toshia3@gmail.com', password: 'password', city: 'New York', state: 'New York', cohort_id: 7, skills: 'JavaScript, Ruby, Ruby on Rails, Sinatra, HTML, CSS,Jquery, JSON'},
  {name: 'Eric Gilley3', email: 'eric3@gmail.com', password: 'password', city: 'New York', state: 'New York', cohort_id: 7, skills: 'JavaScript, Ruby, Ruby on Rails, Sinatra, HTML, CSS,Jquery, JSON',is_employed: true ,employment_date: Date.parse('2015/3/7')},
  {name: 'Jacinta Jusinok3', email: 'jacinta23@gmail.com', password: 'password', city: 'New York', state: 'New York', cohort_id: 7, skills: 'JavaScript, Ruby, Ruby on Rails, Sinatra, HTML, CSS,Jquery, JSON',is_employed: true ,employment_date: Date.parse('2015/3/17')},
  {name: 'Jacinta Jusino3', email: 'jacinta3@gmail.com', password: 'password', city: 'New York', state: 'New York', cohort_id: 7, skills: 'JavaScript, Ruby, Ruby on Rails, Sinatra, HTML, CSS,Jquery, JSON',is_employed: true ,employment_date: Date.parse('2015/3/20')},
  {name: 'Mindi Whittemore3', email: 'mindi3@gmail.com', password: 'password', city: 'New York', state: 'New York', cohort_id: 7, skills: 'JavaScript, Ruby, Ruby on Rails, Sinatra, HTML, CSS,Jquery, JSON',is_employed: true ,employment_date: Date.parse('2015/2/25')},
  {name: 'Toshia Harold23', email: 'toshia23@gmail.com', password: 'password', city: 'New York', state: 'New York', cohort_id: 7, skills: 'JavaScript, Ruby, Ruby on Rails, Sinatra, HTML, CSS,Jquery, JSON',is_employed: true ,employment_date: Date.parse('2015/2/25')},
  {name: 'Eric Gilley23', email: 'eric23@gmail.com', password: 'password', city: 'New York', state: 'New York', cohort_id: 7, skills: 'JavaScript, Ruby, Ruby on Rails, Sinatra, HTML, CSS,Jquery, JSON',is_employed: true ,employment_date: Date.parse('2015/3/10')},
  {name: 'Jacinta Jusinok32', email: 'jacinta32222@gmail.com', password: 'password', city: 'New York', state: 'New York', cohort_id: 7, skills: 'JavaScript, Ruby, Ruby on Rails, Sinatra, HTML, CSS,Jquery, JSON',is_employed: true ,employment_date: Date.parse('2015/9/25')},
  {name: 'Jacinta Jusino32', email: 'jacinta3222@gmail.com', password: 'password', city: 'New York', state: 'New York', cohort_id: 7, skills: 'JavaScript, Ruby, Ruby on Rails, Sinatra, HTML, CSS,Jquery, JSON',is_employed: true ,employment_date: Date.parse('2015/2/28')},
  {name: 'Mindi Whittemore32', email: 'mindi2@gmail.com', password: 'password', city: 'New York', state: 'New York', cohort_id: 7, skills: 'JavaScript, Ruby, Ruby on Rails, Sinatra, HTML, CSS,Jquery, JSON'}
])

Survey.create([
  {name: 'Bobby King', web_dev_type: 1, employment_status: 'true', position_type: 1, found_thru_outcomes: 'true', company: 'Wired Magazine', employment_date: Date.parse('2014/08/28'), enough_preparation: 5, officer_effectiveness: 3, should_have_learned: 'At first I questioned if ruby was the best back-end language to learn but my job search luck proved me wrong.', hurdles: '', anything_else: 'Very happy with my outcome!', cohort_id: 1},
  {name: 'Mark Paulson', web_dev_type: 1, employment_status: 'false', position_type: '', found_thru_outcomes: '', company: '', employment_date: '', enough_preparation: 3, officer_effectiveness: 2, should_have_learned: 'The skills we learned were relevant.', hurdles: 'My biggest hurdle is the fact that I was only going for start-up jobs but now I\ll start going for mid-size companies next.', anything_else: 'Guess you\ll be seeing more of me around campus getting some more leads.', cohort_id: 1},
  {name: 'Clint Johnson', web_dev_type: 2, employment_status: 'false', position_type: '', found_thru_outcomes: '', company: '', employment_date: '', enough_preparation: 1, officer_effectiveness: 2, should_have_learned: 'I dunno why I can\t find a job. Been looking for 3 months now.', hurdles: 'I went to London for a few weeks and finally got back on track with my job hunt.', anything_else: '', cohort_id: 2},
  {name: 'Joe Lemming', web_dev_type: 3, employment_status: 'true', position_type: 1, found_thru_outcomes: 'false', company: 'Poppin', employment_date: Date.parse('2014/07/04'), enough_preparation: 4, officer_effectiveness: 2, should_have_learned: 'Wanted to spend more time on front-end frameworks.', hurdles: '', anything_else: 'My officer was helpful but ultimately I found a job on my own.', cohort_id: 2},
  {name: 'Orin Xie', web_dev_type: 3, employment_status: 'true', position_type: 2, found_thru_outcomes: 'true', company: 'Chase Bank', employment_date: Date.parse('2014/09/22'), enough_preparation: 5, officer_effectiveness: 3, should_have_learned: 'Seems like we learned a lot of what I\m using on the job right now.', hurdles: '', anything_else: 'I\ve already turned on a couple of people to this course.', cohort_id: 1},
  {name: 'Candice Metcalfe', web_dev_type: 3, employment_status: 'true', position_type: 1, found_thru_outcomes: 'true', company: 'Google', employment_date: Date.parse('2014/12/10'), enough_preparation: 5, officer_effectiveness: 3, should_have_learned: 'No real comment because I went for a ruby job and got it on the spot.', hurdles: '', anything_else: 'Thanks for everything, guys.', cohort_id: 2},
  {web_dev_type: 2, employment_status: 'true', position_type: 2, found_thru_outcomes: 'true', company: 'Dept of Labor', employment_date: Date.parse('2014/09/01'), enough_preparation: 5, officer_effectiveness: 2, should_have_learned: 'PHP and Python', hurdles: '', anything_else: '', cohort_id: 1},
  {name: 'James Jones', web_dev_type: 3, employment_status: 'false', position_type: '', found_thru_outcomes: '', company: '', employment_date: '', enough_preparation: 1, officer_effectiveness: 1, should_have_learned: 'This course was tough but I feel like we learned TOO many things in a short amount of time.', hurdles: 'Everything', anything_else: '', cohort_id: 2},
  {name: 'Lee Cremini', web_dev_type: 1, employment_status: 'false', position_type: '', found_thru_outcomes: '', company: '', employment_date: '', enough_preparation: 1, officer_effectiveness: 2, should_have_learned: 'Wanted more time on CSS', hurdles: 'Maybe my Linkedin profile?????', anything_else: '', cohort_id: 2},
  {name: 'Brenda Chairish', web_dev_type: 2, employment_status: 'true', position_type: 1, found_thru_outcomes: 'true', company: 'Games, Games, and More Games', employment_date: Date.parse('2014/10/01'), enough_preparation: 4, officer_effectiveness: 3, should_have_learned: 'Drupul would have been great but am learning it on the job anyway', hurdles: '', anything_else: '', cohort_id: 2},
  {name: 'Max Ergason', web_dev_type: 3, employment_status: 'true', position_type: 1, found_thru_outcomes: 'true', company: 'General Assembly', employment_date: Date.parse('2015/09/24'), enough_preparation: 5, officer_effectiveness: 3, should_have_learned: 'Totally relevant curriculum!', hurdles: '', anything_else: '', cohort_id: 3},
  {name: 'Domenica LaLima', web_dev_type: 2, employment_status: 'true', position_type: 2, found_thru_outcomes: 'false', company: 'Gilt', employment_date: Date.parse('2014/12/31'), enough_preparation: 3, officer_effectiveness: 3, should_have_learned: 'I recommend teaching more frameworks cuz they totally streamline the workflow.', hurdles: '', anything_else: 'Even though I found my job on my own, it wouldn\t have been possible w/out a great LinkedIn profile...thanks to GA!', cohort_id: 1}

])
