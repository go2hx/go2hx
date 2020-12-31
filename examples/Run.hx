package test;

import sys.io.File;
var sources:Array<String> = [];
function main() {
    var file = File.read("libs.txt");
    while (!file.eof()) {
        var line = file.readLine();
        
    }
    file.close();
}
function install(path:String) {
    Sys.command('go install -d -u $path');
}