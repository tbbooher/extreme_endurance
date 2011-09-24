line_data = [ 3, 6, 2, 7, 5, 2, 1, 3, 8, 9, 2, 5, 7 ]
w = 400
h = 200
margin = 20
y = d3.scale.linear().domain([ 0, d3.max(line_data) ]).range([ 0 + margin, h - margin ])
x = d3.scale.linear().domain([ 0, line_data.length ]).range([ 0 + margin, w - margin ])
vis = d3.select("#chart").append("svg:svg").attr("width", w).attr("height", h)
g = vis.append("svg:g").attr("transform", "translate(0, 200)")
line = d3.svg.line().x((d, i) ->
  x i
).y((d) ->
  -1 * y(d)
)

g.append("svg:path").attr "d", line(line_data)
g.selectAll(".xLabel").data(x.ticks(5)).enter().append("svg:text").attr("class", "xLabel").text(String).attr("x", (d) ->
  x d
).attr("y", 0).attr "text-anchor", "middle"
g.selectAll(".yLabel").data(y.ticks(4)).enter().append("svg:text").attr("class", "yLabel").text(String).attr("x", 0).attr("y", (d) ->
  -1 * y(d)
).attr("text-anchor", "right").attr "dy", 4
g.selectAll(".xTicks").data(x.ticks(5)).enter().append("svg:line").attr("class", "xTicks").attr("x1", (d) ->
  x d
).attr("y1", -1 * y(0)).attr("x2", (d) ->
  x d
).attr "y2", -1 * y(-0.3)
g.selectAll(".yTicks").data(y.ticks(4)).enter().append("svg:line").attr("class", "yTicks").attr("y1", (d) ->
  -1 * y(d)
).attr("x1", x(-0.3)).attr("y2", (d) ->
  -1 * y(d)
).attr "x2", x(0)