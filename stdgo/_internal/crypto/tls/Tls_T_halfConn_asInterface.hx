package stdgo._internal.crypto.tls;
class T_halfConn_asInterface {
    @:keep
    public dynamic function _encrypt(_record:stdgo.Slice<stdgo.GoUInt8>, _payload:stdgo.Slice<stdgo.GoUInt8>, _rand:stdgo._internal.io.Io_Reader.Reader):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return __self__.value._encrypt(_record, _payload, _rand);
    @:keep
    public dynamic function _decrypt(_record:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo._internal.crypto.tls.Tls_T_recordType.T_recordType; var _2 : stdgo.Error; } return __self__.value._decrypt(_record);
    @:keep
    public dynamic function _explicitNonceLen():stdgo.GoInt return __self__.value._explicitNonceLen();
    @:keep
    public dynamic function _incSeq():Void __self__.value._incSeq();
    @:keep
    public dynamic function _setTrafficSecret(_suite:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_cipherSuiteTLS13.T_cipherSuiteTLS13>, _level:stdgo._internal.crypto.tls.Tls_QUICEncryptionLevel.QUICEncryptionLevel, _secret:stdgo.Slice<stdgo.GoUInt8>):Void __self__.value._setTrafficSecret(_suite, _level, _secret);
    @:keep
    public dynamic function _changeCipherSpec():stdgo.Error return __self__.value._changeCipherSpec();
    @:keep
    public dynamic function _prepareCipherSpec(_version:stdgo.GoUInt16, _cipher:stdgo.AnyInterface, _mac:stdgo._internal.hash.Hash_Hash.Hash):Void __self__.value._prepareCipherSpec(_version, _cipher, _mac);
    @:keep
    public dynamic function _setErrorLocked(_err:stdgo.Error):stdgo.Error return __self__.value._setErrorLocked(_err);
    @:embedded
    public dynamic function _unlockSlow(__0:stdgo.GoInt32):Void __self__.value._unlockSlow(__0);
    @:embedded
    public dynamic function _lockSlow():Void __self__.value._lockSlow();
    @:embedded
    public dynamic function unlock():Void __self__.value.unlock();
    @:embedded
    public dynamic function tryLock():Bool return __self__.value.tryLock();
    @:embedded
    public dynamic function lock():Void __self__.value.lock();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.crypto.tls.Tls_T_halfConn.T_halfConn>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
