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
  var paths:Array<String> = [];
  function dir(paths:Array<String>) {
    for (path in paths) {
      var path = path;
      if (!FileSystem.exists(path))
        continue;
      if (FileSystem.isDirectory(path)) {
        dir([for (dir in FileSystem.readDirectory(path)) Path.join([path,dir])]);
      }else{
        paths.push(StringTools.replace(path,"/","."));
      }
    }
  }
  dir(["gostd"]);
  return macro $v{paths.join(",")};
}