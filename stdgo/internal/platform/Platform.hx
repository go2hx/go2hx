package stdgo.internal.platform;
var list(get, set) : Array<stdgo._internal.internal.platform.Platform.OSArch>;
function get_list():Array<stdgo._internal.internal.platform.Platform.OSArch> return stdgo._internal.internal.platform.Platform.list;
function set_list(v:Array<stdgo._internal.internal.platform.Platform.OSArch>):Array<stdgo._internal.internal.platform.Platform.OSArch> return stdgo._internal.internal.platform.Platform.list = v;
@:invalid typedef OSArch = Dynamic;
@:invalid typedef T_osArchInfo = Dynamic;
/**
    RaceDetectorSupported reports whether goos/goarch supports the race
    detector. There is a copy of this function in cmd/dist/test.go.
    Race detector only supports 48-bit VMA on arm64. But it will always
    return true for arm64, because we don't have VMA size information during
    the compile time.
**/
inline function raceDetectorSupported(goos:String, goarch:String):Bool throw "not implemented";
/**
    MSanSupported reports whether goos/goarch supports the memory
    sanitizer option.
**/
inline function msanSupported(goos:String, goarch:String):Bool throw "not implemented";
/**
    ASanSupported reports whether goos/goarch supports the address
    sanitizer option.
**/
inline function asanSupported(goos:String, goarch:String):Bool throw "not implemented";
/**
    FuzzSupported reports whether goos/goarch supports fuzzing
    ('go test -fuzz=.').
**/
inline function fuzzSupported(goos:String, goarch:String):Bool throw "not implemented";
/**
    FuzzInstrumented reports whether fuzzing on goos/goarch uses coverage
    instrumentation. (FuzzInstrumented implies FuzzSupported.)
**/
inline function fuzzInstrumented(goos:String, goarch:String):Bool throw "not implemented";
/**
    MustLinkExternal reports whether goos/goarch requires external linking
    with or without cgo dependencies.
**/
inline function mustLinkExternal(goos:String, goarch:String, withCgo:Bool):Bool throw "not implemented";
/**
    BuildModeSupported reports whether goos/goarch supports the given build mode
    using the given compiler.
    There is a copy of this function in cmd/dist/test.go.
**/
inline function buildModeSupported(compiler:String, buildmode:String, goos:String, goarch:String):Bool throw "not implemented";
inline function internalLinkPIESupported(goos:String, goarch:String):Bool throw "not implemented";
/**
    DefaultPIE reports whether goos/goarch produces a PIE binary when using the
    "default" buildmode. On Windows this is affected by -race,
    so force the caller to pass that in to centralize that choice.
**/
inline function defaultPIE(goos:String, goarch:String, isRace:Bool):Bool throw "not implemented";
/**
    ExecutableHasDWARF reports whether the linked executable includes DWARF
    symbols on goos/goarch.
**/
inline function executableHasDWARF(goos:String, goarch:String):Bool throw "not implemented";
/**
    CgoSupported reports whether goos/goarch supports cgo.
**/
inline function cgoSupported(goos:String, goarch:String):Bool throw "not implemented";
/**
    FirstClass reports whether goos/goarch is considered a “first class” port.
    (See https://go.dev/wiki/PortingPolicy#first-class-ports.)
**/
inline function firstClass(goos:String, goarch:String):Bool throw "not implemented";
/**
    Broken reportsr whether goos/goarch is considered a broken port.
    (See https://go.dev/wiki/PortingPolicy#broken-ports.)
**/
inline function broken(goos:String, goarch:String):Bool throw "not implemented";
@:invalid typedef OSArch_asInterface = Dynamic;
@:invalid typedef OSArch_static_extension = Dynamic;
