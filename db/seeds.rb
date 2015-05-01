# Deletes everything from the database
puts "Deleting all records from the database..."
User.delete_all
Question.delete_all
Answer.delete_all
Follower.delete_all

# Create the users
puts "Creating users..."
asafsegev = User.create(name: "Asaf Segev", image: "asafsegev.jpg", linkedin: "linkedin.com/asafsegev", career_goal: "Tech Entrepreneur", career_status: "MBA Candidate at Kellogg", advice_seeker: "1", mentor: "1", anonymous: "1", year_joined: "2005", num_followers: "234")
hannagutman = User.create(name: "Hanna Gutman", image: "hannagutman.jpg", linkedin: "linkedin.com/hannagutman", career_goal: "Senior Project Manager", career_status: "Project Manager at Plumwise and TA at Kellogg", advice_seeker: "1", mentor: "1", anonymous: "0", year_joined: "2006", num_followers: "434")
sharonsegev = User.create(name: "Sharon Segev", image: "sharonsegev.jpg", linkedin: "linkedin.com/sharonsegev", career_goal: "Make my first exit", career_status: "CEO at the startup Alicanto", advice_seeker: "1", mentor: "1", anonymous: "1", year_joined: "2007", num_followers: "284")
shailabelletrop = User.create(name: "Shai Labelle Trop", image: "shailabelletrop.jpg", linkedin: "linkedin.com/shailabelletrop", career_goal: "COO at a large chemical enterprise", career_status: "MBA Candidate at Kellogg", advice_seeker: "1", mentor: "1", anonymous: "0", year_joined: "2009", num_followers: "434")
johndre = User.create(name: "John Dre", image: "johndre.jpg", linkedin: "linkedin.com/johndre", career_goal: "Work at Kraft", career_status: "Student at Princeton", advice_seeker: "1", mentor: "0", anonymous: "0", year_joined: "2014", num_followers: "234")

# Create the questions
puts "Creating questions..."
q1 = Question.create(user_id: asafsegev.id, q_text: "Should I accept a PMM internship offer from Facebook?", q_date: "2008", num_likes: "234")
q2 = Question.create(user_id: hannagutman.id, q_text: "Should I switch to a FT position instead of 2 PT", q_date: "2009", num_likes: "134")
q3 = Question.create(user_id: sharonsegev.id, q_text: "Should I accept buying offer for $3M?", q_date: "2013", num_likes: "24")
q4 = Question.create(user_id: shailabelletrop.id, q_text: "Should I accept a PMM internship offer from Davita?", q_date: "2008", num_likes: "54")
q5 = Question.create(user_id: johndre.id, q_text: "Should I do an MBA?", q_date: "2015", num_likes: "64")

# Create the answers
puts "Creating answers..."
q1a1 = Answer.create(q_id: q1.id, user_id: hannagutman.id, a_text: "No, if you want to be an entrepreneur, just start your own company",a_date: "2008", num_likes: "23")
q1a2 = Answer.create(q_id: q1.id, user_id: sharonsegev.id, a_text: "Yes, having such a brand on your resume will help your entrepreneurial career",a_date: "2008", num_likes: "53")
q4a1 = Answer.create(q_id: q4.id, user_id: asafsegev.id, a_text: "Yes, it will allow you to gain operational experience which you lack for your goal",a_date: "2008", num_likes: "44")
q5a1 = Answer.create(q_id: q5.id, user_id: asafsegev.id, a_text: "No, graduating Princeton will be sufficient, just apply!",a_date: "2015", num_likes: "85")
q2a1 = Answer.create(q_id: q2.id, user_id: asafsegev.id, a_text: "No, wait for at least a few month so you can put these PT on your resume",a_date: "2009", num_likes: "12")

# Create the followers
puts "Creating followers..."
follow1 = Follower.create(follower_id: asafsegev.id, followed_id: hannagutman.id, start_date: "2007")
follow2 = Follower.create(follower_id: hannagutman.id, followed_id: asafsegev.id, start_date: "2007")
follow3 = Follower.create(follower_id: sharonsegev.id, followed_id: asafsegev.id, start_date: "2008")
follow4 = Follower.create(follower_id: asafsegev.id, followed_id: johndre.id, start_date: "2015")
follow5 = Follower.create(follower_id: asafsegev.id, followed_id: shailabelletrop.id, start_date: "2010")