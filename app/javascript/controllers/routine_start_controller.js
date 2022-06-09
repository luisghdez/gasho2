

import { Controller } from "@hotwired/stimulus"
import { Carousel } from "bootstrap"
import { green } from "@mui/material/colors";

export default class extends Controller {
  static targets = ["timer", "color", "carousel", "counter"]

  static values = {
    count: Number,
    duration: Number
  }

  connect() {
    console.log(this.durationValue)
    this.carouselCount = 0
    console.log(this.carouselCount)
    this.timerInterval = null;
    this.time_limit = 3;
    this.stretch_limit = 3; //implemente stretch duration here
    this.timeLeft = this.time_limit
    this.timerTarget.innerHTML = this.formatTimeLeft()
    this.carousel = new Carousel(this.carouselTarget, { ride: false, wrap: false, pause: 'hover' })
    this.startTimer()
  }

  formatTimeLeft() {
    // The largest round integer less than or equal to the result of time divided being by 60.
    const minutes = Math.floor(this.timeLeft / 60);

    // Seconds are the remainder of the time divided by 60 (modulus operator)
    let seconds = this.timeLeft % 60;

    // If the value of seconds is less than 10, then display seconds with a leading zero
    if (seconds < 10) {
      seconds = `0${seconds}`;
    }

    // The output in MM:SS format
    return `${minutes}:${seconds}`;
  }

  startTimer() {
    this.timerInterval = setInterval(() => {

      // The amount of time passed increments by one
      this.timeLeft -= 1;

      // The time left label is updated

      if (this.timeLeft === -1) {
        this.nextStretch();
      }

      this.timerTarget.innerHTML = this.formatTimeLeft(this.timeLeft);
      this.setCircleDasharray();

    }, 1000);
  }

  nextStretch() {
    this.timeLeft = this.stretch_limit;
    this.time_limit = this.stretch_limit;
    // this.timeLeft = this.time_limit; leave this line when stretch seconds implemented
    this.carouselCount += 1
    this.carousel.next();

    if (this.carouselCount > this.countValue) {
      this.counterTarget.classList.add('d-none')
    }
  }

  calculateTimeFraction() {
    if (this.timeLeft > 10) {
      return this.timeLeft / this.stretch_limit
    } else {
      return this.timeLeft / this.time_limit; // leave only this line when stretch seconds are implemented
    }
  }

  setCircleDasharray() {
    const circleDasharray = `${(
      this.calculateTimeFraction() * 283
    ).toFixed(0)} 283`;
    this.colorTarget.setAttribute("stroke-dasharray", circleDasharray);
  }
}
