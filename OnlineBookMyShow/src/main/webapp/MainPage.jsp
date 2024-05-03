<html>
<head>

<title>BookmyMovie</title>

   
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://getbootstrap.com/docs/5.3/assets/css/docs.css" rel="stylesheet">  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://getbootstrap.com/docs/5.3/assets/css/docs.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>

<style type="text/css">
html { overflow-x: hidden; }
body {
     
     overflow-x: hidden;
}
.left i{
	color: white;
	font-size: 22px;
	
}
 
.search-button {
    width: 43px;
    height: 33px;
    border: none;
    border-radius: 4px;
    background-color: rgb(2, 16, 16);
    transition: all 0.3s ease;
    margin-top: 16px;
  
}

.search-button:hover { 
background-color: #ddebeb;
cursor:pointer;
 }
.right .ad{
     background-color:#ff3e3e;
    color:white;
    font-weight:500;
}
.ad a{
   text-decoration: none;
  color:black;
}
.right .ad:hover {
background-color: #ddebeb;
cursor:pointer;
}
 .containerrr .cardd{ 
 margin-left:30px; 
 } 
.containerrr .hov{
    
    opacity: 0.8;
 -webkit-transition: opacity 0.35s, -webkit-transform 0.35s;
	transition: opacity 0.35s, transform 0.35s;
	-webkit-transform: translate3d(-40px,0, 0);
	transform: translate3d(-40px,0,0);}
.containerrr:hover img { opacity: 1; } 
.containerrr:hover img { 
  -webkit-transform: translate3d(0,0,0);
	transform: translate3d(0,0,0);
 } 
 .footer{
    background-color:rgb(227,218,218);
    padding: 33px;
    margin-top: 44px;
 }
 .footer img{
     width:20%;
     margin-left:40%;
 }
