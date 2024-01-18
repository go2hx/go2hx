package scripts;

import haxe.Json;
import sys.io.File;


function main() {
    genGo();
    runCompiler();
}

function runCompiler() {
    Sys.println("Run Compiler");
    Sys.command("haxelib run go2hx ./scripts/hxb -compiler_interp");
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
    var stdList = passingStd();
     // sort alphabetically
     stdList.sort((a, b) -> {
        if (a < b)
            return -1;
        else if (a > b)
            return 1;
        else
            return 0;
    });
    stdList = stdList.map(std -> '    _ "$std"');
    //stdList = stdList.slice(0,0);
    if (!sys.FileSystem.exists("./scripts/hxb")) {
        sys.FileSystem.createDirectory("./scripts/hxb");
    }
    File.saveContent("./scripts/hxb/main.go",'package main\n
import (\n' + stdList.join("\n") + '\n)\n
func main() {
    _ = 1
    println(0)
}
    ');
}