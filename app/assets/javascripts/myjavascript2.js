function getData(data) {
  var p1 = data.replace('[', "");
  var p2 = p1.replace(']', "");
  p1 = p2.replace(/"/g, "");
  p2 = p1.replace(/,/g, "");
  var data_array = p2.split(" ");
  data_array.shift();
  data_array.pop();
  return data_array;
}

function setAreaList() {
  var x = document.getElementById("AreaType");
  var y = document.getElementById("AreaName");
  var area_type = x.options[x.selectedIndex].text;
  var names = document.getElementById(area_type).innerHTML;
  var names_array = getData(names);
  y.options.length = 0;
  var o = document.createElement("option");
  o.selected = true;
  var arraylength = names_array.length;
  for (i = 0; i < arraylength; i++) {
    o.text = names_array[i];
    y.options.add(o, y.options.length);
    o.selected = false;
    o = document.createElement("option");
  }
}
