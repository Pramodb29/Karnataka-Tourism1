<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Wonders of Karnataka</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css">
    <style>
    
     body {
        font-family: 'Arial', sans-serif;
        background-color: #f8f9fa;
        color: #333;
        line-height: 1.6;
    }

 .hero-section {
    background-image: url('images/jog.jpg');
    background-size: 110%; /* Start slightly zoomed in */
    background-position: center;
    height: 60vh;
    color: white;
    text-align: center;
    padding: 80px 20px;
    display: flex;
    flex-direction: column;
    justify-content: center;
    align-items: center;
    position: relative;
    overflow: hidden;
    animation: zoomOut 10s ease-out forwards; /* Animation added */
}

/* Keyframes for zoom-out effect */
@keyframes zoomOut {
    from {
        background-size: 110%;
    }
    to {
        background-size: 100%;
    }
}
 

    .hero-section::before {
        content: '';
        position: absolute;
        top: 0;
        left: 0;
        right: 0;
        bottom: 0;
        background-color: rgba(0, 0, 0, 0.4);
        z-index: 1;
    }

    .hero-section h1, .hero-section p {
        position: relative;
        z-index: 2;
        text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.7);
    }

    .hero-section h1 {
        font-size: 3.5rem;
        font-weight: bold;
        margin-bottom: 15px;
    }

    .hero-section p {
        font-size: 1.5rem;
        max-width: 800px;
    }

    

    .back-button-container {
        text-align: center;
        margin-bottom: 40px;
       margin-top:30px;
    }

    .back-button {
        display: inline-block;
        padding: 12px 30px;
        background-color: #007bff;
        color: white;
        text-decoration: none;
        border-radius: 8px;
        font-size: 1rem;
        transition: background-color 0.3s ease, transform 0.2s ease;
        box-shadow: 0 4px 8px rgba(0, 123, 255, 0.2);
    }

    .back-button:hover {
        background-color: #0056b3;
        transform: translateY(-2px);
        color: white;
    }

    .wonder-item {
        display: flex;
        align-items: center;
        margin-bottom: 70px;
        padding: 30px;
        background-color: #dfd9d954;;
        border-radius: 12px;
        box-shadow: 0 6px 15px rgba(0, 0, 0, 0.1);
        transition: transform 0.3s ease, box-shadow 0.3s ease;
        flex-wrap: wrap;
        width: 1250px;
        margin-left: -68px;
    }

    .wonder-item:hover {
        transform: translateY(-5px);
        box-shadow: 0 10px 25px rgba(0, 0, 0, 0.15);
    }

    .wonder-item:nth-child(even) {
        flex-direction: row-reverse;
    }

    .wonder-item img {
        width: 45%;
        height: 350px;
        border-radius: 8px;
        object-fit: cover;
        max-height: 350px;
        flex-shrink: 0;
        box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
    }

    .wonder-item:nth-child(odd) img {
        margin-right: 40px;
    }

    .wonder-item:nth-child(even) img {
        margin-left: 40px;
    }

    .wonder-content {
        flex: 1;
        padding: 15px 0;
    }

    .wonder-content h2 {
        font-size: 2.2rem;
        margin-bottom: 20px;
        color: #0056b3;
        font-weight: 600;
    }

    .wonder-content p {
        line-height: 1.8;
        margin-bottom: 25px;
        color: #666;
        font-size: 1.05rem;
    }

    .know-more-button {
        background-color: #28a745;
        color: white;
        padding: 12px 25px;
        border: none;
        border-radius: 6px;
        cursor: pointer;
        font-size: 1.05rem;
        font-weight: 500;
        transition: background-color 0.3s ease, transform 0.2s ease, box-shadow 0.3s ease;
        box-shadow: 0 4px 8px rgba(40, 167, 69, 0.2);
        text-decoration: none;
        display: inline-block;
    }

    .know-more-button:hover {
        background-color: #218838;
        transform: translateY(-3px);
        box-shadow: 0 6px 12px rgba(40, 167, 69, 0.3);
    }

    @media (max-width: 992px) {
        .hero-section h1 {
            font-size: 2.8rem;
        }
        .hero-section p {
            font-size: 1.3rem;
        }
        .wonder-item {
            flex-direction: column;
            align-items: center;
            text-align: center;
            padding: 25px;
            margin-bottom: 50px;
        }
        .wonder-item:nth-child(even) {
            flex-direction: column;
        }
        .wonder-item img {
            width: 90%;
            margin-right: 0;
            margin-left: 0;
            margin-bottom: 30px;
            max-height: 280px;
        }
        .wonder-item:nth-child(odd) img,
        .wonder-item:nth-child(even) img {
            margin-right: 0;
            margin-left: 0;
        }
        .wonder-content h2 {
            font-size: 1.8rem;
            margin-bottom: 15px;
        }
        .wonder-content p {
            font-size: 1rem;
        }
    }

    @media (max-width: 768px) {
        .hero-section {
            height: 45vh;
            padding: 50px 15px;
        }
        .hero-section h1 {
            font-size: 2.2rem;
        }
        .hero-section p {
            font-size: 1.1rem;
        }
        .intro-text {
            font-size: 1rem;
            margin: 30px auto;
            padding: 0 15px;
        }
        .back-button {
            padding: 10px 20px;
            font-size: 0.9rem;
        }
        .wonder-item {
            padding: 20px;
            margin-bottom: 40px;
        }
        .wonder-item img {
            width: 100%;
            margin-bottom: 25px;
        }
        .wonder-content h2 {
            font-size: 1.6rem;
        }
        .know-more-button {
            padding: 10px 20px;
            font-size: 0.95rem;
        }
    }
    

    @media (max-width: 576px) {
        .hero-section h1 {
            font-size: 1.8rem;
        }
        .hero-section p {
            font-size: 0.95rem;
        }
        .intro-text {
            font-size: 0.9rem;
        }
        .wonder-content h2 {
            font-size: 1.4rem;
        }
        .wonder-content p {
            font-size: 0.9rem;
        }
    }
    </style>
