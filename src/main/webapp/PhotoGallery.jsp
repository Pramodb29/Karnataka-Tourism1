<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Karnataka Tourisem Photography</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css">
    
    
    <style>
body {
	font-family: 'Arial', sans-serif;
	background-color: #f4f4f4;
}

/* Hero Section */
.hero-section {
    background-image: url('images1/b1.jpg');
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

/* Gallery Section */
.gallery-container {
	display: grid;
	grid-template-columns: repeat(auto-fill, minmax(300px, 1fr));
	gap: 15px;
	margin: 50px 0;
	padding: 0 20px;
}

.gallery-item {
	position: relative;
	overflow: hidden;
	border-radius: 15px;
	cursor: pointer;
	box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
}

.gallery-item img {
	width: 100%;
	height: 100%;
	object-fit: cover;
	transition: transform 0.3s ease-in-out;
}

.gallery-item:hover img {
	transform: scale(1.1);
}

.gallery-item .caption {
	position: absolute;
	bottom: 10px;
	left: 10px;
	color: white;
	font-size: 1.5rem;
	font-weight: bold;
	background-color: rgba(0, 0, 0, 0.6);
	padding: 5px 10px;
	border-radius: 5px;
}

.activity-card {
	display: flex;
	flex-wrap: wrap;
	background-color: #f4f9f4;
	border-radius: 12px;
	box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
	margin: 20px 0;
	overflow: hidden;
}

.activity-image img {
	width: 100%;
	max-width: 400px;
	object-fit: cover;
	padding-top: 60px;
}

.activity-content {
	padding: 20px;
	flex: 1;
}

.activity-content h2 {
	font-size: 28px;
	color: #2e5e4e;
	margin-bottom: 10px;
}

.activity-content p {
	font-size: 16px;
	color: #444;
	margin: 8px 0;
}

.activity-features {
	list-style: none;
	padding: 0;
	margin: 10px 0;
}

.activity-features li {
	margin-bottom: 6px;
	font-size: 15px;
	color: #333;
}

.activity-details {
	background-color: #e0f2e9;
	padding: 15px;
	border-radius: 8px;
	margin: 15px 0;
}

footer {
	background-color: #343a40;
	width: 100%;
	color: white;
	padding: 20px 0;
	margin-top: 50px;
}
</style> 
</head>
<body>
<%@ include file="header1.jsp" %>

   <!-- Hero Section -->
  <section class="hero-section" id="hero">
    <h1>Experience the Wonders of Karnataka</h1>
    <p>Discover majestic temples, lush forests, vibrant culture, and stunning landscapes across the beautiful state of Karnataka.</p>
</section>
  


    <!-- Gallery Section -->
    <section id="gallery">
        <div class="container">
            <h2 class="text-center my-5">Tourism Photography</h2>
            <div class="gallery-container">
                <!-- Gallery Item 1 -->
                <div class="gallery-item">
                 <a href="hampi.jsp">
                    <img src="images1/wonder2.jpg">
                       
             
                    <div class="caption">Hampi-Architecture Marvel</div>
</a>
                </div>
                <!-- Gallery Item 2 -->
                <div class="gallery-item" >
                 <a href="mysore.jsp">
                    <img src="images1/pala.jpg">
                    <div class="caption">Palace City-Mysore</div></a>
                </div>
                <!-- Gallery Item 3 -->
                <div class="gallery-item">
                 <a href="Chikkamagaluru.jsp">
                    <img src="images/Kudere.png">
                    <div class="caption">Beauty-Of-Chikkamagaluru</div></a>
                </div>
                <!-- Gallery Item 4 -->
                <div class="gallery-item" style="height:250px;">
                 <a href="vijayapura.jsp">
                    <img src="images1/wonder3.jpg">
                    <div class="caption">City of Victory-Vijayapura</div></a>
                </div>
                 <!-- Gallery Item 5 -->
                <div class="gallery-item" style="height:250px;">
                 <a href="Kabini.jsp">
                    <img src="images1/kabini2.jpg">
                    <div class="caption">Untouched Heaven-Kabini</div></a>
                </div>
                 <!-- Gallery Item 6 -->
                <div class="gallery-item" style="height:250px;">
                 <a href="uttarakannada.jsp">
                    <img src="images2/shiva.jpg">
                    <div class="caption">Explore Uttara Kannada</div></a>
                </div>
            
            </div>
        </div>
    </section>

    
 <div class="activity-card">
  <div class="activity-image">
    <img src="https://media.istockphoto.com/id/626056254/photo/clumsy-nature-photographer-dont-find-the-kingfisher-on-the-lens.jpg?s=612x612&w=0&k=20&c=USWn0BxiBMn3BDBdJJPp7DSEyvESXXQqg535lx0K0Cc=" alt="Karnataka Tourism Photography">
  </div>
  <div class="activity-content">
    <h2>Experience the Diversity of Karnataka – A Photographer’s Paradise</h2>
    <p>From the misty hills of Coorg to the royal heritage of Mysuru, the majestic ruins of Hampi to the vibrant coastal charm of Mangaluru — Karnataka offers an unforgettable canvas for every traveler. Whether you’re a nature lover, history buff, adventure seeker, or cultural explorer, Karnataka Tourism welcomes you to capture its beauty through your lens.</p>

    <ul class="activity-features">
      <li>🏰 Explore architectural marvels in Hampi, Badami & Belur</li>
      <li>🏞️ Trekking and coffee plantation trails in Chikkamagaluru & Coorg</li>
      <li>🌊 Serene beaches at Gokarna, Karwar & Udupi</li>
      <li>🐅 Wildlife safaris in Kabini, Bandipur, and Dandeli</li>
      <li>🎭 Cultural festivals in Mysuru, Pattadakal, and more</li>
      <li>📸 Photography tours covering landscapes, wildlife, and heritage</li>
    </ul>

    <div class="activity-details">
      <p><strong>Best Time to Visit:</strong> October to March for pleasant weather and festivals</p>
      <p><strong>Ideal For:</strong> Families, Solo Travelers, History Lovers, Nature Enthusiasts, Photographers</p>
      <p><strong>Travel Tip:</strong> Plan your route based on themes — Heritage Circuit, Coastal Karnataka, Hill Stations, or Wildlife Trails. Local guides enrich the experience!</p>
    </div>

    <div class="contact-details">
      <p><strong>📞 For bookings & information: Karnataka Tourism Office - +91 80456 78901</strong></p>
      <p><strong>🌐 Visit:</strong> <a href="https://www.karnatakatourism.org" target="_blank">www.karnatakatourism.org</a></p>
    </div>
  </div>
</div>
 


<%@ include file="footer.jsp" %>

    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>