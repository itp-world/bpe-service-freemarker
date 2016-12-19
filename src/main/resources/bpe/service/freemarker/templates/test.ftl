<html>
<head lang="en">
  <meta charset="utf-8">
  <title>Hello ${name}!</title>
  <style type="text/css">
    body { width: 80%; margin: 3em auto; padding: 0; font: normal 1em "Trebuchet MS", sans-serif; color: #666; }
    table { width: 100% }
    th, td { padding: 2px 4px; text-align: left; }
    tbody tr:nth-child(odd) { background-color: #eee; }
    .email { padding-left: 2em; color: #9e052b; }
    .logo { color: #9e052b; font-weight: bold; text-align: right; }
    .logo img { width: 4em; }
  </style>
</head>
<body>
  <strong>Hello ${name}!</strong>
  <p>This is email is based on a test template and your email address is:</p>
  <p class="email">${email}</p>
  <table>
    <thead>
      <tr>
        <#list template_data.table.cols as th><th>${th}</th></#list>
      </tr>
    </thead>
    <tbody>
      <#list template_data.table.rows as tr><tr>
        <#list template_data.table.cols as td><td>${tr[td]}</td></#list>
      </tr></#list>
    </tbody>
  </table>
  <p>Have a nice day ...</p>
  <p class="logo"><img src="https://github.com/itp-world/bpe-service-freemarker/blob/master/src/main/resources/bpe/service/freemarker/templates/logo.jpg" alt="itp"/><p>
</body>
</html>