</head>
<body>
 <%@ include file="header1.jsp" %>
 <section class="hero-section" id="hero">

      <h1>Explore Seven Wonders Of Karnataka</h1>
         <p>Experience Karnataka's seven wonders—from Kabini’s wild beauty to rich heritage and timeless landscapes.</p>
         
    </section>
    
  

<div class="back-button-container">
    <a href="dashboard.jsp" class="back-button">Back to Dashboard</a>
</div>

<div class="container mt-5">
    <div class="wonder-item">
        <img src="images1/wonder1.jpg" alt="Hirebenakal Megalithic Site">
        <div class="wonder-content">
            <h2>1.Hirebenakal - The Megalithic Site</h2>
			<p>Hirebenakal, a pre-historic wonder 10 km from Koppal towards
				Gangavathi, is India's largest megalithic site. Dating from 800 BCE
				to 200 BCE, it features around 400 funerary monuments. Located 360
				km from Bengaluru (5+ hours by road), it's reachable via Gangavathi
				railway station. This astonishing site by the Tungabhadra River,
				with its thorny bushes and uneven trails, is maintained by the ASI.
				The Moryara Gudda megalith at Hirebenakal is the largest necropolis
				among South India's 2000+ megalithic sites. These manmade
				prehistoric rock tombs, ranging from 1 to 10 feet, are unshakeable
				mausoleums. They stand as an ode to departed souls, welcoming
				curious visitors to this significant historical site.</p>
			<a href="https://maps.app.goo.gl/FAc1mfKLGTs5hpuy5" class="know-more-button">Know More</a>
        </div>
    </div>

    <div class="wonder-item">
        <img src="images1/wonder2.jpg" alt="Hampi - UNESCO World Heritage Site">
        <div class="wonder-content">
			<h2>2.Hampi - The City of Ruins</h2>
			<p>The pride of Karnataka which is also considered one of the
				biggest open-air museums in the world is also featured on the
				Indian Currency note. An architectural marvel, the ruins of which
				are one of the most visited destinations in Karnataka and South
				India is one of the UNESCO heritage sites of the state. Hampi
				surely deserves to be one of the 7 seven wonders of Karnataka for
				its historic significance, heritage, temples, ruins, and exquisite
				craftsmanship. The splendid capital of the Vijayanagara Empire,
				Hampi is a must-to-do destination for its major attractions
				Virupaksha Temple, Ugranarsimha Vigraha, Lotus Palace, Hampi
				Bazaar, Vittala Temple, and much more. Dedicated to Lord Shiva, the
				7th-century Virupaksha Temple is still active and is the highlight
				of the ruins. The Chariot featured on a 50 rupee note of Indian
				currency is like an emblem of the state.</p>
			<a href="https://maps.app.goo.gl/e6LMsmHSiWePyLZq6" class="know-more-button">Know More</a>
        </div>
    </div>

    <div class="wonder-item">
        <img src="images1/wonder3.jpg" alt="Gol Gumbaz - Architectural Marvel">
        <div class="wonder-content">
            <h2>3.Gol Gumbaz - Architectural Marvel</h2>
            <p>A glorious example of Islamic engineering found in the Deccan region, Gol Gumbaz is one of the most important monuments 
            in Karnataka. A landmark of Bijapur, showcases its outstanding architecture, seven-fold octagonal plaques, curves on the 
            sides, attractive fences, columns and a curved arrow to conquer the towers. Built by Mohammed Adil Shah, Gumbaz, 
            the mausoleum is an amazing piece of art and the home to the second-largest dome in the world at a height of 210 feet. 
            Second, to St Peter’s Basilica, Rome, the dome of Gol Gumbaz is unsupported by any pillars making it one of its kind.</p>
            <a href="https://maps.app.goo.gl/D1uodhN3LGX9PgCr8" class="know-more-button">Know More</a>
        </div>
    </div>

    <div class="wonder-item">
        <img src="images1/wonder4.jpg" alt="Shravanabelagola - Jain Pilgrimage Site">
        <div class="wonder-content">
            <h2>4.Shravanabelagola - Jain Pilgrimage Site</h2>
            <p>An important Jain pilgrimage in South Karnataka is an important part of Indian history and heritage. Home to an 18 m 
            high statue of Lord Gomateshwara, Shravanabelagola is an important site in Hassan District. Constructed in 981 AD by 
            Chamundaraya, a Ganga warrior, carved out of a single rock of granite, the statue is one of the tallest free-standing 
            monolithic creations on the top of Vindhyagiri hills. Closely 700 steps take you up to the Vindhyagiri hills where the 
            statue of Lord Gomateshwara is installed. The Chandragiri hills opposite the deity lie a cluster of other 14 Jain Temples.</p>
            <a href="https://maps.app.goo.gl/mfWjgJrygwDJZRcq5" class="know-more-button">Know More</a>
        </div>
    </div>

    <div class="wonder-item">
        <img src="images1/wonder5.jpg" alt="Mysore Palace - The Royal Residence">
        <div class="wonder-content">
            <h2>5.Mysore Palace - The Royal Residence</h2>
            <p>The most visited palace in the country is the Amba Vilas Palace, popularly known as Mysore Palace. Constructed in the 
            Indo-Saracen style of architecture, the magnificent Mysuru Palace is the official residence of the Wadiyar dynasty and 
            the seat of the Kingdom of Mysuru. Its exclusive interiors of carved mahogany ceilings, stained glass, gilded pillars and 
            glazed tiles – epitomize royalty and splendour. Illuminated with 97,000 lights, the palace turns into a magnificent 
            spectacle at dusk on Sundays and public holidays. Built-in the early 14th century by the royal family of Wodeyars, 
            the current palace is the fourth reconstruction after being damaged by fire. The current restoration was completed in 1912.</p>
            <a href="https://maps.app.goo.gl/ymmJU2ZrGp9TdAJo9" class="know-more-button">Know More</a>
        </div>
    </div>

    <div class="wonder-item">
        <img src="images1/wonder6.jpg" alt="Jog Falls - Cascading Beauty">
        <div class="wonder-content">
            <h2>6.Jog Falls - Cascading Beauty</h2>
            <p>Cascading at a great height of 830 feet, Jog Falls is arguably the most visited waterfall in South India and one of 
            the most in India. Located in the Shimoga district of Karnataka state, Jog Falls is one of nature’s splendid masterpieces 
            located in dense forests. The breathtaking views of plunging waterfalls especially post-monsoon will leave you spellbound. 
            A group of 4 waterfalls namely Raja, Rani, Rocket and Roar forms the Jog Falls. Located amidst the bio-diversity of 
            Karnataka’s Western Ghats, Jog Falls lies in the middle of a lush green forest and some rare species of fauna and flora.</p>
            <a href="https://maps.app.goo.gl/ApN37Fh3FHCo8w7n8" class="know-more-button">Know More</a>
        </div>
    </div>

    <div class="wonder-item">
        <img src="images1/wonder7.jpg" alt="Netrani Island - Underwater Paradise">
        <div class="wonder-content">
            <h2>7.Netrani Island - Underwater Paradise</h2>
            <p>Not just restricted to the heritage and history of the Karnataka Land, the seven wonders also include the beautiful 
            coastline of the state. One of its kind and famous for scuba diving, Netrani Island is the second best place after 
            Andaman and Nicobar islands. Located off the Murudeshwara in Uttara Kannada district, Netrani with its corals and clear
            waters is probably the best snorkelling/ dive site in India. The heart-shaped island also known as Pigeon Islands is 
            famous for its sparkling water and coral reefs. The state can easily boast the 310 km long shoreline with amazing 
            water-based adventure sports, food, culture and serenity making it one of the best in the country</p>
            <a href="https://maps.app.goo.gl/2pxZXmBm4jkYAi9G8" class="know-more-button">Know More</a>
        </div>
    </div>
</div>
	 
<%@ include file="footer.jsp" %>

    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>