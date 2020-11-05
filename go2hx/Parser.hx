package go2hx;
import sys.FileSystem;
import haxe.Resource;
import haxe.Json;
import sys.io.File;
import go2hx.types.Types;
import haxe.io.Path;
class Parser {
    var lines:Array<String>;
    var replaceMap:Map<String,String> = [];
    var stdlibs:Map<String,String> = [
        "Math" => "GoMath",
    ];
    var stdimports:Array<String> = [];
    public var exportPath:String = "bin";
    public function new() {
        exportPath = Path.addTrailingSlash(exportPath);
        for (name in Resource.listNames()) {
            replaceMap.set(name,cap(name));
            stdlibs.set(name,'go.${cap(name)}');
        }
        var data:JsonData = Json.parse(File.getContent("export.json"));
        for (pkg in data.pkgs) {
            var path = pkg.packagepath;
            path = Path.addTrailingSlash(path);
            for (file in pkg.files) {
                read(file,path);
            }
        }
        imports(exportPath + "go");
        Sys.setCwd(exportPath);
        Sys.command("haxe build.hxml");
        //Sys.command('haxe bin_build.hxml');
    }
    public function read(file:FileType,path:String) {
        //get className and path
        var pkgPath = path;
        pkgPath = Path.removeTrailingSlashes(pkgPath);
        pkgPath = StringTools.replace(pkgPath,"/",".");
        lines = ['package $pkgPath;'];
        var className = cap(file.name);
        //imports
        if (file.imports != null) for (imp in file.imports) {
            var name = cap(imp[0]);
            var as = cap(imp[1]);
            if (stdlibs.exists(name)) {
                switch (name) {
                    case "Math": 
                        name = "GoMath";
                }
                stdimports.push(name);
                name = stdlibs.get(name);
            }
            if (as.length > 0)
                replaceMap.set(as,as = cap(as));
            var line = 'import $name';
            if (as != "") {
                line += ' as $as';
            }
            line += ";";
            lines.push(line);
        }
        //vars and consts
        if (file.vars != null) for (v in file.vars) {
            trace("v " + v);
            var first = v.constant ? "final" : "var";
            lines.push('$first ${v.name} = ${v.value};');
        }
        //functions
        if (file.funcs != null) for (func in file.funcs) {
            lines.push('function ${func.name}() {');
            for (expr in func.body) {
                lines.push(expr);
            }
            lines.push("}");
        }
        //write
        if (!FileSystem.exists(exportPath + path))
            FileSystem.createDirectory(exportPath + path);
        trace("name "+ className);
        //trace("lines " + lines);
        File.saveContent(exportPath + path + className + ".hx",lines.join("\n"));
        trace("className " + className + " pkg " + path); 
        buildConfig(pkgPath,className);
    }
    function buildConfig(path:String,main:String) {
        File.saveContent(exportPath + "build.hxml",
        '-main $path.$main\n' +
        "--interp" 
        );
    }
    function imports(path:String) {
        path = Path.normalize(path);
        if (!FileSystem.exists(path))
            FileSystem.createDirectory(path);
        stdimports.push("Go");
        for (i in stdimports)
        {
            var path = '$path/${cap(i)}.hx';
            File.saveContent(path,Resource.getString(i));
        }
        //global
        File.saveContent(Path.addTrailingSlash(exportPath) + "import.hx",Resource.getString("import"));
    }
    function cap(string:String,reverse:Bool=false):String {
        return (reverse ? string.charAt(0).toLowerCase() : string.charAt(0).toUpperCase()) + string.substr(1);
    }
    function name(string:String):String {
        if (replaceMap.exists(string))
            string = replaceMap.get(string);
        return string;
    }
}