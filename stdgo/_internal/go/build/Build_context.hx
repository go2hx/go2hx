package stdgo._internal.go.build;
@:structInit @:using(stdgo._internal.go.build.Build_context_static_extension.Context_static_extension) class Context {
    public var gOARCH : stdgo.GoString = "";
    public var gOOS : stdgo.GoString = "";
    public var gOROOT : stdgo.GoString = "";
    public var gOPATH : stdgo.GoString = "";
    public var dir : stdgo.GoString = "";
    public var cgoEnabled : Bool = false;
    public var useAllFiles : Bool = false;
    public var compiler : stdgo.GoString = "";
    public var buildTags : stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
    public var toolTags : stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
    public var releaseTags : stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
    public var installSuffix : stdgo.GoString = "";
    public var joinPath : haxe.Rest<stdgo.GoString> -> stdgo.GoString = null;
    public var splitPathList : stdgo.GoString -> stdgo.Slice<stdgo.GoString> = null;
    public var isAbsPath : stdgo.GoString -> Bool = null;
    public var isDir : stdgo.GoString -> Bool = null;
    public var hasSubdir : (stdgo.GoString, stdgo.GoString) -> { var _0 : stdgo.GoString; var _1 : Bool; } = null;
    public var readDir : stdgo.GoString -> { var _0 : stdgo.Slice<stdgo._internal.io.fs.Fs_fileinfo.FileInfo>; var _1 : stdgo.Error; } = null;
    public var openFile : stdgo.GoString -> { var _0 : stdgo._internal.io.Io_readcloser.ReadCloser; var _1 : stdgo.Error; } = null;
    public function new(?gOARCH:stdgo.GoString, ?gOOS:stdgo.GoString, ?gOROOT:stdgo.GoString, ?gOPATH:stdgo.GoString, ?dir:stdgo.GoString, ?cgoEnabled:Bool, ?useAllFiles:Bool, ?compiler:stdgo.GoString, ?buildTags:stdgo.Slice<stdgo.GoString>, ?toolTags:stdgo.Slice<stdgo.GoString>, ?releaseTags:stdgo.Slice<stdgo.GoString>, ?installSuffix:stdgo.GoString, ?joinPath:haxe.Rest<stdgo.GoString> -> stdgo.GoString, ?splitPathList:stdgo.GoString -> stdgo.Slice<stdgo.GoString>, ?isAbsPath:stdgo.GoString -> Bool, ?isDir:stdgo.GoString -> Bool, ?hasSubdir:(stdgo.GoString, stdgo.GoString) -> { var _0 : stdgo.GoString; var _1 : Bool; }, ?readDir:stdgo.GoString -> { var _0 : stdgo.Slice<stdgo._internal.io.fs.Fs_fileinfo.FileInfo>; var _1 : stdgo.Error; }, ?openFile:stdgo.GoString -> { var _0 : stdgo._internal.io.Io_readcloser.ReadCloser; var _1 : stdgo.Error; }) {
        if (gOARCH != null) this.gOARCH = gOARCH;
        if (gOOS != null) this.gOOS = gOOS;
        if (gOROOT != null) this.gOROOT = gOROOT;
        if (gOPATH != null) this.gOPATH = gOPATH;
        if (dir != null) this.dir = dir;
        if (cgoEnabled != null) this.cgoEnabled = cgoEnabled;
        if (useAllFiles != null) this.useAllFiles = useAllFiles;
        if (compiler != null) this.compiler = compiler;
        if (buildTags != null) this.buildTags = buildTags;
        if (toolTags != null) this.toolTags = toolTags;
        if (releaseTags != null) this.releaseTags = releaseTags;
        if (installSuffix != null) this.installSuffix = installSuffix;
        if (joinPath != null) this.joinPath = joinPath;
        if (splitPathList != null) this.splitPathList = splitPathList;
        if (isAbsPath != null) this.isAbsPath = isAbsPath;
        if (isDir != null) this.isDir = isDir;
        if (hasSubdir != null) this.hasSubdir = hasSubdir;
        if (readDir != null) this.readDir = readDir;
        if (openFile != null) this.openFile = openFile;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Context(
gOARCH,
gOOS,
gOROOT,
gOPATH,
dir,
cgoEnabled,
useAllFiles,
compiler,
buildTags,
toolTags,
releaseTags,
installSuffix,
joinPath,
splitPathList,
isAbsPath,
isDir,
hasSubdir,
readDir,
openFile);
    }
}
