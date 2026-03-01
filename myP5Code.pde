  setup = function() {
      size(400, 400);
  };

  //answer variable
  var answer = 0;

  //shake counter
  var shakeTimer = 0;

  draw = function(){

  //move ball when shaking
    var offsetX = 0;
    var offsetY = 0;
    if (shakeTimer > 0){
        offsetX = random(-8, 8);
        offsetY = random(-8, 8);
        shakeTimer = shakeTimer - 1;
    }

  background(20,0,40);

  //Black circle for ball
  fill(0,0,0);
  noStroke();
  ellipse(200 + offsetX, 200 + offsetY, 370, 370);

  //triangle display window
  fill(50,0,120);
  triangle(200 + offsetX, 90 + offsetY, 310 + offsetX, 295 + offsetY, 90 + offsetX, 295 + offsetY);
  fill(30,0,80, 0);
  ellipse(200 + offsetX, 210 + offsetY, 155, 155);

  //show answer
  textAlign(CENTER);

  if (answer === 0) {
    fill(180, 180, 255);
    textSize(17);
    text("Click to", 200 + offsetX, 195 + offsetY);
    text("ask a question", 200 + offsetX, 215 + offsetY);
  } else if (answer === 1) {
    fill(100, 255, 100);
    textSize(14);
    text("All signs", 200 + offsetX, 195 + offsetY);
    text("say yes", 200 + offsetX, 215 + offsetY);
  } else if (answer === 2) {
    fill(100, 255, 100);
    textSize(14);
    text("Sure,", 200 + offsetX, 195 + offsetY);
    text("why not?", 200 + offsetX, 215 + offsetY);
  } else if (answer === 3) {
    fill(100, 255, 100);
    textSize(14);
    text("Absolutely,", 200 + offsetX, 195 + offsetY);
    text("without a doubt?", 200 + offsetX, 215 + offsetY);
  } else if (answer === 4) {
    fill(180, 180, 255);
    textSize(14);
    text("Ask me after", 200 + offsetX, 195 + offsetY);
    text("my nap", 200 + offsetX, 215 + offsetY);
  } else if (answer === 5) {
    fill(180, 180, 255);
    textSize(14);
    text("Tech difficulties,", 200 + offsetX, 195 + offsetY);
    text("try again", 200 + offsetX, 215 + offsetY);
  } else if (answer === 6) {
    fill(180, 180, 255);
    textSize(14);
    text("Honestly?", 200 + offsetX, 195 + offsetY);
    text("No idea", 200 + offsetX, 215 + offsetY);
  } else if (answer === 7) {
    fill(255, 80, 80);
    textSize(14);
    text("You are", 200 + offsetX, 195 + offsetY);
    text("doomed!", 200 + offsetX, 215 + offsetY);
  } else if (answer === 8) {
    fill(255, 80, 80);
    textSize(14);
    text("Are you", 200 + offsetX, 195 + offsetY);
    text("kidding me?", 200 + offsetX, 215 + offsetY);
  } else {
    fill(255, 80, 80);
    textSize(14);
    text("Don't count", 200 + offsetX, 195 + offsetY);
    text("on it", 200 + offsetX, 215 + offsetY);
  }
  };

  //click to shake
  mouseClicked = function() {
    answer = round(random(1, 9));
    shakeTimer = 20;
  };




