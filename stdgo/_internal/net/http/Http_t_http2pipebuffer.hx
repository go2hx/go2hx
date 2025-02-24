package stdgo._internal.net.http;
@:interface typedef T_http2pipeBuffer = stdgo.StructType & {
    @:interfacetypeffun
    function len():stdgo.GoInt;
    function write(_0:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; };
    function read(_0:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; };
};
