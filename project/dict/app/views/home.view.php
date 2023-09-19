<?php $this->view('includes/header',$data) ?>
<?php $this->view('includes/nav',$data) ?>
<style>
:root {
  --smaller: .75;
}







.container {
  color: #333;
  margin: 0 auto;
  text-align: center;
}

h1 {
  font-weight: normal;
  letter-spacing: .165rem;
  text-transform: uppercase;
}

#need li {
  display: inline-block;
  font-size: 1.5em;
  list-style-type: none;
  padding: 1em;
  text-transform: uppercase;
}


.emoji {
  display: none;
  padding: 1rem;
}

.emoji span {
  font-size: 4rem;
  padding: 0 .5rem;
}

@media all and (max-width: 768px) {
  h1 {
    font-size: calc(2.5rem * var(--smaller));
  }
  
  #need li {
    font-size: calc(1.125rem * var(--smaller));
  }
  
  #need li span {
    font-size: calc(3.375rem * var(--smaller));
  }
}
</style>


<div class="container">
  <h1 id="headline">Астана уақытымен</h1>
  <div id="countdown">
    <ul id = "need">
      
      <li><span id="hours" style = "display: block;
  font-size: 3.5rem;"></span>Сағат</li>
      <li><span id="minutes" style = "display: block;
  font-size: 3.5rem;"></span>Минут</li>
      <li><span id="seconds" style = "display: block;
  font-size: 3.5rem;"></span>Секунд</li>
    </ul>
  </div>
  <div id="content" class="emoji">
    <span>🥳</span>
    <span>🎉</span>
    <span>🎂</span>
  </div>
</div>
<!-- ======= Hero Slider Section ======= -->
<section id="hero-slider" class="hero-slider">
  <div class="container-md" data-aos="fade-in">
    <div class="row">
      <div class="col-12">
        <div class="swiper sliderFeaturedPosts">
          <div class="swiper-wrapper">
          
            <div class="swiper-slide">
              <a href="#" class="img-bg d-flex align-items-end" style="background-image: url(<?=ROOT?>/last.jpeg);">
                <div class="img-bg-inner">
                  <h2>IOT Терминдері</h2>
                  
                </div>
              </a>  
            </div>

          </div>
          <div class="custom-swiper-button-next">
            <span class="bi-chevron-right"></span>
          </div>
          <div class="custom-swiper-button-prev">
            <span class="bi-chevron-left"></span>
          </div>

          <div class="swiper-pagination"></div>
        </div>
      </div>
    </div>
  </div>
</section><!-- End Hero Slider Section -->


    <!-- ======= Post Grid Section ======= -->
    <section id="posts" class="posts">
      <div class="container" data-aos="fade-up">


        


        <div class="row g-5">
          <div class="col-lg-4">

            <div class="post-entry-1 lg">
              <a href="single-post.html"><img src="<?=ROOT?>/1.png" alt="" style="object-fit: cover;" class="img-fluid"></a>
              

              
            </div>

          </div>
          <div class="col-lg-4">

            <div class="post-entry-1 lg">
              <a href="single-post.html"><img src="<?=ROOT?>/2.png" alt="" style="object-fit: cover;" class="img-fluid"></a>
              

              
            </div>

          </div>
          <div class="col-lg-4">

            <div class="post-entry-1 lg">
              <a href="single-post.html"><img src="<?=ROOT?>/2.png" alt="" style="object-fit: cover;" class="img-fluid"></a>
              

              
            </div>

          </div>


       

        </div> <!-- End .row -->
      </div>
    </section> <!-- End Post Grid Section -->



<script type="text/javascript">
  (function () {
  const second = 1000,
        minute = second * 60,
        hour = minute * 60,
        day = hour * 24;

  //I'm adding this section so I don't have to keep updating this pen every year :-)
  //remove this if you don't need it
  let today = new Date(),
      dd = String(today.getDate()).padStart(2, "0"),
      mm = String(today.getMonth() + 1).padStart(2, "0"),
      yyyy = today.getFullYear(),
      nextYear = yyyy + 1,
      dayMonth = "08/10/",
      birthday = dayMonth + yyyy;
  
  today = mm + "/" + dd + "/" + yyyy;
  if (today > birthday) {
    birthday = dayMonth + nextYear;
  }
  //end
  
  const countDown = new Date(birthday).getTime(),
      x = setInterval(function() {    

        const now = new Date().getTime(),
              distance = now;

        
          document.getElementById("hours").innerText = (Math.floor((distance % (day)) / (hour)) + 6) % 24,
          document.getElementById("minutes").innerText = Math.floor((distance % (hour)) / (minute)),
          document.getElementById("seconds").innerText = Math.floor((distance % (minute)) / second);

        //do something later when date is reached
        if (distance < 0) {
          document.getElementById("headline").innerText = "ҰБТ!";
          document.getElementById("countdown").style.display = "none";
          document.getElementById("content").style.display = "block";
          clearInterval(x);
        }
        //seconds
      }, 0)
  }());
</script>

<?php $this->view('includes/footer',$data) ?>