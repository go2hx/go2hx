package stdgo._internal.crypto.ecdh;
@:keep @:allow(stdgo._internal.crypto.ecdh.Ecdh.T_nistCurve_asInterface) class T_nistCurve_static_extension {
    @:keep
    @:tdfield
    static public function _ecdh( _c:stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_t_nistcurve.T_nistCurve<Dynamic>>, _local:stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_privatekey.PrivateKey>, _remote:stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_publickey.PublicKey>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } throw "generic function is not supported";
    @:keep
    @:tdfield
    static public function newPublicKey( _c:stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_t_nistcurve.T_nistCurve<Dynamic>>, _key:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_publickey.PublicKey>; var _1 : stdgo.Error; } throw "generic function is not supported";
    @:keep
    @:tdfield
    static public function _privateKeyToPublicKey( _c:stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_t_nistcurve.T_nistCurve<Dynamic>>, _key:stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_privatekey.PrivateKey>):stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_publickey.PublicKey> throw "generic function is not supported";
    @:keep
    @:tdfield
    static public function newPrivateKey( _c:stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_t_nistcurve.T_nistCurve<Dynamic>>, _key:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_privatekey.PrivateKey>; var _1 : stdgo.Error; } throw "generic function is not supported";
    @:keep
    @:tdfield
    static public function generateKey( _c:stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_t_nistcurve.T_nistCurve<Dynamic>>, _rand:stdgo._internal.io.Io_reader.Reader):{ var _0 : stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_privatekey.PrivateKey>; var _1 : stdgo.Error; } throw "generic function is not supported";
    @:keep
    @:tdfield
    static public function string( _c:stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_t_nistcurve.T_nistCurve<Dynamic>>):stdgo.GoString throw "generic function is not supported";
}
