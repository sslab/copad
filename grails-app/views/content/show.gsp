<!DOCTYPE html>
<html class='no-js' dir='ltr' lang='zh-tw'>
<head>
  <meta charset="utf-8" />
  <meta content="chrome=1" http-equiv="X-UA-Compatible" />
  <meta content="width=780" name="viewport" />
  <title>CoPad</title>
  <link href="http://fonts.googleapis.com/css?family=Droid+Sans|Droid+Sans+Mono" rel="stylesheet" type="text/css" />
  <r:require modules="codemirror, compass" />
  <r:layoutResources />
</head>
<body>
  <r:script>
  var editor = CodeMirror.fromTextArea(document.getElementById("content"), {
    lineNumbers: true
  });
  </r:script>

  <div id="paper">
    <div id="wrapper">
      <h1>${code?.title}</h1>
      <div id="description">${code?.description}</div>
      <textarea id="content">${code?.content}</textarea>
    </div>
  </div>

  <div id="sidebar">
    <ul>
      <li><a href="#" id="button-home"><img src="${createLinkTo(dir: '/icons', file: 'home.png')}" alt="button" class="button" /></a></li>
      <li><a href="#" id="button-play"><img src="${createLinkTo(dir: '/icons', file: 'play.png')}" alt="button" class="button" /></a></li>
      <li><a href="#" id="button-stop"><img src="${createLinkTo(dir: '/icons', file: 'stop.png')}" alt="button" class="button" /></a></li>
      <li><a href="#" id="button-comment"><img src="${createLinkTo(dir: '/icons', file: 'comment.png')}" alt="button" class="button" /></a></li>
      <li><a href="#" id="button-share"><img src="${createLinkTo(dir: '/icons', file: 'share.png')}" alt="button" class="button" /></a></li>
      <li><a href="#" id="button-like"><img src="${createLinkTo(dir: '/icons', file: 'like.png')}" alt="button" class="button" /></a></li>
      <li><a href="#" id="button-fork"><img src="${createLinkTo(dir: '/icons', file: 'fork.png')}" alt="button" class="button" /></a></li>
      <li><a href="#" id="button-fullscreen"><img src="${createLinkTo(dir: '/icons', file: 'fullscreen.png')}" alt="button" class="button" /></a></li>
    </ul>
  </div>

  <r:layoutResources />
</body>
</html>