package stdgo._internal.io;
@:interface typedef ByteScanner = stdgo.StructType & {
    @:interfacetypeffun
    function unreadByte():stdgo.Error;
    function readByte():{ var _0 : stdgo.GoUInt8; var _1 : stdgo.Error; };
};
