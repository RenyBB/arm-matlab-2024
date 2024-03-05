document.body.onload = build;
function build() {
  let scriptTag = document.createElement("script");
  scriptTag.src = "./survey.js";
  document.body.appendChild(scriptTag);
}

remark.macros.tiny = function (size) {
  var text = this;
  return '<span style="font-size:' + size + '">' + text + "</span>";
};

remark.macros.langs = function () {
  return '<div id="langs"></span>';
};
remark.macros.oses = function () {
  return '<div id="oses"></span>';
};
remark.macros.methods = function () {
  return '<div id="methods"></span>';
};
