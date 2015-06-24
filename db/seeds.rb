#
# Seed Data for testing app
#
Student.destroy_all
Officer.destroy_all
Cohort.destroy_all

Officer.create([
  {name: 'Kyle Lee', email: 'kyle@example.com', password: 'password'},
  {name: 'Kevin Vinokur', email: 'kevin@example.com', password: 'password'},
  {name: 'Michele Cruz', email: 'michele@example.com', password: 'password'}
  ])

Cohort.create([
  {name: 'AlumNUTS', officer_id: 1, start_date: Date.parse('2015/05/27'), end_date: Date.parse('2015/08/21')},
  {name: 'Melville', officer_id: 1, start_date: Date.parse('2015/04/27'), end_date: Date.parse('2015/07/21')},
  {name: 'Lemon', officer_id: 1, start_date: Date.parse('2015/03/27'), end_date: Date.parse('2015/06/21')},
  {name: 'Zeus', officer_id: 2, start_date: Date.parse('2015/02/27'), end_date: Date.parse('2015/05/21')},
  {name: 'McClane', officer_id: 2, start_date: Date.parse('2015/01/27'), end_date: Date.parse('2015/04/21')},
  {name: 'Ewok', officer_id: 3, start_date: Date.parse('2014/12/27'), end_date: Date.parse('2015/03/21')},
  {name: 'Hufflepuff', officer_id: 3, start_date: Date.parse('2014/11/27'), end_date: Date.parse('2015/02/21')}
  ])

