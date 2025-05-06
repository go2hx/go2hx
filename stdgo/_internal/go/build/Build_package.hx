package stdgo._internal.go.build;
@:structInit @:using(stdgo._internal.go.build.Build_package_static_extension.Package_static_extension) class Package {
    public var dir : stdgo.GoString = "";
    public var name : stdgo.GoString = "";
    public var importComment : stdgo.GoString = "";
    public var doc : stdgo.GoString = "";
    public var importPath : stdgo.GoString = "";
    public var root : stdgo.GoString = "";
    public var srcRoot : stdgo.GoString = "";
    public var pkgRoot : stdgo.GoString = "";
    public var pkgTargetRoot : stdgo.GoString = "";
    public var binDir : stdgo.GoString = "";
    public var goroot : Bool = false;
    public var pkgObj : stdgo.GoString = "";
    public var allTags : stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
    public var conflictDir : stdgo.GoString = "";
    public var binaryOnly : Bool = false;
    public var goFiles : stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
    public var cgoFiles : stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
    public var ignoredGoFiles : stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
    public var invalidGoFiles : stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
    public var ignoredOtherFiles : stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
    public var cFiles : stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
    public var cXXFiles : stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
    public var mFiles : stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
    public var hFiles : stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
    public var fFiles : stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
    public var sFiles : stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
    public var swigFiles : stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
    public var swigCXXFiles : stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
    public var sysoFiles : stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
    public var cgoCFLAGS : stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
    public var cgoCPPFLAGS : stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
    public var cgoCXXFLAGS : stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
    public var cgoFFLAGS : stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
    public var cgoLDFLAGS : stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
    public var cgoPkgConfig : stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
    public var testGoFiles : stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
    public var xTestGoFiles : stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
    public var directives : stdgo.Slice<stdgo._internal.go.build.Build_directive.Directive> = (null : stdgo.Slice<stdgo._internal.go.build.Build_directive.Directive>);
    public var testDirectives : stdgo.Slice<stdgo._internal.go.build.Build_directive.Directive> = (null : stdgo.Slice<stdgo._internal.go.build.Build_directive.Directive>);
    public var xTestDirectives : stdgo.Slice<stdgo._internal.go.build.Build_directive.Directive> = (null : stdgo.Slice<stdgo._internal.go.build.Build_directive.Directive>);
    public var imports : stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
    public var importPos : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo._internal.go.token.Token_position.Position>> = (null : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo._internal.go.token.Token_position.Position>>);
    public var testImports : stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
    public var testImportPos : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo._internal.go.token.Token_position.Position>> = (null : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo._internal.go.token.Token_position.Position>>);
    public var xTestImports : stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
    public var xTestImportPos : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo._internal.go.token.Token_position.Position>> = (null : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo._internal.go.token.Token_position.Position>>);
    public var embedPatterns : stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
    public var embedPatternPos : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo._internal.go.token.Token_position.Position>> = (null : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo._internal.go.token.Token_position.Position>>);
    public var testEmbedPatterns : stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
    public var testEmbedPatternPos : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo._internal.go.token.Token_position.Position>> = (null : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo._internal.go.token.Token_position.Position>>);
    public var xTestEmbedPatterns : stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
    public var xTestEmbedPatternPos : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo._internal.go.token.Token_position.Position>> = (null : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo._internal.go.token.Token_position.Position>>);
    public function new(?dir:stdgo.GoString, ?name:stdgo.GoString, ?importComment:stdgo.GoString, ?doc:stdgo.GoString, ?importPath:stdgo.GoString, ?root:stdgo.GoString, ?srcRoot:stdgo.GoString, ?pkgRoot:stdgo.GoString, ?pkgTargetRoot:stdgo.GoString, ?binDir:stdgo.GoString, ?goroot:Bool, ?pkgObj:stdgo.GoString, ?allTags:stdgo.Slice<stdgo.GoString>, ?conflictDir:stdgo.GoString, ?binaryOnly:Bool, ?goFiles:stdgo.Slice<stdgo.GoString>, ?cgoFiles:stdgo.Slice<stdgo.GoString>, ?ignoredGoFiles:stdgo.Slice<stdgo.GoString>, ?invalidGoFiles:stdgo.Slice<stdgo.GoString>, ?ignoredOtherFiles:stdgo.Slice<stdgo.GoString>, ?cFiles:stdgo.Slice<stdgo.GoString>, ?cXXFiles:stdgo.Slice<stdgo.GoString>, ?mFiles:stdgo.Slice<stdgo.GoString>, ?hFiles:stdgo.Slice<stdgo.GoString>, ?fFiles:stdgo.Slice<stdgo.GoString>, ?sFiles:stdgo.Slice<stdgo.GoString>, ?swigFiles:stdgo.Slice<stdgo.GoString>, ?swigCXXFiles:stdgo.Slice<stdgo.GoString>, ?sysoFiles:stdgo.Slice<stdgo.GoString>, ?cgoCFLAGS:stdgo.Slice<stdgo.GoString>, ?cgoCPPFLAGS:stdgo.Slice<stdgo.GoString>, ?cgoCXXFLAGS:stdgo.Slice<stdgo.GoString>, ?cgoFFLAGS:stdgo.Slice<stdgo.GoString>, ?cgoLDFLAGS:stdgo.Slice<stdgo.GoString>, ?cgoPkgConfig:stdgo.Slice<stdgo.GoString>, ?testGoFiles:stdgo.Slice<stdgo.GoString>, ?xTestGoFiles:stdgo.Slice<stdgo.GoString>, ?directives:stdgo.Slice<stdgo._internal.go.build.Build_directive.Directive>, ?testDirectives:stdgo.Slice<stdgo._internal.go.build.Build_directive.Directive>, ?xTestDirectives:stdgo.Slice<stdgo._internal.go.build.Build_directive.Directive>, ?imports:stdgo.Slice<stdgo.GoString>, ?importPos:stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo._internal.go.token.Token_position.Position>>, ?testImports:stdgo.Slice<stdgo.GoString>, ?testImportPos:stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo._internal.go.token.Token_position.Position>>, ?xTestImports:stdgo.Slice<stdgo.GoString>, ?xTestImportPos:stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo._internal.go.token.Token_position.Position>>, ?embedPatterns:stdgo.Slice<stdgo.GoString>, ?embedPatternPos:stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo._internal.go.token.Token_position.Position>>, ?testEmbedPatterns:stdgo.Slice<stdgo.GoString>, ?testEmbedPatternPos:stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo._internal.go.token.Token_position.Position>>, ?xTestEmbedPatterns:stdgo.Slice<stdgo.GoString>, ?xTestEmbedPatternPos:stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo._internal.go.token.Token_position.Position>>) {
        if (dir != null) this.dir = dir;
        if (name != null) this.name = name;
        if (importComment != null) this.importComment = importComment;
        if (doc != null) this.doc = doc;
        if (importPath != null) this.importPath = importPath;
        if (root != null) this.root = root;
        if (srcRoot != null) this.srcRoot = srcRoot;
        if (pkgRoot != null) this.pkgRoot = pkgRoot;
        if (pkgTargetRoot != null) this.pkgTargetRoot = pkgTargetRoot;
        if (binDir != null) this.binDir = binDir;
        if (goroot != null) this.goroot = goroot;
        if (pkgObj != null) this.pkgObj = pkgObj;
        if (allTags != null) this.allTags = allTags;
        if (conflictDir != null) this.conflictDir = conflictDir;
        if (binaryOnly != null) this.binaryOnly = binaryOnly;
        if (goFiles != null) this.goFiles = goFiles;
        if (cgoFiles != null) this.cgoFiles = cgoFiles;
        if (ignoredGoFiles != null) this.ignoredGoFiles = ignoredGoFiles;
        if (invalidGoFiles != null) this.invalidGoFiles = invalidGoFiles;
        if (ignoredOtherFiles != null) this.ignoredOtherFiles = ignoredOtherFiles;
        if (cFiles != null) this.cFiles = cFiles;
        if (cXXFiles != null) this.cXXFiles = cXXFiles;
        if (mFiles != null) this.mFiles = mFiles;
        if (hFiles != null) this.hFiles = hFiles;
        if (fFiles != null) this.fFiles = fFiles;
        if (sFiles != null) this.sFiles = sFiles;
        if (swigFiles != null) this.swigFiles = swigFiles;
        if (swigCXXFiles != null) this.swigCXXFiles = swigCXXFiles;
        if (sysoFiles != null) this.sysoFiles = sysoFiles;
        if (cgoCFLAGS != null) this.cgoCFLAGS = cgoCFLAGS;
        if (cgoCPPFLAGS != null) this.cgoCPPFLAGS = cgoCPPFLAGS;
        if (cgoCXXFLAGS != null) this.cgoCXXFLAGS = cgoCXXFLAGS;
        if (cgoFFLAGS != null) this.cgoFFLAGS = cgoFFLAGS;
        if (cgoLDFLAGS != null) this.cgoLDFLAGS = cgoLDFLAGS;
        if (cgoPkgConfig != null) this.cgoPkgConfig = cgoPkgConfig;
        if (testGoFiles != null) this.testGoFiles = testGoFiles;
        if (xTestGoFiles != null) this.xTestGoFiles = xTestGoFiles;
        if (directives != null) this.directives = directives;
        if (testDirectives != null) this.testDirectives = testDirectives;
        if (xTestDirectives != null) this.xTestDirectives = xTestDirectives;
        if (imports != null) this.imports = imports;
        if (importPos != null) this.importPos = importPos;
        if (testImports != null) this.testImports = testImports;
        if (testImportPos != null) this.testImportPos = testImportPos;
        if (xTestImports != null) this.xTestImports = xTestImports;
        if (xTestImportPos != null) this.xTestImportPos = xTestImportPos;
        if (embedPatterns != null) this.embedPatterns = embedPatterns;
        if (embedPatternPos != null) this.embedPatternPos = embedPatternPos;
        if (testEmbedPatterns != null) this.testEmbedPatterns = testEmbedPatterns;
        if (testEmbedPatternPos != null) this.testEmbedPatternPos = testEmbedPatternPos;
        if (xTestEmbedPatterns != null) this.xTestEmbedPatterns = xTestEmbedPatterns;
        if (xTestEmbedPatternPos != null) this.xTestEmbedPatternPos = xTestEmbedPatternPos;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Package(
dir,
name,
importComment,
doc,
importPath,
root,
srcRoot,
pkgRoot,
pkgTargetRoot,
binDir,
goroot,
pkgObj,
allTags,
conflictDir,
binaryOnly,
goFiles,
cgoFiles,
ignoredGoFiles,
invalidGoFiles,
ignoredOtherFiles,
cFiles,
cXXFiles,
mFiles,
hFiles,
fFiles,
sFiles,
swigFiles,
swigCXXFiles,
sysoFiles,
cgoCFLAGS,
cgoCPPFLAGS,
cgoCXXFLAGS,
cgoFFLAGS,
cgoLDFLAGS,
cgoPkgConfig,
testGoFiles,
xTestGoFiles,
directives,
testDirectives,
xTestDirectives,
imports,
importPos,
testImports,
testImportPos,
xTestImports,
xTestImportPos,
embedPatterns,
embedPatternPos,
testEmbedPatterns,
testEmbedPatternPos,
xTestEmbedPatterns,
xTestEmbedPatternPos);
    }
}
