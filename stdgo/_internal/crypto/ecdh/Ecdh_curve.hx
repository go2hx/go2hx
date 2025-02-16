package stdgo._internal.crypto.ecdh;
@:interface typedef Curve = stdgo.StructType & {
    @:interfacetypeffun
    function generateKey(_rand:stdgo._internal.io.Io_reader.Reader):{ var _0 : stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_privatekey.PrivateKey>; var _1 : stdgo.Error; };
    @:interfacetypeffun
    function newPrivateKey(_key:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_privatekey.PrivateKey>; var _1 : stdgo.Error; };
    @:interfacetypeffun
    function newPublicKey(_key:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_publickey.PublicKey>; var _1 : stdgo.Error; };
    @:interfacetypeffun
    function _ecdh(_local:stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_privatekey.PrivateKey>, _remote:stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_publickey.PublicKey>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; };
    @:interfacetypeffun
    function _privateKeyToPublicKey(_0:stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_privatekey.PrivateKey>):stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_publickey.PublicKey>;
};
