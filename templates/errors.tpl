<!DOCTYPE html>
<html>
<head>
  <title>Ogilvy Health Newsletter CMS</title>
  <style>
    body {font-family:Verdana,sans-serif;padding:20px;}
    #container {max-width:800px;margin:0 auto;}
    h1, h2 {font-weight:normal;margin:0;padding:0;font-size:1em;}
    h1 {font-size:1.4em;margin-bottom:1em;}
    li {margin-bottom:1.2em;line-height:1.2em;}
  </style>
</head>
<body>
<div id="container">
<h1>Ogilvy USA Newsletter CMS</h1>
<p>The following errors were detected in the source sheet. Fix errors and reload page to continue with preview.</p>
<ul>
{{foreach $errors as $error}}
  <li>{{$error}}</li>
{{/foreach}}
</ul>
</div>
</body>
</html>