Student.create([
  {name: 'Bobby King', email: 'king.robertjoseph@gmail.com', password: 'password', city: 'New York', state: 'New York', cohort_id: 1, skills: 'JavaScript, Ruby, Ruby on Rails, Sinatra, HTML, CSS,Jquery, JSON'},
  {name: 'Dasha Murauyova', email: 'dashamuravjova@gmail.com', password: 'password', city: 'New York', state: 'New York', cohort_id: 1, skills: 'JavaScript, Ruby, Ruby on Rails, Sinatra, HTML, CSS,Jquery, JSON'},
  {name: 'Dasha Murauyova', email: 'dashamuravjova@gmail.com', password: 'password', city: 'New York', state: 'New York', cohort_id: 1, skills: 'JavaScript, Ruby, Ruby on Rails, Sinatra, HTML, CSS,Jquery, JSON'},
  {name: 'Mark Paulson', email: 'markpaulson1@hotmail.com', password: 'password', city: 'New York', state: 'New York', cohort_id: 1, skills: 'JavaScript, Ruby, Ruby on Rails, Sinatra, HTML, CSS,Jquery, JSON'},
  {name: 'Orin Xie', email: 'orin.xie@gmail.com', password: 'password', city: 'New York', state: 'New York', cohort_id: 1, skills: 'JavaScript, Ruby, Ruby on Rails, Sinatra, HTML, CSS,Jquery, JSON'},
  {name: 'Andrew Garver', email: 'a.w.garver@gmail.com', password: 'password', city: 'New York', state: 'New York', cohort_id: 2, skills: 'JavaScript, Ruby, Ruby on Rails, Sinatra, HTML, CSS,Jquery, JSON'},
  {name: 'Anila Alexander', email: 'anila.j.alexander@gmail.com', password: 'password', city: 'New York', state: 'New York', cohort_id: 2, skills: 'JavaScript, Ruby, Ruby on Rails, Sinatra, HTML, CSS,Jquery, JSON'},
  {name: 'Ben Sayeg', email: 'bensayeg@gmail.com', password: 'password', city: 'New York', state: 'New York', cohort_id: 2, skills: 'JavaScript, Ruby, Ruby on Rails, Sinatra, HTML, CSS,Jquery, JSON'},
  {name: 'Bryant Novas', email: 'bryant.novas@gmail.com', password: 'password', city: 'New York', state: 'New York', cohort_id: 2, skills: 'JavaScript, Ruby, Ruby on Rails, Sinatra, HTML, CSS,Jquery, JSON'},
  {name: 'David Neuhaus', email: 'neuhaus87@gmail.com', password: 'password', city: 'New York', state: 'New York', cohort_id: 2, skills: 'JavaScript, Ruby, Ruby on Rails, Sinatra, HTML, CSS,Jquery, JSON'},
  {name: 'Devatha Kesarkodigae', email: 'k.n.devs@gmail.com', password: 'password', city: 'New York', state: 'New York', cohort_id: 3, skills: 'JavaScript, Ruby, Ruby on Rails, Sinatra, HTML, CSS,Jquery, JSON'},
  {name: 'Dor Rubin', email: 'kdor.rubin@gmail.com', password: 'password', city: 'New York', state: 'New York', cohort_id: 3, skills: 'JavaScript, Ruby, Ruby on Rails, Sinatra, HTML, CSS,Jquery, JSON'},
  {name: 'Fernanda Correa', email: 'nandasc@gmail.com', password: 'password', city: 'New York', state: 'New York', cohort_id: 3, skills: 'JavaScript, Ruby, Ruby on Rails, Sinatra, HTML, CSS,Jquery, JSON'},
  {name: 'Gabriella Lubliner', email: 'gabriella.lubliner@gmail.com', password: 'password', city: 'New York', state: 'New York', cohort_id: 3, skills: 'JavaScript, Ruby, Ruby on Rails, Sinatra, HTML, CSS,Jquery, JSON'},
  {name: 'Gordon DuGan', email: 'gordon.dugan2@gmail.com', password: 'password', city: 'New York', state: 'New York', cohort_id: 3, skills: 'JavaScript, Ruby, Ruby on Rails, Sinatra, HTML, CSS,Jquery, JSON'},
  {name: 'James Kim', email: 'khkim1776@gmail.com', password: 'password', city: 'New York', state: 'New York', cohort_id: 4, skills: 'JavaScript, Ruby, Ruby on Rails, Sinatra, HTML, CSS,Jquery, JSON'},
  {name: 'Jeremy Bell', email: 'jeremyianbell@gmail.com', password: 'password', city: 'New York', state: 'New York', cohort_id: 4, skills: 'JavaScript, Ruby, Ruby on Rails, Sinatra, HTML, CSS,Jquery, JSON'},
  {name: 'Junho Rhee', email: 'juno0628@gmail.com', password: 'password', city: 'New York', state: 'New York', cohort_id: 4, skills: 'JavaScript, Ruby, Ruby on Rails, Sinatra, HTML, CSS,Jquery, JSON'},
  {name: 'Karlyce Edwards', email: 'karlyce.edwards@gmail.com', password: 'password', city: 'New York', state: 'New York', cohort_id: 4, skills: 'JavaScript, Ruby, Ruby on Rails, Sinatra, HTML, CSS,Jquery, JSON'},
  {name: 'Kelly Stevens', email: 'kllystvns@gmail.com', password: 'password', city: 'New York', state: 'New York', cohort_id: 5, skills: 'JavaScript, Ruby, Ruby on Rails, Sinatra, HTML, CSS,Jquery, JSON'},
  {name: 'Kelly Devine', email: 'kellyd813@gmail.com', password: 'password', city: 'New York', state: 'New York', cohort_id: 5, skills: 'JavaScript, Ruby, Ruby on Rails, Sinatra, HTML, CSS,Jquery, JSON'},
  {name: 'Mark Paulson', email: 'kmarkpaulson1@hotmail.com', password: 'password', city: 'New York', state: 'New York', cohort_id: 5, skills: 'JavaScript, Ruby, Ruby on Rails, Sinatra, HTML, CSS,Jquery, JSON'},
  {name: 'Max Peterson', email: 'petersonmaxr@gmail.com', password: 'password', city: 'New York', state: 'New York', cohort_id: 5, skills: 'JavaScript, Ruby, Ruby on Rails, Sinatra, HTML, CSS,Jquery, JSON'},
  {name: 'Michael Dennis', email: 'pmichaelsdennis4@gmail.com', password: 'password', city: 'New York', state: 'New York', cohort_id: 6, skills: 'JavaScript, Ruby, Ruby on Rails, Sinatra, HTML, CSS,Jquery, JSON'},
  {name: 'Orlando arana', email: 'porlandoarana@hotmail.com', password: 'password', city: 'New York', state: 'New York', cohort_id: 6, skills: 'JavaScript, Ruby, Ruby on Rails, Sinatra, HTML, CSS,Jquery, JSON'},
  {name: 'Ryan Burke', email: 'ryaneburke@gmail.com', password: 'password', city: 'New York', state: 'New York', cohort_id: 6, skills: 'JavaScript, Ruby, Ruby on Rails, Sinatra, HTML, CSS,Jquery, JSON'},
  {name: 'Sam Xiali Hu', email: 'samuelhuxiali@gmail.com', password: 'password', city: 'New York', state: 'New York', cohort_id: 6, skills: 'JavaScript, Ruby, Ruby on Rails, Sinatra, HTML, CSS,Jquery, JSON'},
  {name: 'Sam Xiali Hu', email: 'samuelhuxiali@gmail.com', password: 'password', city: 'New York', state: 'New York', cohort_id: 6, skills: 'JavaScript, Ruby, Ruby on Rails, Sinatra, HTML, CSS,Jquery, JSON'},
  {name: 'Toshia Harold', email: 'toshia@gmail.com', password: 'password', city: 'New York', state: 'New York', cohort_id: 7, skills: 'JavaScript, Ruby, Ruby on Rails, Sinatra, HTML, CSS,Jquery, JSON'},
  {name: 'Eric Gilley', email: 'eric@gmail.com', password: 'password', city: 'New York', state: 'New York', cohort_id: 7, skills: 'JavaScript, Ruby, Ruby on Rails, Sinatra, HTML, CSS,Jquery, JSON'},
  {name: 'Jacinta Jusino', email: 'jacinta@gmail.com', password: 'password', city: 'New York', state: 'New York', cohort_id: 7, skills: 'JavaScript, Ruby, Ruby on Rails, Sinatra, HTML, CSS,Jquery, JSON'},
  {name: 'Jacinta Jusino', email: 'jacinta@gmail.com', password: 'password', city: 'New York', state: 'New York', cohort_id: 7, skills: 'JavaScript, Ruby, Ruby on Rails, Sinatra, HTML, CSS,Jquery, JSON'},
  {name: 'Mindi Whittemore', email: 'mindi@gmail.com', password: 'password', city: 'New York', state: 'New York', cohort_id: 7, skills: 'JavaScript, Ruby, Ruby on Rails, Sinatra, HTML, CSS,Jquery, JSON'}
  ])

