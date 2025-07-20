<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>Tourism Experience</title>

  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600;800&display=swap" rel="stylesheet">

  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">
  <style>
   body {
  font-family: 'Poppins', Arial, sans-serif;
}


    
    /* INFO SECTION (Merged Part) */
    

    
  .hero-section {
      padding: 60px 0;
      position: relative;
      overflow: hidden;
    }

    .hero-img {
      width: 100%;
      border-radius: 50%;
      object-fit: cover;
      aspect-ratio: 1/1;
    }

    .icon-overlay {
      position: absolute;
      bottom: 40px;
      right: 20px;
      background: #fac539;
      color: white;
      font-size: 30px;
      padding: 20px;
      border-radius: 50%;
    }

    .hero-title {
      font-size: 42px;
      font-weight: 900;
      color: #0d0d24;
      line-height: 1.2;
    }

    .hero-highlight {
      color: #fc4c2f;
      font-size: 18px;
      margin-top: 20px;
      font-weight: 600;
    }

    .hero-text {
      color: #8c8c8c;
      margin: 20px 0;
      line-height: 1.6;
    }

    .hero-list li {
      margin-bottom: 10px;
      font-weight: 500;
      color: #0d0d24;
    }

    .hero-list i {
      color: #fac539;
      margin-right: 10px;
    }
    

    .btn-discover {
      background: #fc4c2f;
      color: #fff;
      padding: 12px 28px;
      font-weight: bold;
      letter-spacing: 1px;
      border: none;
     
    text-decoration: none; /* removes underline */

      
    }

    .scroll-top {
      position: fixed;
      bottom: 30px;
      right: 30px;
      background: #fac539;
      color: white;
      padding: 14px;
      border-radius: 50%;
      font-size: 18px;
      cursor: pointer;
      display: none;
      z-index: 1000;
    }
.img-wrapper {
  position: relative;
  display: inline-block;
  cursor: pointer;
}

.img-overlay {
  position: absolute;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  border-radius: 50%;
  background-color: rgba(255, 255, 255, 0.4);
  opacity: 0;
  transition: opacity 0.3s ease;
  pointer-events: none;
}
.img-overlay.active {
  opacity: 1;
}

 .news-section {
            text-align: center;
            margin-bottom: 40px;
        }

        .section-title {
            font-size: 28px;
            font-weight: bold;
            margin-bottom: 20px;
        }

        .news-container {
            display: flex;
            justify-content: center;
            gap: 20px;
            flex-wrap: wrap;
        }

        .news-card {
            background-color: #FFF4E0; /* Very light grey background */
            width: 400px; /* Increased card size */
            height: 500px; /* Increased card height */
            box-shadow: 0 6px 12px rgba(0, 0, 0, 0.2);
            border-radius: 10px;
            overflow: hidden;
            transition: transform 0.3s ease;
            padding-bottom: 10px;
        }

        /* Image Styling */
        .news-img {
            position: relative;
            overflow: hidden;
            height: 300px; /* Larger image */
        }

        .news-img img {
            width: 100%;
            height: 100%;
            object-fit: cover;
            transition: transform 0.3s ease;
        }

        .news-img:hover img {
            transform: scale(1.1);
        }

        .date-tag {
            position: absolute;
            top: 10px;
            left: 10px;
            background-color: #ff5722;
            color: white;
            padding: 5px 10px;
            font-size: 14px;
            font-weight: bold;
            border-radius: 4px;
        }

        /* Content Styling */
        .news-content {
            padding: 20px;
            text-align: center;
        }

        .admin-info {
            font-size: 14px;
            color: gray;
            margin-bottom: 10px;
        }

        .news-title {
            font-size: 20px;
            font-weight: bold;
            cursor: pointer;
            transition: color 0.3s ease;
        }

        .news-title:hover {
            color: red;
        }

        /* Circular Arrow Button */
        .read-more {
            display: inline-block;
            margin-top: 15px;
            font-size: 16px;
            font-weight: bold;
            color: black;
            cursor: pointer;
            transition: color 0.3s ease, background-color 0.3s ease;
            width: 35px;
            height: 35px;
            line-height: 35px;
            text-align: center;
            background-color: white;
            border-radius: 50%;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.2);
        }

        .read-more:hover {
            background-color: red;
            color: white;
        }
       

 .title {
      font-size: 2rem;
      font-weight: bold;
      margin: 20px 0;
      text-align: center;
      text-transform: uppercase;
      color: #333;
    }

    .slider-container {
      width: 100vw;
      overflow: hidden;
      position: relative;
    }

    .card-slider {
      display: flex;
      transition: transform 1.5s ease-in-out;
      will-change: transform;
    }

    .card {
      position: relative;
      width: 25vw;
      height: 350px;
      overflow: hidden;
      flex-shrink: 0;
      transition: transform 0.5s ease-in-out;
    }

    .card img {
      width: 100%;
      height: 100%;
      object-fit: cover;
    }

    .card .info {
      position: absolute;
      bottom: 15%;
      left: 50%;
      transform: translateX(-50%);
      background: rgba(0, 0, 0, 0.7);
      color: white;
      padding: 10px;
      border-radius: 5px;
      text-align: center;
      font-size: 16px;
      opacity: 0;
      transition: opacity 0.3s ease-in-out;
      width: 80%;
    }

    .card:hover .info {
      opacity: 1;
    }

    .arrow {
      position: absolute;
      bottom: 10px;
      left: 50%;
      transform: translateX(-50%);
      font-size: 24px;
      color: yellow;
      font-weight: bold;
      width: 40px;
      height: 40px;
      background: rgba(0, 0, 0, 0.7);
      border-radius: 50%;
      display: flex;
      align-items: center;
      justify-content: center;
      opacity: 0;
      transition: opacity 0.3s ease-in-out;
    }

    .card:hover .arrow {
      opacity: 1;
    }

    .card:hover {
      transform: scale(1.1);
    }

    @media (max-width: 768px) {
      .card {
        width: 60vw;
      }
    }

    @media (max-width: 576px) {
      .card {
        width: 80vw;
      }
    }
