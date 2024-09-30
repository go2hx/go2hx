package stdgo._internal.mime.multipart;
@:keep @:allow(stdgo._internal.mime.multipart.Multipart.T_part_asInterface) class T_part_static_extension {
    @:keep
    static public function write( _p:stdgo.Ref<stdgo._internal.mime.multipart.Multipart_T_part.T_part>, _d:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _p:stdgo.Ref<stdgo._internal.mime.multipart.Multipart_T_part.T_part> = _p;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        if (_p._closed) {
            return { _0 : (0 : stdgo.GoInt), _1 : stdgo._internal.errors.Errors_new_.new_(("multipart: can\'t write to finished part" : stdgo.GoString)) };
        };
        {
            var __tmp__ = _p._mw._w.write(_d);
            _n = __tmp__._0;
            _err = __tmp__._1;
        };
        if (_err != null) {
            _p._we = _err;
        };
        return { _0 : _n, _1 : _err };
    }
    @:keep
    static public function _close( _p:stdgo.Ref<stdgo._internal.mime.multipart.Multipart_T_part.T_part>):stdgo.Error {
        @:recv var _p:stdgo.Ref<stdgo._internal.mime.multipart.Multipart_T_part.T_part> = _p;
        _p._closed = true;
        return _p._we;
    }
}
