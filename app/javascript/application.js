// Entry point for the build script in your package.json
import "@hotwired/turbo-rails"
import "./controllers"
import * as bootstrap from "bootstrap"
import './add_jquery'

console.log("Hello world");
$(document).ready(function(){
    console.log("Inside onload action..");
})
import './jquery-ui'

$( function() {
    $( "#dialog" ).dialog();
} );

import {TabulatorFull as Tabulator} from 'tabulator-tables';
window.Tabulator = Tabulator
// while we are here make sure you have
window.bootstrap = bootstrap

//define some sample data
var tabledata = [
    {id:1, name:"Oli Bob", age:"12", col:"red", dob:""},
    {id:2, name:"Mary May", age:"1", col:"blue", dob:"14/05/1982"},
    {id:3, name:"Christine Lobowski", age:"42", col:"green", dob:"22/05/1982"},
    {id:4, name:"Brendon Philips", age:"125", col:"orange", dob:"01/08/1980"},
    {id:5, name:"Margret Marmajuke", age:"16", col:"yellow", dob:"31/01/1999"},
];

//create Tabulator on DOM element with id "example-table"
var table = new Tabulator("#example-table", {
    height:205, // set height of table (in CSS or here), this enables the Virtual DOM and improves render speed dramatically (can be any valid css height value)
    data:tabledata, //assign data to table
    layout:"fitColumns", //fit columns to width of table (optional)
    columns:[ //Define Table Columns
        {title:"Name", field:"name", width:150},
        {title:"Age", field:"age", hozAlign:"left", formatter:"progress"},
        {title:"Favourite Color", field:"col"},
        {title:"Date Of Birth", field:"dob", sorter:"date", hozAlign:"center"},
    ],
});

