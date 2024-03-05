document.body.onload = build;
function build() {



// <script src="https://cdn.jsdelivr.net/npm/vega@5.17.0"></script>
// <script src="https://cdn.jsdelivr.net/npm/vega-lite@4.17.0"></script>
// <script src="https://cdn.jsdelivr.net/npm/vega-embed@6.12.2"></script>
// <script src="https://cdn.jsdelivr.net/npm/vega-lite-api"></script>

  let scriptTag = document.createElement("script");
  scriptTag.src = "./survey.js";
  document.body.appendChild(scriptTag);

  // one
  scriptTag = document.createElement("script");
  scriptTag.src = "https://cdn.jsdelivr.net/npm/vega@5.17.0"
  document.body.appendChild(scriptTag);

  // two
  scriptTag = document.createElement("script");
  scriptTag.src = "https://cdn.jsdelivr.net/npm/vega-lite@4.17.0"
  document.body.appendChild(scriptTag);
 
  // three
  scriptTag = document.createElement("script");
  scriptTag.src = "https://cdn.jsdelivr.net/npm/vega-embed@6.12.2"
  document.body.appendChild(scriptTag);


  // four
  scriptTag = document.createElement("script");
  scriptTag.src = "https://cdn.jsdelivr.net/npm/vega-lite-api"
  document.body.appendChild(scriptTag);


}

remark.macros.tiny = function (size) {
  var text = this;
  return '<span style="font-size:' + size + '">' + text + "</span>";
};

remark.macros.langs = function () {
  return '<div id="langs"></div>';
};
remark.macros.oses = function () {
  return '<div id="oses"></div>';
};
remark.macros.methods = function () {
  return '<div id="methods"></div>';
};
