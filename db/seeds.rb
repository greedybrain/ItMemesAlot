# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
users = User.create(
     [
          { 
               first_name: "Naya", last_name: "Willis", username: "caspa", email: "willisnaya@gmail.com", password: "password" 
          },
          { 
               first_name: "Marissa", last_name: "Joseph", username: "mjoseph", email: "marissajoseph1009@gmail.com", password: "password" 
          },
          { 
               first_name: "Rickesh", last_name: "Ross", username: "ross", email: "rvross@gmail.com", password: "password" 
          },
          { 
               first_name: "Ozzie", last_name: "Williams", username: "oznogood", email: "ozzie.williams@gmail.com", password: "password" 
          },
          { 
               first_name: "Asish", last_name: "Gajiwala", username: "ash", email: "ash.gajiwala@gmail.com", password: "password" 
          }
     ]
)
# =====================================
posts = Post.create(
     [
          { 
               image_url: "image1.png", content: "Naya's first post", user: users.first
          },
          { 
               image_url: "image2.png", content: "Marissa's first post", user: users.second
          },
          { 
               image_url: "image3.png", content: "Rickesh's first post", user: users.third 
          },
          { 
               image_url: "image4.png", content: "Ozzie's first post", user: users.fourth  
          },
          { 
               image_url: "image5.png", content: "Asish's first post", user: users.fifth
          }
     ]
)

comments = Comment.create(
     [
          { 
               content: "Marissa commented on Naya's post", 
               user: users.second, 
               post: posts.first
          },
          { 
               content: "Rickesh commented on Naya's post", 
               user: users.third, 
               post: posts.first
          },
          { 
               content: "Ozzie commented on Naya's post",
               user: users.fourth,  
               post: posts.first
          },
          { 
               content: "Asish commented on Naya's post",
               user: users.fifth,  
               post: posts.first
          }
     ]
)

replies = Reply.create(
     [
          { 
               content: "Naya replied to Marissa: hey sweety", 
               user: users.first,
               comment: users.first.posts.first.comments.first
          },
          { 
               content: "Naya replied to Rickesh: waddup cuz", 
               user: users.first,
               comment: users.first.posts.first.comments.second
          },
          { 
               content: "Naya replied to Ozzie: from three to three",
               user: users.first,
               comment: users.first.posts.first.comments.third
          },
          { 
               content: "Naya replied to Asish: let me guess, another wedding?",
               user: users.first,
               comment: users.first.posts.first.comments.fourth
          }
     ]
)

users.first.followers.create(
     [
          { 
               username: users.second.username,
               first_name: users.second.first_name,
               last_name: users.second.last_name
          },
          { 
               username: users.third.username,
               first_name: users.third.first_name,
               last_name: users.third.last_name
          },
          { 
               username: users.fourth.username,
               first_name: users.fourth.first_name,
               last_name: users.fourth.last_name
          },
          { 
               username: users.fifth.username,
               first_name: users.fifth.first_name,
               last_name: users.fifth.last_name
          }
     ]
)

users.first.is_followings.create(
     [
          { 
               username: users.second.username,
               first_name: users.second.first_name,
               last_name: users.second.last_name
          },
          { 
               username: users.fourth.username,
               first_name: users.fourth.first_name,
               last_name: users.fourth.last_name
          },
     ]
)