package scripts;

import haxe.Json;
import sys.io.File;

var cwd = Sys.getCwd();

function main() {
    genGo();
}

function allGenStd() {
    var stdList:Array<String> = Json.parse(File.getContent("data/tests.json"));
    final excludes:Array<String> = Json.parse(File.getContent("data/excludes.json"));
    for (path in excludes) {
        stdList.remove(path);
    }
    return stdList;
}

function passingStd() {
    var stdList:Array<String> = Json.parse(File.getContent("tests/std.json"));
    stdList = stdList.map(std -> std.split("|")[1]);
    return stdList;
}

function genGo() {
    Sys.println("Generate Go");
    var list:Array<String> = [];
    final args = Sys.args();
    final startingPath = args.shift();
    final outputPath = args.pop();
    if (args.length == 1) {
        list = args[0].split(",");
    }else if (args.length > 1) {
        list = args;
    }
    list = list.concat(passingStd());
    
     // sort alphabetically
     list.sort((a, b) -> {
        if (a < b)
            return -1;
        else if (a > b)
            return 1;
        else
            return 0;
    });
    list = list.map(imp -> '    _ "$imp"');
    Sys.setCwd(outputPath); 
    final path = "./hxb.go";
    Sys.println(path);
    File.saveContent(path,'package main\n
import (\n' + list.join("\n") + '\n)\n
func main() {
    _ = 1
    println(0)
}
    ');
    Sys.println("Run Compiler");
    Sys.command('haxelib run go2hx ./hxb.go -compiler_interp');

    final commands:Array<String> = [];
    // create
    src.Util.hxmlToArgs(cwd + "/scripts/create_hxb.hxml", commands);
    commands.push("--macro");
    commands.push('\"stdgo._internal.internal.Macro.initHxb(\'$startingPath\')"');
    commands.push("--hl");
    commands.push("hxb.hl");
    Sys.command("haxe " + commands.join(" "));
}