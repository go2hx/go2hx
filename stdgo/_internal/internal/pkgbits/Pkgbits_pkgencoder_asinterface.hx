package stdgo._internal.internal.pkgbits;
class PkgEncoder_asInterface {
    @:keep
    @:tdfield
    public dynamic function newEncoderRaw(_k:stdgo._internal.internal.pkgbits.Pkgbits_relockind.RelocKind):stdgo._internal.internal.pkgbits.Pkgbits_encoder.Encoder return @:_0 __self__.value.newEncoderRaw(_k);
    @:keep
    @:tdfield
    public dynamic function newEncoder(_k:stdgo._internal.internal.pkgbits.Pkgbits_relockind.RelocKind, _marker:stdgo._internal.internal.pkgbits.Pkgbits_syncmarker.SyncMarker):stdgo._internal.internal.pkgbits.Pkgbits_encoder.Encoder return @:_0 __self__.value.newEncoder(_k, _marker);
    @:keep
    @:tdfield
    public dynamic function stringIdx(_s:stdgo.GoString):stdgo._internal.internal.pkgbits.Pkgbits_index.Index return @:_0 __self__.value.stringIdx(_s);
    @:keep
    @:tdfield
    public dynamic function dumpTo(_out0:stdgo._internal.io.Io_writer.Writer):stdgo.GoArray<stdgo.GoUInt8> return @:_0 __self__.value.dumpTo(_out0);
    @:keep
    @:tdfield
    public dynamic function syncMarkers():Bool return @:_0 __self__.value.syncMarkers();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.internal.pkgbits.Pkgbits_pkgencoderpointer.PkgEncoderPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
