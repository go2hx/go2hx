package stdgo._internal.debug.buildinfo;
@:interface typedef T_exe = stdgo.StructType & {
    @:interfacetypeffun
    function readData(_addr:stdgo.GoUInt64, _size:stdgo.GoUInt64):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; };
    @:interfacetypeffun
    function dataStart():stdgo.GoUInt64;
};
