var App=Ember.Application.create({

LOG_TRANSITIONS:true

});
App.Router.map(function(){
    
   this.route('committee',{path:'/committee'});
     this.route('callforpapers',{path:'/callforpapers'});
     this.route('guidlines',{path:'/guidlines'});
    this.route('program',{path:'/program'});
    this.route('registration',{path:'/registration'});
    this.route('contact',{path:'/contact'});
     this.route('sponsor',{path:'/sponsor'});
	 this.route('keynote',{path:'/keynote'});
    
});


$(document).ready(function () {
  $(".navbar-nav li a").click(function(event) {
    $(".navbar-collapse").collapse('hide');
  });
});

App.IndexView=Ember.View.extend({
    
didInsertElement:function(){
var currentimg;
var srr;    
 $(".lightbox").click(function(){
var src=$(this).find("img").attr("src");
    var src2=src.replace(/\./g,"2.");
currentimg=$(this);
     console.log(src);
$("#mainimg").attr("src",src);
    var article=src2.slice(4,8);
     console.log(article);
     srr=article;
     $('#' + article).toggleClass("disp");
$("#mainp").innerHTML=$('#' + article)[0].innerHTML;   
     
$("#frame").fadeIn();
$("#overlay").fadeIn();
 
 });
$("#overlay").click(function(){
$(this).fadeOut();
$("#frame").fadeOut();
 $('#' + srr).toggleClass("disp");
    srr="";
});
    
    $("#cross").click(function(){
$("#overlay").fadeOut();
$("#frame").fadeOut();
         $('#' + srr).toggleClass("disp");

srr="";
});
}

});