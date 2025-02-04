package stdgo._internal.crypto.tls;
class T_halfConn_asInterface {
    @:keep
    @:tdfield
    public dynamic function _encrypt(_record:stdgo.Slice<stdgo.GoUInt8>, _payload:stdgo.Slice<stdgo.GoUInt8>, _rand:stdgo._internal.io.Io_reader.Reader):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return @:_0 __self__.value._encrypt(_record, _payload, _rand);
    @:keep
    @:tdfield
    public dynamic function _decrypt(_record:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo._internal.crypto.tls.Tls_t_recordtype.T_recordType; var _2 : stdgo.Error; } return @:_0 __self__.value._decrypt(_record);
    @:keep
    @:tdfield
    public dynamic function _explicitNonceLen():stdgo.GoInt return @:_0 __self__.value._explicitNonceLen();
    @:keep
    @:tdfield
    public dynamic function _incSeq():Void @:_0 __self__.value._incSeq();
    @:keep
    @:tdfield
    public dynamic function _setTrafficSecret(_suite:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_ciphersuitetls13.T_cipherSuiteTLS13>, _level:stdgo._internal.crypto.tls.Tls_quicencryptionlevel.QUICEncryptionLevel, _secret:stdgo.Slice<stdgo.GoUInt8>):Void @:_0 __self__.value._setTrafficSecret(_suite, _level, _secret);
    @:keep
    @:tdfield
    public dynamic function _changeCipherSpec():stdgo.Error return @:_0 __self__.value._changeCipherSpec();
    @:keep
    @:tdfield
    public dynamic function _prepareCipherSpec(_version:stdgo.GoUInt16, _cipher:stdgo.AnyInterface, _mac:stdgo._internal.hash.Hash_hash.Hash):Void @:_0 __self__.value._prepareCipherSpec(_version, _cipher, _mac);
    @:keep
    @:tdfield
    public dynamic function _setErrorLocked(_err:stdgo.Error):stdgo.Error return @:_0 __self__.value._setErrorLocked(_err);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _unlockSlow(_0:stdgo.GoInt32):Void @:_0 __self__.value._unlockSlow(_0);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _lockSlow():Void @:_0 __self__.value._lockSlow();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function unlock():Void @:_0 __self__.value.unlock();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function tryLock():Bool return @:_0 __self__.value.tryLock();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function lock():Void @:_0 __self__.value.lock();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.crypto.tls.Tls_t_halfconnpointer.T_halfConnPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
