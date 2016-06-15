var colors = ["red", "blue", "green", "yellow"];
var names = ["go_get_em", "racer", "shaker", "oatmeal"];

colors.push("orange");
names.push("cinnamon");

horse_obj = {};

for (var i = 0; i < names.length; i++) {horse_obj[names[i]] = colors[i];}
console.log(horse_obj)