# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "open-uri"


Donation.destroy_all
Favourite.destroy_all
CharitysChoice.destroy_all
Charity.destroy_all
User.destroy_all


puts "creating users"

  user1 = User.create!(email: "user1@example.com", password: "123456")
  user2 =User.create!(email: "user2@example.com", password: "123456")
  user3 =User.create!(email: "user3@example.com", password: "123456")




puts "creating assets"

  asset1 = Asset.create!(stock_symbol: "AAPL", description: "Appels stock", asset_type: "Stock")
  asset2 =Asset.create!(stock_symbol: "QQQ", description: "Invescos ETF, the most diversified etf, that also outperformed the Nasdaq stock", asset_type: "ETF")
  asset3 =Asset.create!(stock_symbol: "SPY", description: "SPDR S&P 500 ", asset_type: "ETF")
  asset4 =Asset.create!(stock_symbol: "GLD", description: "SPDR® Gold Shares", asset_type: "GOLD-ETF")
  asset5 =Asset.create!(stock_symbol: "YOLO", description: "AdvisorShares Pure Cannabis", asset_type: "ETF")
  asset6 =Asset.create!(stock_symbol: "VEA", description: "Vanguard FTSE Developed Markets Index Fund ETF Shares", asset_type: "ETF")
  asset7 =Asset.create!(stock_symbol: "VGK", description: "Vanguard FTSE Europe Index Fund ETF Shares", asset_type: "ETF")
  asset8 =Asset.create!(stock_symbol: "CORN", description: "Teucrium Corn Fund", asset_type: "ETF")

