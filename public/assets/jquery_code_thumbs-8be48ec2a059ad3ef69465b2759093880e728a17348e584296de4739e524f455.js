$(document).ready(function(){function n(i){var n=i*-100-100+"%";t.animate({"margin-left":n},1400,"easeInOutCubic",function(){i<6?(t.css("margin-left",c*-100+"%"),i=c-1):i>=2*c&&(t.css("margin-left","-700%"),i=6),f=i})}var t=$(".sliderT ul"),c=t.children().length;t.css({width:100*c+"%"});var e,l=100/c,f=5,a=setInterval(function(){n(f+1),f++},5e3);t.find("li:first-child"),t.find("li:last-child");for(i=1;i<=c;i++)e=t.find("li:nth-child("+i+")"),e.clone().appendTo(t);for(i=1;i<=c;i++)e=t.find("li:nth-child("+i+")"),e.clone().appendTo(t);t.css("margin-left","-600%"),t.find("li").each(function(i){var n=l*i+"%";$(this).css({left:n}),$(this).css({width:100/c+"%"})}),$(".sliderT > ul").find("li").each(function(i){x=i+1,1==x?$(this).click(function(){n(i),$(this).effect}):$(this).click(function(){if(0==pausePlayIndex&&(clearInterval(a),a=setInterval(function(){n(f+1),f++},5e3)),i>=0&&i<=6){var t=i+6-1;n(t)}if(i>=7&&i<=12&&n(i-1),i>=13&&i<=18){var t=i-6-1;n(t)}})})});