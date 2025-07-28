package scripts;

import haxe.Json;
import sys.io.File;

final excludes:Array<String> = [
    "internal",
    "runtime",
    "go/",
    "syscall",
    "testing",
    "debug",
];

function hasExclude(std:String):Bool {
    for (exclude in excludes) {
        if (std.indexOf(exclude) != -1)
            return true;
    }
    return false;
}

function main() {
    final stdList:Array<String> = File.getContent("data/std.list").split("\n");
    var passingStdList:Array<String> = Json.parse(File.getContent("tests/std.json"));
    passingStdList.filter(s -> s.split("|")[0] == "hl");
    passingStdList = passingStdList.map(s -> s.split("|")[1]);
    final results:Array<{name:String, score:Int}> = [];
    var i = 0;
    for (std in stdList) {
        trace(++i);
        if (passingStdList.indexOf(std) != -1)
            continue;
        if (hasExclude(std))
            continue;
        final list = recursive(std, passingStdList);
        results.push({name:std, score:list.length});
    }
    results.sort((a, b) -> b.score - a.score);
    for (result in results) {
        Sys.println(StringTools.rpad(result.name, " ", 30) + result.score);
    }
}

var cache:Map<String,Array<String>> = [];

function calcScore(list:Array<String>, passingStdList:Array<String>):Int {
    return list.length;
    var score = 0;
    for (std in list) {
        if (passingStdList.indexOf(std) == -1 && !hasExclude(std))
            score++;
    }
    return score;
}

function recursive(std:String, passingStdList:Array<String>, paths:Array<String>=null):Array<String> {
    if (paths == null)
        paths = [];
    if (paths.indexOf(std) != -1)
        return [std];
    // trace(std);
    // trace([for (key in cache.keys()) key]);
    if (passingStdList.indexOf(std) != -1)
        return [std];
    if (hasExclude(std))
        return [std];
    if (cache.exists(std))
        return cache[std];
    // go list -f '{{ join .Imports "\n" }}' strings
    final proc = new sys.io.Process("go", ["list", "-f", "{{ join .Imports \"\\n\" }}", std]);
    proc.exitCode();
    final stdList = proc.stdout.readAll().toString().split("\n");
    var list = [];
    for (std in stdList) {
        list = list.concat(recursive(std, passingStdList, paths.concat([std])));
    }
    cache[std] = list;
    return list;
}