package stdgo;
final findOnly : ImportMode = stdgo._internal.go.build.Build_findonly.findOnly;
final allowBinary = stdgo._internal.go.build.Build_allowbinary.allowBinary;
final importComment = stdgo._internal.go.build.Build_importcomment.importComment;
final ignoreVendor = stdgo._internal.go.build.Build_ignorevendor.ignoreVendor;
var toolDir(get, set) : String;
private function get_toolDir():String return stdgo._internal.go.build.Build_tooldir.toolDir;
private function set_toolDir(v:String):String {
        stdgo._internal.go.build.Build_tooldir.toolDir = (v : stdgo.GoString);
        return v;
    }
var default_(get, set) : Context;
private function get_default_():Context return stdgo._internal.go.build.Build_default_.default_;
private function set_default_(v:Context):Context {
        stdgo._internal.go.build.Build_default_.default_ = v;
        return v;
    }
@:structInit @:using(stdgo.go.build.Build.Context_static_extension) abstract Context(stdgo._internal.go.build.Build_context.Context) from stdgo._internal.go.build.Build_context.Context to stdgo._internal.go.build.Build_context.Context {
    public var gOARCH(get, set) : String;
    function get_gOARCH():String return this.gOARCH;
    function set_gOARCH(v:String):String {
        this.gOARCH = (v : stdgo.GoString);
        return v;
    }
    public var gOOS(get, set) : String;
    function get_gOOS():String return this.gOOS;
    function set_gOOS(v:String):String {
        this.gOOS = (v : stdgo.GoString);
        return v;
    }
    public var gOROOT(get, set) : String;
    function get_gOROOT():String return this.gOROOT;
    function set_gOROOT(v:String):String {
        this.gOROOT = (v : stdgo.GoString);
        return v;
    }
    public var gOPATH(get, set) : String;
    function get_gOPATH():String return this.gOPATH;
    function set_gOPATH(v:String):String {
        this.gOPATH = (v : stdgo.GoString);
        return v;
    }
    public var dir(get, set) : String;
    function get_dir():String return this.dir;
    function set_dir(v:String):String {
        this.dir = (v : stdgo.GoString);
        return v;
    }
    public var cgoEnabled(get, set) : Bool;
    function get_cgoEnabled():Bool return this.cgoEnabled;
    function set_cgoEnabled(v:Bool):Bool {
        this.cgoEnabled = v;
        return v;
    }
    public var useAllFiles(get, set) : Bool;
    function get_useAllFiles():Bool return this.useAllFiles;
    function set_useAllFiles(v:Bool):Bool {
        this.useAllFiles = v;
        return v;
    }
    public var compiler(get, set) : String;
    function get_compiler():String return this.compiler;
    function set_compiler(v:String):String {
        this.compiler = (v : stdgo.GoString);
        return v;
    }
    public var buildTags(get, set) : Array<String>;
    function get_buildTags():Array<String> return [for (i in this.buildTags) i];
    function set_buildTags(v:Array<String>):Array<String> {
        this.buildTags = ([for (i in v) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>);
        return v;
    }
    public var toolTags(get, set) : Array<String>;
    function get_toolTags():Array<String> return [for (i in this.toolTags) i];
    function set_toolTags(v:Array<String>):Array<String> {
        this.toolTags = ([for (i in v) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>);
        return v;
    }
    public var releaseTags(get, set) : Array<String>;
    function get_releaseTags():Array<String> return [for (i in this.releaseTags) i];
    function set_releaseTags(v:Array<String>):Array<String> {
        this.releaseTags = ([for (i in v) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>);
        return v;
    }
    public var installSuffix(get, set) : String;
    function get_installSuffix():String return this.installSuffix;
    function set_installSuffix(v:String):String {
        this.installSuffix = (v : stdgo.GoString);
        return v;
    }
    public var joinPath(get, set) : haxe.Rest<String> -> String;
    function get_joinPath():haxe.Rest<String> -> String return _0 -> this.joinPath(_0);
    function set_joinPath(v:haxe.Rest<String> -> String):haxe.Rest<String> -> String {
        this.joinPath = v;
        return v;
    }
    public var splitPathList(get, set) : String -> Array<String>;
    function get_splitPathList():String -> Array<String> return _0 -> this.splitPathList(_0);
    function set_splitPathList(v:String -> Array<String>):String -> Array<String> {
        this.splitPathList = v;
        return v;
    }
    public var isAbsPath(get, set) : String -> Bool;
    function get_isAbsPath():String -> Bool return _0 -> this.isAbsPath(_0);
    function set_isAbsPath(v:String -> Bool):String -> Bool {
        this.isAbsPath = v;
        return v;
    }
    public var isDir(get, set) : String -> Bool;
    function get_isDir():String -> Bool return _0 -> this.isDir(_0);
    function set_isDir(v:String -> Bool):String -> Bool {
        this.isDir = v;
        return v;
    }
    public var hasSubdir(get, set) : (String, String) -> stdgo.Tuple<String, Bool>;
    function get_hasSubdir():(String, String) -> stdgo.Tuple<String, Bool> return (_0, _1) -> this.hasSubdir(_0, _1);
    function set_hasSubdir(v:(String, String) -> stdgo.Tuple<String, Bool>):(String, String) -> stdgo.Tuple<String, Bool> {
        this.hasSubdir = v;
        return v;
    }
    public var readDir(get, set) : String -> stdgo.Tuple<Array<stdgo._internal.io.fs.Fs_fileinfo.FileInfo>, stdgo.Error>;
    function get_readDir():String -> stdgo.Tuple<Array<stdgo._internal.io.fs.Fs_fileinfo.FileInfo>, stdgo.Error> return _0 -> this.readDir(_0);
    function set_readDir(v:String -> stdgo.Tuple<Array<stdgo._internal.io.fs.Fs_fileinfo.FileInfo>, stdgo.Error>):String -> stdgo.Tuple<Array<stdgo._internal.io.fs.Fs_fileinfo.FileInfo>, stdgo.Error> {
        this.readDir = v;
        return v;
    }
    public var openFile(get, set) : String -> stdgo.Tuple<stdgo._internal.io.Io_readcloser.ReadCloser, stdgo.Error>;
    function get_openFile():String -> stdgo.Tuple<stdgo._internal.io.Io_readcloser.ReadCloser, stdgo.Error> return _0 -> this.openFile(_0);
    function set_openFile(v:String -> stdgo.Tuple<stdgo._internal.io.Io_readcloser.ReadCloser, stdgo.Error>):String -> stdgo.Tuple<stdgo._internal.io.Io_readcloser.ReadCloser, stdgo.Error> {
        this.openFile = v;
        return v;
    }
    public function new(?gOARCH:String, ?gOOS:String, ?gOROOT:String, ?gOPATH:String, ?dir:String, ?cgoEnabled:Bool, ?useAllFiles:Bool, ?compiler:String, ?buildTags:Array<String>, ?toolTags:Array<String>, ?releaseTags:Array<String>, ?installSuffix:String, ?joinPath:haxe.Rest<String> -> String, ?splitPathList:String -> Array<String>, ?isAbsPath:String -> Bool, ?isDir:String -> Bool, ?hasSubdir:(String, String) -> stdgo.Tuple<String, Bool>, ?readDir:String -> stdgo.Tuple<Array<stdgo._internal.io.fs.Fs_fileinfo.FileInfo>, stdgo.Error>, ?openFile:String -> stdgo.Tuple<stdgo._internal.io.Io_readcloser.ReadCloser, stdgo.Error>) this = new stdgo._internal.go.build.Build_context.Context(
(gOARCH : stdgo.GoString),
(gOOS : stdgo.GoString),
(gOROOT : stdgo.GoString),
(gOPATH : stdgo.GoString),
(dir : stdgo.GoString),
cgoEnabled,
useAllFiles,
(compiler : stdgo.GoString),
([for (i in buildTags) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>),
([for (i in toolTags) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>),
([for (i in releaseTags) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>),
(installSuffix : stdgo.GoString),
joinPath,
splitPathList,
isAbsPath,
isDir,
hasSubdir,
readDir,
openFile);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.go.build.Build.Package_static_extension) abstract Package(stdgo._internal.go.build.Build_package.Package) from stdgo._internal.go.build.Build_package.Package to stdgo._internal.go.build.Build_package.Package {
    public var dir(get, set) : String;
    function get_dir():String return this.dir;
    function set_dir(v:String):String {
        this.dir = (v : stdgo.GoString);
        return v;
    }
    public var name(get, set) : String;
    function get_name():String return this.name;
    function set_name(v:String):String {
        this.name = (v : stdgo.GoString);
        return v;
    }
    public var importComment(get, set) : String;
    function get_importComment():String return this.importComment;
    function set_importComment(v:String):String {
        this.importComment = (v : stdgo.GoString);
        return v;
    }
    public var doc(get, set) : String;
    function get_doc():String return this.doc;
    function set_doc(v:String):String {
        this.doc = (v : stdgo.GoString);
        return v;
    }
    public var importPath(get, set) : String;
    function get_importPath():String return this.importPath;
    function set_importPath(v:String):String {
        this.importPath = (v : stdgo.GoString);
        return v;
    }
    public var root(get, set) : String;
    function get_root():String return this.root;
    function set_root(v:String):String {
        this.root = (v : stdgo.GoString);
        return v;
    }
    public var srcRoot(get, set) : String;
    function get_srcRoot():String return this.srcRoot;
    function set_srcRoot(v:String):String {
        this.srcRoot = (v : stdgo.GoString);
        return v;
    }
    public var pkgRoot(get, set) : String;
    function get_pkgRoot():String return this.pkgRoot;
    function set_pkgRoot(v:String):String {
        this.pkgRoot = (v : stdgo.GoString);
        return v;
    }
    public var pkgTargetRoot(get, set) : String;
    function get_pkgTargetRoot():String return this.pkgTargetRoot;
    function set_pkgTargetRoot(v:String):String {
        this.pkgTargetRoot = (v : stdgo.GoString);
        return v;
    }
    public var binDir(get, set) : String;
    function get_binDir():String return this.binDir;
    function set_binDir(v:String):String {
        this.binDir = (v : stdgo.GoString);
        return v;
    }
    public var goroot(get, set) : Bool;
    function get_goroot():Bool return this.goroot;
    function set_goroot(v:Bool):Bool {
        this.goroot = v;
        return v;
    }
    public var pkgObj(get, set) : String;
    function get_pkgObj():String return this.pkgObj;
    function set_pkgObj(v:String):String {
        this.pkgObj = (v : stdgo.GoString);
        return v;
    }
    public var allTags(get, set) : Array<String>;
    function get_allTags():Array<String> return [for (i in this.allTags) i];
    function set_allTags(v:Array<String>):Array<String> {
        this.allTags = ([for (i in v) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>);
        return v;
    }
    public var conflictDir(get, set) : String;
    function get_conflictDir():String return this.conflictDir;
    function set_conflictDir(v:String):String {
        this.conflictDir = (v : stdgo.GoString);
        return v;
    }
    public var binaryOnly(get, set) : Bool;
    function get_binaryOnly():Bool return this.binaryOnly;
    function set_binaryOnly(v:Bool):Bool {
        this.binaryOnly = v;
        return v;
    }
    public var goFiles(get, set) : Array<String>;
    function get_goFiles():Array<String> return [for (i in this.goFiles) i];
    function set_goFiles(v:Array<String>):Array<String> {
        this.goFiles = ([for (i in v) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>);
        return v;
    }
    public var cgoFiles(get, set) : Array<String>;
    function get_cgoFiles():Array<String> return [for (i in this.cgoFiles) i];
    function set_cgoFiles(v:Array<String>):Array<String> {
        this.cgoFiles = ([for (i in v) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>);
        return v;
    }
    public var ignoredGoFiles(get, set) : Array<String>;
    function get_ignoredGoFiles():Array<String> return [for (i in this.ignoredGoFiles) i];
    function set_ignoredGoFiles(v:Array<String>):Array<String> {
        this.ignoredGoFiles = ([for (i in v) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>);
        return v;
    }
    public var invalidGoFiles(get, set) : Array<String>;
    function get_invalidGoFiles():Array<String> return [for (i in this.invalidGoFiles) i];
    function set_invalidGoFiles(v:Array<String>):Array<String> {
        this.invalidGoFiles = ([for (i in v) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>);
        return v;
    }
    public var ignoredOtherFiles(get, set) : Array<String>;
    function get_ignoredOtherFiles():Array<String> return [for (i in this.ignoredOtherFiles) i];
    function set_ignoredOtherFiles(v:Array<String>):Array<String> {
        this.ignoredOtherFiles = ([for (i in v) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>);
        return v;
    }
    public var cFiles(get, set) : Array<String>;
    function get_cFiles():Array<String> return [for (i in this.cFiles) i];
    function set_cFiles(v:Array<String>):Array<String> {
        this.cFiles = ([for (i in v) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>);
        return v;
    }
    public var cXXFiles(get, set) : Array<String>;
    function get_cXXFiles():Array<String> return [for (i in this.cXXFiles) i];
    function set_cXXFiles(v:Array<String>):Array<String> {
        this.cXXFiles = ([for (i in v) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>);
        return v;
    }
    public var mFiles(get, set) : Array<String>;
    function get_mFiles():Array<String> return [for (i in this.mFiles) i];
    function set_mFiles(v:Array<String>):Array<String> {
        this.mFiles = ([for (i in v) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>);
        return v;
    }
    public var hFiles(get, set) : Array<String>;
    function get_hFiles():Array<String> return [for (i in this.hFiles) i];
    function set_hFiles(v:Array<String>):Array<String> {
        this.hFiles = ([for (i in v) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>);
        return v;
    }
    public var fFiles(get, set) : Array<String>;
    function get_fFiles():Array<String> return [for (i in this.fFiles) i];
    function set_fFiles(v:Array<String>):Array<String> {
        this.fFiles = ([for (i in v) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>);
        return v;
    }
    public var sFiles(get, set) : Array<String>;
    function get_sFiles():Array<String> return [for (i in this.sFiles) i];
    function set_sFiles(v:Array<String>):Array<String> {
        this.sFiles = ([for (i in v) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>);
        return v;
    }
    public var swigFiles(get, set) : Array<String>;
    function get_swigFiles():Array<String> return [for (i in this.swigFiles) i];
    function set_swigFiles(v:Array<String>):Array<String> {
        this.swigFiles = ([for (i in v) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>);
        return v;
    }
    public var swigCXXFiles(get, set) : Array<String>;
    function get_swigCXXFiles():Array<String> return [for (i in this.swigCXXFiles) i];
    function set_swigCXXFiles(v:Array<String>):Array<String> {
        this.swigCXXFiles = ([for (i in v) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>);
        return v;
    }
    public var sysoFiles(get, set) : Array<String>;
    function get_sysoFiles():Array<String> return [for (i in this.sysoFiles) i];
    function set_sysoFiles(v:Array<String>):Array<String> {
        this.sysoFiles = ([for (i in v) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>);
        return v;
    }
    public var cgoCFLAGS(get, set) : Array<String>;
    function get_cgoCFLAGS():Array<String> return [for (i in this.cgoCFLAGS) i];
    function set_cgoCFLAGS(v:Array<String>):Array<String> {
        this.cgoCFLAGS = ([for (i in v) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>);
        return v;
    }
    public var cgoCPPFLAGS(get, set) : Array<String>;
    function get_cgoCPPFLAGS():Array<String> return [for (i in this.cgoCPPFLAGS) i];
    function set_cgoCPPFLAGS(v:Array<String>):Array<String> {
        this.cgoCPPFLAGS = ([for (i in v) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>);
        return v;
    }
    public var cgoCXXFLAGS(get, set) : Array<String>;
    function get_cgoCXXFLAGS():Array<String> return [for (i in this.cgoCXXFLAGS) i];
    function set_cgoCXXFLAGS(v:Array<String>):Array<String> {
        this.cgoCXXFLAGS = ([for (i in v) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>);
        return v;
    }
    public var cgoFFLAGS(get, set) : Array<String>;
    function get_cgoFFLAGS():Array<String> return [for (i in this.cgoFFLAGS) i];
    function set_cgoFFLAGS(v:Array<String>):Array<String> {
        this.cgoFFLAGS = ([for (i in v) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>);
        return v;
    }
    public var cgoLDFLAGS(get, set) : Array<String>;
    function get_cgoLDFLAGS():Array<String> return [for (i in this.cgoLDFLAGS) i];
    function set_cgoLDFLAGS(v:Array<String>):Array<String> {
        this.cgoLDFLAGS = ([for (i in v) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>);
        return v;
    }
    public var cgoPkgConfig(get, set) : Array<String>;
    function get_cgoPkgConfig():Array<String> return [for (i in this.cgoPkgConfig) i];
    function set_cgoPkgConfig(v:Array<String>):Array<String> {
        this.cgoPkgConfig = ([for (i in v) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>);
        return v;
    }
    public var testGoFiles(get, set) : Array<String>;
    function get_testGoFiles():Array<String> return [for (i in this.testGoFiles) i];
    function set_testGoFiles(v:Array<String>):Array<String> {
        this.testGoFiles = ([for (i in v) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>);
        return v;
    }
    public var xTestGoFiles(get, set) : Array<String>;
    function get_xTestGoFiles():Array<String> return [for (i in this.xTestGoFiles) i];
    function set_xTestGoFiles(v:Array<String>):Array<String> {
        this.xTestGoFiles = ([for (i in v) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>);
        return v;
    }
    public var directives(get, set) : Array<Directive>;
    function get_directives():Array<Directive> return [for (i in this.directives) i];
    function set_directives(v:Array<Directive>):Array<Directive> {
        this.directives = ([for (i in v) i] : stdgo.Slice<stdgo._internal.go.build.Build_directive.Directive>);
        return v;
    }
    public var testDirectives(get, set) : Array<Directive>;
    function get_testDirectives():Array<Directive> return [for (i in this.testDirectives) i];
    function set_testDirectives(v:Array<Directive>):Array<Directive> {
        this.testDirectives = ([for (i in v) i] : stdgo.Slice<stdgo._internal.go.build.Build_directive.Directive>);
        return v;
    }
    public var xTestDirectives(get, set) : Array<Directive>;
    function get_xTestDirectives():Array<Directive> return [for (i in this.xTestDirectives) i];
    function set_xTestDirectives(v:Array<Directive>):Array<Directive> {
        this.xTestDirectives = ([for (i in v) i] : stdgo.Slice<stdgo._internal.go.build.Build_directive.Directive>);
        return v;
    }
    public var imports(get, set) : Array<String>;
    function get_imports():Array<String> return [for (i in this.imports) i];
    function set_imports(v:Array<String>):Array<String> {
        this.imports = ([for (i in v) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>);
        return v;
    }
    public var importPos(get, set) : Map<String, Array<stdgo._internal.go.token.Token_position.Position>>;
    function get_importPos():Map<String, Array<stdgo._internal.go.token.Token_position.Position>> return {
        final __obj__:Map<String, Array<stdgo._internal.go.token.Token_position.Position>> = [];
        for (key => value in this.importPos) {
            __obj__[key] = [for (i in value) i];
        };
        __obj__;
    };
    function set_importPos(v:Map<String, Array<stdgo._internal.go.token.Token_position.Position>>):Map<String, Array<stdgo._internal.go.token.Token_position.Position>> {
        this.importPos = {
            final __obj__ = new stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo._internal.go.token.Token_position.Position>>();
            for (key => value in v) {
                __obj__[(key : stdgo.GoString)] = ([for (i in value) i] : stdgo.Slice<stdgo._internal.go.token.Token_position.Position>);
            };
            __obj__;
        };
        return v;
    }
    public var testImports(get, set) : Array<String>;
    function get_testImports():Array<String> return [for (i in this.testImports) i];
    function set_testImports(v:Array<String>):Array<String> {
        this.testImports = ([for (i in v) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>);
        return v;
    }
    public var testImportPos(get, set) : Map<String, Array<stdgo._internal.go.token.Token_position.Position>>;
    function get_testImportPos():Map<String, Array<stdgo._internal.go.token.Token_position.Position>> return {
        final __obj__:Map<String, Array<stdgo._internal.go.token.Token_position.Position>> = [];
        for (key => value in this.testImportPos) {
            __obj__[key] = [for (i in value) i];
        };
        __obj__;
    };
    function set_testImportPos(v:Map<String, Array<stdgo._internal.go.token.Token_position.Position>>):Map<String, Array<stdgo._internal.go.token.Token_position.Position>> {
        this.testImportPos = {
            final __obj__ = new stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo._internal.go.token.Token_position.Position>>();
            for (key => value in v) {
                __obj__[(key : stdgo.GoString)] = ([for (i in value) i] : stdgo.Slice<stdgo._internal.go.token.Token_position.Position>);
            };
            __obj__;
        };
        return v;
    }
    public var xTestImports(get, set) : Array<String>;
    function get_xTestImports():Array<String> return [for (i in this.xTestImports) i];
    function set_xTestImports(v:Array<String>):Array<String> {
        this.xTestImports = ([for (i in v) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>);
        return v;
    }
    public var xTestImportPos(get, set) : Map<String, Array<stdgo._internal.go.token.Token_position.Position>>;
    function get_xTestImportPos():Map<String, Array<stdgo._internal.go.token.Token_position.Position>> return {
        final __obj__:Map<String, Array<stdgo._internal.go.token.Token_position.Position>> = [];
        for (key => value in this.xTestImportPos) {
            __obj__[key] = [for (i in value) i];
        };
        __obj__;
    };
    function set_xTestImportPos(v:Map<String, Array<stdgo._internal.go.token.Token_position.Position>>):Map<String, Array<stdgo._internal.go.token.Token_position.Position>> {
        this.xTestImportPos = {
            final __obj__ = new stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo._internal.go.token.Token_position.Position>>();
            for (key => value in v) {
                __obj__[(key : stdgo.GoString)] = ([for (i in value) i] : stdgo.Slice<stdgo._internal.go.token.Token_position.Position>);
            };
            __obj__;
        };
        return v;
    }
    public var embedPatterns(get, set) : Array<String>;
    function get_embedPatterns():Array<String> return [for (i in this.embedPatterns) i];
    function set_embedPatterns(v:Array<String>):Array<String> {
        this.embedPatterns = ([for (i in v) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>);
        return v;
    }
    public var embedPatternPos(get, set) : Map<String, Array<stdgo._internal.go.token.Token_position.Position>>;
    function get_embedPatternPos():Map<String, Array<stdgo._internal.go.token.Token_position.Position>> return {
        final __obj__:Map<String, Array<stdgo._internal.go.token.Token_position.Position>> = [];
        for (key => value in this.embedPatternPos) {
            __obj__[key] = [for (i in value) i];
        };
        __obj__;
    };
    function set_embedPatternPos(v:Map<String, Array<stdgo._internal.go.token.Token_position.Position>>):Map<String, Array<stdgo._internal.go.token.Token_position.Position>> {
        this.embedPatternPos = {
            final __obj__ = new stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo._internal.go.token.Token_position.Position>>();
            for (key => value in v) {
                __obj__[(key : stdgo.GoString)] = ([for (i in value) i] : stdgo.Slice<stdgo._internal.go.token.Token_position.Position>);
            };
            __obj__;
        };
        return v;
    }
    public var testEmbedPatterns(get, set) : Array<String>;
    function get_testEmbedPatterns():Array<String> return [for (i in this.testEmbedPatterns) i];
    function set_testEmbedPatterns(v:Array<String>):Array<String> {
        this.testEmbedPatterns = ([for (i in v) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>);
        return v;
    }
    public var testEmbedPatternPos(get, set) : Map<String, Array<stdgo._internal.go.token.Token_position.Position>>;
    function get_testEmbedPatternPos():Map<String, Array<stdgo._internal.go.token.Token_position.Position>> return {
        final __obj__:Map<String, Array<stdgo._internal.go.token.Token_position.Position>> = [];
        for (key => value in this.testEmbedPatternPos) {
            __obj__[key] = [for (i in value) i];
        };
        __obj__;
    };
    function set_testEmbedPatternPos(v:Map<String, Array<stdgo._internal.go.token.Token_position.Position>>):Map<String, Array<stdgo._internal.go.token.Token_position.Position>> {
        this.testEmbedPatternPos = {
            final __obj__ = new stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo._internal.go.token.Token_position.Position>>();
            for (key => value in v) {
                __obj__[(key : stdgo.GoString)] = ([for (i in value) i] : stdgo.Slice<stdgo._internal.go.token.Token_position.Position>);
            };
            __obj__;
        };
        return v;
    }
    public var xTestEmbedPatterns(get, set) : Array<String>;
    function get_xTestEmbedPatterns():Array<String> return [for (i in this.xTestEmbedPatterns) i];
    function set_xTestEmbedPatterns(v:Array<String>):Array<String> {
        this.xTestEmbedPatterns = ([for (i in v) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>);
        return v;
    }
    public var xTestEmbedPatternPos(get, set) : Map<String, Array<stdgo._internal.go.token.Token_position.Position>>;
    function get_xTestEmbedPatternPos():Map<String, Array<stdgo._internal.go.token.Token_position.Position>> return {
        final __obj__:Map<String, Array<stdgo._internal.go.token.Token_position.Position>> = [];
        for (key => value in this.xTestEmbedPatternPos) {
            __obj__[key] = [for (i in value) i];
        };
        __obj__;
    };
    function set_xTestEmbedPatternPos(v:Map<String, Array<stdgo._internal.go.token.Token_position.Position>>):Map<String, Array<stdgo._internal.go.token.Token_position.Position>> {
        this.xTestEmbedPatternPos = {
            final __obj__ = new stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo._internal.go.token.Token_position.Position>>();
            for (key => value in v) {
                __obj__[(key : stdgo.GoString)] = ([for (i in value) i] : stdgo.Slice<stdgo._internal.go.token.Token_position.Position>);
            };
            __obj__;
        };
        return v;
    }
    public function new(?dir:String, ?name:String, ?importComment:String, ?doc:String, ?importPath:String, ?root:String, ?srcRoot:String, ?pkgRoot:String, ?pkgTargetRoot:String, ?binDir:String, ?goroot:Bool, ?pkgObj:String, ?allTags:Array<String>, ?conflictDir:String, ?binaryOnly:Bool, ?goFiles:Array<String>, ?cgoFiles:Array<String>, ?ignoredGoFiles:Array<String>, ?invalidGoFiles:Array<String>, ?ignoredOtherFiles:Array<String>, ?cFiles:Array<String>, ?cXXFiles:Array<String>, ?mFiles:Array<String>, ?hFiles:Array<String>, ?fFiles:Array<String>, ?sFiles:Array<String>, ?swigFiles:Array<String>, ?swigCXXFiles:Array<String>, ?sysoFiles:Array<String>, ?cgoCFLAGS:Array<String>, ?cgoCPPFLAGS:Array<String>, ?cgoCXXFLAGS:Array<String>, ?cgoFFLAGS:Array<String>, ?cgoLDFLAGS:Array<String>, ?cgoPkgConfig:Array<String>, ?testGoFiles:Array<String>, ?xTestGoFiles:Array<String>, ?directives:Array<Directive>, ?testDirectives:Array<Directive>, ?xTestDirectives:Array<Directive>, ?imports:Array<String>, ?importPos:Map<String, Array<stdgo._internal.go.token.Token_position.Position>>, ?testImports:Array<String>, ?testImportPos:Map<String, Array<stdgo._internal.go.token.Token_position.Position>>, ?xTestImports:Array<String>, ?xTestImportPos:Map<String, Array<stdgo._internal.go.token.Token_position.Position>>, ?embedPatterns:Array<String>, ?embedPatternPos:Map<String, Array<stdgo._internal.go.token.Token_position.Position>>, ?testEmbedPatterns:Array<String>, ?testEmbedPatternPos:Map<String, Array<stdgo._internal.go.token.Token_position.Position>>, ?xTestEmbedPatterns:Array<String>, ?xTestEmbedPatternPos:Map<String, Array<stdgo._internal.go.token.Token_position.Position>>) this = new stdgo._internal.go.build.Build_package.Package(
(dir : stdgo.GoString),
(name : stdgo.GoString),
(importComment : stdgo.GoString),
(doc : stdgo.GoString),
(importPath : stdgo.GoString),
(root : stdgo.GoString),
(srcRoot : stdgo.GoString),
(pkgRoot : stdgo.GoString),
(pkgTargetRoot : stdgo.GoString),
(binDir : stdgo.GoString),
goroot,
(pkgObj : stdgo.GoString),
([for (i in allTags) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>),
(conflictDir : stdgo.GoString),
binaryOnly,
([for (i in goFiles) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>),
([for (i in cgoFiles) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>),
([for (i in ignoredGoFiles) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>),
([for (i in invalidGoFiles) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>),
([for (i in ignoredOtherFiles) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>),
([for (i in cFiles) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>),
([for (i in cXXFiles) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>),
([for (i in mFiles) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>),
([for (i in hFiles) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>),
([for (i in fFiles) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>),
([for (i in sFiles) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>),
([for (i in swigFiles) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>),
([for (i in swigCXXFiles) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>),
([for (i in sysoFiles) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>),
([for (i in cgoCFLAGS) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>),
([for (i in cgoCPPFLAGS) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>),
([for (i in cgoCXXFLAGS) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>),
([for (i in cgoFFLAGS) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>),
([for (i in cgoLDFLAGS) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>),
([for (i in cgoPkgConfig) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>),
([for (i in testGoFiles) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>),
([for (i in xTestGoFiles) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>),
([for (i in directives) i] : stdgo.Slice<stdgo._internal.go.build.Build_directive.Directive>),
([for (i in testDirectives) i] : stdgo.Slice<stdgo._internal.go.build.Build_directive.Directive>),
([for (i in xTestDirectives) i] : stdgo.Slice<stdgo._internal.go.build.Build_directive.Directive>),
([for (i in imports) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>),
{
        final __obj__ = new stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo._internal.go.token.Token_position.Position>>();
        for (key => value in importPos) {
            __obj__[(key : stdgo.GoString)] = ([for (i in value) i] : stdgo.Slice<stdgo._internal.go.token.Token_position.Position>);
        };
        __obj__;
    },
([for (i in testImports) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>),
{
        final __obj__ = new stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo._internal.go.token.Token_position.Position>>();
        for (key => value in testImportPos) {
            __obj__[(key : stdgo.GoString)] = ([for (i in value) i] : stdgo.Slice<stdgo._internal.go.token.Token_position.Position>);
        };
        __obj__;
    },
([for (i in xTestImports) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>),
{
        final __obj__ = new stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo._internal.go.token.Token_position.Position>>();
        for (key => value in xTestImportPos) {
            __obj__[(key : stdgo.GoString)] = ([for (i in value) i] : stdgo.Slice<stdgo._internal.go.token.Token_position.Position>);
        };
        __obj__;
    },
([for (i in embedPatterns) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>),
{
        final __obj__ = new stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo._internal.go.token.Token_position.Position>>();
        for (key => value in embedPatternPos) {
            __obj__[(key : stdgo.GoString)] = ([for (i in value) i] : stdgo.Slice<stdgo._internal.go.token.Token_position.Position>);
        };
        __obj__;
    },
([for (i in testEmbedPatterns) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>),
{
        final __obj__ = new stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo._internal.go.token.Token_position.Position>>();
        for (key => value in testEmbedPatternPos) {
            __obj__[(key : stdgo.GoString)] = ([for (i in value) i] : stdgo.Slice<stdgo._internal.go.token.Token_position.Position>);
        };
        __obj__;
    },
([for (i in xTestEmbedPatterns) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>),
{
        final __obj__ = new stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo._internal.go.token.Token_position.Position>>();
        for (key => value in xTestEmbedPatternPos) {
            __obj__[(key : stdgo.GoString)] = ([for (i in value) i] : stdgo.Slice<stdgo._internal.go.token.Token_position.Position>);
        };
        __obj__;
    });
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.go.build.Build.Directive_static_extension) abstract Directive(stdgo._internal.go.build.Build_directive.Directive) from stdgo._internal.go.build.Build_directive.Directive to stdgo._internal.go.build.Build_directive.Directive {
    public var text(get, set) : String;
    function get_text():String return this.text;
    function set_text(v:String):String {
        this.text = (v : stdgo.GoString);
        return v;
    }
    public var pos(get, set) : stdgo._internal.go.token.Token_position.Position;
    function get_pos():stdgo._internal.go.token.Token_position.Position return this.pos;
    function set_pos(v:stdgo._internal.go.token.Token_position.Position):stdgo._internal.go.token.Token_position.Position {
        this.pos = v;
        return v;
    }
    public function new(?text:String, ?pos:stdgo._internal.go.token.Token_position.Position) this = new stdgo._internal.go.build.Build_directive.Directive((text : stdgo.GoString), pos);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.go.build.Build.NoGoError_static_extension) abstract NoGoError(stdgo._internal.go.build.Build_nogoerror.NoGoError) from stdgo._internal.go.build.Build_nogoerror.NoGoError to stdgo._internal.go.build.Build_nogoerror.NoGoError {
    public var dir(get, set) : String;
    function get_dir():String return this.dir;
    function set_dir(v:String):String {
        this.dir = (v : stdgo.GoString);
        return v;
    }
    public function new(?dir:String) this = new stdgo._internal.go.build.Build_nogoerror.NoGoError((dir : stdgo.GoString));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.go.build.Build.MultiplePackageError_static_extension) abstract MultiplePackageError(stdgo._internal.go.build.Build_multiplepackageerror.MultiplePackageError) from stdgo._internal.go.build.Build_multiplepackageerror.MultiplePackageError to stdgo._internal.go.build.Build_multiplepackageerror.MultiplePackageError {
    public var dir(get, set) : String;
    function get_dir():String return this.dir;
    function set_dir(v:String):String {
        this.dir = (v : stdgo.GoString);
        return v;
    }
    public var packages(get, set) : Array<String>;
    function get_packages():Array<String> return [for (i in this.packages) i];
    function set_packages(v:Array<String>):Array<String> {
        this.packages = ([for (i in v) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>);
        return v;
    }
    public var files(get, set) : Array<String>;
    function get_files():Array<String> return [for (i in this.files) i];
    function set_files(v:Array<String>):Array<String> {
        this.files = ([for (i in v) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>);
        return v;
    }
    public function new(?dir:String, ?packages:Array<String>, ?files:Array<String>) this = new stdgo._internal.go.build.Build_multiplepackageerror.MultiplePackageError((dir : stdgo.GoString), ([for (i in packages) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>), ([for (i in files) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.go.build.Build.T_fileInfo_static_extension) @:dox(hide) abstract T_fileInfo(stdgo._internal.go.build.Build_t_fileinfo.T_fileInfo) from stdgo._internal.go.build.Build_t_fileinfo.T_fileInfo to stdgo._internal.go.build.Build_t_fileinfo.T_fileInfo {
    public var _name(get, set) : String;
    function get__name():String return this._name;
    function set__name(v:String):String {
        this._name = (v : stdgo.GoString);
        return v;
    }
    public var _header(get, set) : Array<std.UInt>;
    function get__header():Array<std.UInt> return [for (i in this._header) i];
    function set__header(v:Array<std.UInt>):Array<std.UInt> {
        this._header = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var _fset(get, set) : stdgo._internal.go.token.Token_fileset.FileSet;
    function get__fset():stdgo._internal.go.token.Token_fileset.FileSet return this._fset;
    function set__fset(v:stdgo._internal.go.token.Token_fileset.FileSet):stdgo._internal.go.token.Token_fileset.FileSet {
        this._fset = (v : stdgo.Ref<stdgo._internal.go.token.Token_fileset.FileSet>);
        return v;
    }
    public var _parsed(get, set) : stdgo._internal.go.ast.Ast_file.File;
    function get__parsed():stdgo._internal.go.ast.Ast_file.File return this._parsed;
    function set__parsed(v:stdgo._internal.go.ast.Ast_file.File):stdgo._internal.go.ast.Ast_file.File {
        this._parsed = (v : stdgo.Ref<stdgo._internal.go.ast.Ast_file.File>);
        return v;
    }
    public var _parseErr(get, set) : stdgo.Error;
    function get__parseErr():stdgo.Error return this._parseErr;
    function set__parseErr(v:stdgo.Error):stdgo.Error {
        this._parseErr = (v : stdgo.Error);
        return v;
    }
    public var _imports(get, set) : Array<T_fileImport>;
    function get__imports():Array<T_fileImport> return [for (i in this._imports) i];
    function set__imports(v:Array<T_fileImport>):Array<T_fileImport> {
        this._imports = ([for (i in v) i] : stdgo.Slice<stdgo._internal.go.build.Build_t_fileimport.T_fileImport>);
        return v;
    }
    public var _embeds(get, set) : Array<T_fileEmbed>;
    function get__embeds():Array<T_fileEmbed> return [for (i in this._embeds) i];
    function set__embeds(v:Array<T_fileEmbed>):Array<T_fileEmbed> {
        this._embeds = ([for (i in v) i] : stdgo.Slice<stdgo._internal.go.build.Build_t_fileembed.T_fileEmbed>);
        return v;
    }
    public var _directives(get, set) : Array<Directive>;
    function get__directives():Array<Directive> return [for (i in this._directives) i];
    function set__directives(v:Array<Directive>):Array<Directive> {
        this._directives = ([for (i in v) i] : stdgo.Slice<stdgo._internal.go.build.Build_directive.Directive>);
        return v;
    }
    public function new(?_name:String, ?_header:Array<std.UInt>, ?_fset:stdgo._internal.go.token.Token_fileset.FileSet, ?_parsed:stdgo._internal.go.ast.Ast_file.File, ?_parseErr:stdgo.Error, ?_imports:Array<T_fileImport>, ?_embeds:Array<T_fileEmbed>, ?_directives:Array<Directive>) this = new stdgo._internal.go.build.Build_t_fileinfo.T_fileInfo((_name : stdgo.GoString), ([for (i in _header) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>), (_fset : stdgo.Ref<stdgo._internal.go.token.Token_fileset.FileSet>), (_parsed : stdgo.Ref<stdgo._internal.go.ast.Ast_file.File>), (_parseErr : stdgo.Error), ([for (i in _imports) i] : stdgo.Slice<stdgo._internal.go.build.Build_t_fileimport.T_fileImport>), ([for (i in _embeds) i] : stdgo.Slice<stdgo._internal.go.build.Build_t_fileembed.T_fileEmbed>), ([for (i in _directives) i] : stdgo.Slice<stdgo._internal.go.build.Build_directive.Directive>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.go.build.Build.T_fileImport_static_extension) @:dox(hide) abstract T_fileImport(stdgo._internal.go.build.Build_t_fileimport.T_fileImport) from stdgo._internal.go.build.Build_t_fileimport.T_fileImport to stdgo._internal.go.build.Build_t_fileimport.T_fileImport {
    public var _path(get, set) : String;
    function get__path():String return this._path;
    function set__path(v:String):String {
        this._path = (v : stdgo.GoString);
        return v;
    }
    public var _pos(get, set) : stdgo._internal.go.token.Token_pos.Pos;
    function get__pos():stdgo._internal.go.token.Token_pos.Pos return this._pos;
    function set__pos(v:stdgo._internal.go.token.Token_pos.Pos):stdgo._internal.go.token.Token_pos.Pos {
        this._pos = v;
        return v;
    }
    public var _doc(get, set) : stdgo._internal.go.ast.Ast_commentgroup.CommentGroup;
    function get__doc():stdgo._internal.go.ast.Ast_commentgroup.CommentGroup return this._doc;
    function set__doc(v:stdgo._internal.go.ast.Ast_commentgroup.CommentGroup):stdgo._internal.go.ast.Ast_commentgroup.CommentGroup {
        this._doc = (v : stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>);
        return v;
    }
    public function new(?_path:String, ?_pos:stdgo._internal.go.token.Token_pos.Pos, ?_doc:stdgo._internal.go.ast.Ast_commentgroup.CommentGroup) this = new stdgo._internal.go.build.Build_t_fileimport.T_fileImport((_path : stdgo.GoString), _pos, (_doc : stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.go.build.Build.T_fileEmbed_static_extension) @:dox(hide) abstract T_fileEmbed(stdgo._internal.go.build.Build_t_fileembed.T_fileEmbed) from stdgo._internal.go.build.Build_t_fileembed.T_fileEmbed to stdgo._internal.go.build.Build_t_fileembed.T_fileEmbed {
    public var _pattern(get, set) : String;
    function get__pattern():String return this._pattern;
    function set__pattern(v:String):String {
        this._pattern = (v : stdgo.GoString);
        return v;
    }
    public var _pos(get, set) : stdgo._internal.go.token.Token_position.Position;
    function get__pos():stdgo._internal.go.token.Token_position.Position return this._pos;
    function set__pos(v:stdgo._internal.go.token.Token_position.Position):stdgo._internal.go.token.Token_position.Position {
        this._pos = v;
        return v;
    }
    public function new(?_pattern:String, ?_pos:stdgo._internal.go.token.Token_position.Position) this = new stdgo._internal.go.build.Build_t_fileembed.T_fileEmbed((_pattern : stdgo.GoString), _pos);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.go.build.Build.T_importReader_static_extension) @:dox(hide) abstract T_importReader(stdgo._internal.go.build.Build_t_importreader.T_importReader) from stdgo._internal.go.build.Build_t_importreader.T_importReader to stdgo._internal.go.build.Build_t_importreader.T_importReader {
    public var _b(get, set) : stdgo._internal.bufio.Bufio_reader.Reader;
    function get__b():stdgo._internal.bufio.Bufio_reader.Reader return this._b;
    function set__b(v:stdgo._internal.bufio.Bufio_reader.Reader):stdgo._internal.bufio.Bufio_reader.Reader {
        this._b = (v : stdgo.Ref<stdgo._internal.bufio.Bufio_reader.Reader>);
        return v;
    }
    public var _buf(get, set) : Array<std.UInt>;
    function get__buf():Array<std.UInt> return [for (i in this._buf) i];
    function set__buf(v:Array<std.UInt>):Array<std.UInt> {
        this._buf = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var _peek(get, set) : std.UInt;
    function get__peek():std.UInt return this._peek;
    function set__peek(v:std.UInt):std.UInt {
        this._peek = (v : stdgo.GoUInt8);
        return v;
    }
    public var _err(get, set) : stdgo.Error;
    function get__err():stdgo.Error return this._err;
    function set__err(v:stdgo.Error):stdgo.Error {
        this._err = (v : stdgo.Error);
        return v;
    }
    public var _eof(get, set) : Bool;
    function get__eof():Bool return this._eof;
    function set__eof(v:Bool):Bool {
        this._eof = v;
        return v;
    }
    public var _nerr(get, set) : StdTypes.Int;
    function get__nerr():StdTypes.Int return this._nerr;
    function set__nerr(v:StdTypes.Int):StdTypes.Int {
        this._nerr = (v : stdgo.GoInt);
        return v;
    }
    public var _pos(get, set) : stdgo._internal.go.token.Token_position.Position;
    function get__pos():stdgo._internal.go.token.Token_position.Position return this._pos;
    function set__pos(v:stdgo._internal.go.token.Token_position.Position):stdgo._internal.go.token.Token_position.Position {
        this._pos = v;
        return v;
    }
    public function new(?_b:stdgo._internal.bufio.Bufio_reader.Reader, ?_buf:Array<std.UInt>, ?_peek:std.UInt, ?_err:stdgo.Error, ?_eof:Bool, ?_nerr:StdTypes.Int, ?_pos:stdgo._internal.go.token.Token_position.Position) this = new stdgo._internal.go.build.Build_t_importreader.T_importReader((_b : stdgo.Ref<stdgo._internal.bufio.Bufio_reader.Reader>), ([for (i in _buf) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>), (_peek : stdgo.GoUInt8), (_err : stdgo.Error), _eof, (_nerr : stdgo.GoInt), _pos);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:dox(hide) typedef T__struct_0Pointer = stdgo._internal.go.build.Build_t__struct_0pointer.T__struct_0Pointer;
@:dox(hide) class T__struct_0_static_extension {

}
@:dox(hide) typedef T__struct_0 = stdgo._internal.go.build.Build_t__struct_0.T__struct_0;
typedef ImportMode = stdgo._internal.go.build.Build_importmode.ImportMode;
typedef ContextPointer = stdgo._internal.go.build.Build_contextpointer.ContextPointer;
class Context_static_extension {
    static public function _goodOSArchFile(_ctxt:Context, _name:String, _allTags:Map<String, Bool>):Bool {
        final _ctxt = (_ctxt : stdgo.Ref<stdgo._internal.go.build.Build_context.Context>);
        final _name = (_name : stdgo.GoString);
        final _allTags = {
            final __obj__ = new stdgo.GoMap<stdgo.GoString, Bool>();
            for (key => value in _allTags) {
                __obj__[(key : stdgo.GoString)] = value;
            };
            __obj__;
        };
        return stdgo._internal.go.build.Build_context_static_extension.Context_static_extension._goodOSArchFile(_ctxt, _name, _allTags);
    }
    static public function _matchTag(_ctxt:Context, _name:String, _allTags:Map<String, Bool>):Bool {
        final _ctxt = (_ctxt : stdgo.Ref<stdgo._internal.go.build.Build_context.Context>);
        final _name = (_name : stdgo.GoString);
        final _allTags = {
            final __obj__ = new stdgo.GoMap<stdgo.GoString, Bool>();
            for (key => value in _allTags) {
                __obj__[(key : stdgo.GoString)] = value;
            };
            __obj__;
        };
        return stdgo._internal.go.build.Build_context_static_extension.Context_static_extension._matchTag(_ctxt, _name, _allTags);
    }
    static public function _eval(_ctxt:Context, _x:stdgo._internal.go.build.constraint.Constraint_expr.Expr, _allTags:Map<String, Bool>):Bool {
        final _ctxt = (_ctxt : stdgo.Ref<stdgo._internal.go.build.Build_context.Context>);
        final _allTags = {
            final __obj__ = new stdgo.GoMap<stdgo.GoString, Bool>();
            for (key => value in _allTags) {
                __obj__[(key : stdgo.GoString)] = value;
            };
            __obj__;
        };
        return stdgo._internal.go.build.Build_context_static_extension.Context_static_extension._eval(_ctxt, _x, _allTags);
    }
    static public function _matchAuto(_ctxt:Context, _text:String, _allTags:Map<String, Bool>):Bool {
        final _ctxt = (_ctxt : stdgo.Ref<stdgo._internal.go.build.Build_context.Context>);
        final _text = (_text : stdgo.GoString);
        final _allTags = {
            final __obj__ = new stdgo.GoMap<stdgo.GoString, Bool>();
            for (key => value in _allTags) {
                __obj__[(key : stdgo.GoString)] = value;
            };
            __obj__;
        };
        return stdgo._internal.go.build.Build_context_static_extension.Context_static_extension._matchAuto(_ctxt, _text, _allTags);
    }
    static public function _makePathsAbsolute(_ctxt:Context, _args:Array<String>, _srcDir:String):Void {
        final _ctxt = (_ctxt : stdgo.Ref<stdgo._internal.go.build.Build_context.Context>);
        final _args = ([for (i in _args) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>);
        final _srcDir = (_srcDir : stdgo.GoString);
        stdgo._internal.go.build.Build_context_static_extension.Context_static_extension._makePathsAbsolute(_ctxt, _args, _srcDir);
    }
    static public function _saveCgo(_ctxt:Context, _filename:String, _di:Package, _cg:stdgo._internal.go.ast.Ast_commentgroup.CommentGroup):stdgo.Error {
        final _ctxt = (_ctxt : stdgo.Ref<stdgo._internal.go.build.Build_context.Context>);
        final _filename = (_filename : stdgo.GoString);
        final _di = (_di : stdgo.Ref<stdgo._internal.go.build.Build_package.Package>);
        final _cg = (_cg : stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>);
        return stdgo._internal.go.build.Build_context_static_extension.Context_static_extension._saveCgo(_ctxt, _filename, _di, _cg);
    }
    static public function _shouldBuild(_ctxt:Context, _content:Array<std.UInt>, _allTags:Map<String, Bool>):stdgo.Tuple.Tuple3<Bool, Bool, stdgo.Error> {
        final _ctxt = (_ctxt : stdgo.Ref<stdgo._internal.go.build.Build_context.Context>);
        final _content = ([for (i in _content) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _allTags = {
            final __obj__ = new stdgo.GoMap<stdgo.GoString, Bool>();
            for (key => value in _allTags) {
                __obj__[(key : stdgo.GoString)] = value;
            };
            __obj__;
        };
        return {
            final obj = stdgo._internal.go.build.Build_context_static_extension.Context_static_extension._shouldBuild(_ctxt, _content, _allTags);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    static public function _matchFile(_ctxt:Context, _dir:String, _name:String, _allTags:Map<String, Bool>, _binaryOnly:stdgo.Pointer<Bool>, _fset:stdgo._internal.go.token.Token_fileset.FileSet):stdgo.Tuple<T_fileInfo, stdgo.Error> {
        final _ctxt = (_ctxt : stdgo.Ref<stdgo._internal.go.build.Build_context.Context>);
        final _dir = (_dir : stdgo.GoString);
        final _name = (_name : stdgo.GoString);
        final _allTags = {
            final __obj__ = new stdgo.GoMap<stdgo.GoString, Bool>();
            for (key => value in _allTags) {
                __obj__[(key : stdgo.GoString)] = value;
            };
            __obj__;
        };
        final _fset = (_fset : stdgo.Ref<stdgo._internal.go.token.Token_fileset.FileSet>);
        return {
            final obj = stdgo._internal.go.build.Build_context_static_extension.Context_static_extension._matchFile(_ctxt, _dir, _name, _allTags, _binaryOnly, _fset);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function matchFile(_ctxt:Context, _dir:String, _name:String):stdgo.Tuple<Bool, stdgo.Error> {
        final _ctxt = (_ctxt : stdgo.Ref<stdgo._internal.go.build.Build_context.Context>);
        final _dir = (_dir : stdgo.GoString);
        final _name = (_name : stdgo.GoString);
        return {
            final obj = stdgo._internal.go.build.Build_context_static_extension.Context_static_extension.matchFile(_ctxt, _dir, _name);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _importGo(_ctxt:Context, _p:Package, _path:String, _srcDir:String, _mode:ImportMode):stdgo.Error {
        final _ctxt = (_ctxt : stdgo.Ref<stdgo._internal.go.build.Build_context.Context>);
        final _p = (_p : stdgo.Ref<stdgo._internal.go.build.Build_package.Package>);
        final _path = (_path : stdgo.GoString);
        final _srcDir = (_srcDir : stdgo.GoString);
        return stdgo._internal.go.build.Build_context_static_extension.Context_static_extension._importGo(_ctxt, _p, _path, _srcDir, _mode);
    }
    static public function import_(_ctxt:Context, _path:String, _srcDir:String, _mode:ImportMode):stdgo.Tuple<Package, stdgo.Error> {
        final _ctxt = (_ctxt : stdgo.Ref<stdgo._internal.go.build.Build_context.Context>);
        final _path = (_path : stdgo.GoString);
        final _srcDir = (_srcDir : stdgo.GoString);
        return {
            final obj = stdgo._internal.go.build.Build_context_static_extension.Context_static_extension.import_(_ctxt, _path, _srcDir, _mode);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function importDir(_ctxt:Context, _dir:String, _mode:ImportMode):stdgo.Tuple<Package, stdgo.Error> {
        final _ctxt = (_ctxt : stdgo.Ref<stdgo._internal.go.build.Build_context.Context>);
        final _dir = (_dir : stdgo.GoString);
        return {
            final obj = stdgo._internal.go.build.Build_context_static_extension.Context_static_extension.importDir(_ctxt, _dir, _mode);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function srcDirs(_ctxt:Context):Array<String> {
        final _ctxt = (_ctxt : stdgo.Ref<stdgo._internal.go.build.Build_context.Context>);
        return [for (i in stdgo._internal.go.build.Build_context_static_extension.Context_static_extension.srcDirs(_ctxt)) i];
    }
    static public function _gopath(_ctxt:Context):Array<String> {
        final _ctxt = (_ctxt : stdgo.Ref<stdgo._internal.go.build.Build_context.Context>);
        return [for (i in stdgo._internal.go.build.Build_context_static_extension.Context_static_extension._gopath(_ctxt)) i];
    }
    static public function _isFile(_ctxt:Context, _path:String):Bool {
        final _ctxt = (_ctxt : stdgo.Ref<stdgo._internal.go.build.Build_context.Context>);
        final _path = (_path : stdgo.GoString);
        return stdgo._internal.go.build.Build_context_static_extension.Context_static_extension._isFile(_ctxt, _path);
    }
    static public function _openFile(_ctxt:Context, _path:String):stdgo.Tuple<stdgo._internal.io.Io_readcloser.ReadCloser, stdgo.Error> {
        final _ctxt = (_ctxt : stdgo.Ref<stdgo._internal.go.build.Build_context.Context>);
        final _path = (_path : stdgo.GoString);
        return {
            final obj = stdgo._internal.go.build.Build_context_static_extension.Context_static_extension._openFile(_ctxt, _path);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _readDir(_ctxt:Context, _path:String):stdgo.Tuple<Array<stdgo._internal.io.fs.Fs_direntry.DirEntry>, stdgo.Error> {
        final _ctxt = (_ctxt : stdgo.Ref<stdgo._internal.go.build.Build_context.Context>);
        final _path = (_path : stdgo.GoString);
        return {
            final obj = stdgo._internal.go.build.Build_context_static_extension.Context_static_extension._readDir(_ctxt, _path);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function _hasSubdir(_ctxt:Context, _root:String, _dir:String):stdgo.Tuple<String, Bool> {
        final _ctxt = (_ctxt : stdgo.Ref<stdgo._internal.go.build.Build_context.Context>);
        final _root = (_root : stdgo.GoString);
        final _dir = (_dir : stdgo.GoString);
        return {
            final obj = stdgo._internal.go.build.Build_context_static_extension.Context_static_extension._hasSubdir(_ctxt, _root, _dir);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _isDir(_ctxt:Context, _path:String):Bool {
        final _ctxt = (_ctxt : stdgo.Ref<stdgo._internal.go.build.Build_context.Context>);
        final _path = (_path : stdgo.GoString);
        return stdgo._internal.go.build.Build_context_static_extension.Context_static_extension._isDir(_ctxt, _path);
    }
    static public function _isAbsPath(_ctxt:Context, _path:String):Bool {
        final _ctxt = (_ctxt : stdgo.Ref<stdgo._internal.go.build.Build_context.Context>);
        final _path = (_path : stdgo.GoString);
        return stdgo._internal.go.build.Build_context_static_extension.Context_static_extension._isAbsPath(_ctxt, _path);
    }
    static public function _splitPathList(_ctxt:Context, _s:String):Array<String> {
        final _ctxt = (_ctxt : stdgo.Ref<stdgo._internal.go.build.Build_context.Context>);
        final _s = (_s : stdgo.GoString);
        return [for (i in stdgo._internal.go.build.Build_context_static_extension.Context_static_extension._splitPathList(_ctxt, _s)) i];
    }
    static public function _joinPath(_ctxt:Context, _elem:haxe.Rest<String>):String {
        final _ctxt = (_ctxt : stdgo.Ref<stdgo._internal.go.build.Build_context.Context>);
        return stdgo._internal.go.build.Build_context_static_extension.Context_static_extension._joinPath(_ctxt, ...[for (i in _elem) i]);
    }
}
typedef PackagePointer = stdgo._internal.go.build.Build_packagepointer.PackagePointer;
class Package_static_extension {
    static public function isCommand(_p:Package):Bool {
        final _p = (_p : stdgo.Ref<stdgo._internal.go.build.Build_package.Package>);
        return stdgo._internal.go.build.Build_package_static_extension.Package_static_extension.isCommand(_p);
    }
}
typedef DirectivePointer = stdgo._internal.go.build.Build_directivepointer.DirectivePointer;
class Directive_static_extension {

}
typedef NoGoErrorPointer = stdgo._internal.go.build.Build_nogoerrorpointer.NoGoErrorPointer;
class NoGoError_static_extension {
    static public function error(_e:NoGoError):String {
        final _e = (_e : stdgo.Ref<stdgo._internal.go.build.Build_nogoerror.NoGoError>);
        return stdgo._internal.go.build.Build_nogoerror_static_extension.NoGoError_static_extension.error(_e);
    }
}
typedef MultiplePackageErrorPointer = stdgo._internal.go.build.Build_multiplepackageerrorpointer.MultiplePackageErrorPointer;
class MultiplePackageError_static_extension {
    static public function error(_e:MultiplePackageError):String {
        final _e = (_e : stdgo.Ref<stdgo._internal.go.build.Build_multiplepackageerror.MultiplePackageError>);
        return stdgo._internal.go.build.Build_multiplepackageerror_static_extension.MultiplePackageError_static_extension.error(_e);
    }
}
@:dox(hide) typedef T_fileInfoPointer = stdgo._internal.go.build.Build_t_fileinfopointer.T_fileInfoPointer;
@:dox(hide) class T_fileInfo_static_extension {

}
@:dox(hide) typedef T_fileImportPointer = stdgo._internal.go.build.Build_t_fileimportpointer.T_fileImportPointer;
@:dox(hide) class T_fileImport_static_extension {

}
@:dox(hide) typedef T_fileEmbedPointer = stdgo._internal.go.build.Build_t_fileembedpointer.T_fileEmbedPointer;
@:dox(hide) class T_fileEmbed_static_extension {

}
@:dox(hide) typedef T_importReaderPointer = stdgo._internal.go.build.Build_t_importreaderpointer.T_importReaderPointer;
@:dox(hide) class T_importReader_static_extension {
    static public function _readImport(_r:T_importReader):Void {
        final _r = (_r : stdgo.Ref<stdgo._internal.go.build.Build_t_importreader.T_importReader>);
        stdgo._internal.go.build.Build_t_importreader_static_extension.T_importReader_static_extension._readImport(_r);
    }
    static public function _readString(_r:T_importReader):Void {
        final _r = (_r : stdgo.Ref<stdgo._internal.go.build.Build_t_importreader.T_importReader>);
        stdgo._internal.go.build.Build_t_importreader_static_extension.T_importReader_static_extension._readString(_r);
    }
    static public function _readIdent(_r:T_importReader):Void {
        final _r = (_r : stdgo.Ref<stdgo._internal.go.build.Build_t_importreader.T_importReader>);
        stdgo._internal.go.build.Build_t_importreader_static_extension.T_importReader_static_extension._readIdent(_r);
    }
    static public function _readKeyword(_r:T_importReader, _kw:String):Void {
        final _r = (_r : stdgo.Ref<stdgo._internal.go.build.Build_t_importreader.T_importReader>);
        final _kw = (_kw : stdgo.GoString);
        stdgo._internal.go.build.Build_t_importreader_static_extension.T_importReader_static_extension._readKeyword(_r, _kw);
    }
    static public function _findEmbed(_r:T_importReader, _first:Bool):Bool {
        final _r = (_r : stdgo.Ref<stdgo._internal.go.build.Build_t_importreader.T_importReader>);
        return stdgo._internal.go.build.Build_t_importreader_static_extension.T_importReader_static_extension._findEmbed(_r, _first);
    }
    static public function _nextByte(_r:T_importReader, _skipSpace:Bool):std.UInt {
        final _r = (_r : stdgo.Ref<stdgo._internal.go.build.Build_t_importreader.T_importReader>);
        return stdgo._internal.go.build.Build_t_importreader_static_extension.T_importReader_static_extension._nextByte(_r, _skipSpace);
    }
    static public function _peekByte(_r:T_importReader, _skipSpace:Bool):std.UInt {
        final _r = (_r : stdgo.Ref<stdgo._internal.go.build.Build_t_importreader.T_importReader>);
        return stdgo._internal.go.build.Build_t_importreader_static_extension.T_importReader_static_extension._peekByte(_r, _skipSpace);
    }
    static public function _readByteNoBuf(_r:T_importReader):std.UInt {
        final _r = (_r : stdgo.Ref<stdgo._internal.go.build.Build_t_importreader.T_importReader>);
        return stdgo._internal.go.build.Build_t_importreader_static_extension.T_importReader_static_extension._readByteNoBuf(_r);
    }
    static public function _readByte(_r:T_importReader):std.UInt {
        final _r = (_r : stdgo.Ref<stdgo._internal.go.build.Build_t_importreader.T_importReader>);
        return stdgo._internal.go.build.Build_t_importreader_static_extension.T_importReader_static_extension._readByte(_r);
    }
    static public function _syntaxError(_r:T_importReader):Void {
        final _r = (_r : stdgo.Ref<stdgo._internal.go.build.Build_t_importreader.T_importReader>);
        stdgo._internal.go.build.Build_t_importreader_static_extension.T_importReader_static_extension._syntaxError(_r);
    }
}
@:dox(hide) typedef T__struct_0PointerPointer = stdgo._internal.go.build.Build_t__struct_0pointerpointer.T__struct_0PointerPointer;
@:dox(hide) class T__struct_0Pointer_static_extension {

}
typedef ImportModePointer = stdgo._internal.go.build.Build_importmodepointer.ImportModePointer;
class ImportMode_static_extension {

}
/**
    * Package build gathers information about Go packages.
    * 
    * # Go Path
    * 
    * The Go path is a list of directory trees containing Go source code.
    * It is consulted to resolve imports that cannot be found in the standard
    * Go tree. The default path is the value of the GOPATH environment
    * variable, interpreted as a path list appropriate to the operating system
    * (on Unix, the variable is a colon-separated string;
    * on Windows, a semicolon-separated string;
    * on Plan 9, a list).
    * 
    * Each directory listed in the Go path must have a prescribed structure:
    * 
    * The src/ directory holds source code. The path below 'src' determines
    * the import path or executable name.
    * 
    * The pkg/ directory holds installed package objects.
    * As in the Go tree, each target operating system and
    * architecture pair has its own subdirectory of pkg
    * (pkg/GOOS_GOARCH).
    * 
    * If DIR is a directory listed in the Go path, a package with
    * source in DIR/src/foo/bar can be imported as "foo/bar" and
    * has its compiled form installed to "DIR/pkg/GOOS_GOARCH/foo/bar.a"
    * (or, for gccgo, "DIR/pkg/gccgo/foo/libbar.a").
    * 
    * The bin/ directory holds compiled commands.
    * Each command is named for its source directory, but only
    * using the final element, not the entire path. That is, the
    * command with source in DIR/src/foo/quux is installed into
    * DIR/bin/quux, not DIR/bin/foo/quux. The foo/ is stripped
    * so that you can add DIR/bin to your PATH to get at the
    * installed commands.
    * 
    * Here's an example directory layout:
    * 
    * 	GOPATH=/home/user/gocode
    * 
    * 	/home/user/gocode/
    * 	    src/
    * 	        foo/
    * 	            bar/               (go code in package bar)
    * 	                x.go
    * 	            quux/              (go code in package main)
    * 	                y.go
    * 	    bin/
    * 	        quux                   (installed command)
    * 	    pkg/
    * 	        linux_amd64/
    * 	            foo/
    * 	                bar.a          (installed package object)
    * 
    * # Build Constraints
    * 
    * A build constraint, also known as a build tag, is a condition under which a
    * file should be included in the package. Build constraints are given by a
    * line comment that begins
    * 
    * 	//go:build
    * 
    * Build constraints may also be part of a file's name
    * (for example, source_windows.go will only be included if the target
    * operating system is windows).
    * 
    * See 'go help buildconstraint'
    * (https://golang.org/cmd/go/#hdr-Build_constraints) for details.
    * 
    * # Binary-Only Packages
    * 
    * In Go 1.12 and earlier, it was possible to distribute packages in binary
    * form without including the source code used for compiling the package.
    * The package was distributed with a source file not excluded by build
    * constraints and containing a "//go:binary-only-package" comment. Like a
    * build constraint, this comment appeared at the top of a file, preceded
    * only by blank lines and other line comments and with a blank line
    * following the comment, to separate it from the package documentation.
    * Unlike build constraints, this comment is only recognized in non-test
    * Go source files.
    * 
    * The minimal source code for a binary-only package was therefore:
    * 
    * 	//go:binary-only-package
    * 
    * 	package mypkg
    * 
    * The source code could include additional Go code. That code was never
    * compiled but would be processed by tools like godoc and might be useful
    * as end-user documentation.
    * 
    * "go build" and other commands no longer support binary-only-packages.
    * Import and ImportDir will still set the BinaryOnly flag in packages
    * containing these comments for use in tools and error messages.
**/
class Build {
    /**
        * Import is shorthand for Default.Import.
    **/
    static public inline function import_(_path:String, _srcDir:String, _mode:ImportMode):stdgo.Tuple<Package, stdgo.Error> {
        final _path = (_path : stdgo.GoString);
        final _srcDir = (_srcDir : stdgo.GoString);
        return {
            final obj = stdgo._internal.go.build.Build_import_.import_(_path, _srcDir, _mode);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        * ImportDir is shorthand for Default.ImportDir.
    **/
    static public inline function importDir(_dir:String, _mode:ImportMode):stdgo.Tuple<Package, stdgo.Error> {
        final _dir = (_dir : stdgo.GoString);
        return {
            final obj = stdgo._internal.go.build.Build_importdir.importDir(_dir, _mode);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        * IsLocalImport reports whether the import path is
        * a local import path, like ".", "..", "./foo", or "../foo".
    **/
    static public inline function isLocalImport(_path:String):Bool {
        final _path = (_path : stdgo.GoString);
        return stdgo._internal.go.build.Build_islocalimport.isLocalImport(_path);
    }
    /**
        * ArchChar returns "?" and an error.
        * In earlier versions of Go, the returned string was used to derive
        * the compiler and linker tool names, the default object file suffix,
        * and the default linker output name. As of Go 1.5, those strings
        * no longer vary by architecture; they are compile, link, .o, and a.out, respectively.
    **/
    static public inline function archChar(_goarch:String):stdgo.Tuple<String, stdgo.Error> {
        final _goarch = (_goarch : stdgo.GoString);
        return {
            final obj = stdgo._internal.go.build.Build_archchar.archChar(_goarch);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
