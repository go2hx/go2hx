package stdgo._internal.io;
@:interface typedef ReadCloser = stdgo.StructType & {
    public dynamic function read(_0:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; };
    public dynamic function close():stdgo.Error;
};
