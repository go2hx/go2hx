package stdgo._internal.io;
@:interface typedef WriterTo = stdgo.StructType & {
    @:interfacetypeffun
    function writeTo(_w:stdgo._internal.io.Io_writer.Writer):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; };
};
