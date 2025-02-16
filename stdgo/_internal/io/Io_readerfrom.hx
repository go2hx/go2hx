package stdgo._internal.io;
@:interface typedef ReaderFrom = stdgo.StructType & {
    @:interfacetypeffun
    function readFrom(_r:stdgo._internal.io.Io_reader.Reader):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; };
};
