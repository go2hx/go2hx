package stdgo._internal.io;
@:interface typedef Reader = stdgo.StructType & {
    @:interfacetypeffun
    function read(_p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; };
};
