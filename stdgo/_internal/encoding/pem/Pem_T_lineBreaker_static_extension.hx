package stdgo._internal.encoding.pem;
@:keep @:allow(stdgo._internal.encoding.pem.Pem.T_lineBreaker_asInterface) class T_lineBreaker_static_extension {
    @:keep
    static public function close( _l:stdgo.Ref<stdgo._internal.encoding.pem.Pem_T_lineBreaker.T_lineBreaker>):stdgo.Error {
        @:recv var _l:stdgo.Ref<stdgo._internal.encoding.pem.Pem_T_lineBreaker.T_lineBreaker> = _l;
        var _err = (null : stdgo.Error);
        if ((_l._used > (0 : stdgo.GoInt) : Bool)) {
            {
                var __tmp__ = _l._out.write((_l._line.__slice__((0 : stdgo.GoInt), _l._used) : stdgo.Slice<stdgo.GoUInt8>));
                _err = __tmp__._1;
            };
            if (_err != null) {
                return _err;
            };
            {
                var __tmp__ = _l._out.write(stdgo._internal.encoding.pem.Pem__nl._nl);
                _err = __tmp__._1;
            };
        };
        return _err;
    }
    @:keep
    static public function write( _l:stdgo.Ref<stdgo._internal.encoding.pem.Pem_T_lineBreaker.T_lineBreaker>, _b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _l:stdgo.Ref<stdgo._internal.encoding.pem.Pem_T_lineBreaker.T_lineBreaker> = _l;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        if (((_l._used + (_b.length) : stdgo.GoInt) < (64 : stdgo.GoInt) : Bool)) {
            stdgo.Go.copySlice((_l._line.__slice__(_l._used) : stdgo.Slice<stdgo.GoUInt8>), _b);
            _l._used = (_l._used + ((_b.length)) : stdgo.GoInt);
            return {
                final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (_b.length), _1 : (null : stdgo.Error) };
                _n = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        };
        {
            var __tmp__ = _l._out.write((_l._line.__slice__((0 : stdgo.GoInt), _l._used) : stdgo.Slice<stdgo.GoUInt8>));
            _n = __tmp__._0;
            _err = __tmp__._1;
        };
        if (_err != null) {
            return { _0 : _n, _1 : _err };
        };
        var _excess = ((64 : stdgo.GoInt) - _l._used : stdgo.GoInt);
        _l._used = (0 : stdgo.GoInt);
        {
            var __tmp__ = _l._out.write((_b.__slice__((0 : stdgo.GoInt), _excess) : stdgo.Slice<stdgo.GoUInt8>));
            _n = __tmp__._0;
            _err = __tmp__._1;
        };
        if (_err != null) {
            return { _0 : _n, _1 : _err };
        };
        {
            var __tmp__ = _l._out.write(stdgo._internal.encoding.pem.Pem__nl._nl);
            _n = __tmp__._0;
            _err = __tmp__._1;
        };
        if (_err != null) {
            return { _0 : _n, _1 : _err };
        };
        return {
            final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = _l.write((_b.__slice__(_excess) : stdgo.Slice<stdgo.GoUInt8>));
            _n = __tmp__._0;
            _err = __tmp__._1;
            __tmp__;
        };
    }
}
