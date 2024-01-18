package scripts;

import haxe.Json;
import sys.FileSystem;
import sys.io.File;
import haxe.Http;

var libData:Array<Lib> = [];
var httpCount = 0;

function main() {
    final libs:Array<Lib> = [];
    final libList = awesomeGo();
    if (FileSystem.exists("scripts/analyzelibs/libs.json"))
        libData = Json.parse(File.getContent("scripts/analyzelibs/libs.json"));
    final start = libData.length;
    for (i in start...libList.length) {
        trace('$i / ${libList.length}');
        getImports(libList[i]);
        Sys.sleep(0.016);
    }
    while (httpCount > 0) {
        trace("waiting for end");
        Sys.sleep(0.1);
    }
    trace(libData.length);
}

typedef Lib = {
    name:String,
    imports:Array<String>
}

function awesomeGo():Array<String> {
    if (!FileSystem.exists("scripts/analyzelibs")) {
        FileSystem.createDirectory("scripts/analyzelibs");
    }
    if (!FileSystem.exists("scripts/analyzelibs/readme.md")) {
        File.saveContent("scripts/analyzelibs/readme.md", Http.requestUrl("https://raw.githubusercontent.com/avelino/awesome-go/main/README.md"));
    }
    final readme = File.getContent("scripts/analyzelibs/readme.md");
    final github = 'github.com/';
    final start = '](https://$github';
    final end = ')';
    final libStr = "_Libraries";
    var libBool = false;
    final backToTop = '**[⬆ back to top](#contents)**';
    final libs = [];
    for (line in readme.split("\n")) {
        if (line.substr(0,libStr.length) == libStr) {
            libBool = true;
            continue;
        }
        if (!libBool)
            continue;
        if (line == backToTop) {
            libBool = false;
            continue;
        }
        final index = line.indexOf(start);
        if (index == -1)
            continue;
        final line = line.substring(index + start.length - github.length, line.indexOf(end, index + start.length));
        //trace(line);
        libs.push(line);
    }
    return libs;
}

function getImports(lib:String) {
    final url = 'https://pkg.go.dev/$lib?tab=imports';
    trace(url);
    var data = "";
    final http = new sys.Http(url);
    http.onData = function(d) {
        if (d.indexOf("404 page not found") != -1) {
            trace("404");
            httpCount--;
            return;
        }
        if (d.indexOf("This package does not have any imports!") != -1) {
            trace("no imports");
            httpCount--;
            return;
        }
        getImportFromData(lib, d);
        httpCount--;
        File.saveContent("scripts/analyzelibs/libs.json", Json.stringify(libData, null, "   "));
    }
    http.onError = function(e) {
        trace(e);
        httpCount--;
    }
    http.onStatus = function(s) {
        trace(s);
    }
    httpCount++;
    try {
        http.request(false);
    }catch(e) {
        trace(e);
    }
}
// TODO: take into account the imports of the imports
function getImportFromData(name:String, data:String) {
    final impList = '<ul class="Imports-list">';
    final impListEnd = '</ul>';
    final index = data.indexOf("Standard library imports");
    if (index == -1) {
        trace("no standard library imports");
        return;
    }
    data = data.substr(index);
    final index = data.indexOf(impList) + impList.length;
    final endIndex = data.indexOf(impListEnd, index);
    final data = data.substring(index, endIndex);
    final startLine = '<li class="Imports-listItem"><a href="/';
    final imps = [];
    for (line in data.split("\n")) {
        final line = StringTools.trim(line);
        if (line == "")
            continue;
        final line = line.substr(startLine.length);
        final endLine = line.indexOf('"');
        final line = line.substr(0, endLine);
        imps.push(line);
    }
    libData.push({name:name, imports:imps});
}