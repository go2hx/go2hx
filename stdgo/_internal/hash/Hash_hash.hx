package stdgo._internal.hash;
@:interface typedef Hash = stdgo.StructType & {
    @:interfacetypeffun
    function sum(_b:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8>;
    @:interfacetypeffun
    function reset():Void;
    @:interfacetypeffun
    function size():stdgo.GoInt;
    @:interfacetypeffun
    function blockSize():stdgo.GoInt;
    function write(_0:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; };
};
