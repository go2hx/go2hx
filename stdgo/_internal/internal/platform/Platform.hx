package stdgo._internal.internal.platform;
var list : stdgo.Slice<stdgo._internal.internal.platform.Platform.OSArch> = (null : stdgo.Slice<stdgo._internal.internal.platform.Platform.OSArch>);
var _distInfo : stdgo.GoMap<stdgo._internal.internal.platform.Platform.OSArch, stdgo._internal.internal.platform.Platform.T_osArchInfo> = (null : stdgo.GoMap<stdgo._internal.internal.platform.Platform.OSArch, stdgo._internal.internal.platform.Platform.T_osArchInfo>);
@:structInit @:using(stdgo._internal.internal.platform.Platform.OSArch_static_extension) class OSArch {
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
function raceDetectorSupported(_goos:stdgo.GoString, _goarch:stdgo.GoString):Bool throw ":internal.platform.raceDetectorSupported is not yet implemented";
function msanSupported(_goos:stdgo.GoString, _goarch:stdgo.GoString):Bool throw ":internal.platform.msanSupported is not yet implemented";
function asanSupported(_goos:stdgo.GoString, _goarch:stdgo.GoString):Bool throw ":internal.platform.asanSupported is not yet implemented";
function fuzzSupported(_goos:stdgo.GoString, _goarch:stdgo.GoString):Bool throw ":internal.platform.fuzzSupported is not yet implemented";
function fuzzInstrumented(_goos:stdgo.GoString, _goarch:stdgo.GoString):Bool throw ":internal.platform.fuzzInstrumented is not yet implemented";
function mustLinkExternal(_goos:stdgo.GoString, _goarch:stdgo.GoString, _withCgo:Bool):Bool throw ":internal.platform.mustLinkExternal is not yet implemented";
function buildModeSupported(_compiler:stdgo.GoString, _buildmode:stdgo.GoString, _goos:stdgo.GoString, _goarch:stdgo.GoString):Bool throw ":internal.platform.buildModeSupported is not yet implemented";
function internalLinkPIESupported(_goos:stdgo.GoString, _goarch:stdgo.GoString):Bool throw ":internal.platform.internalLinkPIESupported is not yet implemented";
function defaultPIE(_goos:stdgo.GoString, _goarch:stdgo.GoString, _isRace:Bool):Bool throw ":internal.platform.defaultPIE is not yet implemented";
function executableHasDWARF(_goos:stdgo.GoString, _goarch:stdgo.GoString):Bool throw ":internal.platform.executableHasDWARF is not yet implemented";
function cgoSupported(_goos:stdgo.GoString, _goarch:stdgo.GoString):Bool throw ":internal.platform.cgoSupported is not yet implemented";
function firstClass(_goos:stdgo.GoString, _goarch:stdgo.GoString):Bool throw ":internal.platform.firstClass is not yet implemented";
function broken(_goos:stdgo.GoString, _goarch:stdgo.GoString):Bool throw ":internal.platform.broken is not yet implemented";
class OSArch_asInterface {
    @:keep
    public dynamic function string():stdgo.GoString return __self__.value.string();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<OSArch>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.internal.platform.Platform.OSArch_asInterface) class OSArch_static_extension {
    @:keep
    static public function string( _p:OSArch):stdgo.GoString throw "OSArch:internal.platform.string is not yet implemented";
}
