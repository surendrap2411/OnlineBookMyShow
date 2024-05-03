<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
body{
            margin: 0;
            padding: 0;
          letter-spacing: 1px;/* Optional: Set your preferred font family */
            color: #ffffff;
                 
	        
}
#big-container {
            background-image: url('	https://wallpapers.com/images/hd/movie-poster-background-p5qblffj7cvswl5g.jpg'); /* Replace 'your-image-url.jpg' with the path to your image */
            background-size: cover;
            background-position: center;
            height: 100vh;
             position: absolute;
            width: 100%;
/*             filter: blur(1px); */
                 opacity: 0.6;
        }
 #table-css{
         opacity: 0.8;
         position:absolute;
         padding: 20px;
         text-align: center;
          z-index: 1 ;
          background-color:#202124;
          width:23%; 
          max-width: 23%;

         border-radius: 50px 5px;
         align-items: center;
         justify-content: center;
          overflow: hidden;
    
 }
   #table-css::before{
      
      position: absolute;
      width: 170%;
      height: 170%;
      content: '';
      background-image: conic-gradient(transparent, transparent, transparent, #ee00ff);
      animation: rotate_border 6s linear infinite;
  }
  #table-css::after{
      
      position: absolute;
      width: 170%;
      height: 170%;
      content: '';
      background-image: conic-gradient(transparent, transparent, transparent, #00ccff);
      animation: rotate_border 6s linear infinite;
      animation-delay: -3s;
  }
  @keyframes rotate_border{
      0%{
          transform: rotate(0deg);
      }
      100%{
          transform: rotate(360deg);
      }
  }
  
.table1{
  height: 400px;
 max-height: 400px;
top:10%;
left:5%;
}

.table2{
 height: 400px;
 max-height: 400px;
top:20%;
left: 37%;


}
.table3{
 height: 300px;
 max-height: 300px;
top:35%;
left:69%;

}
 .movie_form{
      position: absolute;
      content: '';
      background-color: #0c1022;
      border-radius: 50px 5px;
      inset: 5px;
      padding: 50px 40px;
      z-index: 10;
      color: #00ccff;
  
  } 
  h2{
      font-size:32px;
      font-weight: 600;
      text-align: center;
  }

.sub_button{
      width: 200px;
      height: 40px;
      transition: 1s; 
      margin-top: 65px;
      margin-left: 55px;
      position: absolute;
      text-decoration: none;
      z-index: 10;
      cursor: pointer;
      font-size: 22px;
      letter-spacing: 2px;
      border: 1px solid #00ccff;
      border-radius: 50px;
      background-color: #0c1022;
      display: flex;
      justify-content: center;
      align-items: center;
      color:white;
  
  }
  option{
      width: 95%;
      height: 30px;
      background: transparent;
      border: none;
      outline: none;
      border-bottom: 1px solid #00ccff;
      font-size: 20px;
      padding-left: 10px;
      color: black;
      }
      input{
      font-size: 13px;
      color: black;
      }
 label{
      font-size: 22px;
      letter-spacing: 1px;
      }
    legend{
       color:red;
       margin-top:20px;
    }  
</style>
</head>
<body>
       <div id="big-container"> </div>
       
          <div class="table1" id="table-css">  
             <div  class="movie_form">
              <form action="ADDING.jsp" method="POST">
               <h2>ADD MOVIES</h2>
               <label for="text">Movie NAME :</label> 
               <!-- -select name="title" id="movie-Name">
                 <option value="." id="movie-Name">choose movie</option>
                 
                 <option value="12th_FAIL" id="movie-Name">12th_FAIL</option>
                 <option value="ANIMAL" id="movie-Name">ANIMAL</option>
                 <option value="AOLE_AALE" id="movie-Name">AOLE_AALE</option>
                  <option value="SALLAR" id="movie-Name">SALLAR</option>
                  <option value="SAM_BAHADUR" id="movie-Name">SAM_BAHADUR</option>
               </select---->
               <input type="text" name="title" id="movie-name" placeholder ="Enter Movie Name">
       
                 <br><br>
              <label for="text">    GENRE :</label> 
                 <select name="genre" id="option_text">
                       <option value="" id="movie-genre">select your type</option>
                       <option value="ACTION">ACTION</option>
                       <option value="DRAMA">DRAMA</option>
                       <option value="ROMANTIC">ROMANTIC</option>
                       <option value="SUSPENSE">SUSPENSE</option>
                   </select>
                     <br><br>
             <label for="time">     DURATION :</label> 
              <select name="duration" id="option_text">
                <option value="." id="movie-time">select your time</option>
                <option value="129" >11.00am to 1.00pm</option>
                <option value="145" >2.00pm to 5.00pm</option>
                <option value="180" >3.00pm to 5.00pm</option>
                <option value="120" >5.00pm to 8.00pm</option>
              </select>
                  <br><br>
          <label for="director">    DIRECTORR:</label> 
             <select name="director" id="option_text">
                <option value="." id="movie-time">director..etc</option>
                <option value="v.shantaram[marathi]" >v.shantaram</option>
                <option value="Yash chopra[hindi]" >Yash chopra</option>
                <option value="satyajit ray[bengali]" >satyajit ray</option>
                <option value="tamil[mani ratnam]" >mani ratnam</option>
                <option value="malayalam[fazil]" >fazil</option>
          </select>
           <button class="sub_button"  style="color:green">ADD MOVIE</button>
            </form><br><br>
             </div>
           </div>   
  
     <div class="table2" id="table-css">  
               <div class="movie_form">
    <form action="SCHEDULE.jsp" >
    <h2>Schedule </h2>
     <label for="number">MOVIE ID :</label> 
      <input type="number" name="MId" placeholder="Enter MId">
     <br><br>
     <label for="number">  SCREEN :</label> 
      <input type="number" name="screen" placeholder="Enter Screen no">
      <br><br> 
      <label for="number">SLOT NO :</label> 
      <input type="number" name="slot" placeholder="Enter slot No">   
      <button class="sub_button"  style="color:green">SCHEDULE</button>         
</form>
               </div>
     </div><br><br>

     <div class="table3" id="table-css">  
         
         <div class="movie_form">
    <form action="DELETE.jsp" >
    <h2>DELETE</h2>
     <label for="text">MOVIE NAME:</label> 
     <!--  select name="title" id="option_text">
                 <option value="." id="movie-Name">choose for delete</option>
                <option value="12th_FAIL" id="movie-Name">12th_FAIL</option>
                <option value="ANIMAL" id="movie-Name">ANIMAL</option>
               <option value="AOLE_AALE" id="movie-Name">AOLE_AALE</option>
               <option value="SALLAR" id="movie-Name">SALLAR</option>
               <option value="SAM_BAHADUR" id="movie-Name">SAM_BAHADUR</option>
      </selec---->
      <input type="text" name="title" id="option_text" placeholder="Enter Movie Name">
      <button class="sub_button" style="color:red">DELETE</button>    
</form>
         </div>
         
     </div> 
       
      
</body>
</html>