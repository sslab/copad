<!DOCTYPE html>
<html class='no-js' dir='ltr' lang='zh-tw'>
<head>
  <meta charset="utf-8" />
  <meta content="chrome=1" http-equiv="X-UA-Compatible" />
  <meta content="width=780" name="viewport" />
  <title>CoPad</title>
  <r:require module="compass" />
  <r:layoutResources />
</head>
<body class="dark">

<div id="description">
<h1>CoPad Script Loader</h1>
<p>test description</p>
</div>

<textarea id="content">/**
 * CoPad Script Loader (Engine)
 * @author Mr. Code (lyhcode at gmail.com)
 * @version 1.0
 * @release 20110502
 */

//delete the .jnlp file
//new File(System.properties['jnlpx.origFilenameArg'])?.delete()

//keep default out/err stream
final PrintStream stdOut = System.out
final PrintStream stdErr = System.err

//capture out/err stream
final ByteArrayOutputStream bstdout = new ByteArrayOutputStream()
final ByteArrayOutputStream bstderr = new ByteArrayOutputStream()
System.setOut(new PrintStream(bstdout))
System.setErr(new PrintStream(bstderr))

/*
classLoader = ClassLoader.systemClassLoader
while (classLoader.parent) {
    println classLoader
    println classLoader = classLoader.parent
}
*/

//run script
loader.loadGroovy(System.properties['core.script.url'])

//restore out/err stream
System.setOut(stdOut)
System.setErr(stdErr)

try {
    String contentType = 'text/plain'
    String stdout = bstdout.toString()
    String stderr = bstderr.toString()
    loader.callback(contentType, stdout, stderr)
}
catch (Exception ex) {
    ex.printStackTrace()
}</textarea>

<div id="sidebar">
  <ul>
    <li>Run</li>
  </ul>
</div>

</body>
</html>