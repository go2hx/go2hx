package scripts;

import sys.FileSystem;
import haxe.Json;
import sys.io.File;

var cwd = Sys.getCwd();

function main() {
    genGo();
}

function allGenStd() {
    var stdList:Array<String> = Json.parse(File.getContent("data/tests.json"));
    //final excludes:Array<String> = Json.parse(File.getContent("data/excludes.json"));
    for (path in stdList) {
        if (StringTools.contains(path, "internal"))
            stdList.remove(path);
        //stdList.remove(path);
    }
    return stdList;
}

function genGo() {
    Sys.println("Generate Go");
    var list:Array<String> = [];
    list = allGenStd();
    
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
    if (!FileSystem.exists("scripts/hxb"))
        FileSystem.createDirectory("scripts/hxb");
    final path = "./scripts/hxb/hxb.go";
    Sys.println("saveContent: " + path);
    File.saveContent(path,'package main\n
import (\n' + list.join("\n") + '\n)\n
func main() {
    //_ = 1
    println(0)
}
    ');
    Sys.println("Run Compiler");
    if (Sys.command('haxelib run go2hx $path -compiler_interp') != 0) {
        //FileSystem.deleteFile(path);
        Sys.exit(1);
    }
    //FileSystem.deleteFile(path);
    //FileSystem.deleteDirectory("hxb");
    final targets = ["hl","js","interp"];//,"jvm"];
    for (target in targets) {
        final commands:Array<String> = [];
        // create
        shared.Util.hxmlToArgs(cwd + "/scripts/create_hxb.hxml", commands);
        //commands.push("--macro");
        //commands.push('\"go._internal.internal.Macro.initHxb(\'$startingPath\')"');
        commands.push('--no-output');
        commands.push('--$target');
        if (target != "interp")
            commands.push('hxb');
        if (target == "js") {
            commands.push("-lib");
            commands.push("hxnodejs");
        }
        if (Sys.command("haxe " + commands.join(" ")) != 0) {
            Sys.exit(1);
        }
        trace("gen: go2hx." + target + ".zip");
    }
}