package stdgo._internal.io;
@:keep @:allow(stdgo._internal.io.Io.SectionReader_asInterface) class SectionReader_static_extension {
    @:keep
    static public function size( _s:stdgo.Ref<stdgo._internal.io.Io_SectionReader.SectionReader>):stdgo.GoInt64 {
        @:recv var _s:stdgo.Ref<stdgo._internal.io.Io_SectionReader.SectionReader> = _s;
        return (_s._limit - _s._base : stdgo.GoInt64);
    }
    @:keep
    static public function readAt( _s:stdgo.Ref<stdgo._internal.io.Io_SectionReader.SectionReader>, _p:stdgo.Slice<stdgo.GoUInt8>, _off:stdgo.GoInt64):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _s:stdgo.Ref<stdgo._internal.io.Io_SectionReader.SectionReader> = _s;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        if (((_off < (0i64 : stdgo.GoInt64) : Bool) || (_off >= (_s._limit - _s._base : stdgo.GoInt64) : Bool) : Bool)) {
            return {
                final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : stdgo._internal.io.Io_eof.eof };
                _n = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        };
        _off = (_off + (_s._base) : stdgo.GoInt64);
        {
            var _max = (_s._limit - _off : stdgo.GoInt64);
            if (((_p.length : stdgo.GoInt64) > _max : Bool)) {
                _p = (_p.__slice__((0 : stdgo.GoInt), _max) : stdgo.Slice<stdgo.GoUInt8>);
                {
                    var __tmp__ = _s._r.readAt(_p, _off);
                    _n = __tmp__._0;
                    _err = __tmp__._1;
                };
                if (_err == null) {
                    _err = stdgo._internal.io.Io_eof.eof;
                };
                return {
                    final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : _n, _1 : _err };
                    _n = __tmp__._0;
                    _err = __tmp__._1;
                    __tmp__;
                };
            };
        };
        return {
            final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = _s._r.readAt(_p, _off);
            _n = __tmp__._0;
            _err = __tmp__._1;
            __tmp__;
        };
    }
    @:keep
    static public function seek( _s:stdgo.Ref<stdgo._internal.io.Io_SectionReader.SectionReader>, _offset:stdgo.GoInt64, _whence:stdgo.GoInt):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } {
        @:recv var _s:stdgo.Ref<stdgo._internal.io.Io_SectionReader.SectionReader> = _s;
        {
            final __value__ = _whence;
            if (__value__ == ((0 : stdgo.GoInt))) {
                _offset = (_offset + (_s._base) : stdgo.GoInt64);
            } else if (__value__ == ((1 : stdgo.GoInt))) {
                _offset = (_offset + (_s._off) : stdgo.GoInt64);
            } else if (__value__ == ((2 : stdgo.GoInt))) {
                _offset = (_offset + (_s._limit) : stdgo.GoInt64);
            } else {
                return { _0 : (0i64 : stdgo.GoInt64), _1 : stdgo._internal.io.Io__errWhence._errWhence };
            };
        };
        if ((_offset < _s._base : Bool)) {
            return { _0 : (0i64 : stdgo.GoInt64), _1 : stdgo._internal.io.Io__errOffset._errOffset };
        };
        _s._off = _offset;
        return { _0 : (_offset - _s._base : stdgo.GoInt64), _1 : (null : stdgo.Error) };
    }
    @:keep
    static public function read( _s:stdgo.Ref<stdgo._internal.io.Io_SectionReader.SectionReader>, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _s:stdgo.Ref<stdgo._internal.io.Io_SectionReader.SectionReader> = _s;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        if ((_s._off >= _s._limit : Bool)) {
            return {
                final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : stdgo._internal.io.Io_eof.eof };
                _n = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        };
        {
            var _max = (_s._limit - _s._off : stdgo.GoInt64);
            if (((_p.length : stdgo.GoInt64) > _max : Bool)) {
                _p = (_p.__slice__((0 : stdgo.GoInt), _max) : stdgo.Slice<stdgo.GoUInt8>);
            };
        };
        {
            var __tmp__ = _s._r.readAt(_p, _s._off);
            _n = __tmp__._0;
            _err = __tmp__._1;
        };
        _s._off = (_s._off + ((_n : stdgo.GoInt64)) : stdgo.GoInt64);
        return { _0 : _n, _1 : _err };
    }
}