@media (max-width: 768px) {
  .highlight-section {
    flex-direction: column;
    gap: 30px;
    padding: 30px 20px;
  }
}


 


 .highlight-section {
      display: flex;
      justify-content: space-between;
      align-items: center;
      padding: 50px;
      background-image: url('https://media.istockphoto.com/id/1400970023/photo/african-elephant-side-view.jpg?s=612x612&w=0&k=20&c=Rib9mqTb6N0j70JdY3_Ptgcmqk0kJ3yFMC6dCXeYa2A=');
      background-size: cover;
      background-position: center;
      background-repeat: no-repeat;
      position: relative;
    }

    .text-section {
      flex: 1;
      padding-right: 30px;
      background-color: rgba(255, 255, 255, 0.85); /* Optional: adds readability over image */
      border-radius: 10px;
      padding: 20px;
    }

    .text-section h1 {
      font-size: 3rem;
      font-weight: 800;
      color: #0c1f3d;
    }

    .text-section p {
      font-size: 1.1rem;
      color: #5a5a5a;
      margin-bottom: 20px;
    }

    .benefits-list {
      list-style: none;
      padding-left: 0;
    }

    .benefits-list li {
      display: flex;
      align-items: center;
      font-size: 1.1rem;
      margin-bottom: 10px;
      color: #222;
    }

    .benefits-list li::before {
      content: '➤';
      color: #ffc107;
      margin-right: 10px;
    }

    .membership-card {
      width: 350px;
      background-color: #fbbf24;
      padding: 30px;
      border-radius: 10px;
      position: relative;
      color: #fff;
    }

    .membership-card h2 {
      font-weight: 800;
      font-size: 2rem;
      line-height: 1.2;
    }

    .membership-card .price {
      font-size: 3rem;
      font-weight: bold;
      margin-top: 10px;
    }

    .membership-card .btn-dark {
      margin-top: 20px;
      font-weight: bold;
      letter-spacing: 1px;
    }

    .tiger-img {
      width: 120px;
      position: absolute;
      bottom: 0;
      right: 0;
    }

    .scroll-top-btn {
      position: absolute;
      bottom: 20px;
      right: 20px;
      background-color: #fbbf24;
      color: #fff;
      border: none;
      border-radius: 50%;
      width: 50px;
      height: 50px;
      font-size: 24px;
    }

    .signature {
      font-family: 'Brush Script MT', cursive;
      color: #e74c3c;
      font-size: 2rem;
      margin-top: 30px;
    }
    .testimonial-slider {
      width: 100vw;
      overflow: hidden;
      position: relative;
    }

    .testimonial-container {
      display: flex;
      width: max-content;
      gap: 8px;
      transition: transform 0.5s ease-in-out;
    }

    .testimonial {
      flex: 0 0 300px;
      height: 250px;
      padding: 120px 20px 20px;
      text-align: center;
      background: #d3d3d3;
      border-radius: 10px;
      box-shadow: 0px 4px 6px rgba(0,0,0,0.3);
      position: relative;
      overflow: visible;
      transition: background-color 0.3s ease;
    }

    .testimonial:hover {
      background-color: #a9a9a9;
    }

    .testimonial::before {
      content: "";
      position: absolute;
      top: 0;
      left: 50%;
      width: 0;
      height: 5px;
      background-color: #f0e68c;
      transition: width 0.5s ease-in-out, left 0.5s ease-in-out;
    }

    .testimonial:hover::before {
      width: 100%;
      left: 0;
    }

    .testimonial img {
      width: 100px;
      height: 100px;
      border-radius: 50%;
      object-fit: cover;
      position: absolute;
      top: 50px;
      left: 50%;
      transform: translate(-50%, -50%);
      border: 5px solid white;
      background: white;
      box-shadow: 0px 4px 6px rgba(0,0,0,0.3);
    }
