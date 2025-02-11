package stdgo._internal.encoding.pem;
@:keep @:allow(stdgo._internal.encoding.pem.Pem.T_lineBreaker_asInterface) class T_lineBreaker_static_extension {
    @:keep
    @:tdfield
    static public function close( _l:stdgo.Ref<stdgo._internal.encoding.pem.Pem_t_linebreaker.T_lineBreaker>):stdgo.Error {
        @:recv var _l:stdgo.Ref<stdgo._internal.encoding.pem.Pem_t_linebreaker.T_lineBreaker> = _l;
        var _err = (null : stdgo.Error);
        if (((@:checkr _l ?? throw "null pointer dereference")._used > (0 : stdgo.GoInt) : Bool)) {
            {
                var __tmp__ = (@:checkr _l ?? throw "null pointer dereference")._out.write(((@:checkr _l ?? throw "null pointer dereference")._line.__slice__((0 : stdgo.GoInt), (@:checkr _l ?? throw "null pointer dereference")._used) : stdgo.Slice<stdgo.GoUInt8>));
                _err = @:tmpset0 __tmp__._1;
            };
            if (_err != null) {
                return _err;
            };
            {
                var __tmp__ = (@:checkr _l ?? throw "null pointer dereference")._out.write(stdgo._internal.encoding.pem.Pem__nl._nl);
                _err = @:tmpset0 __tmp__._1;
            };
        };
        return _err;
    }
    @:keep
    @:tdfield
    static public function write( _l:stdgo.Ref<stdgo._internal.encoding.pem.Pem_t_linebreaker.T_lineBreaker>, _b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _l:stdgo.Ref<stdgo._internal.encoding.pem.Pem_t_linebreaker.T_lineBreaker> = _l;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        if ((((@:checkr _l ?? throw "null pointer dereference")._used + (_b.length) : stdgo.GoInt) < (64 : stdgo.GoInt) : Bool)) {
            ((@:checkr _l ?? throw "null pointer dereference")._line.__slice__((@:checkr _l ?? throw "null pointer dereference")._used) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__(_b);
            (@:checkr _l ?? throw "null pointer dereference")._used = ((@:checkr _l ?? throw "null pointer dereference")._used + ((_b.length)) : stdgo.GoInt);
            return {
                final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (_b.length), _1 : (null : stdgo.Error) };
                _n = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        };
        {
            var __tmp__ = (@:checkr _l ?? throw "null pointer dereference")._out.write(((@:checkr _l ?? throw "null pointer dereference")._line.__slice__((0 : stdgo.GoInt), (@:checkr _l ?? throw "null pointer dereference")._used) : stdgo.Slice<stdgo.GoUInt8>));
            _n = @:tmpset0 __tmp__._0;
            _err = @:tmpset0 __tmp__._1;
        };
        if (_err != null) {
            return { _0 : _n, _1 : _err };
        };
        var _excess = ((64 : stdgo.GoInt) - (@:checkr _l ?? throw "null pointer dereference")._used : stdgo.GoInt);
        (@:checkr _l ?? throw "null pointer dereference")._used = (0 : stdgo.GoInt);
        {
            var __tmp__ = (@:checkr _l ?? throw "null pointer dereference")._out.write((_b.__slice__((0 : stdgo.GoInt), _excess) : stdgo.Slice<stdgo.GoUInt8>));
            _n = @:tmpset0 __tmp__._0;
            _err = @:tmpset0 __tmp__._1;
        };
        if (_err != null) {
            return { _0 : _n, _1 : _err };
        };
        {
            var __tmp__ = (@:checkr _l ?? throw "null pointer dereference")._out.write(stdgo._internal.encoding.pem.Pem__nl._nl);
            _n = @:tmpset0 __tmp__._0;
            _err = @:tmpset0 __tmp__._1;
        };
        if (_err != null) {
            return { _0 : _n, _1 : _err };
        };
        return {
            final __tmp__ = @:check2r _l.write((_b.__slice__(_excess) : stdgo.Slice<stdgo.GoUInt8>));
            _n = __tmp__._0;
            _err = __tmp__._1;
            { _0 : _n, _1 : _err };
        };
    }
}
