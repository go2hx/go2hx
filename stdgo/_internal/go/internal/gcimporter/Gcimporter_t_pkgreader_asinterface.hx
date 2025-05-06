package stdgo._internal.go.internal.gcimporter;
class T_pkgReader_asInterface {
    @:keep
    @:tdfield
    public dynamic function _objDictIdx(_idx:stdgo._internal.internal.pkgbits.Pkgbits_index.Index):stdgo.Ref<stdgo._internal.go.internal.gcimporter.Gcimporter_t_readerdict.T_readerDict> return @:_0 __self__.value._objDictIdx(_idx);
    @:keep
    @:tdfield
    public dynamic function _objIdx(_idx:stdgo._internal.internal.pkgbits.Pkgbits_index.Index):{ var _0 : stdgo.Ref<stdgo._internal.go.types.Types_package.Package>; var _1 : stdgo.GoString; } return @:_0 __self__.value._objIdx(_idx);
    @:keep
    @:tdfield
    public dynamic function _typIdx(_info:stdgo._internal.go.internal.gcimporter.Gcimporter_t_typeinfo.T_typeInfo, _dict:stdgo.Ref<stdgo._internal.go.internal.gcimporter.Gcimporter_t_readerdict.T_readerDict>):stdgo._internal.go.types.Types_type_.Type_ return @:_0 __self__.value._typIdx(_info, _dict);
    @:keep
    @:tdfield
    public dynamic function _pkgIdx(_idx:stdgo._internal.internal.pkgbits.Pkgbits_index.Index):stdgo.Ref<stdgo._internal.go.types.Types_package.Package> return @:_0 __self__.value._pkgIdx(_idx);
    @:keep
    @:tdfield
    public dynamic function _posBaseIdx(_idx:stdgo._internal.internal.pkgbits.Pkgbits_index.Index):stdgo.GoString return @:_0 __self__.value._posBaseIdx(_idx);
    @:keep
    @:tdfield
    public dynamic function _retireReader(_r:stdgo.Ref<stdgo._internal.go.internal.gcimporter.Gcimporter_t_reader.T_reader>):Void @:_0 __self__.value._retireReader(_r);
    @:keep
    @:tdfield
    public dynamic function _tempReader(_k:stdgo._internal.internal.pkgbits.Pkgbits_relockind.RelocKind, _idx:stdgo._internal.internal.pkgbits.Pkgbits_index.Index, _marker:stdgo._internal.internal.pkgbits.Pkgbits_syncmarker.SyncMarker):stdgo.Ref<stdgo._internal.go.internal.gcimporter.Gcimporter_t_reader.T_reader> return @:_0 __self__.value._tempReader(_k, _idx, _marker);
    @:keep
    @:tdfield
    public dynamic function _newReader(_k:stdgo._internal.internal.pkgbits.Pkgbits_relockind.RelocKind, _idx:stdgo._internal.internal.pkgbits.Pkgbits_index.Index, _marker:stdgo._internal.internal.pkgbits.Pkgbits_syncmarker.SyncMarker):stdgo.Ref<stdgo._internal.go.internal.gcimporter.Gcimporter_t_reader.T_reader> return @:_0 __self__.value._newReader(_k, _idx, _marker);
    @:keep
    @:tdfield
    public dynamic function _later(_fn:() -> Void):Void @:_0 __self__.value._later(_fn);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function totalElems():stdgo.GoInt return @:_0 __self__.value.totalElems();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function tempDecoderRaw(_0:stdgo._internal.internal.pkgbits.Pkgbits_relockind.RelocKind, _1:stdgo._internal.internal.pkgbits.Pkgbits_index.Index):stdgo._internal.internal.pkgbits.Pkgbits_decoder.Decoder return @:_0 __self__.value.tempDecoderRaw(_0, _1);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function tempDecoder(_0:stdgo._internal.internal.pkgbits.Pkgbits_relockind.RelocKind, _1:stdgo._internal.internal.pkgbits.Pkgbits_index.Index, _2:stdgo._internal.internal.pkgbits.Pkgbits_syncmarker.SyncMarker):stdgo._internal.internal.pkgbits.Pkgbits_decoder.Decoder return @:_0 __self__.value.tempDecoder(_0, _1, _2);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function syncMarkers():Bool return @:_0 __self__.value.syncMarkers();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function stringIdx(_0:stdgo._internal.internal.pkgbits.Pkgbits_index.Index):stdgo.GoString return @:_0 __self__.value.stringIdx(_0);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function retireDecoder(_0:stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_decoder.Decoder>):Void @:_0 __self__.value.retireDecoder(_0);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function pkgPath():stdgo.GoString return @:_0 __self__.value.pkgPath();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function peekPkgPath(_0:stdgo._internal.internal.pkgbits.Pkgbits_index.Index):stdgo.GoString return @:_0 __self__.value.peekPkgPath(_0);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function peekObj(_0:stdgo._internal.internal.pkgbits.Pkgbits_index.Index):{ var _0 : stdgo.GoString; var _1 : stdgo.GoString; var _2 : stdgo._internal.internal.pkgbits.Pkgbits_codeobj.CodeObj; } return @:_0 __self__.value.peekObj(_0);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function numElems(_0:stdgo._internal.internal.pkgbits.Pkgbits_relockind.RelocKind):stdgo.GoInt return @:_0 __self__.value.numElems(_0);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function newDecoderRaw(_0:stdgo._internal.internal.pkgbits.Pkgbits_relockind.RelocKind, _1:stdgo._internal.internal.pkgbits.Pkgbits_index.Index):stdgo._internal.internal.pkgbits.Pkgbits_decoder.Decoder return @:_0 __self__.value.newDecoderRaw(_0, _1);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function newDecoder(_0:stdgo._internal.internal.pkgbits.Pkgbits_relockind.RelocKind, _1:stdgo._internal.internal.pkgbits.Pkgbits_index.Index, _2:stdgo._internal.internal.pkgbits.Pkgbits_syncmarker.SyncMarker):stdgo._internal.internal.pkgbits.Pkgbits_decoder.Decoder return @:_0 __self__.value.newDecoder(_0, _1, _2);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function fingerprint():stdgo.GoArray<stdgo.GoUInt8> return @:_0 __self__.value.fingerprint();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function dataIdx(_0:stdgo._internal.internal.pkgbits.Pkgbits_relockind.RelocKind, _1:stdgo._internal.internal.pkgbits.Pkgbits_index.Index):stdgo.GoString return @:_0 __self__.value.dataIdx(_0, _1);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function absIdx(_0:stdgo._internal.internal.pkgbits.Pkgbits_relockind.RelocKind, _1:stdgo._internal.internal.pkgbits.Pkgbits_index.Index):stdgo.GoInt return @:_0 __self__.value.absIdx(_0, _1);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.go.internal.gcimporter.Gcimporter_t_pkgreaderpointer.T_pkgReaderPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
