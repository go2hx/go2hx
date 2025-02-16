package stdgo._internal.archive.tar;
@:interface typedef T_fileReader = stdgo.StructType & {
    > stdgo._internal.io.Io_reader.Reader,
    > stdgo._internal.archive.tar.Tar_t_filestate.T_fileState,
    @:interfacetypeffun
    function writeTo(_0:stdgo._internal.io.Io_writer.Writer):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; };
};
