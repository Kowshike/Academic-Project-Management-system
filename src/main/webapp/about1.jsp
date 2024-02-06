<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<!-- Coding By CodingNepal - codingnepalweb.com -->
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
 <title> An About Us Page | CoderGirl </title>
  <!---Custom CSS File!-->
  <style>
    @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@200;300;400;500&display=swap');
    *{
      margin: 0;
      padding: 0;
      box-sizing: border-box;
      font-family: 'Poppins', sans-serif;
    }
    .about-us{
      height: 100vh;
      width: 100%;
      padding: 90px 0;
      background: #ddd;
    }
    .pic{
      height: auto;
      width:  302px;
    }
    .about{
      width: 1130px;
      max-width: 85%;
      margin: 0 auto;
      display: flex;
      align-items: center;
      justify-content: space-around;
    }
    .text{
      width: 540px;
    }
    .text h2{
      font-size: 90px;
      font-weight: 600;
      margin-bottom: 10px;
    }
    .text h5{
      font-size: 22px;
      font-weight: 500;
      margin-bottom: 20px;
    }
    span{
      color: #4070f4;
    }
    .text p{
      font-size: 18px;
      line-height: 25px;
      letter-spacing: 1px;
    }
    .data{
      margin-top: 30px;
    }
    .hire{
      font-size: 18px;
      background: #4070f4;
      color: #fff;
      text-decoration: none;
      border: none;
      padding: 8px 25px;
      border-radius: 6px;
      transition: 0.5s;
    }
    .hire:hover{
      background: #000;
      border: 1px solid #4070f4;
    }
     canvas {
      position: fixed;
      top: 0;
      left: 0;
      pointer-events: none;
    }
  </style>
</head>
<body>
<canvas id="background"></canvas>

  <script>
    const canvas = document.getElementById("background");
    const ctx = canvas.getContext("2d");
    canvas.width = window.innerWidth;
    canvas.height = window.innerHeight;

    const balls = [];

    class Ball {
      constructor(x, y, radius, color, speedX, speedY) {
        this.x = x;
        this.y = y;
        this.radius = radius;
        this.color = color;
        this.speedX = speedX;
        this.speedY = speedY;
      }

      draw() {
        ctx.beginPath();
        ctx.arc(this.x, this.y, this.radius, 0, Math.PI * 2);
        ctx.fillStyle = this.color;
        ctx.fill();
      }

      update() {
        this.x += this.speedX;
        this.y += this.speedY;

        if (this.x - this.radius < 0 || this.x + this.radius > canvas.width) {
          this.speedX = -this.speedX;
        }

        if (this.y - this.radius < 0 || this.y + this.radius > canvas.height) {
          this.speedY = -this.speedY;
        }
      }
    }

    function createBalls() {
      for (let i = 0; i < 50; i++) {
        const radius = Math.random() * 20 + 5;
        const x = Math.random() * (canvas.width - radius * 2) + radius;
        const y = Math.random() * (canvas.height - radius * 2) + radius;
        const color = `rgb(${Math.random() * 255}, ${Math.random() * 255}, ${Math.random() * 255})`;
        const speedX = (Math.random() - 0.5) * 2;
        const speedY = (Math.random() - 0.5) * 2;
        balls.push(new Ball(x, y, radius, color, speedX, speedY));
      }
    }

    function animate() {
      requestAnimationFrame(animate);
      ctx.clearRect(0, 0, canvas.width, canvas.height);

      for (const ball of balls) {
        ball.update();
        ball.draw();
      }
    }

    createBalls();
    animate();
  </script>
  <section class="about-us">
    <div class="about">
      <!--<img src="girl.png" class="pic">-->
      <div class="text">
        <h2>About Us</h2>
        <h5>Front-end Developer & <span>Designer</span></h5>
        <h5><span>Academic Project Management system</span></h5>
        <p>"Enhancing Project Management with strategic online Portal," aims to revolutionize project execution strategies. We created a web-based application designed to facilitate seamless project management for students and faculty within educational institutions. The system serves as a centralized platform where students can propose, plan, and execute academic projects, and faculty members can mentor, evaluate, and provide feedback on these projects.The system aims to streamline the project management process, enhance collaboration between students and faculty, and support effective project execution and evaluation.</p>
        <div class="data">
        
        </div>
      </div>
    </div>
  </section>
</body>
</html>