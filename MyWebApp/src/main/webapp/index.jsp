<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <title>PythonLife Institute</title>
  <style>
    @import url('https://fonts.googleapis.com/css2?family=Montserrat:wght@700&display=swap');

    body {
      margin: 0;
      font-family: 'Montserrat', sans-serif;
      background: linear-gradient(135deg, #f093fb 0%, #f5576c 100%);
      color: white;
      text-align: center;
      padding: 30px 15px 80px 15px;
      overflow-x: hidden;
    }

    h1 {
      font-size: 3.5em;
      margin-bottom: 10px;
      text-shadow: 0 0 10px #fff, 0 0 20px #ff0099, 0 0 30px #ff0099, 0 0 40px #ff0099;
      animation: glow 2s ease-in-out infinite alternate;
    }

    @keyframes glow {
      from {
        text-shadow: 0 0 10px #fff, 0 0 20px #ff0099, 0 0 30px #ff0099, 0 0 40px #ff0099;
      }
      to {
        text-shadow: 0 0 20px #fff, 0 0 30px #ff66cc, 0 0 40px #ff66cc, 0 0 50px #ff66cc;
      }
    }

    .subtitle {
      font-size: 1.5em;
      margin-bottom: 30px;
      font-weight: 500;
      color: #f0e130;
      text-shadow: 1px 1px 2px #b38f00;
    }

    /* Courses grid */
    .courses {
      display: flex;
      flex-wrap: wrap;
      justify-content: center;
      gap: 25px;
      max-width: 1000px;
      margin: 0 auto 50px auto;
    }

    .course-card {
      background: linear-gradient(145deg, #6a11cb 0%, #2575fc 100%);
      border-radius: 20px;
      box-shadow: 0 8px 15px rgba(0,0,0,0.2);
      width: 140px;
      padding: 15px;
      color: white;
      font-weight: 700;
      font-size: 1.1em;
      cursor: pointer;
      transition: transform 0.3s ease, box-shadow 0.3s ease;
      user-select: none;
      display: flex;
      flex-direction: column;
      align-items: center;
      filter: drop-shadow(0 0 2px #000);
    }

    .course-card:hover {
      transform: scale(1.1) rotate(3deg);
      box-shadow: 0 15px 25px rgba(255, 0, 153, 0.8);
      background: linear-gradient(145deg, #ff0099 0%, #ff66cc 100%);
    }

    .course-logo {
      width: 70px;
      height: 70px;
      margin-bottom: 12px;
      object-fit: contain;
      border-radius: 12px;
      filter: drop-shadow(0 0 5px #fff);
      transition: filter 0.3s ease;
    }

    .course-card:hover .course-logo {
      filter: drop-shadow(0 0 10px #ff66cc);
    }

    /* Info panel */
    #course-info {
      max-width: 900px;
      margin: 0 auto;
      background: rgba(255 255 255 / 0.15);
      border-radius: 25px;
      padding: 25px 40px;
      box-shadow: 0 8px 30px rgba(0,0,0,0.3);
      color: #fff;
      text-align: left;
      display: none;
      animation: fadeIn 0.8s ease forwards;
      position: relative;
    }

    @keyframes fadeIn {
      from {opacity: 0; transform: translateY(20px);}
      to {opacity: 1; transform: translateY(0);}
    }

    #course-info h2 {
      margin-top: 0;
      font-size: 2.5em;
      color: #ffe066;
      text-shadow: 0 0 8px #ffcc00;
    }

    #course-info img {
      width: 150px;
      height: 150px;
      display: block;
      margin: 10px auto 20px auto;
      border-radius: 20px;
      box-shadow: 0 0 15px #ff66cc;
      animation: float 3s ease-in-out infinite alternate;
    }

    @keyframes float {
      0% {transform: translateY(0);}
      100% {transform: translateY(-15px);}
    }

    #course-info p {
      font-size: 1.2em;
      margin-bottom: 20px;
      line-height: 1.5;
    }

    /* Table styles */
    table {
      width: 100%;
      border-collapse: collapse;
      margin-bottom: 20px;
      background: rgba(255 255 255 / 0.25);
      border-radius: 12px;
      overflow: hidden;
      box-shadow: 0 0 12px rgba(255, 255, 255, 0.2);
    }

    th, td {
      padding: 12px 18px;
      text-align: center;
      border-bottom: 1px solid rgba(255 255 255 / 0.3);
      font-weight: 600;
      color: #fff;
      cursor: pointer;
    }

    th {
      background: #ff33cc;
      color: #fff;
      text-transform: uppercase;
      letter-spacing: 1.1px;
    }

    tr:last-child td {
      border-bottom: none;
    }

    /* Tool description */
    #tool-desc {
      margin-top: 20px;
      padding: 15px;
      background: rgba(0,0,0,0.3);
      border-radius: 15px;
      font-size: 1.1em;
      display: none;
      text-align: center;
    }

    /* Video */
    #course-video {
      margin: 20px 0;
      text-align: center;
    }
    #course-video iframe {
      width: 100%;
      height: 400px;
      border-radius: 15px;
      box-shadow: 0 0 20px rgba(0,0,0,0.5);
    }

    /* Close button */
    #close-btn {
      position: absolute;
      top: 15px;
      right: 25px;
      font-size: 1.8em;
      color: #ff66cc;
      cursor: pointer;
      user-select: none;
      transition: color 0.3s ease;
    }

    #close-btn:hover {
      color: #ff0099;
    }
  </style>
