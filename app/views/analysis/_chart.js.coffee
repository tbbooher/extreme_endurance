y_data = [ 8, 5, 3, 7, 4, 6, 9, 12, 15, 12, 4, 3,]
x_data = [ 3, 6, 2, 7, 5, 2, 1, 3, 8, 9, 2, 5,]
#eat food for food in ['toast', 'cheese', 'wine']
data = []
data.push({"x": x_data[i], "y": y_data[i]}) for i in [1..12]

w = 800
h = 400
margin = 20

y = d3.scale.linear().domain([ 0, d3.max(y_data) ]).range([+ margin, h - margin ])
x = d3.scale.linear().domain([ 0, d3.max(x_data) ]).range([+ margin, w - margin ])

vis = d3.select("#chart").append("svg:svg")
  .attr("width", w)
  .attr("height", h)

# Add path layer
vis.selectAll("circle").data(data).enter().append("svg:circle")
  .attr("class", (d, i) -> 'point')
  .attr("cx", (d, i) -> x(i))
  .attr("cy", (d, i) -> y(i))
  .attr("r", (d, i) -> 8)
# Add tick groups
ticks = vis.selectAll('.tick')
  .data(y.ticks(7))
.enter().append('svg:g')
  .attr('transform', (d) -> "translate(0, #{y(d)})")
  .attr('class', 'tick')
    
# Add y axis tick marks
ticks.append('svg:line')
  .attr('y1', 0)
  .attr('y2', 0)
  .attr('x1', 0)
  .attr('x2', w)

# Add y axis tick labels
ticks.append('svg:text')
  .text((d) -> d)
  .attr('text-anchor', 'end')
  .attr('dy', 2)
  .attr('dx', -4)