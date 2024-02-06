<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lan="en">
<head>
<title>Insert title here</title>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Portfolio card | untoldcoding</title>
    <style>
        @import url("https://fonts.googleapis.com/css?family=DM+Sans:400,500|Jost:400,500,600&display=swap");
* {
  box-sizing: border-box;
}

body {
    background-image: url('images/portfoliobg.jpg'); /* Replace 'path/to/your/background-image.jpg' with the actual path to your background image file */
    background-repeat: no-repeat;
    background-size: cover;
    background-position: center;
    color: #2b2c48;
    font-family: "Jost", sans-serif;
    min-height: 100vh;
    display: flex;
    flex-wrap: wrap;
    padding: 20px;
}

.card {
  max-width: 340px;
  margin: auto;
  overflow-y: auto;
  position: relative;
  z-index: 1;
  overflow-x: hidden;
  background-color: white;
  display: flex;
  transition: 0.3s;
  flex-direction: column;
  border-radius: 10px;
  box-shadow: 0 0 1px 8px rgba(250, 250, 250, 0.2);
}

.card[data-state="#about"] {
  height: 450px;
}
.card[data-state="#about"] .card-main {
  padding-top: 0;
}

.card[data-state="#contact"] {
  height: 430px;
}

.card[data-state="#experience"] {
  height: 550px;
}

.card.is-active .card-header {
  height: 80px;
}
.card.is-active .card-cover {
  height: 100px;
  top: -50px;
}
.card.is-active .card-avatar {
  transform: none;
  left: 20px;
  width: 50px;
  height: 50px;
  bottom: 10px;
}
.card.is-active .fullname,
.card.is-active .card-jobtitle {
  left: 86px;
  transform: none;
}
.card.is-active .fullname {
  bottom: 18px;
  font-size: 19px;
}
.card.is-active .card-jobtitle {
  bottom: 16px;
  letter-spacing: 1px;
  font-size: 10px;
}

.card-header {
  position: relative;
  display: flex;
  height: 200px;
  flex-shrink: 0;
  width: 100%;
  transition: 0.3s;
}
.card-header * {
  transition: 0.3s;
}

.card-cover {
  width: 100%;
  height: 100%;
  position: absolute;
  height: 160px;
  top: -20%;
  left: 0;
  will-change: top;
  background-size: cover;
  background-position: center;
  filter: blur(30px);
  transform: scale(1.2);
  transition: 0.5s;
}

.card-avatar {
  width: 100px;
  height: 100px;
  box-shadow: 0 8px 8px rgba(0, 0, 0, 0.2);
  border-radius: 50%;
  -o-object-position: center;
  object-position: center;
  -o-object-fit: cover;
  object-fit: cover;
  position: absolute;
  bottom: 0;
  left: 50%;
  transform: translateX(-50%) translateY(-64px);
}

.fullname {
  position: absolute;
  bottom: 0;
  font-size: 22px;
  font-weight: 700;
  text-align: center;
  white-space: nowrap;
  transform: translateY(-10px) translateX(-50%);
  left: 50%;
}
.card-jobtitle {
  position: absolute;
  bottom: 0;
  font-size: 11px;
  white-space: nowrap;
  font-weight: 500;
  opacity: 0.7;
  text-transform: uppercase;
  letter-spacing: 1.5px;
  margin: 0;
  left: 50%;
  transform: translateX(-50%) translateY(-7px);
}

.card-main {
  position: relative;
  flex: 1;
  display: flex;
  padding-top: 10px;
  flex-direction: column;
}

.card-subtitle {
  font-weight: 700;
  font-size: 13px;
  margin-bottom: 8px;
}
.card-content {
  padding: 20px;
}
.card-desc {
  line-height: 1.6;
  color: #636b6f;
  font-size: 14px;
  margin: 0;
  font-weight: 400;
  font-family: "DM Sans", sans-serif;
}