</head>
<body>

  <h1>PythonLife Institute</h1>
  <div class="subtitle">Empowering your career with the best courses</div>

  <div class="courses">
    <div class="course-card" data-course="devops">
      <img class="course-logo" src="https://cdn-icons-png.flaticon.com/512/906/906334.png" alt="DevOps Logo" />
      DevSecOps & DevOps
    </div>
    <div class="course-card" data-course="python">
      <img class="course-logo" src="https://cdn-icons-png.flaticon.com/512/1822/1822899.png" alt="Python Logo" />
      Python programming
    </div>
    <div class="course-card" data-course="java">
      <img class="course-logo" src="https://cdn-icons-png.flaticon.com/512/226/226777.png" alt="Java Logo" />
      Java
    </div>
    <div class="course-card" data-course="aws">
      <img class="course-logo" src="https://cdn-icons-png.flaticon.com/512/919/919825.png" alt="AWS Logo" />
      AWS
    </div>
    <div class="course-card" data-course="linux">
      <img class="course-logo" src="https://cdn-icons-png.flaticon.com/512/5968/5968544.png" alt="Linux Logo" />
      Linux
    </div>
    <div class="course-card" data-course="datascience">
      <img class="course-logo" src="https://cdn-icons-png.flaticon.com/512/4140/4140046.png" alt="Data Science Logo" />
      Data Science
    </div>
  </div>

  <div id="course-info">
    <div id="close-btn">&times;</div>
    <h2 id="course-title">Course Title</h2>
    <img id="course-image" src="" alt="Course Animation" />
    <p id="course-desc">Course Description goes here...</p>

    <!-- Marquee placeholder -->
    <div id="marquee"></div>

    <!-- Video placeholder -->
    <div id="course-video"></div>

    <table id="course-table">
      <thead>
        <tr><th>Tools / Topics</th></tr>
      </thead>
      <tbody id="course-tools"></tbody>
    </table>

    <!-- Tool Description -->
    <div id="tool-desc"></div>
  </div>

  <footer>
    &copy; 2025 PythonLife Institute. All rights reserved.
  </footer>

