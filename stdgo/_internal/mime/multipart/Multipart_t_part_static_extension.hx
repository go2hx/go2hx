package stdgo._internal.mime.multipart;
@:keep @:allow(stdgo._internal.mime.multipart.Multipart.T_part_asInterface) class T_part_static_extension {
    @:keep
    @:tdfield
    static public function write( _p:stdgo.Ref<stdgo._internal.mime.multipart.Multipart_t_part.T_part>, _d:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _p:stdgo.Ref<stdgo._internal.mime.multipart.Multipart_t_part.T_part> = _p;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        if ((@:checkr _p ?? throw "null pointer dereference")._closed) {
            return {
                final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : stdgo._internal.errors.Errors_new_.new_(("multipart: can\'t write to finished part" : stdgo.GoString)) };
                _n = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        };
        {
            var __tmp__ = (@:checkr (@:checkr _p ?? throw "null pointer dereference")._mw ?? throw "null pointer dereference")._w.write(_d);
            _n = @:tmpset0 __tmp__._0;
            _err = @:tmpset0 __tmp__._1;
        };
        if (_err != null) {
            (@:checkr _p ?? throw "null pointer dereference")._we = _err;
        };
        return { _0 : _n, _1 : _err };
    }
    @:keep
    @:tdfield
    static public function _close( _p:stdgo.Ref<stdgo._internal.mime.multipart.Multipart_t_part.T_part>):stdgo.Error {
        @:recv var _p:stdgo.Ref<stdgo._internal.mime.multipart.Multipart_t_part.T_part> = _p;
        (@:checkr _p ?? throw "null pointer dereference")._closed = true;
        return (@:checkr _p ?? throw "null pointer dereference")._we;
    }
}
