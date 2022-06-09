import { Controller } from "@hotwired/stimulus"
import $ from "jquery"
import "owl.carousel"
import 'owl.carousel/dist/assets/owl.carousel.css';


export default class extends Controller {
  connect() {
    console.log("connected caorusel controller")
    $(this.element).owlCarousel({
      stagePadding: 50,
      loop: true,
      margin:10,
      responsive:{
        0:{
          items:1
        },
        600:{
        items:3
        }
      }
    })
  }
}
