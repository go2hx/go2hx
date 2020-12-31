package gen;

import haxe.io.Path;
import sys.FileSystem;

macro function getGitCommitHash() {
    #if !display
    var process = new sys.io.Process('git', ['rev-parse', 'HEAD']);
    if (process.exitCode() != 0) {
      var message = process.stderr.readAll().toString();
      var pos = haxe.macro.Context.currentPos();
      haxe.macro.Context.error("Cannot execute `git rev-parse HEAD`. " + message, pos);
    }
    // read the output of the process
    var commitHash:String = process.stdout.readLine();
    return macro $v{commitHash};
    #else 
    return macro $v{""};
    #end
}
macro function gostd() {
  var pkgs:Array<String> = [];
  function readDir(path:String) {
    path = Path.addTrailingSlash(path);
    if (FileSystem.exists(path) && FileSystem.isDirectory(path)) {
      var dir = FileSystem.readDirectory(path);
      for (name in dir) {
        if (name.substring(0, 1) == ".")
          continue; // skip git
  
        if (FileSystem.isDirectory(path + name)) {
          readDir(path + name);
        } else {
          var className = path.substr("gostd/".length) + Path.withoutExtension(name);
          className = Path.normalize(className);
          className = StringTools.replace(className,"/",".");
          pkgs.push(className);
        }
      }
    }
  }
  readDir("gostd");
  return macro $v{pkgs.join(",")};
}