.Review{
 text-align: center;
      font-size: 16px;
}
/* New Styles for Animal Slider */
.animal-slider-section {
    margin-top: 40px;
    margin-bottom: 40px;
}

.animal-slider-container {
    width: 100%; /* Adjust as needed, 100vw if you want it full viewport width */
    overflow: hidden;
    margin: 0 auto; /* Center the container if it's not 100vw */
}

.animal-slider-track {
    display: flex;
    white-space: nowrap; /* Prevent items from wrapping */
    transition: transform 0.8s ease-in-out; /* Smooth transition for sliding */
    will-change: transform; /* Hint for browser optimization */
}

.animal-card {
    flex: 0 0 25%; /* Show 4 cards at a time, adjust as per image count */
    max-width: 25%; /* Ensure it takes up allocated space */
    padding: 0 10px; /* Padding between images */
    box-sizing: border-box; /* Include padding in width calculation */
    cursor: pointer;
}

.animal-card img {
    width: 100%;
    height: 250px; /* Fixed height for consistency */
    object-fit: cover; /* Cover the area, cropping if necessary */
    border-radius: 8px; /* Slightly rounded corners */
    transition: transform 0.3s ease-in-out;
}

.animal-card img:hover {
    transform: scale(1.05); /* Slight zoom on hover */
}

.animal-section-title {
    font-size: 36px;
    font-weight: 900;
    color: #0d0d24;
    text-align: center;
    margin-bottom: 30px;
}

/* Responsive adjustments for animal slider */
@media (max-width: 1200px) {
    .animal-card {
        flex: 0 0 33.33%; /* Show 3 cards */
        max-width: 33.33%;
    }
}

@media (max-width: 992px) {
    .animal-card {
        flex: 0 0 50%; /* Show 2 cards */
        max-width: 50%;
    }
    .animal-card img {
        height: 200px;
    }
    .animal-section-title {
        font-size: 32px;
    }
}

@media (max-width: 768px) {
    .animal-card {
        flex: 0 0 100%; /* Show 1 card */
        max-width: 100%;
        padding: 0 15px; /* More padding on smaller screens */
    }
    .animal-card img {
        height: 180px;
    }
    .animal-section-title {
        font-size: 28px;
    }
}



  </style>
