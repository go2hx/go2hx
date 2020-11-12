package go2hx;
import sys.io.Process;
import sys.FileSystem;
import haxe.Resource;
import haxe.Json;
import sys.io.File;
import go2hx.types.Types;
import haxe.io.Path;
class Parser {
    var replaceMap:Map<String,String> = [];
    var stdimports:Array<String> = [];
    public var exportPath:String;
    public function new(exportPath:String,format:Bool) {
        exportPath = Path.addTrailingSlash(exportPath);
        this.exportPath = exportPath;
        if (!FileSystem.exists("export.json")) {
            trace("export.json not found");
            return;
        }
        var data:JsonData = Json.parse(File.getContent("export.json"));
        for (pkg in data.pkgs) {
            var path = pkg.packagepath;
            path = Path.addTrailingSlash(path);
            read(pkg,path);
        }
        imports(exportPath + "go");
        Sys.setCwd(exportPath);
        var proc = new Process("haxe build.hxml");
        var code = proc.exitCode();
        if (code != -1) {
            Sys.println(proc.stderr.readAll().toString());
        }else{
            Sys.println(proc.stdout.readAll().toString());
        }
        if (format)
            new Process("haxelib run formatter -s .");
    }
    public function read(file:Package,path:String) {
        //get className and path
        var pkgPath = path;
        pkgPath = Path.removeTrailingSlashes(pkgPath);
        pkgPath = StringTools.replace(pkgPath,"/",".");
        var className = cap(file.name);
        var lines = ['package $pkgPath;'];
        //imports
        if (file.imports != null) for (imp in file.imports) {
            var name = capPkg(imp[0]);
            var as = capPkg(imp[1]);
            if (Resource.listNames().indexOf(imp[0]) != -1) {
                stdimports.push(imp[0]);
                name = 'go.$name';
            }

            if (as.length > 0)
                replaceMap.set(as,as = capPkg(as));
            var line = 'import ${StringTools.replace(name,"/",".")}';
            if (as != "") {
                line += ' as $as';
            }
            line += ";";
            lines.push(line);
        }
        lines.push('class $className {');
        //vars and consts
        if (file.vars != null) for (v in file.vars) {
            var first = v.exported ? "public static " : "static ";
            first += v.constant ? "final" : "var";
            lines.push('$first ${v.name} = ${v.value};');
        }
        //functions
        if (file.funcs != null) for (func in file.funcs) {
            var first = func.exported ? "public static" : "static ";
            lines.push('$first function ${func.name}(${func.params.join(", ")}) {');
            for (expr in func.body) {
                lines.push(expr);
            }
            lines.push("}");
        }
        //write
        if (!FileSystem.exists(exportPath + path))
            FileSystem.createDirectory(exportPath + path);
        var path = exportPath + path + className + ".hx";
        lines.push("}");
        //typedefs
        if (file.types != null) for (type in file.types) {
            var first = type.export ? "" : "private";
            lines.push('$first typedef ${type.name} = {\n${type.type}\n}');
        }
        File.saveContent(path,lines.join("\n"));
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
        stdimports.push("go");
        for (i in stdimports)
        {
            var path = '$path/${capPkg(i)}.hx';
            if (!FileSystem.exists(Path.directory(path)))
                FileSystem.createDirectory(Path.directory(path));
            File.saveContent(path,Resource.getString(i));
        }
        //global
        File.saveContent(Path.addTrailingSlash(exportPath) + "import.hx",Resource.getString("import"));
    }
    function cap(string:String,reverse:Bool=false):String {
        return (reverse ? string.charAt(0).toLowerCase() : string.charAt(0).toUpperCase()) + string.substr(1);
    }
    function capPkg(string:String):String {
        var index = string.lastIndexOf("/") + 1;
        string = string.substr(0,index) + string.charAt(index).toUpperCase() + string.substr(index + 1);
        return string;
    }
    function name(string:String):String {
        if (replaceMap.exists(string))
            string = replaceMap.get(string);
        return string;
    }
}