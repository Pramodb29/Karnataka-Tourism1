<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>About Us - Karnataka Tourism</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
  <style>
     body {
      font-family: 'Arial', sans-serif;
      background-color: #f9f9f9;
      color: #333;
    }

    /* Header Styling */
    .about-header {
      background-color:#976f25e3;
      color: white;
      padding: 60px 20px;
      text-align: center;
      
      margin-bottom: 50px;
    }

 .about-header1 {
      background-color:#976f25e3;
      color: white;
      padding: 25px 20px;
      text-align: center;
      
      margin-bottom: 50px;
    }
    .about-header h1 {
      font-size: 3rem;
      font-weight: 700;
      letter-spacing: 2px;
    }

    .about-header .lead {
      font-size: 1.2rem;
      font-weight: 300;
      margin-top: 15px;
    }
   /* Image Styling */
    .about-img {
      width: 100%;
      height: auto;
      border-radius: 15px;
      box-shadow: 0 5px 15px rgba(0, 0, 0, 0.1);
      margin-bottom: 40px;
    }

    /* Section Styling */
    .about-section {
      margin-top: 50px;
    }

    .about-text h2 {
      font-size: 2.5rem;
      font-weight: 600;
      color: #333;
      margin-bottom: 20px;
    }

    .about-text p {
      font-size: 1.1rem;
      line-height: 1.8;
      color: #555;
    }
  
  video{
  height:500px;
  width:500px;
  }
  
  #heading{
  text-align:center;
  color:white;
  font-weight:bold;
  background-color:#976f25e3;
  height:100px;
  display:grid;
  
  }
  
  
     /* Card Styling for Core Values */
    .values .card {
      background-color: #fff;
     
      border-radius: 10px;
      box-shadow: 0 4px 20px rgba(0, 0, 0, 0.1);
      transition: transform 0.3s ease-in-out;
    }

    .values .card:hover {
      transform: translateY(-8px);
    }

    .values h5 {
      font-size: 1.5rem;
      font-weight: 600;
      color: #4CAF50;
    }

    .values p {
      color: #666;
      font-size: 1rem;
      line-height: 1.5;
    }

    /* Extra Section Styling */
    .extra-section {
      background-color: #fff;
      padding: 50px 20px;
      margin-top: 50px;
      box-shadow: 0 5px 20px rgba(0, 0, 0, 0.1);
      border-radius: 15px;
    }

    .extra-section h3 {
      font-size: 2rem;
      font-weight: 600;
      color: #333;
      margin-bottom: 20px;
      padding-left: 30px;
    }
     .extra-section p{
      padding-left: 10px;
     }

    .extra-section ul {
      list-style-type: none;
      padding-left: 30px;
    }

    .extra-section li {
      font-size: 1.1rem;
      color: #555;
      padding: 10px 0;
      display: flex;
      align-items: center;
    }

    .extra-section li::before {
      content: "✔";
      font-size: 1.5rem;
      color: #4CAF50;
      margin-right: 10px;
    }

    /* Footer Styling */
    footer {
      
      margin-top: 50px;
      
    }

    
      .about-text h2 {
        font-size: 2rem;
      }

      .values .card {
        margin-bottom: 30px;
      }
      
      h5, p{
      margin-top:10px;
       padding: 10px;
      }
  	.card img{
  	border-radius:10px;
  	}
  	.card p{
  	margin-top:-10px;
  	}
  @media (min-width: 992px) {
  .col-lg-6 {
    flex: 0 0 auto;
    width: 50%;
   
  }
}
  </style>
</head>
<body>
<%@ include file="header1.jsp" %>
 <!-- Header -->
  <div class="about-header">
    <h1>About Karnataka Tourism</h1>
    <p class="lead">Experience the untamed beauty of Karnataka with every journey</p>
  </div>

