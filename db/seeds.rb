Contact.create(user_id: "1", name:"All's Well That Ends Well") 
Contact.create(user_id: "2", name:"It's a Small World") 
Contact.create(user_id: "3", name:"Bite Off More Than You Can Chew") 
Contact.create(user_id: "4", name:"Piece of Cake") 
Contact.create(user_id: "1", name:"Graveyard Shift") 


paul = User.create(name:"Paul", encrypted_password: "$2a$10$7xxrqSsytd8Q0iVU1qUOouFniKgFqFU7vLOJsgyRLgmpFwb9DSe4m")
mark = User.create(name:"Mark", encrypted_password: "$2a$10$7xxrqSsytd8Q0iVU1qUOouFniKgFqFU7vLOJsgyRLgmpFwb9DSe4m")
kathy = User.create(name:"Kathy", encrypted_password: "$2a$10$7xxrqSsytd8Q0iVU1qUOouFniKgFqFU7vLOJsgyRLgmpFwb9DSe4m")
sarah = User.create(name:"Sarah", encrypted_password: "$2a$10$7xxrqSsytd8Q0iVU1qUOouFniKgFqFU7vLOJsgyRLgmpFwb9DSe4m")



#Encrypted_password is "Buddy1"


Comment.create(contact_id:"1", user_id: "1", photo: "http://cdn.phys.org/newman/gfx/news/hires/2011/lastdinosaur.jpg", description: "The end of the dinosaurs bodes well for the mammals")
Comment.create(contact_id:"1", user_id: "2", photo: "http://i.telegraph.co.uk/multimedia/archive/02147/divorce_2147804b.jpg", description: "All fun and games until somebody gets hurt.")
Comment.create(contact_id:"1", user_id: "3", photo: "http://3.bp.blogspot.com/_X6vO-BK-FA8/TLtRMMSpF8I/AAAAAAAAAaI/ke89LsvZ08U/s1600/Alls+Well+3.jpg", description: "In the end the girl gets the guys.")
Comment.create(contact_id:"1", user_id: "4", photo: "http://i.dailymail.co.uk/i/pix/2010/07/30/article-1298931-0AA15506000005DC-117_468x286.jpg", description: "Get that over and might get a medal for it.")


Comment.create(contact_id:"2", user_id: "3", photo: "http://smilepanic.com/wp-content/uploads/3087999_640px.jpg")
Comment.create(contact_id:"2", user_id: "1", photo: "http://i.dailymail.co.uk/i/pix/2009/10/21/article-1222049-06E899E8000005DC-901_468x286.jpg")
Comment.create(contact_id:"2", user_id: "4", photo: "http://grantfundingexpert.org/wp-content/uploads/grantsecrets/grant%20funding%20expert%20chris%20johnson%20community%20grants.jpg")
Comment.create(contact_id:"2", user_id: "2", photo: "http://shortstoriesofasinglegirl.com/wp-content/uploads/2014/06/smallworld3.jpg")

Comment.create(contact_id:"3", user_id: "4", photo: "http://blog-photos.dogvacay.com/blog/wp-content/uploads/2014/05/little-dog-puts-his-head-in-a-big-dogs-mouth.jpg")
Comment.create(contact_id:"3", user_id: "3", photo: "http://www.xookazine.nl/wp-content/uploads/2013/01/whipeout4.jpg")
Comment.create(contact_id:"3", user_id: "1", photo: "http://ifunnyweb.com/wp-content/uploads/funny-squirrel-mouth-full-nuts.jpg")
Comment.create(contact_id:"3", user_id: "2", photo: "https://fbcdn-sphotos-b-a.akamaihd.net/hphotos-ak-xap1/v/t1.0-9/10676406_10152745954181873_545084667142460_n.jpg?oh=c9126c8e2b8e4d523862340d757643bc&oe=54F1EB22&__gda__=1424279775_14ddbcb6a9cfef0b53041bacb7d0c061")

Comment.create(contact_id:"4", user_id: "2", photo: "http://us.cdn291.fansshare.com/photo/torontoraptors/vince-carter-toronto-raptors-nba-slam-dunk-contest-all-star-wallpapers-designs-nation-images-nba-wallpaper-1732366409.jpg")
Comment.create(contact_id:"4", user_id: "4", photo: "http://www.findapsychologist.org/wp-content/uploads/2013/07/Learning-disabilities1.jpg")
Comment.create(contact_id:"4", user_id: "3", photo: "http://static.squarespace.com/static/52a0933ce4b061dbb499e8aa/52bd6aeae4b097881153268c/52bd6aeae4b097881153268f/1388148454498/ardensday_cake.jpg")
Comment.create(contact_id:"4", user_id: "1", photo: "http://www.slimyogi.com/wp-content/themes/Minimal/images/copy/bette-calman.png")

Comment.create(contact_id:"5", user_id: "2", photo: "http://www.wbrz.com/images/news/bats.jpg")
Comment.create(contact_id:"5", user_id: "4", photo: "http://i.dailymail.co.uk/i/pix/2011/09/21/article-2040037-0E04BC2A00000578-667_634x324.jpg")
Comment.create(contact_id:"5", user_id: "3", photo: "http://ww2.kqed.org/news/wp-content/uploads/sites/10/2013/02/DevBootcamp.jpg")
Comment.create(contact_id:"5", user_id: "1", photo: "http://s.sidereel.com/cms/posts/189901/large/UP-ALL-NIGHT-Working-Late-and-Working-It-Episode-3-12-550x365.jpg")