</head>
<body>

  

    

 <section class="container hero-section">
    <div class="row align-items-center">
      <div class="col-md-6 position-relative text-center">
<div class="img-wrapper" onclick="toggleOverlay()">
  <img src="images/dasara.jpg" alt="Dasara Festival in Mysore" class="hero-img">
  <div class="img-overlay" id="imgOverlay"></div>
</div>
       
      
      </div>
      <div class="col-md-6">
    <h1 class="hero-title">WELCOME TO KARNATAKA<br>WHERE HERITAGE MEETS NATURE</h1>
    <p class="hero-highlight">Experience the vibrant culture, traditions, and heritage of Karnataka.</p>
<p class="hero-text">
  From classical Carnatic music and colorful folk dances to age-old temple rituals and rich Kannada literature, 
  Karnataka showcases a deep-rooted cultural legacy that continues to thrive across generations.
</p>
    
    <ul class="hero-list list-unstyled">
                <li><i class="fas fa-arrow-right"></i> Explore UNESCO World Heritage Sites like Hampi & Pattadakal</li>
        <li><i class="fas fa-arrow-right"></i> Enjoy the serenity of Coorg's coffee plantations</li>
        <li><i class="fas fa-arrow-right"></i> Go on wildlife safaris in Bandipur and Nagarhole</li>
    </ul><br>
    <a href="Aboutus.jsp" class="btn-discover"style="margin-top: 50px;">DISCOVER MORE</a>
    
    
</div>

  </section><br><br><br>


</section>
<div class="container-fluid highlight-section">
  <div class="text-section">
    <h1>WHY VISIT KARNATAKA?</h1>
    <p>Karnataka is a land of diversity — ancient temples, hill stations, beaches, and wildlife sanctuaries. It is the perfect destination for culture lovers and nature enthusiasts alike.</p>
    <ul class="benefits-list">
      <li>Visit Mysore Palace, one of India’s grandest royal palaces</li>
      <li>Uncover the mysteries of Hampi and Badami's rock-cut caves</li>
      <li>Experience the charm of hill stations like Chikmagalur and Coorg</li>
      <li>Relax at the pristine beaches of Gokarna and Karwar</li>
      <li>Spot tigers and elephants at Bandipur & Dandeli reserves</li>
    </ul>
  </div>
  <div class="membership-card">
    <h2>KARNATAKA<br>TRAVEL PASS</h2>
    <p class="text-dark mt-3">All-Inclusive Tour Package</p>
     <p class="text-dark mt-3">Unlimited Trips Until One year</p>
    <div class="price">Rs49999.00</div>
  </div>
</div>
<script>
  function scrollToTop() {
    window.scrollTo({ top: 0, behavior: 'smooth' });
  }
</script>

<br><br>

<center><div class="hero-title">Top Attractions in Karnataka</div></center><br>
<div class="slider-container">
  <div class="card-slider" id="karnatakaCardSlider"> <div class="card">
      <img src="images3/palace.jpg" alt="Mysore Palace">
      <div class="info">MYSORE PALACE - Regal Grandeur</div>
    </div>
    <div class="card">
      <img src="images3/coorg.jpg" alt="Coorg">
      <div class="info">COORG - Scotland of India</div>
    </div>
    <div class="card">
      <img src="images3/hampi3.jpg" alt="Hampi">
      <div class="info">HAMPI - Ancient Wonders</div>
    </div>
    <div class="card">
      <img src="images3/tiger1.jpg" alt="Bandipur">
      <div class="info">BANDIPUR - Wildlife Paradise</div>
    </div>
    <div class="card">
      <img src="images3/om.jpg" alt="Gokarna">
      <div class="info">GOKARNA - Serene Beaches</div>
    </div>
    <div class="card">
      <img src="images3/gol.jpg" alt="Bijapur">
      <div class="info">GOLGUMBAZ - Indias Largest Dome</div>
    </div>
    <div class="card">
      <img src="images3/belur.jpg" alt="Belur">
      <div class="info">BELUR - The Architecture Marvel</div>
    </div>
  </div>
