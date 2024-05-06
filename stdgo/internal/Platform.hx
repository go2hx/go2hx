package stdgo.internal;
var list(get, set) : Array<stdgo._internal.internal.platform.Platform.OSArch>;
private function get_list():Array<stdgo._internal.internal.platform.Platform.OSArch> return stdgo._internal.internal.platform.Platform.list;
private function set_list(v:Array<stdgo._internal.internal.platform.Platform.OSArch>):Array<stdgo._internal.internal.platform.Platform.OSArch> return stdgo._internal.internal.platform.Platform.list = v;
@:forward @:forward.new abstract OSArch(stdgo._internal.internal.platform.Platform.OSArch) from stdgo._internal.internal.platform.Platform.OSArch to stdgo._internal.internal.platform.Platform.OSArch {

}
@:forward @:forward.new abstract T_osArchInfo(stdgo._internal.internal.platform.Platform.T_osArchInfo) from stdgo._internal.internal.platform.Platform.T_osArchInfo to stdgo._internal.internal.platform.Platform.T_osArchInfo {

}
/**
    RaceDetectorSupported reports whether goos/goarch supports the race
    detector. There is a copy of this function in cmd/dist/test.go.
    Race detector only supports 48-bit VMA on arm64. But it will always
    return true for arm64, because we don't have VMA size information during
    the compile time.
**/
function raceDetectorSupported(goos:String, goarch:String):Bool {
        return stdgo._internal.internal.platform.Platform.raceDetectorSupported(goos, goarch);
    }
/**
    MSanSupported reports whether goos/goarch supports the memory
    sanitizer option.
**/
function msanSupported(goos:String, goarch:String):Bool {
        return stdgo._internal.internal.platform.Platform.msanSupported(goos, goarch);
    }
/**
    ASanSupported reports whether goos/goarch supports the address
    sanitizer option.
**/
function asanSupported(goos:String, goarch:String):Bool {
        return stdgo._internal.internal.platform.Platform.asanSupported(goos, goarch);
    }
/**
    FuzzSupported reports whether goos/goarch supports fuzzing
    ('go test -fuzz=.').
**/
function fuzzSupported(goos:String, goarch:String):Bool {
        return stdgo._internal.internal.platform.Platform.fuzzSupported(goos, goarch);
    }
/**
    FuzzInstrumented reports whether fuzzing on goos/goarch uses coverage
    instrumentation. (FuzzInstrumented implies FuzzSupported.)
**/
function fuzzInstrumented(goos:String, goarch:String):Bool {
        return stdgo._internal.internal.platform.Platform.fuzzInstrumented(goos, goarch);
    }
/**
    MustLinkExternal reports whether goos/goarch requires external linking
    with or without cgo dependencies.
**/
function mustLinkExternal(goos:String, goarch:String, withCgo:Bool):Bool {
        return stdgo._internal.internal.platform.Platform.mustLinkExternal(goos, goarch, withCgo);
    }
/**
    BuildModeSupported reports whether goos/goarch supports the given build mode
    using the given compiler.
    There is a copy of this function in cmd/dist/test.go.
**/
function buildModeSupported(compiler:String, buildmode:String, goos:String, goarch:String):Bool {
        return stdgo._internal.internal.platform.Platform.buildModeSupported(compiler, buildmode, goos, goarch);
    }
function internalLinkPIESupported(goos:String, goarch:String):Bool {
        return stdgo._internal.internal.platform.Platform.internalLinkPIESupported(goos, goarch);
    }
/**
    DefaultPIE reports whether goos/goarch produces a PIE binary when using the
    "default" buildmode. On Windows this is affected by -race,
    so force the caller to pass that in to centralize that choice.
**/
function defaultPIE(goos:String, goarch:String, isRace:Bool):Bool {
        return stdgo._internal.internal.platform.Platform.defaultPIE(goos, goarch, isRace);
    }
/**
    ExecutableHasDWARF reports whether the linked executable includes DWARF
    symbols on goos/goarch.
**/
function executableHasDWARF(goos:String, goarch:String):Bool {
        return stdgo._internal.internal.platform.Platform.executableHasDWARF(goos, goarch);
    }
/**
    CgoSupported reports whether goos/goarch supports cgo.
**/
function cgoSupported(goos:String, goarch:String):Bool {
        return stdgo._internal.internal.platform.Platform.cgoSupported(goos, goarch);
    }
/**
    FirstClass reports whether goos/goarch is considered a “first class” port.
    (See https://go.dev/wiki/PortingPolicy#first-class-ports.)
**/
function firstClass(goos:String, goarch:String):Bool {
        return stdgo._internal.internal.platform.Platform.firstClass(goos, goarch);
    }
/**
    Broken reportsr whether goos/goarch is considered a broken port.
    (See https://go.dev/wiki/PortingPolicy#broken-ports.)
**/
function broken(goos:String, goarch:String):Bool {
        return stdgo._internal.internal.platform.Platform.broken(goos, goarch);
    }
@:forward @:forward.new abstract OSArch_asInterface(stdgo._internal.internal.platform.Platform.OSArch_asInterface) from stdgo._internal.internal.platform.Platform.OSArch_asInterface to stdgo._internal.internal.platform.Platform.OSArch_asInterface {

}
@:forward @:forward.new abstract OSArch_static_extension(stdgo._internal.internal.platform.Platform.OSArch_static_extension) from stdgo._internal.internal.platform.Platform.OSArch_static_extension to stdgo._internal.internal.platform.Platform.OSArch_static_extension {

}
