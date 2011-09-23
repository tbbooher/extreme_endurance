alert("Code is running");

var data = [4,8,15,16,23,42];

var chatr = d3.select("body")
   .append("div")
     .attr("class", "chart");

chart.selectAll("div")
     .data(data)
   .enter().append("div")
     .style("width", function(d) { return d * 10 + "px"; })
     .text(function(d) { return d; });
