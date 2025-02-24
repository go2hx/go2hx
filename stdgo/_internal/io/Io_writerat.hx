package stdgo._internal.io;
@:interface typedef WriterAt = stdgo.StructType & {
    @:interfacetypeffun
    function writeAt(_p:stdgo.Slice<stdgo.GoUInt8>, _off:stdgo.GoInt64):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; };
};
