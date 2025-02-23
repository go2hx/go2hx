package stdgo._internal.hash;
@:interface typedef Hash64 = stdgo.StructType & {
    @:interfacetypeffun
    function sum64():stdgo.GoUInt64;
    function blockSize():stdgo.GoInt;
    function reset():Void;
    function size():stdgo.GoInt;
    function sum(_0:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8>;
    function write(_0:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; };
};
