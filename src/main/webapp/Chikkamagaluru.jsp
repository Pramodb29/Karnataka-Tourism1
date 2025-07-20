<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Chikkamagaluru Photos Gallery</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css">
    
     <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css2?family=Playfair+Display:wght@600&family=Roboto&display=swap" rel="stylesheet"/>
  
  <style>
    body {
      background: #fff;
      font-family: 'Roboto', sans-serif;
      color: #333;
      margin: 0;
      padding: 0;
    }

    .hero {
  position: relative;
  height: 70vh;
  overflow: hidden;
}

.hero img {
  position: absolute;
  top: 0;
  left: 0;
  height: 100%;
  width: 100%;
  object-fit: cover;
  z-index: 0;
    animation: fadeIn 2s ease-in;
}

.hero .hero-text {
  position: relative;
  z-index: 1;
  color: white;
  text-align: center;
  height: 100%;
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
  animation: fadeIn 1.5s ease-in;
  
 
}
    

    .gallery-section {
      padding: 60px 30px;
    }

    .gallery-title {
      font-size: 2.8rem;
      text-align: center;
      margin-bottom: 40px;
      color: #1b3b1b;
      font-family: 'Playfair Display', serif;
    }

    .gallery-grid {
      display: grid;
      grid-template-columns: repeat(auto-fill, minmax(280px, 1fr));
      gap: 25px;
      animation: fadeIn 1.5s ease-in-out;
    }

    .gallery-card {
      position: relative;
      overflow: hidden;
      border-radius: 12px;
      box-shadow: 0 8px 20px rgba(0, 0, 0, 0.15);
      cursor: pointer;
      transition: transform 0.3s ease, box-shadow 0.3s ease;
    }

    .gallery-card img {
      width: 100%;
      height: 100%;
      object-fit: cover;
      transition: transform 0.4s ease;
    }

    .gallery-card:hover {
      transform: scale(1.03);
      box-shadow: 0 12px 25px rgba(0, 0, 0, 0.25);
    }

    .gallery-card:hover img {
      transform: scale(1.1);
    }

    .card-caption {
      position: absolute;
      bottom: 0;
      width: 100%;
      background: rgba(27, 59, 27, 0.85);
      color: white;
      text-align: center;
      padding: 10px;
      font-weight: 600;
      font-size: 1.1rem;
      transition: all 0.3s ease-in-out;
    }

    .gallery-card:hover .card-caption {
      transform: translateY(-5px);
    }

    .modal-content img {
      width: 100%;
      border-radius: 10px;
      opacity: 0;
      transition: opacity 0.5s ease;
    }

    .modal-content img.loaded {
      opacity: 1;
    }

    .modal-header {
      border-bottom: none;
    }

    @keyframes fadeIn {
      0% { opacity: 0; transform: translateY(20px); }
      100% { opacity: 1; transform: translateY(0); }
    }

    @keyframes slideIn {
      0% { transform: translateY(-50px); opacity: 0; }
      100% { transform: translateY(0); opacity: 1; }
    }

    

  </style>
  
  
  
</head>
<body>

<%@ include file="header1.jsp" %>


<section class="hero">
  <img src="images2/peak1.jpg" alt="Hampi Image" />
  <div class="hero-text">
<h1 style="font-size:4rem;font-family: 'Playfair Display', serif;">Charm of Chikkamagaluru</h1>
<p style="font-size:1.4rem;font-weight:bold;opacity: 0.9;">Unwind in the serene hills of Chikkamagaluru — where lush coffee estates, misty mountains, and natural wonders await.</p> 
  </div>
</section>


<!-- Gallery -->
<section class="gallery-section" id="gallery">
  <h2 class="gallery-title">Photo Gallery</h2>
  <div class="gallery-grid">

    <!-- Gallery Cards -->
    <div class="gallery-card" data-bs-toggle="modal" data-bs-target="#photoModal">
      <img loading="lazy" src="images2/Mullayanagiri.jpg" alt="Black Panther in Forest"/>
      <div class="card-caption">Mullayanagiri-Highest Peak</div>
    </div>

    <div class="gallery-card" data-bs-toggle="modal" data-bs-target="#photoModal">
      <img loading="lazy" src="images2/hebbe.jpg" alt="Black Panther in Shadows"/>
      <div class="card-caption">Hebbe Falls-Chikkamagaluru</div>
    </div>
    
     <div class="gallery-card" data-bs-toggle="modal" data-bs-target="#photoModal" >
      <img loading="lazy" src="images2/sringeri.jpg" alt="Black Panther Silent Prowler"/>
      <div class="card-caption">Sringeri Sharada Peeta</div>
    </div>

    <div class="gallery-card" data-bs-toggle="modal" data-bs-target="#photoModal">
      <img loading="lazy" src="images2/coffe.jpg" alt="Black Panther Walking"/>
      <div class="card-caption">The Land Coffee</div>
    </div>
<div class="gallery-card" data-bs-toggle="modal" data-bs-target="#photoModal">
      <img loading="lazy" src="images2/trek.jpg" alt="Black Panther Walking"/>
      <div class="card-caption">Kuderemukh Trekkers Heaven</div>
    </div>
   
<div class="gallery-card" data-bs-toggle="modal" data-bs-target="#photoModal">
      <img loading="lazy" src="images2/bhadra.jpg" alt="Black Panther Walking"/>
      <div class="card-caption">Bhadra Tiger Reserve</div>
    </div>
    
    <div class="gallery-card" data-bs-toggle="modal" data-bs-target="#photoModal">
      <img loading="lazy" src="images2/netra.jpg" alt="Black Panther Walking"/>
      <div class="card-caption">Netravathi Peak Trekking</div>
    </div>
    
     <div class="gallery-card" data-bs-toggle="modal" data-bs-target="#photoModal">
      <img loading="lazy" src="images2/lake.jpg" alt="Black Panther Walking"/>
      <div class="card-caption">HireKolale Lake-Sunset Point</div>
    </div>
    
  </div>
</section>




<%@ include file="footer.jsp" %>

    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>