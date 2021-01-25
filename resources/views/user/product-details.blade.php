<!DOCTYPE html>
<html lang="en">

  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i&display=swap" rel="stylesheet">

    <title>AKM Online Store</title>

    <!-- Bootstrap core CSS -->
    <link href="<?php echo url('/'); ?>/user/bootstrap/css/bootstrap.min.css" rel="stylesheet">


    <!-- Additional CSS Files -->
    <link rel="stylesheet" href="<?php echo url('/'); ?>/user/css/fontawesome.css">
    <link rel="stylesheet" href="<?php echo url('/'); ?>/user/css/style.css">
    <link rel="stylesheet" href="<?php echo url('/'); ?>/user/css/owl.css">
  </head>

  <body>

    <!-- ***** Preloader Start ***** -->
    <div id="preloader">
        <div class="jumper">
            <div></div>
            <div></div>
            <div></div>
        </div>
    </div>  
    <!-- ***** Preloader End ***** -->

    <!-- Header -->
    <header class="">
      <nav class="navbar navbar-expand-lg">
        <div class="container">
          <a class="navbar-brand" href="{{ url("/") }}"><h2>AKM Online Store<em>.</em></h2></a>
          <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>
          <div class="collapse navbar-collapse" id="navbarResponsive">
            <ul class="navbar-nav ml-auto">
              <li class="nav-item">
                <a class="nav-link" href="{{ url("/") }}">Home
                  <span class="sr-only">(current)</span>
                </a>
              </li> 
              <li class="nav-item active">
                <a class="nav-link" href="{{ url("/products") }}">Products</a>
              </li>

              <li class="nav-item">
                <a class="nav-link" href="{{ url("/cart") }}">Checkout</a>
              </li>

              <li class="nav-item dropdown">
                  <a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">About</a>
                  
                  <div class="dropdown-menu">
                    <a class="dropdown-item" href="about.html">About Us</a>
                    <a class="dropdown-item" href="blog.html">Blog</a>
                    <a class="dropdown-item" href="testimonials.html">Testimonials</a>
                    <a class="dropdown-item" href="terms.html">Terms</a>
                  </div>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="contact.html">Contact Us</a>
              </li>
            </ul>
          </div>
        </div>
      </nav>
    </header>

    <!-- Page Content -->
    <!-- Banner Starts Here -->
    <div class="heading-page header-text">
      <section class="page-heading">
        <div class="container">
          <div class="row">
            <div class="col-lg-12">
              <div class="text-content">
                <h2>Here is your interesting product!</h2>
              </div>
            </div>
          </div>
        </div>
      </section>
    </div>
    
    <!-- Banner Ends Here -->

    <section class="blog-posts grid-system">
      <div class="container">
        <div class="row">
          <div class="col-md-7">
            <div>
              <img src="{{ asset('/user/featuredimages/' . $product['cover']) }}" alt="" class="img-fluid wc-image">
              <img src="{{ asset('/user/images/' . $product['cover']) }}" alt="" class="img-fluid wc-image">
            </div>
          </div>

          <div class="col-md-5">
            <div class="sidebar-item recent-posts">
              <h4 class="sidebar-heading">Name</h4>
              <div class="content">
                <p>{{ $product['name'] }}</p>
              </div>
              <br>
              <h4 class="sidebar-heading">Specification</h4>
              <div class="content">
                <p>{{ $product['spec'] }}</p>
              </div>
              <br>
              <h4 class="sidebar-heading">Price</h4>
              <div class="content">
                <p><b>$ {{ $product['price'] }}</b></p>
              </div>
            </div>
          <br>
            <div class="contact-us">
              <div class="sidebar-item contact-form">
  
                <div class="content">
                    <div class="row">
                      <div class="col-lg-12">
                        <fieldset>
                          <button class="filled-button"><a style="color: black" href="{{ url("/addtocart/$product->id") }} ">Add to Cart</a></button>
                        </fieldset>
                      </div>
                    </div>
                </div>
              </div>
            </div>

            <br>
          </div>
        </div>
      </div>
    </section>

    <div class="section contact-us">
      <div class="container">
        <div class="sidebar-item recent-posts">
          <div class="sidebar-heading">
            <h2>Description</h2>
          </div>

          <div class="content">
            <p>{{ $product['description'] }}</p>
          </div>

          <br>
          <br>
        </div>
      </div>
    </div>

    <footer>
      <div class="container">
        <div class="row">
          <div class="col-lg-12">
            <ul class="social-icons">
              <li><a href="#">Facebook</a></li>
              <li><a href="#">Twitter</a></li>
              <li><a href="#">Behance</a></li>
              <li><a href="#">Linkedin</a></li>
            </ul>
          </div>
          <div class="col-lg-12">
            <div class="copyright-text">
              <p>
                Copyright © 2020
                | Template by: AKM Group
              </p>
            </div>
          </div>
        </div>
      </div>
    </footer>

    <!-- Bootstrap core JavaScript -->
    <script src="<?php echo url('/'); ?>/user/jquery/jquery.min.js"></script>
    <script src="<?php echo url('/'); ?>/user/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Additional Scripts -->
    <script src="<?php echo url('/'); ?>/user/js/custom.js"></script>
    <script src="<?php echo url('/'); ?>/user/js/owl.js"></script>
    <script src="<?php echo url('/'); ?>/user/js/slick.js"></script>
    <script src="<?php echo url('/'); ?>/user/js/isotope.js"></script>
    <script src="<?php echo url('/'); ?>/user/js/accordions.js"></script>

    <script language = "text/Javascript"> 
      cleared[0] = cleared[1] = cleared[2] = 0; //set a cleared flag for each field
      function clearField(t){                   //declaring the array outside of the
      if(! cleared[t.id]){                      // function makes it static and global
          cleared[t.id] = 1;  // you could use true and false, but that's more typing
          t.value='';         // with more chance of typos
          t.style.color='#fff';
          }
      }
    </script>

  </body>
</html>