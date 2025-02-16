package stdgo._internal.io;
@:interface typedef Writer = stdgo.StructType & {
    @:interfacetypeffun
    function write(_p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; };
};
