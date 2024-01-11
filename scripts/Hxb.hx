package scripts;

import haxe.Json;
import sys.io.File;


function main() {
    genGo();
    runCompiler();
    createHxb();
    runHxb();
}

function runHxb() {
    Sys.println("Run Hxb");
    Sys.command("haxe -lib go2hx -cp golibs -m github_com.go2hx.go4hx.scripts.hxb.Hxb --hl hxb.hl --hxb-lib prebuild.zip");
}

function createHxb() {
    Sys.println("Create Hxb");
    Sys.command("haxe -lib go2hx -cp golibs -m github_com.go2hx.go4hx.scripts.hxb.Hxb --hl hxb.hl --hxb prebuild.zip");
}

function runCompiler() {
    Sys.println("Run Compiler");
    Sys.command("haxelib run go2hx ./scripts/hxb");
}

function genGo() {
    Sys.println("Generate Go");
    var stdList:Array<String> = Json.parse(File.getContent("tests/std.json"));
    stdList = stdList.map(std -> std.split("|")[1]);
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
    File.saveContent("./scripts/hxb/main.go",'package main\n
import (\n' + stdList.join("\n") + '\n)\n
func main() {
    println("hello hxb")
}
    ');
}