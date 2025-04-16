package stdgo._internal.io;
@:interface typedef ReadSeeker = stdgo.StructType & {
    public dynamic function read(_0:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; };
    public dynamic function seek(_0:stdgo.GoInt64, _1:stdgo.GoInt):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; };
};
