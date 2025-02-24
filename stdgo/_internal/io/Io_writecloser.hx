package stdgo._internal.io;
@:interface typedef WriteCloser = stdgo.StructType & {
    function write(_0:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; };
    function close():stdgo.Error;
};