<script>
const coursesData = {
  devops: {
    title: "DevOps",
    image: "https://media.giphy.com/media/3o6ZtpxSZbQRRnwCKQ/giphy.gif",
    desc: "DevOps combines software development (Dev) and IT operations (Ops) to shorten the development life cycle and provide continuous delivery.",
    video: "https://www.youtube.com/embed/DiHrYQ4vDhA", // your YouTube link embedded
    tools: ["Docker", "Kubernetes", "Jenkins", "Ansible", "Terraform", "Git", "Prometheus"],
    toolsDescription: {
      "Docker": "A platform for containerizing applications.",
      "Kubernetes": "An orchestration tool for managing containers.",
      "Jenkins": "Automation server for CI/CD pipelines.",
      "Ansible": "Configuration management and automation tool.",
      "Terraform": "Infrastructure as Code (IaC) tool.",
      "Git": "Version control system for tracking code changes.",
      "Prometheus": "Monitoring and alerting toolkit."
    }
  },
  python: {
    title: "Python",
    image: "https://media.giphy.com/media/l4FGwHEUCGILz6dWU/giphy.gif",
    desc: "Python is a versatile programming language popular for web development, automation, data science, AI, and more.",
    video: "https://www.youtube.com/embed/kqtD5dpn9C8",
    tools: ["Django", "Flask", "Pandas", "NumPy", "TensorFlow", "PyTorch", "Jupyter"],
    toolsDescription: {
      "Django": "High-level Python web framework.",
      "Flask": "Lightweight Python web framework.",
      "Pandas": "Data analysis and manipulation library.",
      "NumPy": "Library for numerical computing.",
      "TensorFlow": "Machine learning and AI framework.",
      "PyTorch": "Deep learning framework.",
      "Jupyter": "Interactive notebooks for coding and visualization."
    }
  }
  // you can also add video and toolsDescription for other courses later
};

const courseCards = document.querySelectorAll('.course-card');
const courseInfo = document.getElementById('course-info');
const closeBtn = document.getElementById('close-btn');
const courseTitle = document.getElementById('course-title');
const courseImage = document.getElementById('course-image');
const courseDesc = document.getElementById('course-desc');
const courseTools = document.getElementById('course-tools');
const marqueeDiv = document.getElementById('marquee');
const toolDescDiv = document.getElementById('tool-desc');
const courseVideoDiv = document.getElementById('course-video');

courseCards.forEach(card => {
  card.addEventListener('click', () => {
    const courseKey = card.getAttribute('data-course');
    const course = coursesData[courseKey];

    // update info
    courseTitle.textContent = course.title;
    courseImage.src = course.image;
    courseImage.alt = course.title + " Animation";
    courseDesc.textContent = course.desc;

    // reset tools and tool description
    courseTools.innerHTML = "";
    toolDescDiv.style.display = "none";

    // add tools
    if (course.tools) {
      course.tools.forEach(tool => {
        const tr = document.createElement('tr');
        const td = document.createElement('td');
        td.textContent = tool;
        td.addEventListener('click', () => {
          const desc = course.toolsDescription[tool] || "Description not available.";
          toolDescDiv.textContent = desc;
          toolDescDiv.style.display = "block";
        });
        tr.appendChild(td);
        courseTools.appendChild(tr);
      });
    }

    // marquee
    marqueeDiv.innerHTML = `<marquee behavior="scroll" direction="left"
      style="color:#ffeb3b; font-size:1.5em; margin:15px 0; font-weight:bold; text-shadow:1px 1px 3px black;">
      Welcome to PythonLife ${course.title}
    </marquee>`;

    // video embed
    if (course.video) {
      courseVideoDiv.innerHTML = `<iframe src="${course.video}" frameborder="0" allowfullscreen></iframe>`;
    } else {
      courseVideoDiv.innerHTML = "";
    }

    courseInfo.style.display = "block";
    courseInfo.scrollIntoView({behavior: "smooth"});
  });
});

closeBtn.addEventListener('click', () => {
  courseInfo.style.display = "none";
  marqueeDiv.innerHTML = "";
  toolDescDiv.style.display = "none";
  courseVideoDiv.innerHTML = "";
});
</script>

</body>
</html>



