# jetbrains-cli gem
With this tiny Ruby CLI gem you can create new Jetbrains IDE projects in a matter of seconds.
<pre><code>
mkdir myproj
cd myproj
jetbrains init
</code></pre>

## FAQ

### What is this gem actually good for?
I absolutely love my Jetbrains IDE (IntelliJ to be precise). I use it almost every day at work and for personal projects. However, I always felt that using IntelliJ for prototyping or quick tests wasn't the right choice. It just took too long to setup a basic project, a job text editors like vi, Sublime Text and so on do better. But now, at least for me, this issue has been solved.

### What project/module types are supported?
Currently, it is only possible to create web modules/projects (PhpStorm, WebStorm, etc.). More sophisticated module types like Java projects are not supported and probably never will be. Let's be honest, using Maven or related tools would be more appropriate.

### What are your plans for the future?
For the moment I am happy but I could imagine some enhancements like
* create empty project without any module
* create single modules instead of project/module combination
* define custom paths and names
* add modules to existing project
* etc.

Got more ideas? I'd be happy to hear about them.