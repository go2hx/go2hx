package _internal.crypto.ecdh;
@:keep @:allow(_internal.crypto.ecdh.Ecdh.T_nistCurve_asInterface) class T_nistCurve_static_extension {
    @:keep
    static public function _ecdh<Dynamic>( _c:stdgo.Ref<_internal.crypto.ecdh.Ecdh_T_nistCurve.T_nistCurve<Dynamic>>, _local:stdgo.Ref<_internal.crypto.ecdh.Ecdh_PrivateKey.PrivateKey>, _remote:stdgo.Ref<_internal.crypto.ecdh.Ecdh_PublicKey.PublicKey>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } throw "generic function";
    @:keep
    static public function newPublicKey<Dynamic>( _c:stdgo.Ref<_internal.crypto.ecdh.Ecdh_T_nistCurve.T_nistCurve<Dynamic>>, _key:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Ref<_internal.crypto.ecdh.Ecdh_PublicKey.PublicKey>; var _1 : stdgo.Error; } throw "generic function";
    @:keep
    static public function _privateKeyToPublicKey<Dynamic>( _c:stdgo.Ref<_internal.crypto.ecdh.Ecdh_T_nistCurve.T_nistCurve<Dynamic>>, _key:stdgo.Ref<_internal.crypto.ecdh.Ecdh_PrivateKey.PrivateKey>):stdgo.Ref<_internal.crypto.ecdh.Ecdh_PublicKey.PublicKey> throw "generic function";
    @:keep
    static public function newPrivateKey<Dynamic>( _c:stdgo.Ref<_internal.crypto.ecdh.Ecdh_T_nistCurve.T_nistCurve<Dynamic>>, _key:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Ref<_internal.crypto.ecdh.Ecdh_PrivateKey.PrivateKey>; var _1 : stdgo.Error; } throw "generic function";
    @:keep
    static public function generateKey<Dynamic>( _c:stdgo.Ref<_internal.crypto.ecdh.Ecdh_T_nistCurve.T_nistCurve<Dynamic>>, _rand:stdgo._internal.io.Io_Reader.Reader):{ var _0 : stdgo.Ref<_internal.crypto.ecdh.Ecdh_PrivateKey.PrivateKey>; var _1 : stdgo.Error; } throw "generic function";
    @:keep
    static public function string<Dynamic>( _c:stdgo.Ref<_internal.crypto.ecdh.Ecdh_T_nistCurve.T_nistCurve<Dynamic>>):stdgo.GoString throw "generic function";
}
