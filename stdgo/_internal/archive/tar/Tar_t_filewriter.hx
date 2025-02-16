package stdgo._internal.archive.tar;
@:interface typedef T_fileWriter = stdgo.StructType & {
    > stdgo._internal.io.Io_writer.Writer,
    > stdgo._internal.archive.tar.Tar_t_filestate.T_fileState,
    @:interfacetypeffun
    function readFrom(_0:stdgo._internal.io.Io_reader.Reader):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; };
};
