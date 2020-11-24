# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "open-uri"

puts "creating users"

  User.create!(email: "user1@example.com", password: "123456")
  User.create!(email: "user2@example.com", password: "123456")
  User.create!(email: "user3@example.com", password: "123456")




puts "creating assets"

  Asset.create!(stock_symbol: "AAPL", description: "Appels stock", asset_type: "Stock")
  Asset.create!(stock_symbol: "QQQ", description: "Invescos ETF, the most diversified etf, that also outperformed the Nasdaq stock", asset_type: "ETF")
  Asset.create!(stock_symbol: "SPY", description: "SPDR S&P 500 ", asset_type: "ETF")
  Asset.create!(stock_symbol: "GLD", description: "SPDR® Gold Shares", asset_type: "GOLD-ETF")
  Asset.create!(stock_symbol: "YOLO", description: "AdvisorShares Pure Cannabis", asset_type: "ETF")
  Asset.create!(stock_symbol: "VEA", description: "Vanguard FTSE Developed Markets Index Fund ETF Shares", asset_type: "ETF")
  Asset.create!(stock_symbol: "VGK", description: "Vanguard FTSE Europe Index Fund ETF Shares", asset_type: "ETF")
  Asset.create!(stock_symbol: "CORN", description: "Teucrium Corn Fund", asset_type: "ETF")

