

import { Controller } from "@hotwired/stimulus"
import { green } from "@mui/material/colors";

export default class extends Controller {
  static targets = ["timer", "color"]

  connect() {
    console.log(this.timerTarget)
    this.timeLeft = 60; // Initial time of 1 minute
    this.timerTarget.innerHTML = this.formatTimeLeft()
    this.timerInterval = null;
    this.time_limit = 60;
    this.timePassed = 0
    this.timeLeft = this.time_limit
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
      this.timePassed += 1;
      this.timeLeft = this.time_limit - this.timePassed;

      // The time left label is updated
      this.timerTarget.innerHTML = this.formatTimeLeft(this.timeLeft);

      this.setCircleDasharray();
    }, 1000);
  }

  calculateTimeFraction() {
    return this.timeLeft / this.time_limit;
  }

  setCircleDasharray() {
    const circleDasharray = `${(
      this.calculateTimeFraction() * 283
    ).toFixed(0)} 283`;
    this.colorTarget.setAttribute("stroke-dasharray", circleDasharray);
  }
}
