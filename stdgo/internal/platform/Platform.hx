package stdgo.internal.platform;
var list(get, set) : Array<stdgo._internal.internal.platform.Platform.OSArch>;
private function get_list():Array<stdgo._internal.internal.platform.Platform.OSArch> return [for (i in stdgo._internal.internal.platform.Platform.list) i];
private function set_list(v:Array<stdgo._internal.internal.platform.Platform.OSArch>):Array<stdgo._internal.internal.platform.Platform.OSArch> {
        stdgo._internal.internal.platform.Platform.list = ([for (i in v) i] : stdgo.Slice<stdgo._internal.internal.platform.Platform.OSArch>);
        return v;
    }
@:structInit @:using(stdgo.internal.platform.Platform.OSArch_static_extension) abstract OSArch(stdgo._internal.internal.platform.Platform.OSArch) from stdgo._internal.internal.platform.Platform.OSArch to stdgo._internal.internal.platform.Platform.OSArch {
    public var goos(get, set) : String;
    function get_goos():String return this.goos;
    function set_goos(v:String):String {
        this.goos = v;
        return v;
    }
    public var goarch(get, set) : String;
    function get_goarch():String return this.goarch;
    function set_goarch(v:String):String {
        this.goarch = v;
        return v;
    }
    public function new(?goos:String, ?goarch:String) this = new stdgo._internal.internal.platform.Platform.OSArch(goos, goarch);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:private abstract T_osArchInfo(stdgo._internal.internal.platform.Platform.T_osArchInfo) from stdgo._internal.internal.platform.Platform.T_osArchInfo to stdgo._internal.internal.platform.Platform.T_osArchInfo {
    public var cgoSupported(get, set) : Bool;
    function get_cgoSupported():Bool return this.cgoSupported;
    function set_cgoSupported(v:Bool):Bool {
        this.cgoSupported = v;
        return v;
    }
    public var firstClass(get, set) : Bool;
    function get_firstClass():Bool return this.firstClass;
    function set_firstClass(v:Bool):Bool {
        this.firstClass = v;
        return v;
    }
    public var broken(get, set) : Bool;
    function get_broken():Bool return this.broken;
    function set_broken(v:Bool):Bool {
        this.broken = v;
        return v;
    }
    public function new(?cgoSupported:Bool, ?firstClass:Bool, ?broken:Bool) this = new stdgo._internal.internal.platform.Platform.T_osArchInfo(cgoSupported, firstClass, broken);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
class OSArch_static_extension {
    static public function string(p:OSArch):String {
        return stdgo._internal.internal.platform.Platform.OSArch_static_extension.string(p);
    }
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
