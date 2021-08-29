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
          <a class="navbar-brand" href="{{ url("/") }}"><h2>Online Store Website<em>.</em></h2></a>
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
              <li class="nav-item">
                <a class="nav-link" href="{{ url("/products") }}">Products</a>
              </li>

              <li class="nav-item active">
                <a class="nav-link" href="{{ url("/cart") }}">Checkout</a>
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
                <h4>Checkout</h4>
                <h2>Here is your list!</h2>
              </div>
            </div>
          </div>
        </div>
      </section>
    </div>
    
    <!-- Banner Ends Here -->

    <section class="contact-us">
      <div class="container">
        <br>
        <br>

        <ul class="list-group list-group-flush">
          <li class="list-group-item">
            <div class="row">
                  <div class="col-6">
                       <strong><center>Product</center></strong>
                  </div>
                  
                  <div class="col-2">
                       <strong>Price</strong>
                  </div>
                  <div class="col-2">
                       <strong>Quantity</strong>
                  </div>
                  <div class="col-2">
                       <strong>Total</strong>
                  </div>
             </div>
          </li>
          
          <li class="list-group-item">
            
            @foreach ($cartItems->items as $item)
               <div class="row">
                  <div class="col-3">
                       <center><img src="{{ asset('/user/images/' . $item['cover']) }}" class="img-fluid" width="150"></center>   
                  </div>

                  <div class="col-3">
                  <span> <center>{{ $item['name'] }}</center></span>
                  </div>
                  <div class="col-2">
                       <strong>$ {{ $item['price'] }}</strong>
                  </div>
                  <div class="col-2">
                       <strong>{{ $item['qty'] }}</strong>
                  </div>
                  <div class="col-2">
                       <strong>$ {{ $item['unitprice'] }}</strong>           
                  </div>
                  
             </div>
             
          </li>
            @endforeach
           <li class="list-group-item">
               <div class="row">
                    <div class="col-11">
                      &nbsp&nbsp&nbsp
                         <strong class="pull-right">Total Amount = $ {{ $totalPrice }}</strong>
                    </div>
               </div>
          </li> 
          <li class="list-group-item">
               <div class="row">
                    <div class="col-5">
                         <a href="{{ url("/products") }}" class="btn btn-warning btn-sm pull-right">Continue Shopping</a>
                    </div>

                    <div class="col-5">
                      <a href="{{ url("/cart/remove") }}" class="btn btn-danger btn-sm pull-right">Remove Cart</a>
                    </div>
               </div>
          </li>
        </ul>
        <br><br><br><br>
        
        <center><h3 style="color: red">Please input order form!!</h3></center>
        
        
        <div class="inner-content">
          <div class="contact-us">
            <div class="contact-form">
                <form method="post">
                  @csrf
                     <div class="row">
                          <div class="col-sm-12">
                               <div class="form-group">
                                    <label class="control-label">Name:</label>
                                    <input type="text" name="name" class="form-control" required="">
                                    <label class="control-label">Email:</label>
                                    <input type="text" name="email" class="form-control" required="">
                                    <label class="control-label">Phone:</label>
                                    <input type="integer" name="phone" class="form-control" required="">
                                    <label class="control-label">Address:</label>
                                    <input type="text" name="address" class="form-control" required="">
                                    
                               </div>
                          </div>
                     </div>
                     <div class="clearfix">
                          <center><button type="submit" class="filled-button">Finish</button></center>
                     </div>
                </form>
            </div>
          </div>
        </div>
      </div>
    </section>
    
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