</div>

  <script>
    const karnatakaSlider = document.getElementById('karnatakaCardSlider'); // Renamed variable for clarity
    let karnatakaInterval; // Renamed variable for clarity

    function moveKarnatakaCards() { // Renamed function for clarity
      const cardWidth = karnatakaSlider.firstElementChild.offsetWidth;

      // Clone first card
      const firstCard = karnatakaSlider.firstElementChild.cloneNode(true);
      karnatakaSlider.appendChild(firstCard);

      // Slide left
      karnatakaSlider.style.transition = 'transform 1.5s ease-in-out';
      karnatakaSlider.style.transform = `translateX(-${cardWidth}px)`;

      // After transition ends
      setTimeout(() => {
        karnatakaSlider.style.transition = 'none';
        karnatakaSlider.style.transform = 'translateX(0)';
        karnatakaSlider.removeChild(karnatakaSlider.firstElementChild);
      }, 1500);
    }

    function startKarnatakaAutoScroll() { // Renamed function for clarity
      karnatakaInterval = setInterval(moveKarnatakaCards, 2000);
    }

    function stopKarnatakaAutoScroll() { // Renamed function for clarity
      clearInterval(karnatakaInterval);
    }

    karnatakaSlider.addEventListener('mouseenter', stopKarnatakaAutoScroll);
    karnatakaSlider.addEventListener('mouseleave', startKarnatakaAutoScroll);

    startKarnatakaAutoScroll();
  </script>

<br><br>



<!-- <script>
    const slider = document.getElementById('cardSlider');
    let interval;

    function moveCards() {
      const cardWidth = slider.firstElementChild.offsetWidth;

      // Clone first card
      const firstCard = slider.firstElementChild.cloneNode(true);
      slider.appendChild(firstCard);

      // Slide left
      slider.style.transition = 'transform 1.5s ease-in-out';
      slider.style.transform = `translateX(-${cardWidth}px)`;

      // After transition ends
      setTimeout(() => {
        slider.style.transition = 'none';
        slider.style.transform = 'translateX(0)';
        slider.removeChild(slider.firstElementChild);
      }, 1500);
    }

    function startAutoScroll() {
      interval = setInterval(moveCards, 2500);
    }

    function stopAutoScroll() {
      clearInterval(interval);
    }

    slider.addEventListener('mouseenter', stopAutoScroll);
    slider.addEventListener('mouseleave', startAutoScroll);

    startAutoScroll();
</script> -->


<div class="scroll-top" id="scrollTopBtn">
    <i class="fas fa-arrow-up"></i>
  </div>



<section class="news-section">
  <center><h1 class="hero-title">LATEST FROM KARNATAKA</h1></center><br>
  <div class="news-container">
    <div class="news-card">
      <div class="news-img">
        <img src="images3/hills.jpg" alt="Hampi">
        <span class="date-tag">29 JUNE</span>
      </div>
      <div class="news-content">
        <p class="admin-info">👤 admin | 💬 120 Comments</p>
        <h3 class="news-title">Bengaluru - Nandi Hills Entry Suspended</h3>
        <p class="news-description">Due to a state cabinet meeting, Nandi Hills was closed for 4 days, restricting tourist access temporarily to facilitate official preparations.</p>
      </div>
    </div>
    <div class="news-card">
      <div class="news-img">
        <img src="images3/gokak.jpg" alt="Coorg">
        <span class="date-tag">15 JUNE</span>
      </div>
      <div class="news-content">
        <p class="admin-info">👤 admin | 💬 250 Comments</p>
        <h3 class="news-title">Belagavi - Gokak Falls to Get Cable Car</h3>
        <p class="news-description">Karnataka plans to build a Rs 50 crore cable-car at Gokak Falls, modeled after Dubai’s system, to increase tourist access.</p>
      </div>
    </div>
    <div class="news-card">
      <div class="news-img">
        <img src="images3/peak.jpg" alt="Bandipur">
        <span class="date-tag">01 JUNE</span>
      </div>
      <div class="news-content">
        <p class="admin-info">👤 admin | 💬 90 Comments</p>
        <h3 class="news-title">Chikkamagaluru - Netravathi Peak Trekking Opened</h3>
		<p class="news-description">The scenic Netravathi Peak trek in Chikmagalur has officially reopened from June 1st, welcoming adventurers to explore the Western Ghats' serene trails and misty landscapes.</p>
        
      </div>
    </div>
  </div>
