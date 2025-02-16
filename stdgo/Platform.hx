package stdgo;
var list(get, set) : Array<OSArch>;
private function get_list():Array<OSArch> return [for (i in stdgo._internal.internal.platform.Platform_list.list) i];
private function set_list(v:Array<OSArch>):Array<OSArch> {
        stdgo._internal.internal.platform.Platform_list.list = ([for (i in v) i] : stdgo.Slice<stdgo._internal.internal.platform.Platform_osarch.OSArch>);
        return v;
    }
@:structInit @:using(stdgo.internal.platform.Platform.OSArch_static_extension) abstract OSArch(stdgo._internal.internal.platform.Platform_osarch.OSArch) from stdgo._internal.internal.platform.Platform_osarch.OSArch to stdgo._internal.internal.platform.Platform_osarch.OSArch {
    public var gOOS(get, set) : String;
    function get_gOOS():String return this.gOOS;
    function set_gOOS(v:String):String {
        this.gOOS = (v : stdgo.GoString);
        return v;
    }
    public var gOARCH(get, set) : String;
    function get_gOARCH():String return this.gOARCH;
    function set_gOARCH(v:String):String {
        this.gOARCH = (v : stdgo.GoString);
        return v;
    }
    public function new(?gOOS:String, ?gOARCH:String) this = new stdgo._internal.internal.platform.Platform_osarch.OSArch((gOOS : stdgo.GoString), (gOARCH : stdgo.GoString));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.internal.platform.Platform.T_osArchInfo_static_extension) @:dox(hide) abstract T_osArchInfo(stdgo._internal.internal.platform.Platform_t_osarchinfo.T_osArchInfo) from stdgo._internal.internal.platform.Platform_t_osarchinfo.T_osArchInfo to stdgo._internal.internal.platform.Platform_t_osarchinfo.T_osArchInfo {
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
    public function new(?cgoSupported:Bool, ?firstClass:Bool, ?broken:Bool) this = new stdgo._internal.internal.platform.Platform_t_osarchinfo.T_osArchInfo(cgoSupported, firstClass, broken);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
typedef OSArchPointer = stdgo._internal.internal.platform.Platform_osarchpointer.OSArchPointer;
class OSArch_static_extension {
    static public function string(_p:OSArch):String {
        return stdgo._internal.internal.platform.Platform_osarch_static_extension.OSArch_static_extension.string(_p);
    }
}
@:dox(hide) typedef T_osArchInfoPointer = stdgo._internal.internal.platform.Platform_t_osarchinfopointer.T_osArchInfoPointer;
@:dox(hide) class T_osArchInfo_static_extension {

}
class Platform {
    /**
        * RaceDetectorSupported reports whether goos/goarch supports the race
        * detector. There is a copy of this function in cmd/dist/test.go.
        * Race detector only supports 48-bit VMA on arm64. But it will always
        * return true for arm64, because we don't have VMA size information during
        * the compile time.
    **/
    static public inline function raceDetectorSupported(_goos:String, _goarch:String):Bool {
        final _goos = (_goos : stdgo.GoString);
        final _goarch = (_goarch : stdgo.GoString);
        return stdgo._internal.internal.platform.Platform_racedetectorsupported.raceDetectorSupported(_goos, _goarch);
    }
    /**
        * MSanSupported reports whether goos/goarch supports the memory
        * sanitizer option.
    **/
    static public inline function mSanSupported(_goos:String, _goarch:String):Bool {
        final _goos = (_goos : stdgo.GoString);
        final _goarch = (_goarch : stdgo.GoString);
        return stdgo._internal.internal.platform.Platform_msansupported.mSanSupported(_goos, _goarch);
    }
    /**
        * ASanSupported reports whether goos/goarch supports the address
        * sanitizer option.
    **/
    static public inline function aSanSupported(_goos:String, _goarch:String):Bool {
        final _goos = (_goos : stdgo.GoString);
        final _goarch = (_goarch : stdgo.GoString);
        return stdgo._internal.internal.platform.Platform_asansupported.aSanSupported(_goos, _goarch);
    }
    /**
        * FuzzSupported reports whether goos/goarch supports fuzzing
        * ('go test -fuzz=.').
    **/
    static public inline function fuzzSupported(_goos:String, _goarch:String):Bool {
        final _goos = (_goos : stdgo.GoString);
        final _goarch = (_goarch : stdgo.GoString);
        return stdgo._internal.internal.platform.Platform_fuzzsupported.fuzzSupported(_goos, _goarch);
    }
    /**
        * FuzzInstrumented reports whether fuzzing on goos/goarch uses coverage
        * instrumentation. (FuzzInstrumented implies FuzzSupported.)
    **/
    static public inline function fuzzInstrumented(_goos:String, _goarch:String):Bool {
        final _goos = (_goos : stdgo.GoString);
        final _goarch = (_goarch : stdgo.GoString);
        return stdgo._internal.internal.platform.Platform_fuzzinstrumented.fuzzInstrumented(_goos, _goarch);
    }
    /**
        * MustLinkExternal reports whether goos/goarch requires external linking
        * with or without cgo dependencies.
    **/
    static public inline function mustLinkExternal(_goos:String, _goarch:String, _withCgo:Bool):Bool {
        final _goos = (_goos : stdgo.GoString);
        final _goarch = (_goarch : stdgo.GoString);
        return stdgo._internal.internal.platform.Platform_mustlinkexternal.mustLinkExternal(_goos, _goarch, _withCgo);
    }
    /**
        * BuildModeSupported reports whether goos/goarch supports the given build mode
        * using the given compiler.
        * There is a copy of this function in cmd/dist/test.go.
    **/
    static public inline function buildModeSupported(_compiler:String, _buildmode:String, _goos:String, _goarch:String):Bool {
        final _compiler = (_compiler : stdgo.GoString);
        final _buildmode = (_buildmode : stdgo.GoString);
        final _goos = (_goos : stdgo.GoString);
        final _goarch = (_goarch : stdgo.GoString);
        return stdgo._internal.internal.platform.Platform_buildmodesupported.buildModeSupported(_compiler, _buildmode, _goos, _goarch);
    }
    static public inline function internalLinkPIESupported(_goos:String, _goarch:String):Bool {
        final _goos = (_goos : stdgo.GoString);
        final _goarch = (_goarch : stdgo.GoString);
        return stdgo._internal.internal.platform.Platform_internallinkpiesupported.internalLinkPIESupported(_goos, _goarch);
    }
    /**
        * DefaultPIE reports whether goos/goarch produces a PIE binary when using the
        * "default" buildmode. On Windows this is affected by -race,
        * so force the caller to pass that in to centralize that choice.
    **/
    static public inline function defaultPIE(_goos:String, _goarch:String, _isRace:Bool):Bool {
        final _goos = (_goos : stdgo.GoString);
        final _goarch = (_goarch : stdgo.GoString);
        return stdgo._internal.internal.platform.Platform_defaultpie.defaultPIE(_goos, _goarch, _isRace);
    }
    /**
        * ExecutableHasDWARF reports whether the linked executable includes DWARF
        * symbols on goos/goarch.
    **/
    static public inline function executableHasDWARF(_goos:String, _goarch:String):Bool {
        final _goos = (_goos : stdgo.GoString);
        final _goarch = (_goarch : stdgo.GoString);
        return stdgo._internal.internal.platform.Platform_executablehasdwarf.executableHasDWARF(_goos, _goarch);
    }
    /**
        * CgoSupported reports whether goos/goarch supports cgo.
    **/
    static public inline function cgoSupported(_goos:String, _goarch:String):Bool {
        final _goos = (_goos : stdgo.GoString);
        final _goarch = (_goarch : stdgo.GoString);
        return stdgo._internal.internal.platform.Platform_cgosupported.cgoSupported(_goos, _goarch);
    }
    /**
        * FirstClass reports whether goos/goarch is considered a “first class” port.
        * (See https://go.dev/wiki/PortingPolicy#first-class-ports.)
    **/
    static public inline function firstClass(_goos:String, _goarch:String):Bool {
        final _goos = (_goos : stdgo.GoString);
        final _goarch = (_goarch : stdgo.GoString);
        return stdgo._internal.internal.platform.Platform_firstclass.firstClass(_goos, _goarch);
    }
    /**
        * Broken reportsr whether goos/goarch is considered a broken port.
        * (See https://go.dev/wiki/PortingPolicy#broken-ports.)
    **/
    static public inline function broken(_goos:String, _goarch:String):Bool {
        final _goos = (_goos : stdgo.GoString);
        final _goarch = (_goarch : stdgo.GoString);
        return stdgo._internal.internal.platform.Platform_broken.broken(_goos, _goarch);
    }
}
