// Entry point for the build script in your package.json
import "@hotwired/turbo-rails"
import "./controllers"
import * as bootstrap from "bootstrap"
import './add_jquery';

console.log("Hello world");
$(document).ready(function(){
    console.log("Inside onload action..");
})





