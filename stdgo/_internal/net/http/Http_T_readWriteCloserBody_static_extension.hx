package stdgo._internal.net.http;
@:keep @:allow(stdgo._internal.net.http.Http.T_readWriteCloserBody_asInterface) class T_readWriteCloserBody_static_extension {
    @:keep
    static public function read( _b:stdgo.Ref<stdgo._internal.net.http.Http_T_readWriteCloserBody.T_readWriteCloserBody>, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _b:stdgo.Ref<stdgo._internal.net.http.Http_T_readWriteCloserBody.T_readWriteCloserBody> = _b;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        if ((_b._br != null && ((_b._br : Dynamic).__nil__ == null || !(_b._br : Dynamic).__nil__))) {
            {
                var _n = (_b._br.buffered() : stdgo.GoInt);
                if (((_p.length) > _n : Bool)) {
                    _p = (_p.__slice__(0, _n) : stdgo.Slice<stdgo.GoUInt8>);
                };
            };
            {
                var __tmp__ = _b._br.read(_p);
                _n = __tmp__._0;
                _err = __tmp__._1;
            };
            if (_b._br.buffered() == ((0 : stdgo.GoInt))) {
                _b._br = null;
            };
            return {
                final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : _n, _1 : _err };
                _n = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        };
        return {
            final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = _b.readWriteCloser.read(_p);
            _n = __tmp__._0;
            _err = __tmp__._1;
            __tmp__;
        };
    }
    @:embedded
    public static function write( __self__:stdgo._internal.net.http.Http_T_readWriteCloserBody.T_readWriteCloserBody, __0:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.write(__0);
    @:embedded
    public static function close( __self__:stdgo._internal.net.http.Http_T_readWriteCloserBody.T_readWriteCloserBody):stdgo.Error return __self__.close();
}
