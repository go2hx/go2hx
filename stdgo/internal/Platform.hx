package stdgo.internal;
var list(get, set) : Array<stdgo._internal.internal.platform.Platform.OSArch>;
private function get_list():Array<stdgo._internal.internal.platform.Platform.OSArch> return stdgo._internal.internal.platform.Platform.list;
private function set_list(v:Array<stdgo._internal.internal.platform.Platform.OSArch>):Array<stdgo._internal.internal.platform.Platform.OSArch> return stdgo._internal.internal.platform.Platform.list = v;
@:forward @:forward.new abstract OSArch(stdgo._internal.internal.platform.Platform.OSArch) from stdgo._internal.internal.platform.Platform.OSArch to stdgo._internal.internal.platform.Platform.OSArch {

}
@:forward @:forward.new abstract T_osArchInfo(stdgo._internal.internal.platform.Platform.T_osArchInfo) from stdgo._internal.internal.platform.Platform.T_osArchInfo to stdgo._internal.internal.platform.Platform.T_osArchInfo {

}
@:forward @:forward.new abstract OSArch_asInterface(stdgo._internal.internal.platform.Platform.OSArch_asInterface) from stdgo._internal.internal.platform.Platform.OSArch_asInterface to stdgo._internal.internal.platform.Platform.OSArch_asInterface {

}
@:forward @:forward.new abstract OSArch_static_extension(stdgo._internal.internal.platform.Platform.OSArch_static_extension) from stdgo._internal.internal.platform.Platform.OSArch_static_extension to stdgo._internal.internal.platform.Platform.OSArch_static_extension {

}
class Platform {
    /**
        RaceDetectorSupported reports whether goos/goarch supports the race
        detector. There is a copy of this function in cmd/dist/test.go.
        Race detector only supports 48-bit VMA on arm64. But it will always
        return true for arm64, because we don't have VMA size information during
        the compile time.
    **/
    static public function raceDetectorSupported(goos:String, goarch:String):Bool {
        return stdgo._internal.internal.platform.Platform.raceDetectorSupported(goos, goarch);
    }
    /**
        MSanSupported reports whether goos/goarch supports the memory
        sanitizer option.
    **/
    static public function msanSupported(goos:String, goarch:String):Bool {
        return stdgo._internal.internal.platform.Platform.msanSupported(goos, goarch);
    }
    /**
        ASanSupported reports whether goos/goarch supports the address
        sanitizer option.
    **/
    static public function asanSupported(goos:String, goarch:String):Bool {
        return stdgo._internal.internal.platform.Platform.asanSupported(goos, goarch);
    }
    /**
        FuzzSupported reports whether goos/goarch supports fuzzing
        ('go test -fuzz=.').
    **/
    static public function fuzzSupported(goos:String, goarch:String):Bool {
        return stdgo._internal.internal.platform.Platform.fuzzSupported(goos, goarch);
    }
    /**
        FuzzInstrumented reports whether fuzzing on goos/goarch uses coverage
        instrumentation. (FuzzInstrumented implies FuzzSupported.)
    **/
    static public function fuzzInstrumented(goos:String, goarch:String):Bool {
        return stdgo._internal.internal.platform.Platform.fuzzInstrumented(goos, goarch);
    }
    /**
        MustLinkExternal reports whether goos/goarch requires external linking
        with or without cgo dependencies.
    **/
    static public function mustLinkExternal(goos:String, goarch:String, withCgo:Bool):Bool {
        return stdgo._internal.internal.platform.Platform.mustLinkExternal(goos, goarch, withCgo);
    }
    /**
        BuildModeSupported reports whether goos/goarch supports the given build mode
        using the given compiler.
        There is a copy of this function in cmd/dist/test.go.
    **/
    static public function buildModeSupported(compiler:String, buildmode:String, goos:String, goarch:String):Bool {
        return stdgo._internal.internal.platform.Platform.buildModeSupported(compiler, buildmode, goos, goarch);
    }
    static public function internalLinkPIESupported(goos:String, goarch:String):Bool {
        return stdgo._internal.internal.platform.Platform.internalLinkPIESupported(goos, goarch);
    }
    /**
        DefaultPIE reports whether goos/goarch produces a PIE binary when using the
        "default" buildmode. On Windows this is affected by -race,
        so force the caller to pass that in to centralize that choice.
    **/
    static public function defaultPIE(goos:String, goarch:String, isRace:Bool):Bool {
        return stdgo._internal.internal.platform.Platform.defaultPIE(goos, goarch, isRace);
    }
    /**
        ExecutableHasDWARF reports whether the linked executable includes DWARF
        symbols on goos/goarch.
    **/
    static public function executableHasDWARF(goos:String, goarch:String):Bool {
        return stdgo._internal.internal.platform.Platform.executableHasDWARF(goos, goarch);
    }
    /**
        CgoSupported reports whether goos/goarch supports cgo.
    **/
    static public function cgoSupported(goos:String, goarch:String):Bool {
        return stdgo._internal.internal.platform.Platform.cgoSupported(goos, goarch);
    }
    /**
        FirstClass reports whether goos/goarch is considered a “first class” port.
        (See https://go.dev/wiki/PortingPolicy#first-class-ports.)
    **/
    static public function firstClass(goos:String, goarch:String):Bool {
        return stdgo._internal.internal.platform.Platform.firstClass(goos, goarch);
    }
    /**
        Broken reportsr whether goos/goarch is considered a broken port.
        (See https://go.dev/wiki/PortingPolicy#broken-ports.)
    **/
    static public function broken(goos:String, goarch:String):Bool {
        return stdgo._internal.internal.platform.Platform.broken(goos, goarch);
    }
}
