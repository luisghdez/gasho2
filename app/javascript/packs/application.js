// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"
import { Application } from '@hotwired/stimulus'
import ContentLoader from 'stimulus-content-loader'

const application = Application.start()
application.register('content-loader', ContentLoader);

import 'owl.carousel/dist/assets/owl.carousel.css';
import 'owl.carousel';

import JQuery from 'jquery';
window.$ = window.JQuery = JQuery;

Rails.start()
Turbolinks.start()
ActiveStorage.start()

import 'bootstrap';

function reveal() {
  var reveals = document.querySelectorAll(".reveal");
  for (var i = 0; i < reveals.length; i++) {
    var windowHeight = window.innerHeight;
    var elementTop = reveals[i].getBoundingClientRect().top;
    var elementVisible = 150;
    if (elementTop < windowHeight - elementVisible) {
      reveals[i].classList.add("active");
    } else {
      reveals[i].classList.remove("active");
    }
  }
}

window.addEventListener("scroll", reveal);

// To check the scroll position on page load
reveal();

let section = document.querySelectorAll('section');
let menu = document.querySelectorAll('nav navcol-1 nav-item');
window.onscroll = () => {
  section.forEach(i => {
    let top = window.scrollY;
    let offset = i.offsetTop - 150;
    let height = i.offsetHeight;
    let id = i.getAttribute('id');
    if (top >= offset && top < offset + height) {
      menu.forEach(link => {
        link.classList.remove('active');
        document.querySelector('nav-item li[href*=' + id + ']')
          .classList.add('active');
      });
    }
  });
};