.card-social {
  display: flex;
  align-items: center;
  padding: 0 20px;
  margin-bottom: 30px;
}
.card-social svg {
  fill: #a5b5ce;
  width: 16px;
  display: block;
  transition: 0.3s;
}
.card-social a {
  color: #8797a1;
  height: 32px;
  width: 32px;
  border-radius: 50%;
  display: inline-flex;
  align-items: center;
  justify-content: center;
  transition: 0.3s;
  background-color: rgba(93, 133, 193, 0.05);
  border-radius: 50%;
  margin-right: 10px;
}
.card-social a:hover svg {
  fill: #0b4499;
  width: 19px;
}
.card-social a:last-child {
  margin-right: 0;
}
.card-buttons {
  display: flex;
  background-color: rgb(255, 255, 255);
  margin-top: auto;
  position: sticky;
  bottom: 0;
  left: 0;
}
.card-buttons button {
  flex: 1 1 auto;
  -webkit-user-select: none;
  -moz-user-select: none;
  -ms-user-select: none;
  user-select: none;
  background: 0;
  font-size: 13px;
  border: 0;
  padding: 15px 5px;
  cursor: pointer;
  color: #5c5c6dbf;
  transition: 0.3s;
  font-family: "Jost", sans-serif;
  font-weight: 500;
  outline: 0;
  border-bottom: 3px solid transparent;
}
.card-buttons button.is-active,
.card-buttons button:hover {
  color: #2b2c48;
  border-bottom: 3px solid #8a84ff;
  background: linear-gradient(
    to bottom,
    rgba(127, 199, 231, 0) 0%,
    rgba(207, 204, 255, 0.2) 44%,
    rgba(211, 226, 255, 0.4) 100%
  );
}

.card-section {
  display: none;
}
.card-section.is-active {
  display: block;
  -webkit-animation: fadeIn 0.6s both;
  animation: fadeIn 0.6s both;
}

@-webkit-keyframes fadeIn {
  0% {
    opacity: 0;
    transform: translatey(40px);
  }
  100% {
    opacity: 1;
  }
}

