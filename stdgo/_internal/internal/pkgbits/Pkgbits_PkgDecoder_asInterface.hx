package stdgo._internal.internal.pkgbits;
import stdgo._internal.errors.Errors;
import stdgo._internal.strings.Strings;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.io.Io;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.go.constant.Constant;
import stdgo._internal.crypto.md5.Md5;
import stdgo._internal.strconv.Strconv;
class PkgDecoder_asInterface {
    @:keep
    @:tdfield
    public dynamic function peekObj(_idx:stdgo._internal.internal.pkgbits.Pkgbits_Index.Index):{ var _0 : stdgo.GoString; var _1 : stdgo.GoString; var _2 : stdgo._internal.internal.pkgbits.Pkgbits_CodeObj.CodeObj; } return @:_0 __self__.value.peekObj(_idx);
    @:keep
    @:tdfield
    public dynamic function peekPkgPath(_idx:stdgo._internal.internal.pkgbits.Pkgbits_Index.Index):stdgo.GoString return @:_0 __self__.value.peekPkgPath(_idx);
    @:keep
    @:tdfield
    public dynamic function tempDecoderRaw(_k:stdgo._internal.internal.pkgbits.Pkgbits_RelocKind.RelocKind, _idx:stdgo._internal.internal.pkgbits.Pkgbits_Index.Index):stdgo._internal.internal.pkgbits.Pkgbits_Decoder.Decoder return @:_0 __self__.value.tempDecoderRaw(_k, _idx);
    @:keep
    @:tdfield
    public dynamic function newDecoderRaw(_k:stdgo._internal.internal.pkgbits.Pkgbits_RelocKind.RelocKind, _idx:stdgo._internal.internal.pkgbits.Pkgbits_Index.Index):stdgo._internal.internal.pkgbits.Pkgbits_Decoder.Decoder return @:_0 __self__.value.newDecoderRaw(_k, _idx);
    @:keep
    @:tdfield
    public dynamic function retireDecoder(_d:stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_Decoder.Decoder>):Void @:_0 __self__.value.retireDecoder(_d);
    @:keep
    @:tdfield
    public dynamic function tempDecoder(_k:stdgo._internal.internal.pkgbits.Pkgbits_RelocKind.RelocKind, _idx:stdgo._internal.internal.pkgbits.Pkgbits_Index.Index, _marker:stdgo._internal.internal.pkgbits.Pkgbits_SyncMarker.SyncMarker):stdgo._internal.internal.pkgbits.Pkgbits_Decoder.Decoder return @:_0 __self__.value.tempDecoder(_k, _idx, _marker);
    @:keep
    @:tdfield
    public dynamic function newDecoder(_k:stdgo._internal.internal.pkgbits.Pkgbits_RelocKind.RelocKind, _idx:stdgo._internal.internal.pkgbits.Pkgbits_Index.Index, _marker:stdgo._internal.internal.pkgbits.Pkgbits_SyncMarker.SyncMarker):stdgo._internal.internal.pkgbits.Pkgbits_Decoder.Decoder return @:_0 __self__.value.newDecoder(_k, _idx, _marker);
    @:keep
    @:tdfield
    public dynamic function stringIdx(_idx:stdgo._internal.internal.pkgbits.Pkgbits_Index.Index):stdgo.GoString return @:_0 __self__.value.stringIdx(_idx);
    @:keep
    @:tdfield
    public dynamic function dataIdx(_k:stdgo._internal.internal.pkgbits.Pkgbits_RelocKind.RelocKind, _idx:stdgo._internal.internal.pkgbits.Pkgbits_Index.Index):stdgo.GoString return @:_0 __self__.value.dataIdx(_k, _idx);
    @:keep
    @:tdfield
    public dynamic function absIdx(_k:stdgo._internal.internal.pkgbits.Pkgbits_RelocKind.RelocKind, _idx:stdgo._internal.internal.pkgbits.Pkgbits_Index.Index):stdgo.GoInt return @:_0 __self__.value.absIdx(_k, _idx);
    @:keep
    @:tdfield
    public dynamic function fingerprint():stdgo.GoArray<stdgo.GoUInt8> return @:_0 __self__.value.fingerprint();
    @:keep
    @:tdfield
    public dynamic function totalElems():stdgo.GoInt return @:_0 __self__.value.totalElems();
    @:keep
    @:tdfield
    public dynamic function numElems(_k:stdgo._internal.internal.pkgbits.Pkgbits_RelocKind.RelocKind):stdgo.GoInt return @:_0 __self__.value.numElems(_k);
    @:keep
    @:tdfield
    public dynamic function syncMarkers():Bool return @:_0 __self__.value.syncMarkers();
    @:keep
    @:tdfield
    public dynamic function pkgPath():stdgo.GoString return @:_0 __self__.value.pkgPath();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.internal.pkgbits.Pkgbits_PkgDecoderPointer.PkgDecoderPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
