package stdgo._internal.net.http;
@:keep @:allow(stdgo._internal.net.http.Http.T_readWriteCloserBody_asInterface) class T_readWriteCloserBody_static_extension {
    @:keep
    @:tdfield
    static public function read( _b:stdgo.Ref<stdgo._internal.net.http.Http_t_readwritecloserbody.T_readWriteCloserBody>, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _b:stdgo.Ref<stdgo._internal.net.http.Http_t_readwritecloserbody.T_readWriteCloserBody> = _b;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        if (((@:checkr _b ?? throw "null pointer dereference")._br != null && (((@:checkr _b ?? throw "null pointer dereference")._br : Dynamic).__nil__ == null || !((@:checkr _b ?? throw "null pointer dereference")._br : Dynamic).__nil__))) {
            {
                var _n = (@:check2r (@:checkr _b ?? throw "null pointer dereference")._br.buffered() : stdgo.GoInt);
                if (((_p.length) > _n : Bool)) {
                    _p = (_p.__slice__(0, _n) : stdgo.Slice<stdgo.GoUInt8>);
                };
            };
            {
                var __tmp__ = @:check2r (@:checkr _b ?? throw "null pointer dereference")._br.read(_p);
                _n = @:tmpset0 __tmp__._0;
                _err = @:tmpset0 __tmp__._1;
            };
            if (@:check2r (@:checkr _b ?? throw "null pointer dereference")._br.buffered() == ((0 : stdgo.GoInt))) {
                (@:checkr _b ?? throw "null pointer dereference")._br = null;
            };
            return {
                final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : _n, _1 : _err };
                _n = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        };
        return {
            final __tmp__ = (@:checkr _b ?? throw "null pointer dereference").readWriteCloser.read(_p);
            _n = __tmp__._0;
            _err = __tmp__._1;
            { _0 : _n, _1 : _err };
        };
    }
    @:embedded
    @:embeddededffieldsffun
    public static function write( __self__:stdgo._internal.net.http.Http_t_readwritecloserbody.T_readWriteCloserBody, _0:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:_5 __self__.write(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function close( __self__:stdgo._internal.net.http.Http_t_readwritecloserbody.T_readWriteCloserBody):stdgo.Error return @:_5 __self__.close();
}