</section>

 <!--   <div class="Review">
<center><h1 class="hero-title">Reviews</h1></center><br>
</div>
<div class="testimonial-slider">
    <div class="testimonial-container" id="testimonial-container">
      <div class="testimonial">
        <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSyHVknd3Rm-dRHG1AeUOLYVaMRJ99F5IfIEQ&s" alt="Person">
        <p>"Amazing service, highly recommended!"</p>
        <strong>Rahul Verma</strong>
      </div>
      <div class="testimonial">
        <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSm0jhxD5aOdCoW-TsNm4zM17zrho6DNlXCVg&s" alt="Person">
        <p>"Very satisfied with the experience!"</p>
        <strong>Gautam Patel</p>
      </div>
      <div class="testimonial">
        <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSZ3zBs0geInf3Bft5zglH95C6p6PpLpHvf-g&s" alt="Person">
        <p>"Would use again, great quality!"</p>
        <strong>Sanjay V. M</strong>
      </div>
      <div class="testimonial">
        <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTboBzY7WU7_U0j0wZ9gdsjaNRxxMHXut_gQw&s" alt="Person">
        <p>"A fantastic experience!"</p>
        <strong>Geeta Sharma</strong>
      </div>
      <div class="testimonial">
        <img src="https://media.istockphoto.com/id/1562983249/photo/portrait-of-happy-and-successful-businessman-indian-man-smiling-and-looking-at-camera.jpg?s=612x612&w=0&k=20&c=tfBv6taG9nTidFwENcrvEEvRHABN5gDAmg-K1G1Etnc=" alt="Person">
        <p>"Exceptional service and support."</p>
        <strong>Amith Chowgule</strong>
      </div>
      <div class="testimonial">
        <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRcwM3L5adB0qTMZC6kKv5U2QyVXJ96vwf_Vw&s" alt="Person">
        <p>"Loved the entire process!"</p>
        <strong>Shivani Patil</strong>
      </div>
    </div>
  </div> -->
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>

 <!--  <script>
    const testimonialContainer = document.getElementById('testimonial-container'); // Renamed variable
    // Check if container exists before trying to access its children
    if (testimonialContainer) { // Use the renamed variable here
        const testimonialCards = Array.from(testimonialContainer.children); // Renamed variable
        const testimonialCardWidth = 308; // 300px + 8px gap
        let testimonialIndex = 0; // Renamed variable

        // Clone the cards for seamless loop
        testimonialCards.forEach(card => {
            const clone = card.cloneNode(true);
            testimonialContainer.appendChild(clone);
        });

        function slideTestimonials() {
            testimonialIndex++;
            testimonialContainer.style.transition = 'transform 0.5s ease-in-out';
            testimonialContainer.style.transform = `translateX(-${testimonialIndex * testimonialCardWidth}px)`;

            if (testimonialIndex >= testimonialCards.length) {
                setTimeout(() => {
                    testimonialContainer.style.transition = 'none';
                    testimonialContainer.style.transform = 'translateX(0)';
                    testimonialIndex = 0;
                }, 500);
            }
        }

        // Uncomment the line below to activate the testimonial slider auto-scroll
        setInterval(slideTestimonials, 2500);
    }
  </script>
<br><br>
 -->

  
<script>
    const scrollBtn = document.getElementById('scrollTopBtn');

    window.onscroll = function () {
      if (document.body.scrollTop > 300 || document.documentElement.scrollTop > 300) {
        scrollBtn.style.display = "block";
      } else {
        scrollBtn.style.display = "none";
      }
    };

    scrollBtn.onclick = function () {
      window.scrollTo({ top: 0, behavior: 'smooth' });
    };
  </script>

<script>
  function toggleOverlay() {
    const overlay = document.getElementById('imgOverlay');
    overlay.classList.toggle('active');
  }
</script>

 

</body>
</html>