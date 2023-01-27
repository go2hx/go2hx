package;

import sys.io.Process;
import sys.io.File;


function main() {
    init();
    final libs:Array<String> = haxe.Json.parse(File.getContent("libs.json"));
    for (path in libs) {
        list(path,lib(path));
    }
}


var stdList:Array<String> = [];
var stdPassingList:Array<String> = [];

function init() {
    #if !js
    final proc = new Process("go list std");
    if (proc.exitCode(true) != 0) {
        throw "go list std command failed";
    }
    stdPassingList = haxe.Json.parse(File.getContent("tests/std.json"));
    stdList = proc.stdout.readAll().toString().split("\n");
    #end
}

function isStd(path:String):Bool
    return stdList.indexOf(path) != -1;

inline function extractLine(line:String):Array<String>
    return line == "" ? [] : line.substr(1,-1).split(" ");

function list(path:String,line:String):Bool {
    final stdLibs:Array<String> = [];
    final all:Array<String> = [];
    final libs = extractLine(line);
    runLibs(libs,stdLibs,all);
    if (stdLibs.length == 0) {
        // no libs being used
        return true;
    }
    var index = 0;
    var createdHeader = false;

    final targets:Map<String,Array<String>> = [];
    for (target in ["interp","hl","cpp","cs","jvm","lua","python","flash","php","neko","js"]) {
        targets[target] = null;
    }
    var found = false;
    for (lib in stdLibs) {
        found = false;
        for (pass in stdPassingList) { // holds all passing tests
            final pass = pass.split("|");
            final target = pass[0];
            final path = pass[1];
            if (path == lib) {
                if (targets[target] == null)
                    targets[target] = [];
                targets[target].push(path);
            }
        }
    }
    // targets holds all passing libs listed
    final notPassingTests:Map<String,Array<String>> = [];
    var isPassing = true;
    var firstPassing = true;
    for (target => passList in targets) {
        if (passList == null)
            continue;
        for (lib in stdLibs) {
            if (passList.indexOf(lib) == -1) {
                if (!notPassingTests.exists(lib))
                    notPassingTests[lib] = [];
                notPassingTests[lib].push(target);
                isPassing = false;
            }
        }
        if (isPassing) {
            if (firstPassing)
                Sys.println("PASSING targets:");
            Sys.println("- " + target);
            firstPassing = false;
        }
    }
    var allTestsPassing = true;
    for (lib => targets in notPassingTests) {
        if (allTestsPassing)
            Sys.println("WARNING stdgo tests for listed targets are not passing:");
        allTestsPassing = false;
        Sys.println("- " + StringTools.rpad(targets.join("|")," ",20) + ": " + lib);
    }
    var warningFirst = true;
    for (target => passList in targets) {
        if (passList != null)
            continue;
        if (warningFirst)
            Sys.println("Targets's tests don't pass any of the compiled std libs:");
        warningFirst = false;
        Sys.println("- " + target);
    }
    return allTestsPassing;
}

function runLibs(libs:Array<String>,stdLibs:Array<String>,all:Array<String>) {
    for (path in libs) {
        if (all.indexOf(path) != -1) // prevent duplicates
            continue;
        all.push(path);
        // check if stdlibrary
        if (isStd(path)) {
            stdLibs.push(path);
        }else{
            runLibs(extractLine(lib(path)),stdLibs,all);
        }
    }
}

function lib(path:String):String {
    if (path == "C") // not a valid pkg
        return "";
    #if !js
    var proc = new Process('go get $path');
    var code = proc.exitCode(true);
    if (code != 0) {
        // fail
        Sys.println(path);
        Sys.println(proc.stderr.readAll());
        proc.close();
        Sys.exit(code);
    }
    proc = new Process("go list -f '{{ .Imports }}' " + path);
    code = proc.exitCode(true);
    if (code != 0) {
        // fail
        Sys.println(path);
        Sys.println(proc.stderr.readAll());
        proc.close();
        Sys.exit(code);
    }
    final line = proc.stdout.readLine();
    proc.close();
    return line;
    #else
    return "";
    #end
}