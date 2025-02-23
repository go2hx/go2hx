package stdgo._internal.archive.tar;
@:interface typedef T_fileWriter = stdgo.StructType & {
    @:interfacetypeffun
    function readFrom(_0:stdgo._internal.io.Io_reader.Reader):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; };
    function write(_0:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; };
    function _logicalRemaining():stdgo.GoInt64;
    function _physicalRemaining():stdgo.GoInt64;
};