.social{
    display: inline-block;
    background-color: white;    
    font-size: 38px;
    width: 50px;
    height: 50px;
    text-align: center;
    padding-top: 8px; 
    margin-right: 15px;   
    margin-bottom: 15px;
    }
    .social-icon { 
    display:flex;
    text-aling:center;
    justify-content:center;   
    transition: all 0.3s ease;
    padding-bottom:50px;
}
  .social.fa-facebook { color: #0165E1; }
  .social.fa-twitter { color: #00acee; }
  .social.fa-instagram { color: #833AB4; }
  .social.fa-linkedin { color:  #0A66C2;}
  .social:hover { color: red;}
.navbar-toggler { display: none; }
.wrapper{
   overflow-y: scroll;
    scrollbar-width: none;
    -ms-overflow-style: none;
    padding: 30px;
    width: 100%;
    height: 100%; 
}
.site-bar{
   /overflow-y: scroll;/
    scrollbar-width: none;
    -ms-overflow-style: none;
    padding: 30px;
    width: 100%;
    height: 100%; 
  
    display:none;
    z-index:1;
}

.site-bar::-webkit-scrollbar {
    width: 0;
    height: 0;
}
.ads-list{
 margin-bottom: 100px;
 margin-left: -30px; 
}

.ads-list .mov-list{
 list-style: none;
    margin-bottom: 30px;
}
.ads-list .mov-link {
    color: white;
    background-color: transparent;
    height: 75px;
    width: 100%;
    max-width: 300px;    
    display: flex;
    align-items: center;
    font-size: 1.4rem;
    padding: 30px;
     text-decoration: none;
}
.mov-list:hover .mov-link
 {
    color: rgb(252, 125, 14);
    background-color: white;
    text-decoration: none;
}
.ads-list ul { 
position: relative;
     margin: 0; 
    padding: 0;
    
     }
.mov-list:hover:after {
    content: '';
    width: 100%;
    max-width: 300px;    
    height: 75px;
    display: block;
  
    margin-left: 10px;
    margin-top: -65px;
    position: absolute;
    z-index: -1000;
}
.mov-link i { margin-right: 37px; }
 .snav a{
	margin-inline-start: 25px;
	font-size:20px;
	align-items: center;
	text-decoration:none;
	color:white;
}
.snav a:hover{
	color:rgb(249,26,26);
	cursor:pointer;
	font-weight:700;
}
*{
	margin:0%;
	padding: 0%;
}

.fnav{
    height:;
	display: flex;
	justify-content:center;
	justify-content: space-around;
	margin: ;
	padding:;
	color:white;
	background-color:B0C4DE;
	
	
}
.fnav .left{
	display: flex;
	margin-top:16px;
}
.left img{
	width:15%;
	
}
.left input{
	margin-inline: 11px;
	opacity: 1;
    cursor: text;
	justify-content: flex-start;
	width: 566px;
    max-width: 649px;
	height: 33px;
	border: 1px solid rgb(238, 238, 238);
	outline: none;
	text-align : center;
	align-items: center;
	margin-top: 16px;
	border-radius: 4px;
	flex-flow: row;
	font-size:20px;
} 
.fnav .right{
	display: flex;
	margin-top : 16px;
	margin-left:100px;
}   
.right .ad{
	margin-inline: 22px; 
	width:100px;
	height: 33px;
	border: none;
	border-radius:2px; 
	margin-top: 16px;
	font-size: 18px;
	
	
}

.snav{
	display: flex;
	justify-content:center;
	justify-content: space-around;
	height: 45px;
	padding:6px;
	color:white;
	background-color:F8F8FF;
	
}
.snav .s-left{
	display:flex;
	justify-content: space-between;
	color:black;
	
}
.snav .s-left p{
	
	margin-right: 40px;
	font-size:25px;
	align-items: center;
	color:black;
}
.snav .s-right{
	display:flex;
	justify-content: space-between;
	color:black;
}
.snav .s-right p{
	
	margin-inline-start: 20px;
	font-size:25px;
	align-items: center;
	color:black;
}

.containerrr h2{
	text-align: center;
	padding:22px;
	font-size:30px;
}
.containerrr .cardd{
	display:flex;
	justify-coontent:centr;
	justify-content: space-around;
}
.cardd img{
	width:15%;
	margin-block: 15px;
	border-radius: 8px;
}
.cardd img:hover{
	
}
.banner img{
	width: 100%;
	margin-top:44px;
}

.premier{	
   display: flex;
   align-items:center;
   justify-conent:center;
   
   color: white;  
}
.carousel .cards{
	
	list-style:none;
	border-radius: 8px;	
}
.wrapper .carousel{
	display: flex;
   align-items:center;
   justify-conent:center; 
}
.cards .img img{
	object-fit: cover;
	width: 290px;
	height:450px;
	margin-block: 15px;
	border-radius: 8px;
	margin-right:30px;
}
.ADMIN{
    background-color: white;
    padding:5px 40px;
    border: 1px solid rgb(219, 219, 219);
    outline: none;
    color: rgb(40, 116, 240 );
    font-weight: 500px;
    border-radius: 2px;
    height: 32px;
    cursor: pointer;
    font-size: 16px;
    font-family: Arial, Helvetica, sans-serif;
    box-shadow: -1px -1px 10px rgb(54, 54, 54),
    1px 1px 10px rgb(54, 54, 54);
    letter-spacing: .1px;
     margin-top:20px;
}
.USER{
    margin-right:15px;
    margin-top:20px;
    background-color: white;
    padding:5px 40px;
    border: 1px solid rgb(219, 219, 219);
    outline: none;
    color: rgb(40, 116, 240 );
    font-weight: 500px;
    border-radius: 2px;
    height: 32px;
    cursor: pointer;
    font-size: 16px;
    font-family: Arial, Helvetica, sans-serif;
    box-shadow: -1px -1px 10px rgb(54, 54, 54),
    1px 1px 10px rgb(54, 54, 54);
    letter-spacing: .1px;
}
.main{
margin-top: 1px
}
</style>
</head>
<body>
 <nav class="fnav">
    <div class="left">
      <img alt="" src="https://1.bp.blogspot.com/-8H0T3LJxd9I/YNAwHxj6HrI/AAAAAAAAAGw/5Y1WJifT0XAtFAtvQ0mu_NvKA93moyf_QCLcBGAsYHQ/w427-h235/bookmyshow.png">

        <input type="text" placeholder="Search for movies,Events more..">
         <button class="search-button" type="submit">
          <i class="fa-solid fa-magnifying-glass"></i>
        </button>  
          
    </div>
    <div class="right">
       <button class="USER"><a href="UserLogin.jsp">USER </a></button>
       <button class="Admin" onclick="showLoginPrompt()">ADMIN</button>
    </div>   
     <script>
        function showLoginPrompt() {
      // Use prompt to get the username (ID)
      var username = prompt("Please enter your Admin (ID):");
        
      // Check if the user clicked "Cancel" or closed the prompt
      if (username === null) {
        alert("Login canceled.");
        return;
      }

      // Use prompt to get the password
      var password = prompt("Please enter your password:");

      // Check if the user clicked "Cancel" or closed the prompt
      if (password === null) {
        alert("Login canceled.");
        return;
      }

      // Check if the entered username and password are valid (you should perform server-side validation)
      // For this example, let's assume the username is "user" and the password is "pass"
      if (username === "Admin" && password ==="admin") {
        // Redirect to another page (replace 'target_page.html' with your actual target page)
        window.location.href="ADMIN.jsp";
      } else {
        alert("Invalid ADMIN (ID) or password. Please try again.");
      }
      
    }
        </script>
 </nav>
 <nav class="snav">
      <div class="s-left">
         <p><a href="#movies" style="color:black";>Movies</a></p>
         <p><a href="#event" style="color:black";>Events</a></p>
         <p><a href="#premier" style="color:black";>Premeier</a></p>
         <p><a href="#stream" style="color:black";>Streams</a></p>
      </div>
      <div class="s-right">
        <p><a href="#listshow" style="color:black";>ListYourShow</a></p>
         <p><a href="#offer" style="color:black";>Offer</a></p>
         <p><a href="#gift" style="color:black";>Gift Cards</a></p>
         <button class="ad" style="margin-left:400px; background-color:green;"><a href="MovieBookTable.jsp">BOOk TICKETS </a></button>
      </div>
 </nav>
  <div class="main">
  <div id="carouselExampleAutoplaying" class="carousel slide" data-bs-ride="carousel">
        <div class="carousel-inner">
          <div class="carousel-item active">
            <img src="https://v3img.voot.com/resizeMedium,w_1090,h_613/v3Storage/assets/charlie_16x9-1692946245066.jpg" class="d-block w-100"  height="450px" alt="...">
          </div>
          <div class="carousel-item">
            <img src="RS/IMG/thorr.jpg" class="d-block w-100" height="450px" alt="...">
          </div>
          <div class="carousel-item">
            <img src="RS/IMG/urii.jpg" class="d-block w-100" height="450px"  alt="...">
          </div>
        </div>
        <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleAutoplaying" data-bs-slide="prev">
          <span class="carousel-control-prev-icon" aria-hidden="true"></span>
          <span class="visually-hidden">Previous</span>
        </button>
        <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleAutoplaying" data-bs-slide="next">
          <span class="carousel-cotrol-next-icon" aria-hidden="true"></span>
          <span class="visually-hidden">Next</span>n
        </button>
      </div>
      <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.min.js" integrity="sha384-fbbOQedDUMZZ5KreZpsbe1LCZPVmfTnH7ois6mU1QK+m14rQ1l2bGBq41eYeM/fS" crossorigin="anonymous"></script>     
  
  </div>
 <a name="movies">
  <div id="mov" class="containerrr">
     <h2>Recommendes Movies</h2>
     <div class="cardd">
    
     <img alt="" class="hov" src="https://assets-in.bmscdn.com/discovery-catalog/events/tr:w-400,h-600,bg-CCCCCC:w-400.0,h-660.0,cm-pad_resize,bg-000000,fo-top:l-image,i-discovery-catalog@@icons@@star-icon-202203010609.png,lx-24,ly-615,w-29,l-end:l-text,ie-Ny40LzEwICAyNjMuOUsgVm90ZXM%3D,fs-29,co-FFFFFF,ly-612,lx-70,pa-8_0_0_0,l-end/et00326964-gfhauqthan-portrait.jpg">
     <img alt="" class="hov" src="https://assets-in.bmscdn.com/discovery-catalog/events/tr:w-400,h-600,bg-CCCCCC:w-400.0,h-660.0,cm-pad_resize,bg-000000,fo-top:l-image,i-discovery-catalog@@icons@@star-icon-202203010609.png,lx-24,ly-615,w-29,l-end:l-text,ie-OC40LzEwICA1NzguNUsgVm90ZXM%3D,fs-29,co-FFFFFF,ly-612,lx-70,pa-8_0_0_0,l-end/et00301886-adtpyusrqu-portrait.jpg">
     <img alt="" class="hov" src="https://assets-in.bmscdn.com/discovery-catalog/events/tr:w-400,h-600,bg-CCCCCC:w-400.0,h-660.0,cm-pad_resize,bg-000000,fo-top:l-image,i-discovery-catalog@@icons@@star-icon-202203010609.png,lx-24,ly-615,w-29,l-end:l-text,ie-OS41LzEwICAzMTEuMUsgVm90ZXM%3D,fs-29,co-FFFFFF,ly-612,lx-70,pa-8_0_0_0,l-end/et00311673-xcarhzkvvz-portrait.jpg">
    
     <img alt="" class="hov" src="https://assets-in.bmscdn.com/discovery-catalog/events/tr:w-400,h-600,bg-CCCCCC:w-400.0,h-660.0,cm-pad_resize,bg-000000,fo-top:l-image,i-discovery-catalog@@icons@@star-icon-202203010609.png,lx-24,ly-615,w-29,l-end:l-text,ie-OC4yLzEwICA1ODkuOUsgVm90ZXM%3D,fs-29,co-FFFFFF,ly-612,lx-70,pa-8_0_0_0,l-end/et00311762-rzpbrhskfn-portrait.jpg">
     <img alt="" class="hov" src="https://assets-in.bmscdn.com/discovery-catalog/events/tr:w-400,h-600,bg-CCCCCC:w-400.0,h-660.0,cm-pad_resize,bg-000000,fo-top:l-image,i-discovery-catalog@@icons@@star-icon-202203010609.png,lx-24,ly-615,w-29,l-end:l-text,ie-NC40LzEwICAyLjFLIFZvdGVz,fs-29,co-FFFFFF,ly-612,lx-70,pa-8_0_0_0,l-end/et00368264-mrbvxkyefq-portrait.jpg">
     <img alt="" class="hov" src="https://assets-in.bmscdn.com/discovery-catalog/events/tr:w-400,h-600,bg-CCCCCC:w-400.0,h-660.0,cm-pad_resize,bg-000000,fo-top:l-image,i-discovery-catalog@@icons@@star-icon-202203010609.png,lx-24,ly-615,w-29,l-end:l-text,ie-OC43LzEwICAzLjJLIFZvdGVz,fs-29,co-FFFFFF,ly-612,lx-70,pa-8_0_0_0,l-end/et00366859-dzbnkfkeza-portrait.jpg">
         </div>
  </div>
 </a>
  <div class="banner">
     <img alt="" src="https://assets-in.bmscdn.com/discovery-catalog/collections/tr:w-1440,h-120/stream-leadin-web-collection-202210241242.png">
  </div>
  <a name="event">
  <div class="containerrr">
     <h2>The Best Oflive Events</h2>
    <div class="cardd">
     <img alt="" src="https://assets-in.bmscdn.com/discovery-catalog/collections/tr:w-800,h-800:l-text,ie-MTArIEV2ZW50cw%3D%3D,co-FFFFFF,ff-Roboto,fs-64,lx-48,ly-320,tg-b,pa-8_0_0_0,l-end:w-300/workshop-and-more-web-collection-202211140440.png">
     <img alt="" src="https://assets-in.bmscdn.com/discovery-catalog/collections/tr:w-800,h-800:l-text,ie-MjArIEV2ZW50cw%3D%3D,co-FFFFFF,ff-Roboto,fs-64,lx-48,ly-320,tg-b,pa-8_0_0_0,l-end:w-300/comedy-shows-collection-202211140440.png">
     <img src="https://assets-in.bmscdn.com/discovery-catalog/collections/tr:w-800,h-800:l-text,ie-MjUrIEV2ZW50cw%3D%3D,co-FFFFFF,ff-Roboto,fs-64,lx-48,ly-320,tg-b,pa-8_0_0_0,l-end:w-300/music-shows-collection-202211140440.png">
      <img src="https://assets-in.bmscdn.com/discovery-catalog/collections/tr:w-800,h-800:l-text,ie-NCBFdmVudHM%3D,co-FFFFFF,ff-Roboto,fs-64,lx-48,ly-320,tg-b,pa-8_0_0_0,l-end:w-300/upskill-collection-202211140440.png">
       <img src="https://assets-in.bmscdn.com/discovery-catalog/collections/tr:w-800,h-800:l-text,ie-MyBFdmVudHM%3D,co-FFFFFF,ff-Roboto,fs-64,lx-48,ly-320,tg-b,pa-8_0_0_0,l-end:w-300/arts-crafts-collection-202211140440.png">    
    </div> 
  </div>
 </a> 
 <a name="premier">
  <div class="premier">
         <div class="wrapper">
         <h2> Premier</h2>
           <ul class="carousel">
             <li class="cards">
               <div class="img"><img alt="" src="https://assets-in.bmscdn.com/discovery-catalog/events/tr:w-400,h-600,bg-CCCCCC:l-image,i-discovery-catalog@@icons@@bms_premiere_v1.png,t-false,lfo-bottom_left,l-end/et00378435-thlwsldhjh-portrait.jpg"></div>
               <h3>1 st premier</h3>
               <span>Show Now</span>
             </li>
              <li class="cards">
               <div class="img"><img alt="" src="https://assets-in.bmscdn.com/discovery-catalog/events/tr:w-400,h-600,bg-CCCCCC:l-image,i-discovery-catalog@@icons@@bms_premiere_v1.png,t-false,lfo-bottom_left,l-end/et00383785-hqkzqkahrs-portrait.jpg"></div>
               <h3>1 st premier</h3>
               <span>Show Now</span>
             </li>
              <li class="cards">
               <div class="img"><img alt="" src="https://assets-in.bmscdn.com/discovery-catalog/events/tr:w-400,h-600,bg-CCCCCC:l-image,i-discovery-catalog@@icons@@bms_premiere_v1.png,t-false,lfo-bottom_left,l-end/et00362691-zmdbuyywkt-portrait.jpg"></div>
               <h3>1 st premier</h3>
               <span>Show Now</span>
             </li>
              
              <li class="cards">
               <div class="img"><img alt="" src="https://assets-in.bmscdn.com/discovery-catalog/events/tr:w-400,h-600,bg-CCCCCC:l-image,i-discovery-catalog@@icons@@bms_premiere_v1.png,t-false,lfo-bottom_left,l-end/et00382955-cfgaevyghr-portrait.jpg"></div>
               <h3>1 st premier</h3>
               <span>Show Now</span>
             </li>
              <li class="cards">
               <div class="img"><img alt="" src="https://assets-in.bmscdn.com/discovery-catalog/events/tr:w-400,h-600,bg-CCCCCC:l-image,i-discovery-catalog@@icons@@bms_premiere_v1.png,t-false,lfo-bottom_left,l-end/et00383529-fgndthrzwe-portrait.jpg"></div>
               <h3>1 st premier</h3>
               <span>Show Now</span>
             </li>
              <li class="cards">
               <div class="img">  <img alt="" src="https://assets-in.bmscdn.com/discovery-catalog/events/tr:w-400,h-600,bg-CCCCCC:l-image,i-discovery-catalog@@icons@@bms_premiere_v1.png,t-false,lfo-bottom_left,l-end/et00383845-gxflafcwnw-portrait.jpg"></div>
               <h3>1 st premier</h3>
               <span>Show Now</span>
             </li>
              <li class="cards">
               <div class="img"><img alt="" src="https://assets-in.bmscdn.com/discovery-catalog/events/tr:w-400,h-600,bg-CCCCCC:l-image,i-discovery-catalog@@icons@@bms_premiere_v1.png,t-false,lfo-bottom_left,l-end/et00370554-zvxdebrrtp-portrait.jpg"></div>
               <h3>1 st premier</h3>
               <span>Show Now</span>
             </li>
              <li class="cards">
               <div class="img"> <img alt="" src="https://assets-in.bmscdn.com/discovery-catalog/events/tr:w-400,h-600,bg-CCCCCC:l-image,i-discovery-catalog@@icons@@bms_exclusive_v1.png,t-false,lfo-bottom_left,l-end/et00383282-vyszuvkzyx-portrait.jpg"></div>
               <h3>1 st premier</h3>
               <span>Show Now</span>
             </li>          
           </ul>      
         </div>
  </div>
 
 </a>
 <div class="footer">
        <img alt="" src="https://1.bp.blogspot.com/-8H0T3LJxd9I/YNAwHxj6HrI/AAAAAAAAAGw/5Y1WJifT0XAtFAtvQ0mu_NvKA93moyf_QCLcBGAsYHQ/w427-h235/bookmyshow.png">
        <div class="social-icon">
                <a href="https://facebook.com" class="social">
                    <i class="fab fa-facebook social"></i>
                </a>
                <a href="https://twitter.com" class="social">
                    <i class="fab fa-twitter social"></i>
                </a>
                <a href="https://instagram.com" class="social">
                    <i class="fab fa-instagram social"></i>
                </a>
                <a href="https://linkedin.com" class="social">
                    <i class="fab fa-linkedin social"></i>
                </a>         
 
             </div>
 </div>
</body>
</html>