@keyframes fadeIn {
  0% {
    opacity: 0;
    transform: translatey(40px);
  }
  100% {
    opacity: 1;
  }
}
.card-timeline {
  margin-top: 30px;
  position: relative;
}
.card-timeline:after {
  background: linear-gradient(to top, 
  rgba(134, 214, 243, 0) 0%, #516acc 100%);
  content: "";
  left: 42px;
  width: 2px;
  top: 0;
  height: 100%;
  position: absolute;
  content: "";
}

.card-item {
  position: relative;
  padding-left: 60px;
  padding-right: 20px;
  padding-bottom: 30px;
  z-index: 1;
}
.card-item:last-child {
  padding-bottom: 5px;
}
.card-item:after {
  content: attr(data-year);
  width: 10px;
  position: absolute;
  top: 0;
  left: 37px;
  width: 8px;
  height: 8px;
  line-height: 0.6;
  border: 2px solid #fff;
  font-size: 11px;
  text-indent: -35px;
  border-radius: 50%;
  color: rgba(134, 134, 134, 0.7);
  background: linear-gradient(to bottom, 
    #a0aee3 0%, #516acc 100%);
}

.card-item-title {
  font-weight: 500;
  font-size: 14px;
  margin-bottom: 25px;
}

.card-item-desc {
  font-size: 13px;
  color: #6f6f7b;
  line-height: 1.5;
  font-family: "DM Sans", sans-serif;
}

.card-contact-wrapper {
  margin-top: 20px;
}

.card-contact {
  display: flex;
  align-items: center;
  font-size: 13px;
  color: #6f6f7b;
  font-family: "DM Sans", sans-serif;
  line-height: 1.6;
  cursor: pointer;
}
.card-contact + .card-contact {
  margin-top: 16px;
}
.card-contact svg {
  flex-shrink: 0;
  width: 30px;
  min-height: 34px;
  margin-right: 12px;
  transition: 0.3s;
  padding-right: 12px;
  border-right: 1px solid #dfe2ec;
}

.contact-me {
  border: 0;
  outline: none;
  background: linear-gradient(
    to right,
    rgba(7, 65, 84, 0.8) 0%,
    rgba(7, 32, 132, 0.8) 96%
  );
  box-shadow: 0 4px 6px rgba(0, 0, 0, 0.15);
  color: #fff;
  padding: 12px 16px;
  width: 100%;
  border-radius: 5px;
  margin-top: 25px;
  cursor: pointer;
  font-size: 14px;
  font-weight: 500;
  font-family: "Jost", sans-serif;
  transition: 0.3s;
}
.contact-me:hover {
  background: linear-gradient(
    to right,
    rgba(132, 40, 7, 0.8) 0%,
    rgba(223, 60, 15, 0.8) 96%
  );
}

</style>
  </head>
<body>
<div class="card" data-state="#about">
      <div class="card-header">
        <div
          class="card-cover"
          style="
            background: linear-gradient(rgb(12, 86, 120), rgb(199, 203, 199));
          "
        ></div>
        <img class="card-avatar" src="images/king.png"/>
        <h1 class="fullname">kowshik</h1>
        <h2 class="card-jobtitle">Web Developer</h2>
      </div>
      <div class="card-main">
        <div class="card-section is-active" id="about">
          <div class="card-content">
            <div class="card-subtitle">ABOUT</div>
            <p class="card-desc">
              currently working on java full stack <br/>
              project
            </p>
          </div>
          <div class="card-social">
            <a href="https://www.instagram.com/kowshikemmadisetty/"
              ><svg viewBox="0 0 512 512" xmlns="http://www.w3.org/2000/svg">
                <image x="0" y="0" width="600" height="600" href="images/instagram.png" />
                
                </svg>
            </a>
             <a href="https://github.com/kowshikemmadisetty">
        <svg viewBox="0 0 512 512" xmlns="http://www.w3.org/2000/svg">
            <image x="0" y="0" width="600" height="800" href="images/github.jpg" />
        </svg>
    </a>
    <a href="https://www.linkedin.com/in/kowshik-emmadisetty-3a7874248/">
        <svg viewBox="0 0 512 512" xmlns="http://www.w3.org/2000/svg">
            <image x="0" y="0" width="600" height="600" href="images/linkedin.png" />
        </svg>
    </a>
          </div>
        </div>
        <div class="card-section" id="experience">
          <div class="card-content">
            <div class="card-subtitle">WORK 
    EXPERIENCE</div>
            <div class="card-timeline">
              <div class="card-item" data-year
    ="2020">
                <div class="card-item-title">
                  Front-end Developer at <span>
    UntoldCoding</span>
                </div>
                <div class="card-item-desc">
                  Give some details about your work
                </div>
              </div>
              <div class="card-item" data-year="2021">
                <div class="card-item-title">
                  UI/ UX Developer at <span>GitHub</span>
                </div>
                <div class="card-item-desc">
                  Give some details about your work
                </div>
              </div>

              <div class="card-item" data-year="2023">
                <div class="card-item-title">
                  Full-Stack Developer at <span>Google</span>
                </div>
                <div class="card-item-desc">
                  Give some details about your work
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="card-section" id="contact">
          <div class="card-content">
            <div class="card-subtitle">CONTACT</div>
            <div class="card-contact-wrapper">
              <div class="card-contact">
                <svg
                  xmlns="http://www.w3.org/2000/svg"
                  viewBox="0 0 24 24"
                  fill="none"
                  stroke="currentColor"
                  stroke-width="2"
                  stroke-linecap="round"
                  stroke-linejoin="round"
                >
                  <path d="M21 10c0 7-9 13-9 13s-9-6-9-13a9 9 0 0118 0z" />
                  <circle cx="12" cy="10" r="3" />
                </svg>
                Kithwari Rd, Five Oaks , VI, 55128
              </div>
              <div class="card-contact">
                <svg
                  xmlns="http://www.w3.org/2000/svg"
                  viewbox="0 0 24 24"
                  fill="none"
                  stroke="currentColor"
                  stroke-width="2"
                  stroke-linecap="round"
                  stroke-linejoin="round"
                >
                  <path
                    d="M22 16.92v3a2 2 0 01-2.18 2 
    19.79 19.79 0 01-8.63-3.07 19.5 19.5 0 01-6-6 19.79
     19.79 0 01-3.07-8.67A2 2 0 014.11 2h3a2 2 0 012 1.72
     12.84 12.84 0 00.7 2.81 2 2 0 01-.45 2.11L8.09 9.91a16
     16 0 006 6l1.27-1.27a2 2 0 012.11-.45 12.84 12.84 0
     002.81.7A2 2 0 0122 16.92z"/></svg>9876543210
              </div>
              <div class="card-contact">
                <svg
                  xmlns="http://www.w3.org/2000/svg"
                  viewBox="0 0 24 24"
                  fill="none"
     stroke="currentColor"
                  stroke-width="2"
                  stroke-linecap="round"
                  stroke-linejoin="round"
                >
                  <path
            d="M4 4h16c1.1 0 2 .9 2 2v12c0 1.1-.9 2-2 
    2H4c-1.1 0-2-.9-2-2V6c0-1.1.9-2 2-2z"
                  />
                  <path d="M22 6l-10 7L2 6" />
                </svg>
                xyz@gmail.com
              </div>
              <button class="contact-me">WORK TOGETHER</button>
            </div>
          </div>
        </div>
        <div class="card-buttons">
          <button data-section="#about" class="is-active">ABOUT</button>
          <button data-section="#experience">EXPERIENCE</button>
          <button data-section="#contact">CONTACT</button>
        </div>
      </div>
    </div>
    <div class="card" data-state="#about">
        <div class="card-header">
          <div
            class="card-cover"
            style="
              background: linear-gradient(rgb(12, 86, 120), rgb(199, 203, 199));
            "
          ></div>
          <img class="card-avatar" src="images/prathap.jpg" alt="avatar" />
          <h1 class="fullname">Prathap</h1>
          <h2 class="card-jobtitle">Web Developer</h2>
        </div>
        <div class="card-main">
          <div class="card-section is-active" id="about">
            <div class="card-content">
              <div class="card-subtitle">ABOUT</div>
              <p class="card-desc">
                currently working on java full stack <br/>
              project
              </p>
            </div>
            <div class="card-social">
              <a href="https://www.instagram.com/chittineni9999/"
                ><svg viewBox="0 0 512 512" xmlns="http://www.w3.org/2000/svg">
      <image x="0" y="0" width="512" height="512" href="images/instagram.png" />
            </svg>
            </svg>
            </a>
                  </a>
             <a href="https://github.com/yourgithubusername">
        <svg viewBox="0 0 512 512" xmlns="http://www.w3.org/2000/svg">
            <image x="0" y="0" width="600" height="800" href="images/github.jpg" />
        </svg>
    </a>
    <a href="https://www.linkedin.com/in/yourlinkedinprofile">
        <svg viewBox="0 0 512 512" xmlns="http://www.w3.org/2000/svg">
            <image x="0" y="0" width="600" height="600" href="images/linkedin.png" />
        </svg>
    </a>
          
            </div>
          </div>
          <div class="card-section" id="experience">
            <div class="card-content">
              <div class="card-subtitle">WORK 
      EXPERIENCE</div>
              <div class="card-timeline">
                <div class="card-item" data-year
      ="2020">
                  <div class="card-item-title">
                    Front-end Developer at <span>
      UntoldCoding</span>
                  </div>
                  <div class="card-item-desc">
                    Give some details about your work
                  </div>
                </div>
                <div class="card-item" data-year="2021">
                  <div class="card-item-title">
                    UI/ UX Developer at <span>GitHub</span>
                  </div>
                  <div class="card-item-desc">
                    Give some details about your work
                  </div>
                </div>
  
                <div class="card-item" data-year="2023">
                  <div class="card-item-title">
                    Full-Stack Developer at <span>Google</span>
                  </div>
                  <div class="card-item-desc">
                    Give some details about your work
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="card-section" id="contact">
            <div class="card-content">
              <div class="card-subtitle">CONTACT</div>
              <div class="card-contact-wrapper">
                <div class="card-contact">
                  <svg
                    xmlns="http://www.w3.org/2000/svg"
                    viewBox="0 0 24 24"
                    fill="none"
                    stroke="currentColor"
                    stroke-width="2"
                    stroke-linecap="round"
                    stroke-linejoin="round"
                  >
                    <path d="M21 10c0 7-9 13-9 13s-9-6-9-13a9 9 0 0118 0z" />
                    <circle cx="12" cy="10" r="3" />
                  </svg>
                  Kithwari Rd, Five Oaks , VI, 55128
                </div>
          <div class="card-contact">
                  <svg
                    xmlns="http://www.w3.org/2000/svg"
                    viewbox="0 0 24 24"
                    fill="none"
                    stroke="currentColor"
                    stroke-width="2"
                    stroke-linecap="round"
                    stroke-linejoin="round"
                  >
                    <path
                      d="M22 16.92v3a2 2 0 01-2.18 2 
      19.79 19.79 0 01-8.63-3.07 19.5 19.5 0 01-6-6 19.79
       19.79 0 01-3.07-8.67A2 2 0 014.11 2h3a2 2 0 012 1.72
       12.84 12.84 0 00.7 2.81 2 2 0 01-.45 2.11L8.09 9.91a16
       16 0 006 6l1.27-1.27a2 2 0 012.11-.45 12.84 12.84 0
       002.81.7A2 2 0 0122 16.92z"/></svg>9876543210
                </div>
                <div class="card-contact">
                  <svg
                    xmlns="http://www.w3.org/2000/svg"
                    viewBox="0 0 24 24"
                    fill="none"
                    stroke="currentColor"
                    stroke-width="2"
                    stroke-linecap="round"
                    stroke-linejoin="round"
                  >
                    <path
              d="M4 4h16c1.1 0 2 .9 2 2v12c0 1.1-.9 2-2 
      2H4c-1.1 0-2-.9-2-2V6c0-1.1.9-2 2-2z"
                    />
                    <path d="M22 6l-10 7L2 6" />
                  </svg>
                  xyz@gmail.com
                </div>
                <button class="contact-me">WORK TOGETHER</button>
              </div>
            </div>
          </div>
          <div class="card-buttons">
            <button data-section="#about" class="is-active">ABOUT</button>
            <button data-section="#experience">EXPERIENCE</button>
            <button data-section="#contact">CONTACT</button>
          </div>
        </div>
      </div>
      <div class="card" data-state="#about">
        <div class="card-header">
          <div
            class="card-cover"
            style="
              background: linear-gradient(rgb(12, 86, 120), rgb(199, 203, 199));
            "
          ></div>
          <img class="card-avatar" src="images/balaji.jpg" alt="avatar" />
          <h1 class="fullname">Balaji</h1>
          <h2 class="card-jobtitle">Web Developer</h2>
        </div>
        <div class="card-main">
          <div class="card-section is-active" id="about">
            <div class="card-content">
              <div class="card-subtitle">ABOUT</div>
              <p class="card-desc">
                currently working on java full stack <br/>
              project
              </p>
            </div>
            <div class="card-social">
              <a href="https://www.instagram.com/kotrabalaji03/">
                <svg viewBox="0 0 512 512" xmlns="http://www.w3.org/2000/svg">
                    <image x="0" y="0" width="512" height="512" href="images/instagram.png" />
                </svg>
                     </a>
             <a href="https://github.com/yourgithubusername">
        <svg viewBox="0 0 512 512" xmlns="http://www.w3.org/2000/svg">
            <image x="0" y="0" width="600" height="800" href="images/github.jpg" />
        </svg>
    </a>
    <a href="https://www.linkedin.com/in/yourlinkedinprofile">
        <svg viewBox="0 0 512 512" xmlns="http://www.w3.org/2000/svg">
            <image x="0" y="0" width="600" height="600" href="images/linkedin.png" />
        </svg>
    </a>
         
                </a>
            </div>
          </div>
          <div class="card-section" id="experience">
            <div class="card-content">
              <div class="card-subtitle">WORK 
      EXPERIENCE</div>
              <div class="card-timeline">
                <div class="card-item" data-year
      ="2020">
                  <div class="card-item-title">
                    Front-end Developer at <span>
      UntoldCoding</span>
                  </div>
                  <div class="card-item-desc">
                    Give some details about your work
                  </div>
                </div>
                <div class="card-item" data-year="2021">
                  <div class="card-item-title">
                    UI/ UX Developer at <span>GitHub</span>
                  </div>
                  <div class="card-item-desc">
                    Give some details about your work
                  </div>
                </div>
  
                <div class="card-item" data-year="2023">
                  <div class="card-item-title">
                    Full-Stack Developer at <span>Google</span>
                  </div>
         <div class="card-item-desc">
                    Give some details about your work
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="card-section" id="contact">
            <div class="card-content">
              <div class="card-subtitle">CONTACT</div>
              <div class="card-contact-wrapper">
                <div class="card-contact">
                  <svg
                    xmlns="http://www.w3.org/2000/svg"
                    viewBox="0 0 24 24"
                    fill="none"
                    stroke="currentColor"
                    stroke-width="2"
                    stroke-linecap="round"
                    stroke-linejoin="round"
                  >
                    <path d="M21 10c0 7-9 13-9 13s-9-6-9-13a9 9 0 0118 0z" />
                    <circle cx="12" cy="10" r="3" />
                  </svg>
                  Kithwari Rd, Five Oaks , VI, 55128
                </div>
                <div class="card-contact">
                  <svg
                    xmlns="http://www.w3.org/2000/svg"
                    viewbox="0 0 24 24"
                    fill="none"
                    stroke="currentColor"
                    stroke-width="2"
                    stroke-linecap="round"
                    stroke-linejoin="round"
                  >
                    <path
                      d="M22 16.92v3a2 2 0 01-2.18 2 
      19.79 19.79 0 01-8.63-3.07 19.5 19.5 0 01-6-6 19.79
       19.79 0 01-3.07-8.67A2 2 0 014.11 2h3a2 2 0 012 1.72
       12.84 12.84 0 00.7 2.81 2 2 0 01-.45 2.11L8.09 9.91a16
       16 0 006 6l1.27-1.27a2 2 0 012.11-.45 12.84 12.84 0
       002.81.7A2 2 0 0122 16.92z"/></svg>9876543210
                </div>
                <div class="card-contact">
                  <svg
                    xmlns="http://www.w3.org/2000/svg"
                    viewBox="0 0 24 24"
                    fill="none"
                    stroke="currentColor"
                    stroke-width="2"
                    stroke-linecap="round"
                    stroke-linejoin="round"
                  >
                    <path
              d="M4 4h16c1.1 0 2 .9 2 2v12c0 1.1-.9 2-2 
      2H4c-1.1 0-2-.9-2-2V6c0-1.1.9-2 2-2z"
                    />
                    <path d="M22 6l-10 7L2 6" />
                  </svg>
                  xyz@gmail.com
                </div>
                <button class="contact-me">WORK TOGETHER</button>
              </div>
            </div>
          </div>
          <div class="card-buttons">
            <button data-section="#about" class="is-active">ABOUT</button>
            <button data-section="#experience">EXPERIENCE</button>
            <button data-section="#contact">CONTACT</button>
          </div>
        </div>
      </div>

    <script src="untoldcoding.js"></script>
</body>
</html>                            