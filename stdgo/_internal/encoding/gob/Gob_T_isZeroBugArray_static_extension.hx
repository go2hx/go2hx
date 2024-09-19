package stdgo._internal.encoding.gob;
@:keep @:allow(stdgo._internal.encoding.gob.Gob.T_isZeroBugArray_asInterface) class T_isZeroBugArray_static_extension {
    @:keep
    static public function gobDecode( _a:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_isZeroBugArray.T_isZeroBugArray>, _data:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error {
        @:recv var _a:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_isZeroBugArray.T_isZeroBugArray> = _a;
        if ((_data.length) != ((_a.length))) {
            return stdgo._internal.io.Io_eof.eof;
        };
        _a[(0 : stdgo.GoInt)] = _data[(0 : stdgo.GoInt)];
        _a[(1 : stdgo.GoInt)] = _data[(1 : stdgo.GoInt)];
        return (null : stdgo.Error);
    }
    @:keep
    static public function gobEncode( _a:stdgo._internal.encoding.gob.Gob_T_isZeroBugArray.T_isZeroBugArray):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _a:stdgo._internal.encoding.gob.Gob_T_isZeroBugArray.T_isZeroBugArray = _a?.__copy__();
        var _b = (null : stdgo.Slice<stdgo.GoUInt8>), _e = (null : stdgo.Error);
        _b = (_b.__append__(...((_a.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>) : Array<stdgo.GoUInt8>)));
        return { _0 : _b, _1 : (null : stdgo.Error) };
    }
}