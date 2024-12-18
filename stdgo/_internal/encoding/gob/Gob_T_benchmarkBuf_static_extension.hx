package stdgo._internal.encoding.gob;
@:keep @:allow(stdgo._internal.encoding.gob.Gob.T_benchmarkBuf_asInterface) class T_benchmarkBuf_static_extension {
    @:keep
    static public function _reset( _b:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_benchmarkBuf.T_benchmarkBuf>):Void {
        @:recv var _b:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_benchmarkBuf.T_benchmarkBuf> = _b;
        _b._offset = (0 : stdgo.GoInt);
    }
    @:keep
    static public function readByte( _b:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_benchmarkBuf.T_benchmarkBuf>):{ var _0 : stdgo.GoUInt8; var _1 : stdgo.Error; } {
        @:recv var _b:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_benchmarkBuf.T_benchmarkBuf> = _b;
        var _c = (0 : stdgo.GoUInt8), _err = (null : stdgo.Error);
        if ((_b._offset >= (_b._data.length) : Bool)) {
            return {
                final __tmp__:{ var _0 : stdgo.GoUInt8; var _1 : stdgo.Error; } = { _0 : (0 : stdgo.GoUInt8), _1 : stdgo._internal.io.Io_eof.eof };
                _c = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        };
        _c = _b._data[(_b._offset : stdgo.GoInt)];
        _b._offset++;
        return { _0 : _c, _1 : _err };
    }
    @:keep
    static public function read( _b:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_benchmarkBuf.T_benchmarkBuf>, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _b:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_benchmarkBuf.T_benchmarkBuf> = _b;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        _n = _p.__copyTo__((_b._data.__slice__(_b._offset) : stdgo.Slice<stdgo.GoUInt8>));
        if (_n == ((0 : stdgo.GoInt))) {
            return {
                final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : stdgo._internal.io.Io_eof.eof };
                _n = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        };
        _b._offset = (_b._offset + (_n) : stdgo.GoInt);
        return { _0 : _n, _1 : _err };
    }
}
