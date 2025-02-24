package stdgo._internal.compress.zlib;
@:interface typedef Resetter = stdgo.StructType & {
    @:interfacetypeffun
    function reset(_r:stdgo._internal.io.Io_reader.Reader, _dict:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error;
};