puts "creating charities /w pics"

  file = URI.open('https://www.charities.org/sites/default/files/styles/logo/public/logo.jpg?itok=Ick3Z3QK')
  Charity.create!(name: "Duke Ellington School of Arts", category: "Education", description: "$10,000 helps the Duke Ellington School of the Arts Project provide one year of rigorous academic and pre-professional arts training to one student, enabling him/her to pursue a career in the arts. This can happen if 25 employees pledge $16 per pay period (for 26 periods) this year through their workplace.")
  Charity.last.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
  
  file = URI.open('https://www.charities.org/sites/default/files/styles/logo/public/YFF%20logo%20main.png?itok=43FZdRtM')
  Charity.create!(name: "The Sesame Street Yellow Feather Fund", category: "Education", description: "We are a nonprofit with a mission to help children everywhere grow smarter, stronger, and kinder.  Sesame Street began nearly 50 years ago as a way to help level the playing field for underprivileged children—and we’re still doing that, in a multitude of ways, in more than 150 countries around the world. 

    Sesame Street plays a unique role, using the power of media and our Muppets to reach and teach kids where they are – through technology and in person, in their communities. We are the only organization that speaks directly to young children and their caregivers, tackling the most difficult issues, but always in a non-threatening way, through the lens of a child. 
    
    We started the Yellow Feather Fund as a grassroots avenue for fans and supporters to contribute — and to make a meaningful difference in the lives of children.  ")
    Charity.last.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
  
  file = URI.open('https://www.charities.org/sites/default/files/styles/logo/public/BF%20Logo.png?itok=KEAgUJqL')
  Charity.create!(name: "Best Friends Animal Society", category: "Animals", description: "Best Friends Animal Society is a leading national animal welfare organization dedicated to ending the killing of dogs and cats in America's shelters. In addition to running lifesaving programs in partnership with more than 3,100 animal welfare groups across the country, Best Friends has lifesaving centers in New York City, Los Angeles, Atlanta and Salt Lake City, and operates the nation's largest no-kill sanctuary for companion animals. Founded in 1984, Best Friends is a pioneer in the no-kill movement and has helped reduce the number of animals killed in shelters nationwide from an estimated 17 million per year to around 625,000. That means there are still more than 1,700 dogs and cats killed every day in shelters, just because they don’t have safe places to call home. We are determined to bring the country to no-kill by the year 2025. Working collaboratively with shelters, rescue groups, other organizations and you, we will end the killing and Save Them All. To check out our pet lifesaving dashboard and for more information, visit bestfriends.org.")
  Charity.last.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
  
  file = URI.open('https://www.charities.org/sites/default/files/styles/logo/public/logo-memorial-sloan-kettering-cancer-center_2018.png?itok=RUpGl7pS')
  Charity.create!(name: "Memorial Sloan Kettering Cancer Center", category: "Cancer Research", description: "Memorial Sloan Kettering Cancer Center (MSK)—the world's oldest and largest private cancer center—has devoted more than 130 years to exceptional patient care, innovative research, and outstanding educational programs. Today, it is one of 49 National Cancer Institute–designated Comprehensive Cancer Centers, with state-of-the-art science flourishing side by side with clinical studies and treatment. The close collaboration between MSK's physicians and scientists is one of its unique strengths, enabling it to provide patients with the best care available as researchers work to discover more effective strategies to prevent, control, and ultimately cure cancer in the future. MSK's education programs train future physicians and scientists, and the knowledge and experience they gain makes an impact on cancer treatment and biomedical research around the world. ")
  Charity.last.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
  
  file = URI.open('https://www.charities.org/sites/default/files/styles/logo/public/LDF-logo-web.jpg?itok=r6KnQ7Jr')
  Charity.create!(name: "Junior Achievement of New York", category: "Education", description: "Impart a solid grasp of our how our economy works through lessons relevant to students' life experience
    Prepare students to understand the opportunities and rewards that exist in a changing global marketplace
    Foster students' desire to complete their education and invest in their own human capital
    Enhance students' self-confidence and understanding of the vital connection between staying in school and becoming productive, successful adults")
  Charity.last.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')

puts "creating charitys choices"

  CharitysChoice.create!(charity_id: 1, asset_id: 1)
  CharitysChoice.create!(charity_id: 1, asset_id: 3)
  CharitysChoice.create!(charity_id: 1, asset_id: 2)
  CharitysChoice.create!(charity_id: 2, asset_id: 1)
  CharitysChoice.create!(charity_id: 2, asset_id: 4)
  CharitysChoice.create!(charity_id: 2, asset_id: 5)
  CharitysChoice.create!(charity_id: 3, asset_id: 6)
  CharitysChoice.create!(charity_id: 3, asset_id:7)
  CharitysChoice.create!(charity_id: 3, asset_id: 1)
  CharitysChoice.create!(charity_id: 4, asset_id: 8)
  CharitysChoice.create!(charity_id: 4, asset_id: 2)


puts "creating favourits"

  Favourite.create!(charity_id: 1, user_id: 1)
  Favourite.create!(charity_id: 1, user_id: 3)
  Favourite.create!(charity_id: 1, user_id: 2)
  Favourite.create!(charity_id: 1, user_id: 2)
  Favourite.create!(charity_id: 1, user_id: 3)
  Favourite.create!(charity_id: 2, user_id: 1)
  Favourite.create!(charity_id: 3, user_id: 3)
  Favourite.create!(charity_id: 3, user_id: 2)
  Favourite.create!(charity_id: 4, user_id: 1)
  Favourite.create!(charity_id: 5, user_id: 1)


puts "creating donation"
  
  Donation.create!(charity_id: 1, user_id: 1, asset_id: 1, donation_amount: 10, quantity: 1, symbol: "AAPL", order_status: "Filled")
  Donation.create!(charity_id: 2, user_id: 1, asset_id: 2, donation_amount: 1000, quantity: 3, symbol: "QQQ", order_status: "Filled")
  Donation.create!(charity_id: 3, user_id: 1, asset_id: 4, donation_amount: 500, quantity: 1, symbol: "GLD", order_status: "Filled")
  Donation.create!(charity_id: 4, user_id: 1, asset_id: 5, donation_amount: 10000000, quantity: 100, symbol: "YOLO")
  Donation.create!(charity_id: 1, user_id: 1, asset_id: 1, donation_amount: 10, quantity: 1, symbol: "AAPL")
 


puts "injected seeds"