package stdgo._internal.crypto.tls;
@:interface typedef T_handshakeMessage = stdgo.StructType & {
    @:interfacetypeffun
    function _marshal():{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; };
    @:interfacetypeffun
    function _unmarshal(_0:stdgo.Slice<stdgo.GoUInt8>):Bool;
};
