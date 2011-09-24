quantize = (d) ->
  "q" + Math.min(8, ~~(data[d.id] * 9 / 12)) + "-9"

path = d3.geo.path()
svg = d3.select("#map").append("svg:svg")
counties = svg.append("svg:g").attr("id", "counties").attr("class", "Blues")
states = svg.append("svg:g").attr("id", "states")
d3.json "/us-counties.json", (json) ->
  counties.selectAll("path").data(json.features).enter().append("svg:path").attr("class", (if data then quantize else null)).attr "d", path

d3.json "/us-states.json", (json) ->
  states.selectAll("path").data(json.features).enter().append("svg:path").attr "d", path

d3.json "/unemployment.json", (json) ->
  data = json
  counties.selectAll("path").attr "class", quantize