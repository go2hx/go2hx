package stdgo.internal.platform;
/**
    // List is the list of all valid GOOS/GOARCH combinations,
    // including known-broken ports.
    
    
**/
var list : stdgo.Slice<stdgo.internal.platform.Platform.OSArch> = (null : stdgo.Slice<stdgo.internal.platform.Platform.OSArch>);
/**
    
    
    
**/
var _distInfo : stdgo.GoMap<stdgo.internal.platform.Platform.OSArch, stdgo.internal.platform.Platform.T_osArchInfo> = (null : stdgo.GoMap<stdgo.internal.platform.Platform.OSArch, stdgo.internal.platform.Platform.T_osArchInfo>);
/**
    // An OSArch is a pair of GOOS and GOARCH values indicating a platform.
    
    
**/
@:structInit @:using(stdgo.internal.platform.Platform.OSArch_static_extension) class OSArch {
    public var goos : stdgo.GoString = "";
    public var goarch : stdgo.GoString = "";
    public function new(?goos:stdgo.GoString, ?goarch:stdgo.GoString) {
        if (goos != null) this.goos = goos;
        if (goarch != null) this.goarch = goarch;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new OSArch(goos, goarch);
    }
}
/**
    // osArchInfo describes information about an OSArch extracted from cmd/dist and
    // stored in the generated distInfo map.
    
    
**/
@:structInit @:private class T_osArchInfo {
    public var cgoSupported : Bool = false;
    public var firstClass : Bool = false;
    public var broken : Bool = false;
    public function new(?cgoSupported:Bool, ?firstClass:Bool, ?broken:Bool) {
        if (cgoSupported != null) this.cgoSupported = cgoSupported;
        if (firstClass != null) this.firstClass = firstClass;
        if (broken != null) this.broken = broken;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_osArchInfo(cgoSupported, firstClass, broken);
    }
}
/**
    // RaceDetectorSupported reports whether goos/goarch supports the race
    // detector. There is a copy of this function in cmd/dist/test.go.
    // Race detector only supports 48-bit VMA on arm64. But it will always
    // return true for arm64, because we don't have VMA size information during
    // the compile time.
**/
function raceDetectorSupported(_goos:stdgo.GoString, _goarch:stdgo.GoString):Bool throw ":internal.platform.raceDetectorSupported is not yet implemented";
/**
    // MSanSupported reports whether goos/goarch supports the memory
    // sanitizer option.
**/
function msanSupported(_goos:stdgo.GoString, _goarch:stdgo.GoString):Bool throw ":internal.platform.msanSupported is not yet implemented";
/**
    // ASanSupported reports whether goos/goarch supports the address
    // sanitizer option.
**/
function asanSupported(_goos:stdgo.GoString, _goarch:stdgo.GoString):Bool throw ":internal.platform.asanSupported is not yet implemented";
/**
    // FuzzSupported reports whether goos/goarch supports fuzzing
    // ('go test -fuzz=.').
**/
function fuzzSupported(_goos:stdgo.GoString, _goarch:stdgo.GoString):Bool throw ":internal.platform.fuzzSupported is not yet implemented";
/**
    // FuzzInstrumented reports whether fuzzing on goos/goarch uses coverage
    // instrumentation. (FuzzInstrumented implies FuzzSupported.)
**/
function fuzzInstrumented(_goos:stdgo.GoString, _goarch:stdgo.GoString):Bool throw ":internal.platform.fuzzInstrumented is not yet implemented";
/**
    // MustLinkExternal reports whether goos/goarch requires external linking
    // with or without cgo dependencies.
**/
function mustLinkExternal(_goos:stdgo.GoString, _goarch:stdgo.GoString, _withCgo:Bool):Bool throw ":internal.platform.mustLinkExternal is not yet implemented";
/**
    // BuildModeSupported reports whether goos/goarch supports the given build mode
    // using the given compiler.
    // There is a copy of this function in cmd/dist/test.go.
**/
function buildModeSupported(_compiler:stdgo.GoString, _buildmode:stdgo.GoString, _goos:stdgo.GoString, _goarch:stdgo.GoString):Bool throw ":internal.platform.buildModeSupported is not yet implemented";
function internalLinkPIESupported(_goos:stdgo.GoString, _goarch:stdgo.GoString):Bool throw ":internal.platform.internalLinkPIESupported is not yet implemented";
/**
    // DefaultPIE reports whether goos/goarch produces a PIE binary when using the
    // "default" buildmode. On Windows this is affected by -race,
    // so force the caller to pass that in to centralize that choice.
**/
function defaultPIE(_goos:stdgo.GoString, _goarch:stdgo.GoString, _isRace:Bool):Bool throw ":internal.platform.defaultPIE is not yet implemented";
/**
    // ExecutableHasDWARF reports whether the linked executable includes DWARF
    // symbols on goos/goarch.
**/
function executableHasDWARF(_goos:stdgo.GoString, _goarch:stdgo.GoString):Bool throw ":internal.platform.executableHasDWARF is not yet implemented";
/**
    // CgoSupported reports whether goos/goarch supports cgo.
**/
function cgoSupported(_goos:stdgo.GoString, _goarch:stdgo.GoString):Bool throw ":internal.platform.cgoSupported is not yet implemented";
/**
    // FirstClass reports whether goos/goarch is considered a “first class” port.
    // (See https://go.dev/wiki/PortingPolicy#first-class-ports.)
**/
function firstClass(_goos:stdgo.GoString, _goarch:stdgo.GoString):Bool throw ":internal.platform.firstClass is not yet implemented";
/**
    // Broken reportsr whether goos/goarch is considered a broken port.
    // (See https://go.dev/wiki/PortingPolicy#broken-ports.)
**/
function broken(_goos:stdgo.GoString, _goarch:stdgo.GoString):Bool throw ":internal.platform.broken is not yet implemented";
class OSArch_asInterface {
    @:keep
    public dynamic function string():stdgo.GoString return __self__.value.string();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<OSArch>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.internal.platform.Platform.OSArch_asInterface) class OSArch_static_extension {
    @:keep
    static public function string( _p:OSArch):stdgo.GoString throw "OSArch:internal.platform.string is not yet implemented";
}
