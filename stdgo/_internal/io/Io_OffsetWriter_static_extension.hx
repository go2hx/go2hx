package stdgo._internal.io;
@:keep @:allow(stdgo._internal.io.Io.OffsetWriter_asInterface) class OffsetWriter_static_extension {
    @:keep
    static public function seek( _o:stdgo.Ref<stdgo._internal.io.Io_OffsetWriter.OffsetWriter>, _offset:stdgo.GoInt64, _whence:stdgo.GoInt):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } {
        @:recv var _o:stdgo.Ref<stdgo._internal.io.Io_OffsetWriter.OffsetWriter> = _o;
        {
            final __value__ = _whence;
            if (__value__ == ((0 : stdgo.GoInt))) {
                _offset = (_offset + (_o._base) : stdgo.GoInt64);
            } else if (__value__ == ((1 : stdgo.GoInt))) {
                _offset = (_offset + (_o._off) : stdgo.GoInt64);
            } else {
                return { _0 : (0i64 : stdgo.GoInt64), _1 : stdgo._internal.io.Io__errWhence._errWhence };
            };
        };
        if ((_offset < _o._base : Bool)) {
            return { _0 : (0i64 : stdgo.GoInt64), _1 : stdgo._internal.io.Io__errOffset._errOffset };
        };
        _o._off = _offset;
        return { _0 : (_offset - _o._base : stdgo.GoInt64), _1 : (null : stdgo.Error) };
    }
    @:keep
    static public function writeAt( _o:stdgo.Ref<stdgo._internal.io.Io_OffsetWriter.OffsetWriter>, _p:stdgo.Slice<stdgo.GoUInt8>, _off:stdgo.GoInt64):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _o:stdgo.Ref<stdgo._internal.io.Io_OffsetWriter.OffsetWriter> = _o;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        if ((_off < (0i64 : stdgo.GoInt64) : Bool)) {
            return { _0 : _n = (0 : stdgo.GoInt), _1 : _err = stdgo._internal.io.Io__errOffset._errOffset };
        };
        _off = (_off + (_o._base) : stdgo.GoInt64);
        return {
            var __tmp__ = _o._w.writeAt(_p, _off);
            _n = __tmp__._0;
            _err = __tmp__._1;
            __tmp__;
        };
    }
    @:keep
    static public function write( _o:stdgo.Ref<stdgo._internal.io.Io_OffsetWriter.OffsetWriter>, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _o:stdgo.Ref<stdgo._internal.io.Io_OffsetWriter.OffsetWriter> = _o;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        {
            var __tmp__ = _o._w.writeAt(_p, _o._off);
            _n = __tmp__._0;
            _err = __tmp__._1;
        };
        _o._off = (_o._off + ((_n : stdgo.GoInt64)) : stdgo.GoInt64);
        return { _0 : _n, _1 : _err };
    }
}
