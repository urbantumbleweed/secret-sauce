
donutOfCompleteness = function(user_id, percent_complete, position_name, personal){

  if (personal === true) {
    var id = "#personal_" + user_id;
    var width_base = 300;
    var radius_delta = 80;
  } else {
    var id = "#student_" + user_id;
    var width_base = 150;
    var radius_delta = 30;
  }

  var percent_incomplete = 100 - percent_complete;
  var data = [ {name: "complete",   value: percent_complete},
               {name: "incomplete", value: percent_incomplete}
             ];

  var margin = {top: 10, right: 10, bottom: 10, left: 10};
    width = width_base - margin.left - margin.right;
    height = width - margin.top - margin.bottom;

  var chart = d3.select(id)
          .append('svg')
            .attr("width", width + margin.left + margin.right)
            .attr("height", height + margin.top + margin.bottom)
            .append("g")
            .attr("transform", "translate(" + ((width/2)+margin.left) + "," + ((height/2)+margin.top) + ")");


  var radius = Math.min(width, height) / 2;

  var color = d3.scale.ordinal();

  if (position_name === 'editorial') {
    color.range(["#F1A003", "#F9D99A"]);
  } else if (position_name === 'photo') {
    color.range(["#00A2CA", "#99DAEA"]);
  } else {
    color.range(["#829300", "#CDD499"]);
  } 

  var arc = d3.svg.arc()
      .outerRadius(radius)
      .innerRadius(radius - radius_delta);

  var pie = d3.layout.pie()
      .sort(null)
      .startAngle(1.1*Math.PI)
      .endAngle(3.1*Math.PI)
      .value(function(d) { return d.value; });


  var g = chart.selectAll(".arc")
    .data(pie(data))
  .enter().append("g")
    .attr("class", "arc");

  g.append("path")
    .style("fill", function(d) { return color(d.data.name); })
    .transition().delay(function(d, i) { return i * 500; }).duration(500)
    .attrTween('d', function(d) {
         var i = d3.interpolate(d.startAngle+0.1, d.endAngle);
         return function(t) {
             d.endAngle = i(t);
           return arc(d);
         }
    });


}
