altitude = [<%= @rpas.map(&:ceiling_m).join(",") %>]
endurance = [<%= @rpas.map(&:endurance_hr).join(",") %>]
payload = [<%= @rpas.map(&:payload_weight_kg).join(",") %>]
designation = [<%= @rpas.map(&:endurance_hr).join(",") %>]
data = []
data.push({"endurance": endurance[i], "altitude": altitude[i], "payload": payload[i]}, "designation": designation[i]) for i in [0..altitude.length]

w = 800
h = 400
margin = 20

x_max = d3.max(endurance)
y_max = d3.max(altitude)

y = d3.scale.linear().domain([ 0, y_max ]).range([+ margin, h - margin ])
x = d3.scale.linear().domain([ 0, x_max ]).range([+ margin*4, w - margin ])

vis = d3.select("#chart").append("svg:svg")
  .attr("width", w)
  .attr("height", h)

w= w-margin
h= h-margin

# Add path layer
vis.selectAll("circle").data(data).enter().append("svg:circle")
  .attr("class", (d) -> 'point')
  .attr("cx", (d) -> x(d.endurance))
  .attr("cy", (d) -> y(d.altitude))
  .attr("r", (d) -> 100*(d.payload/d3.max(payload)))
  .attr("fill-opacity", 0.3)
  .append("svg:title").text("foo")
  .on("click", -> d3.select(this).attr('r', 8))



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