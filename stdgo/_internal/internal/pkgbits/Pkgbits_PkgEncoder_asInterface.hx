package stdgo._internal.internal.pkgbits;
class PkgEncoder_asInterface {
    @:keep
    public dynamic function newEncoderRaw(_k:stdgo._internal.internal.pkgbits.Pkgbits_RelocKind.RelocKind):stdgo._internal.internal.pkgbits.Pkgbits_Encoder.Encoder return __self__.value.newEncoderRaw(_k);
    @:keep
    public dynamic function newEncoder(_k:stdgo._internal.internal.pkgbits.Pkgbits_RelocKind.RelocKind, _marker:stdgo._internal.internal.pkgbits.Pkgbits_SyncMarker.SyncMarker):stdgo._internal.internal.pkgbits.Pkgbits_Encoder.Encoder return __self__.value.newEncoder(_k, _marker);
    @:keep
    public dynamic function stringIdx(_s:stdgo.GoString):stdgo._internal.internal.pkgbits.Pkgbits_Index.Index return __self__.value.stringIdx(_s);
    @:keep
    public dynamic function dumpTo(_out0:stdgo._internal.io.Io_Writer.Writer):stdgo.GoArray<stdgo.GoUInt8> return __self__.value.dumpTo(_out0);
    @:keep
    public dynamic function syncMarkers():Bool return __self__.value.syncMarkers();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.internal.pkgbits.Pkgbits_PkgEncoder.PkgEncoder>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
