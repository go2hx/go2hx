package stdgo._internal.crypto.tls;
@:interface typedef T_constantTimeHash = stdgo.StructType & {
    @:interfacetypeffun
    function constantTimeSum(_b:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8>;
    function blockSize():stdgo.GoInt;
    function reset():Void;
    function size():stdgo.GoInt;
    function sum(_0:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8>;
    function write(_0:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; };
};