puts "creating charities /w pics"

  file = URI.open('https://www.charities.org/sites/default/files/styles/logo/public/logo.jpg?itok=Ick3Z3QK')
  charity1 = Charity.create!(name: "Duke Ellington School of Arts", category: "Education", description: "<p>$10,000 helps the Duke Ellington School of the Arts Project provide one year of 
    rigorous academic and pre-professional arts training to one student, enabling him/her to pursue a career in the arts. This can happen if 25 employees pledge $16 per 
    pay period (for 26 periods) this year through their workplace.</p>")
  Charity.last.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')

  file = URI.open('https://www.charities.org/sites/default/files/styles/logo/public/YFF%20logo%20main.png?itok=43FZdRtM')
  charity2 =Charity.create!(name: "The Sesame Street Yellow Feather Fund", category: "Education", description: "<h3>We are a nonprofit with a mission to help children everywhere grow smarter, 
    stronger, and kinder.  </h3>
    <p>Sesame Street began nearly 50 years ago as a way to help level the playing field for underprivileged children—and we’re still doing that, 
    in a multitude of ways, in more than 150 countries around the world.</p>

    <p>Sesame Street plays a unique role, using the power of media and our Muppets to reach and teach kids where they are – through technology and in person, 
    in their communities. We are the only organization that speaks directly to young children and their caregivers, tackling the most difficult issues, but always in a non-threatening way, 
    through the lens of a child.<p>

    <p>We started the Yellow Feather Fund as a grassroots avenue for fans and supporters to contribute — and to make a meaningful difference in the lives of children. <p>")
    Charity.last.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')

    file = URI.open('https://www.charities.org/sites/default/files/styles/logo/public/BF%20Logo.png?itok=KEAgUJqL')
  charity3 =Charity.create!(name: "Best Friends Animal Society", category: "Animals", description: "<h3>Best Friends Animal Society is a leading national animal welfare organization 
    dedicated to ending the killing of dogs and cats in America's shelters. </h3>
    <p>In addition to running lifesaving programs in partnership with more than 3,100 animal welfare groups 
    across the country, Best Friends has lifesaving centers in New York City, Los Angeles, Atlanta and Salt Lake City, and operates the nation's largest no-kill sanctuary 
    for companion animals. </p>
    <p>Founded in 1984, Best Friends is a pioneer in the no-kill movement and has helped reduce the number of animals killed in shelters nationwide from an 
      estimated 17 million per year to around 625,000. That means there are still more than 1,700 dogs and cats killed every day in shelters, just because they don’t have safe 
      places to call home. We are determined to bring the country to no-kill by the year 2025.</p>
    <p>Working collaboratively with shelters, rescue groups, other organizations and you, 
      we will end the killing and Save Them All. To check out our pet lifesaving dashboard and for more information, visit bestfriends.org.</p>")
    Charity.last.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')

    file = URI.open('https://www.charities.org/sites/default/files/styles/logo/public/logo-memorial-sloan-kettering-cancer-center_2018.png?itok=RUpGl7pS')
  charity4 =Charity.create!(name: "Memorial Sloan Kettering Cancer Center", category: "Cancer Research", description: "<h3>Memorial Sloan Kettering Cancer Center (MSK)—the world's oldest and largest 
  private cancer center—has devoted more than 130 years to exceptional patient care, innovative research, and outstanding educational programs.</h3> 
  <p>Today, it is one of 49 National Cancer Institute–designated Comprehensive Cancer Centers, with state-of-the-art science flourishing side by side with clinical studies and treatment. </p>
  <p>The close collaboration between MSK's physicians and scientists is one of its unique strengths, enabling it to provide patients with the best care available as researchers work to 
  discover more effective strategies to prevent, control, and ultimately cure cancer in the future. MSK's education programs train future physicians and scientists, 
  and the knowledge and experience they gain makes an impact on cancer treatment and biomedical research around the world. </p>")
    Charity.last.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')

    file = URI.open('https://www.charities.org/sites/default/files/styles/logo/public/JA-of-New-York-LOGO.jpg?itok=ZZ_qTsDb')
  charity5 =Charity.create!(name: "Junior Achievement of New York", category: "Education", description: "<h4>Impart a solid grasp of our how our economy works through lessons relevant to students' 
    life experience.</h4> 
    <h4>Prepare students to understand the opportunities and rewards that exist in a changing global marketplace.</h4>
    <h4>Foster students' desire to complete their education and invest in their own human capital.</h4>
    <h4>Enhance students' self-confidence and understanding of the vital connection between staying in school and becoming productive, successful adults. </h4>")
    Charity.last.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')

    file = URI.open('https://www.charities.org/sites/default/files/styles/logo/public/PREFERRED%20USE%20-%20Feeding%20America%20Logo_2C%20JPG%20File.jpg?itok=13yTmIN3')
  charity6 =Charity.create!(name: "Feeding America", category: "Food", description: "<h3>WHO WE ARE:</h3>  
    <p>Feeding America is a nationwide network of 200 member food banks that leads the fight against 
    hunger in the United States. Together, we provide food to more than 46 million people, including 11 million children and 7 million seniors, through 60,000 food pantries and meal 
    programs and engage more than 2 million volunteers monthly in communities across the U.S. Feeding America also supports programs that improve food security among the people we 
    serve; educates the public about the issue of hunger; and advocates for legislation that protects people from going hungry. </p>
    <h3>HOW WE WORK:</h3>  
    <p>The process of getting food to Americans in need requires a dynamic infrastructure and sophisticated management. Feeding America cultivates partnerships 
    to secure donations from national food and grocery manufacturers, retailers, foodservice locations, shippers, packers and growers and from government agencies, and other organizations. </p>

    <p>Then, coordinate transportation of donations to member food banks, which ensure the safe storage and reliable distribution of food to local food pantries and meal programs, which in turn,
     provide the food and grocery items directly to people in need in local communities across the U.S.</p>
     
    <h3>INNOVATIVE STRATEGIES: </h3> 
    <p>Feeding America develops innovative strategies that help us capture and distribute more food with the greatest efficiency. We are focused on ensuring that the people we serve have 
    access to enough nutritious food for themselves and their families.</p>
    <p>To do this, the network is sourcing and distributing more “Foods to Encourage”—foods that promote good health and align with the USDA’s Dietary Guidelines, 
      such as fruits, vegetables, dairy, whole grains and protein. Today, 71% of food received by the network is classified as Foods to Encourage. 
      Additionally, we are setting goals to source a specific amount of protein, dairy and fruits and vegetables each year, with anticipated growth over time.</p>
    
  <p>Feeding America also has made large investments to secure more fresh fruits and vegetables to help support the health and wellness among the people we serve. 
  Partnerships with growers, packers, and industry experts help Feeding America identify and secure 1.5 billion pounds of fresh fruits and vegetables each year for people facing hunger. 
  Further, Feeding America has established regional produce cooperatives, which are central processing facilities run by food banks, which can take in large amounts of produce and 
  distribute it in more manageable quantities to local food banks. We are also deepening our relationships within the agricultural sector and streamlining the donation process to make it 
  easier for growers to donate fruits and vegetables from multiple locations. </p>
    
    <h3>FOOD RESCUE:</h3>
    <p>Feeding America is the leading food-rescue partner across the food industry, increasing the number of meals available to families while helping to reduce food waste. 
    Thanks to our national and local partnerships with retailers, manufacturers, foodservice operators, farmers and others, the Feeding America network has been able to divert 
    3.5 billion pounds of good food from being thrown away and provide it to families in need. </p>
    
    <p>Feeding America also is pursuing a transformative new opportunity to rescue food from foodservice partners. Each year, billions of pounds of good food is uneaten and thrown away at 
    local foodservice outlets such as restaurants, hotels and convenience stores.  But these donations are generally smaller quantities of highly perishable foods, which are harder for 
    food banks to accept. Feeding America has implemented a program to rescue food from foodservice partners by building national relationships with foodservice donors and creating tools 
    so the network can leverage this largely untapped meal source. </p>
    
    <p>Feeding America's MealConnect™ is a new technology platform that makes it easier than ever to connect donors with surplus food, like restaurants and food service 
    organizations, to their local Feeding America member food banks and their partners. This donor portal is the only tool of its kind available on a national scale 
    that can ensure high food safety standards. MealConnect™ allows for easier pickups, easier tracking and easier receipt recording for any type of donation. 
    Plus, donors feel great knowing they’re reducing food waste while providing hunger relief right in their local community.</p>
    
    <h3>DISASTER RELIEF:</h3>
    <p>Persistent hunger can be thought of as a day-to-day disaster, because hunger occurs every day in our country with devastating results. 
    Natural disasters and other large-scale community crises, including the Government Shutdown, further exacerbate food insecurity. For the people who may have been living 
    in vulnerable conditions prior to a disaster, the loss of a home, car or job can upset the balance of their lives and leave them unable to meet their basic needs. 
    The result is a dramatic increase in the number of individuals and families who need emergency food assistance—some for the first time. </p>

    <p>Feeding America’s Disaster Relief Program provides food and emergency supplies that people rely on to cope with the impact of disasters—from the massive storms and 
    floods that capture national attention to the local disasters that may not make the headlines but have a devastating impact on individual communities. 
    Every step of the way, Feeding America is there for disaster victims, offering food and hope throughout the recovery process.  </p>
    
    <p>In the face of these challenges, Feeding America brings a network of warehouses, trucks and logistical solutions to deliver food, water and supplies 
    to survivors. With decades of experience in disaster response, we have a distinguished track record of deploying vital resources where they are most needed quickly 
    and efficiently in the immediate aftermath of disasters and throughout long recovery periods. </p>
    
    <h3>ENDING HUNGER STRATEGY:</h3>
      <p>In addition to providing meals to millions of families today, Feeding America is embarking on a strategic path toward ending hunger. 
      Only when all children have enough nutritious food to grow and learn and their families have enough food to stay healthy will we ensure a stronger future for America. 
      Together, we can help more families achieve food security so that all have a chance to fulfill their potential and build a bright future for themselves and their communities.</p>")
  Charity.last.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')

    file = URI.open('https://www.charities.org/sites/default/files/styles/logo/public/FFB_WEB_Full-Color.jpg?itok=lYeePWRj')
  charity7 =Charity.create!(name: "Foundation Fighting Blindness, Inc.", category: "Health", description: "<h3>The Foundation Fighting Blindness was established in 1971 by a passionate group of 
    families driven to find treatments and cures for inherited retinal diseases that were affecting their loved ones. </h3>
    <p>At that time, little was known about these blinding retinal degenerative diseases. Very little research was being done, and there were no clinical trials for potential treatments.</p>

    <p>The Foundation’s goal was clear and focused: To drive the research that would lead to preventions, treatments, and vision restoration for the spectrum of 
    degenerative retinal diseases, specifically macular degeneration – including age related macular degeneration, retinitis pigmentosa, Usher syndrome, Stargardt disease and 
    Leber congenital amaurosis (LCA). Together these conditions affect more than 10 million Americans and millions more throughout the world.</p>
    
    <p>Today, the Foundation Fighting Blindness is the world’s leading private funder of retinal disease research. That funding has been a driving force 
    behind the progress toward cures, including the identification of more than 270 genes linked to retinal disease, and the launch of more than 35 clinical trials for potential treatments.</p>
    
    <p>On an annual basis, the Foundation funds more than 75 research grants. The research projects are conducted by more than 90 research investigators at institutions, eye hospitals, 
    and universities in the United States, Australia, England, France, Germany, The Netherlands, Italy, Israel, and Mexico.</p>")
    Charity.last.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')

    file = URI.open('https://www.charities.org/sites/default/files/styles/logo/public/Tuberous-Sclerosis-Alliance_logo_Charity%20Profile%20Logos%20_%20Images_Tuberous%20Sclerosis%20Alliance_Logo.jpg?itok=dg_JDk_L')
  charity8 =Charity.create!(name: "Tuberous Sclerosis Alliance", category: "Health", description: "<h3>The Tuberous Sclerosis Alliance (TS Alliance) is the only national voluntary health 
  organization for the genetic disorder known as tuberous sclerosis complex (TSC). It is also the leading organization for the funding of medical research related to TSC. 
  Such medical research has included the breakthrough discovery of two genes (TSC1 and TSC2) that are known to cause the disorder.</h3>

    <p>The TS Alliance was established in 1974 as the National Tuberous Sclerosis Association (NTSA), which it remained titled until 2000. Four mothers 
    of children with TSC founded the organization in order to provide fellowship, generate awareness, pursue more knowledge and provide hope to those who share the 
    common bond of facing the daily challenges of TSC. </p>

    <h4>Current Focus Today:</h4>
    
    <p>The TS Alliance is overseen by a board of directors, whose role is to preserve the integrity of the TS Alliance, 
    set policy, and support and promote the organization. The staff implements policies and priorities through the delivery of programs and services. 
    During its more than 35 years of existence and growth, the TS Alliance has expanded its mission to improve the quality of life for individuals and families affected by 
    tuberous sclerosis complex through the stimulation and sponsorship of research, the development of programs, support services and resource information, and the development and 
    implementation of public and professional education programs designed to heighten awareness of TSC. </p>
    
    <h4>Programs and Support Services:</h4>
    
    <p>The TS Alliance has an active government relations program through which it is striving to increase visibility of TSC in 
    Congress and within the National Institutes of Health (NIH). The organization's goal is to engage government institutions in basic scientific and clinical 
    research on causes and remedies for TSC. The TS Alliance builds networks through online services, conferences and volunteer outreach branches called Community Alliance to 
    give the TSC-affected population a sense of community. Members and donors provide the necessary resources to meet the overall goals and objectives of the organization by their 
    volunteer efforts and contributions. </p>      
    
    <h4>Outreach and Advocacy:</h4>
    
    <p>The TS Alliance outreach and advocacy program collaborates with individuals and families in their efforts to obtain entitlements (social security and medical benefits), 
    appropriate educational opportunities (placements and vocational services), and transitional issues, which include housing and community connections. </p>        
    
    <h4>Professional Education:</h4>
    
    <p>The professional and medical network of the organization provides a consensus regarding diagnosis and follow-up procedures. Members of the professional advisory board, 
    both scientists and clinicians, make time available to provide resource information, discuss treatment with other medical practitioners, and provide their services to the 
    TS Alliance in a voluntary capacity.</p>")
    Charity.last.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')

    file = URI.open('https://www.charities.org/sites/default/files/styles/logo/public/ACLJ_Logo.jpg?itok=6PXf9odo')
  charity9 =Charity.create!(name: "American Center for Law and Justice (ACLJ)", category: "Legal", description: "<h3>Specializing in constitutional law, 
  the ACLJ is dedicated to the concept that freedom and democracy are God-given inalienable rights that must be protected.</h3> 
  <p>The organization provides legal services at no charge for those who are persecuted in their efforts to spread the gospel. The American Center for Law and Justice is dedicated to the promotion of pro-liberty, pro-life, 
  and pro-family causes. The organization defends religious liberties, human life, and the family in litigation cases all across the country. The ACLJ cooperates with other 
  organizations that are committed to a similar mission, and ACLJ serves the public through educational efforts regarding First Amendment and religious freedom issues as well 
  as other pro-family and pro-life concerns. As a not-for-profit organization that does not charge for its legal services, the ACLJ is dependent upon God and the resources 
  He provides through the time, talent and gifts of people who share similar concerns over the erosion of religious and civil liberties.</p>")
    Charity.last.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')

    file = URI.open('https://www.charities.org/sites/default/files/styles/logo/public/CureSearch-Full-logo-2015.jpg?itok=HaYnOA1S')
  charity10 =Charity.create!(name: "Cancer Research for Children - CureSearch", category: "Legal", description: 
    "<h3>More than 15,000 children are diagnosed with cancer annually. To save their child’s life, parents often have to consent to toxic therapies, 
    knowing debilitating side effects are likely to follow their child throughout his or her life.</h3>

    <p>For over 30 years, CureSearch for Children’s Cancer has been a driving force behind the development of better, 
    less-toxic treatments for every child diagnosed with cancer. We fund high potential research focused on moving new treatments quickly to the clinic and ultimately, 
    to the children who depend on us. We also provide families with the resources and support they need to navigate a cancer diagnosis, and our 
    nationwide fundraising events bring communities together in support of our shared mission to end children’s cancer.</p>
    
    <h4>CureSearch Mission</h4>
    <p>Our mission is to end childhood cancer by driving targeted and innovative research with measurable results in an accelerated time frame.</p>
    
    <h4>Research Vision</h4>
    <p>Improve childhood cancer treatment and cures to deliver the potential for childhood cancer patients to lead long, healthy lives.</p>
    
    <h4>ADVANCING INNOVATION</h4>
    <p>At CureSearch, we support researchers through funding, but also the guidance, knowledge and relationships to navigate the regulatory environment and 
    clinical trials network to ensure the greatest chance of success.</p>
    
    <h4>OUR IMPACT ON FAMILIES AND COMMUNITIES </h4>
    <p>More than one million families have connected to curesearch.org for instantly available resources, 
    tools and information about children's cancer. Additionally, CureSearch hosts events around the nation that bring together communities to celebrate and honor 
    children affected by cancer.</p>
    
    <h4>RESEARCH PROGRAMS</h4>
    <p>The Young Investigator portfolio provides seed funding for bright researchers, early in their careers, pursuing exciting novel ideas. 
    Early-career investigators are the most vulnerable to federal funding shortages, and they rely heavily on the support of private foundations like 
    CureSearch to continue their research.</p>
    
    <p>The Acceleration Initiative program addresses the largest obstacles in children’s cancer research, driving translational research into the clinic.</p>
    
    <p>The Catapult Awards advance the strongest research into clinical trials and ultimately drug development. By funding Phase I or Phase II clinical research, 
    we are driving new treatments to the marketplace, quickly.</p>
    
    </p>CureSearch won’t stop until more and better children’s cancer treatments are out of the lab and into the clinic and marketplace, ensuring more children live long, healthy and productive 
    lives.</p> 
    
    <p>Learn more at curesearch.org.</p>")
    Charity.last.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')







puts "creating charitys choices"

CharitysChoice.create!(charity_id: charity1.id, asset_id: asset1.id)
CharitysChoice.create!(charity_id: charity1.id, asset_id: asset3.id)
CharitysChoice.create!(charity_id: charity1.id, asset_id: asset2.id)
CharitysChoice.create!(charity_id: charity2.id, asset_id: asset1.id)
CharitysChoice.create!(charity_id: charity2.id, asset_id: asset5.id)
CharitysChoice.create!(charity_id: charity2.id, asset_id: asset4.id)
CharitysChoice.create!(charity_id: charity3.id, asset_id: asset5.id)
CharitysChoice.create!(charity_id: charity3.id, asset_id: asset6.id)
CharitysChoice.create!(charity_id: charity3.id, asset_id: asset7.id)
CharitysChoice.create!(charity_id: charity4.id, asset_id: asset8.id)
CharitysChoice.create!(charity_id: charity4.id, asset_id: asset1.id)
CharitysChoice.create!(charity_id: charity4.id, asset_id: asset2.id)
CharitysChoice.create!(charity_id: charity5.id, asset_id: asset3.id)
CharitysChoice.create!(charity_id: charity5.id, asset_id: asset4.id)
CharitysChoice.create!(charity_id: charity5.id, asset_id: asset5.id)
CharitysChoice.create!(charity_id: charity6.id, asset_id: asset1.id)
CharitysChoice.create!(charity_id: charity6.id, asset_id: asset7.id)
CharitysChoice.create!(charity_id: charity6.id, asset_id: asset8.id)
CharitysChoice.create!(charity_id: charity7.id, asset_id: asset1.id)
CharitysChoice.create!(charity_id: charity7.id, asset_id: asset2.id)
CharitysChoice.create!(charity_id: charity7.id, asset_id: asset8.id)
CharitysChoice.create!(charity_id: charity8.id, asset_id: asset3.id)
CharitysChoice.create!(charity_id: charity8.id, asset_id: asset4.id)
CharitysChoice.create!(charity_id: charity8.id, asset_id: asset5.id)
CharitysChoice.create!(charity_id: charity9.id, asset_id: asset6.id)
CharitysChoice.create!(charity_id: charity9.id, asset_id: asset1.id)
CharitysChoice.create!(charity_id: charity9.id, asset_id: asset2.id)
CharitysChoice.create!(charity_id: charity10.id, asset_id: asset7.id)
CharitysChoice.create!(charity_id: charity10.id, asset_id: asset5.id)
CharitysChoice.create!(charity_id: charity10.id, asset_id: asset2.id)




puts "creating favourits"

  Favourite.create!(charity_id: charity1.id, user_id: user1.id)
  Favourite.create!(charity_id: charity2.id, user_id: user1.id)
  Favourite.create!(charity_id: charity4.id, user_id: user1.id)
  Favourite.create!(charity_id: charity5.id, user_id: user1.id)
  Favourite.create!(charity_id: charity5.id, user_id: user1.id)
  Favourite.create!(charity_id: charity1.id, user_id: user2.id)
  Favourite.create!(charity_id: charity10.id, user_id: user2.id)
  Favourite.create!(charity_id: charity4.id, user_id: user2.id)
  Favourite.create!(charity_id: charity7.id, user_id: user3.id)
  Favourite.create!(charity_id: charity3.id, user_id: user3.id)


puts "creating donation"

  Donation.create!(charity_id: charity1.id, user_id: user1.id, asset_id: asset1.id, donation_amount: 10, quantity: 1, order_status: "New")
  Donation.create!(charity_id: charity2.id, user_id: user1.id, asset_id: asset2.id, donation_amount: 1000, quantity: 3,  order_status: "Filled")
  Donation.create!(charity_id: charity3.id, user_id: user1.id, asset_id: asset4.id, donation_amount: 500, quantity: 1,  order_status: "Failed")
  Donation.create!(charity_id: charity4.id, user_id: user1.id, asset_id: asset5.id, donation_amount: 10000000, quantity: 100)
  Donation.create!(charity_id: charity1.id, user_id: user1.id, asset_id: asset1.id, donation_amount: 10, quantity: 1)



puts "injected seeds"
