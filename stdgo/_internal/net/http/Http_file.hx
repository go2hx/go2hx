package stdgo._internal.net.http;
@:interface typedef File = stdgo.StructType & {
    > stdgo._internal.io.Io_closer.Closer,
    > stdgo._internal.io.Io_reader.Reader,
    > stdgo._internal.io.Io_seeker.Seeker,
    @:interfacetypeffun
    function readdir(_count:stdgo.GoInt):{ var _0 : stdgo.Slice<stdgo._internal.io.fs.Fs_fileinfo.FileInfo>; var _1 : stdgo.Error; };
    @:interfacetypeffun
    function stat():{ var _0 : stdgo._internal.io.fs.Fs_fileinfo.FileInfo; var _1 : stdgo.Error; };
};
