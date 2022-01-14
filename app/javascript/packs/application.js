// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"
import "trix"
import "@rails/actiontext"

Rails.start()
Turbolinks.start()
ActiveStorage.start()


// ----------------------------------------------------
// Note(lewagon): ABOVE IS RAILS DEFAULT CONFIGURATION
// WRITE YOUR OWN JS STARTING FROM HERE 👇
// ----------------------------------------------------

// External imports
import "bootstrap";

// Internal imports, e.g:
// import { initSelect2 } from '../components/init_select2';

document.addEventListener('turbolinks:load', () => {
  // Call your functions here, e.g:
  // initSelect2();
      mapboxgl.accessToken = 'pk.eyJ1IjoiY2xlbWVudDQ0MzQwIiwiYSI6ImNrdm05YnU4eDA4bTMyeGpweXh0eTFpZWwifQ.2lzNsDAemnsf4eL0xMevkQ';
    var map = new mapboxgl.Map({
      container: 'map',
      style: 'mapbox://styles/mapbox/streets-v11',
      center: [-1.5846318157682102, 47.18145987199874],
      zoom: 11
    });
    const marker = new mapboxgl.Marker({
      color: "#1a3f47"
    })
      .setLngLat([-1.5846318157682102, 47.18145987199874])
      .setPopup(new mapboxgl.Popup().setHTML("<h3>Clément Le Boulanger</h3>"))
      .addTo(map);
});

require("trix")
require("@rails/actiontext")