<!-- Main Content -->
  <div class="container about-section">
  <div class="row align-items-center g-5">
    <div class="col-lg-6">
    <video autoplay muted loop style="width:100%; height:400px; object-fit:cover; border-radius:15px; box-shadow:0 5px 15px rgba(0,0,0,0.1);">
    
        <source src="images/video1.mp4" type="video/mp4">
        Your browser does not support the video tag.
      </video>
    </div>
    <div class="col-lg-6 about-text">
      <h2>About Karnataka Tourism</h2>
     <p>
  Karnataka tourism offers a diverse and enriching experience for travelers, showcasing the state's natural beauty, rich wildlife, majestic temples, serene beaches, and lush hill stations. From thrilling safaris in Bandipur and Nagarhole to peaceful retreats in Coorg and Chikmagalur, Karnataka invites visitors to discover its unique blend of nature.
</p>
<p>
  Karnataka invites visitors to discover its unique blend of nature, heritage, and adventure in a responsible and sustainable way. The tourism sector in Karnataka not only delivers unforgettable journeys but also plays a key role in conserving biodiversity, empowering local communities, and promoting cultural awareness.
</p>
     
    </div>
  </div>
   

  
     <div class="about-header1" style="heignt:100px;">
    <h3><b>Interesting Facts About Karnataka Tourism Peoples Doesn't Knows</b></h3>
    
  </div>
   <div class="row text-center values">
   <div class="col-md-4">
        <div class="card">
        <img src="images1/mono.jpg" height="200px">
       <h5>1. Home to the World's Largest Monolithic Statue</h5>
        <p>Karnataka houses the Gommateshwara Bahubali statue in Shravanabelagola – the largest monolithic (carved from a single rock) statue in the world, standing at 57 feet tall.</p>
        </div>
      </div>
      <div class="col-md-4">
        <div class="card">
         <img src="images1/agumbe.jpg" height="200px">
        <h5>2. Karnataka Has India's Only Rainforest Research Station</h5>
         <p>Deep in the Agumbe Rainforest (nicknamed the "Cherrapunji of the South"), lies the Agumbe Rainforest Research Station, known for its king cobra conservation efforts.</p>
        </div>
      </div>
       
      <div class="col-md-4">
        <div class="card">
          <img src="images1/npk.jpg" height="200px">
        <h5>3. The Only State with 5 National Parks</h5>
       <p>Karnataka is the only Indian state to boast 5 national parks: Bandipur, Nagarhole, Anshi, Kudremukh, and Bannerghatta – making it a wildlife lover’s paradise.</p>
        </div>
      </div>
       <div class="col-md-4" style="margin-left:150px;">
        <div class="card">
        <img src="images1/kabibi.jpg" height="200px">
        <h5>4. Kabini – The Best Place to Spot the ‘Black Panther’</h5>
         <p>Kabini Wildlife Sanctuary in Karnataka is one of the very few places on Earth where the elusive Black Panther (Melanistic Leopard) has been frequently spott.</p>
        </div>
      </div>
       <div class="col-md-4" style="margin-left:70px;" >
        <div class="card" style="height:425px;">
          <img src="images1/yaksh.jpg" height="200px">
        <h5>5. Hosts the Oldest Living Classical Theatre – Yakshagana</h5>
         <p>Karnataka is home to Yakshagana, a unique blend of dance, music, and storytelling, which predates even Bharatanatyam and Kathakali etcs.</p>
        </div>
      </div>
  </div>  



 <!-- Extra Sections -->
    <div class="extra-section">
      <div class="row">
        <div class="col-md-6">
          <h3>Importance of Travel Tourism</h3>
					<p>Tourism and travel play a crucial role in promoting
						environmental awareness and cultural preservation. Well-planned
						trips generate valuable revenue that supports local communities,
						sustains eco-friendly travel services, and encourages responsible
						travel practices. The income from tourism often contributes to the
						maintenance of heritage sites, natural landscapes, and local
						traditions, making travel not just a leisure activity but a
						meaningful force for conservation and development.</p>

				</div>
        <div class="col-md-6">
          <h3>Benefits to Tourists</h3>
          <ul>
            <li>Experience diverse languages, festivals, art, architecture, and traditions.</li>
            <li>Opportunities for trekking, wildlife safaris, river rafting, and beach activities.</li>
            <li>Learning about history (e.g., Hampi, Badami), ecosystems (e.g., Western Ghats), and local lifestyles.</li>
            <li>Boosts confidence, independence, and communication skills through solo or group travel.</li>
          </ul>
        </div>
      </div>
    </div>

  </div>








<%@ include file="footer.jsp" %>

  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>