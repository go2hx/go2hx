package stdgo._internal.io;
@:keep @:allow(stdgo._internal.io.Io.SectionReader_asInterface) class SectionReader_static_extension {
    @:keep
    @:tdfield
    static public function size( _s:stdgo.Ref<stdgo._internal.io.Io_sectionreader.SectionReader>):stdgo.GoInt64 {
        @:recv var _s:stdgo.Ref<stdgo._internal.io.Io_sectionreader.SectionReader> = _s;
        return ((@:checkr _s ?? throw "null pointer dereference")._limit - (@:checkr _s ?? throw "null pointer dereference")._base : stdgo.GoInt64);
    }
    @:keep
    @:tdfield
    static public function readAt( _s:stdgo.Ref<stdgo._internal.io.Io_sectionreader.SectionReader>, _p:stdgo.Slice<stdgo.GoUInt8>, _off:stdgo.GoInt64):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _s:stdgo.Ref<stdgo._internal.io.Io_sectionreader.SectionReader> = _s;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        if (((_off < (0i64 : stdgo.GoInt64) : Bool) || (_off >= ((@:checkr _s ?? throw "null pointer dereference")._limit - (@:checkr _s ?? throw "null pointer dereference")._base : stdgo.GoInt64) : Bool) : Bool)) {
            return {
                final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : stdgo._internal.io.Io_eof.eOF };
                _n = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        };
        _off = (_off + ((@:checkr _s ?? throw "null pointer dereference")._base) : stdgo.GoInt64);
        {
            var _max = ((@:checkr _s ?? throw "null pointer dereference")._limit - _off : stdgo.GoInt64);
            if (((_p.length : stdgo.GoInt64) > _max : Bool)) {
                _p = (_p.__slice__((0 : stdgo.GoInt), _max) : stdgo.Slice<stdgo.GoUInt8>);
                {
                    var __tmp__ = (@:checkr _s ?? throw "null pointer dereference")._r.readAt(_p, _off);
                    _n = @:tmpset0 __tmp__._0;
                    _err = @:tmpset0 __tmp__._1;
                };
                if (_err == null) {
                    _err = stdgo._internal.io.Io_eof.eOF;
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
            final __tmp__ = (@:checkr _s ?? throw "null pointer dereference")._r.readAt(_p, _off);
            _n = __tmp__._0;
            _err = __tmp__._1;
            { _0 : _n, _1 : _err };
        };
    }
    @:keep
    @:tdfield
    static public function seek( _s:stdgo.Ref<stdgo._internal.io.Io_sectionreader.SectionReader>, _offset:stdgo.GoInt64, _whence:stdgo.GoInt):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } {
        @:recv var _s:stdgo.Ref<stdgo._internal.io.Io_sectionreader.SectionReader> = _s;
        {
            final __value__ = _whence;
            if (__value__ == ((0 : stdgo.GoInt))) {
                _offset = (_offset + ((@:checkr _s ?? throw "null pointer dereference")._base) : stdgo.GoInt64);
            } else if (__value__ == ((1 : stdgo.GoInt))) {
                _offset = (_offset + ((@:checkr _s ?? throw "null pointer dereference")._off) : stdgo.GoInt64);
            } else if (__value__ == ((2 : stdgo.GoInt))) {
                _offset = (_offset + ((@:checkr _s ?? throw "null pointer dereference")._limit) : stdgo.GoInt64);
            } else {
                return { _0 : (0i64 : stdgo.GoInt64), _1 : stdgo._internal.io.Io__errwhence._errWhence };
            };
        };
        if ((_offset < (@:checkr _s ?? throw "null pointer dereference")._base : Bool)) {
            return { _0 : (0i64 : stdgo.GoInt64), _1 : stdgo._internal.io.Io__erroffset._errOffset };
        };
        (@:checkr _s ?? throw "null pointer dereference")._off = _offset;
        return { _0 : (_offset - (@:checkr _s ?? throw "null pointer dereference")._base : stdgo.GoInt64), _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function read( _s:stdgo.Ref<stdgo._internal.io.Io_sectionreader.SectionReader>, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _s:stdgo.Ref<stdgo._internal.io.Io_sectionreader.SectionReader> = _s;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        if (((@:checkr _s ?? throw "null pointer dereference")._off >= (@:checkr _s ?? throw "null pointer dereference")._limit : Bool)) {
            return {
                final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : stdgo._internal.io.Io_eof.eOF };
                _n = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        };
        {
            var _max = ((@:checkr _s ?? throw "null pointer dereference")._limit - (@:checkr _s ?? throw "null pointer dereference")._off : stdgo.GoInt64);
            if (((_p.length : stdgo.GoInt64) > _max : Bool)) {
                _p = (_p.__slice__((0 : stdgo.GoInt), _max) : stdgo.Slice<stdgo.GoUInt8>);
            };
        };
        {
            var __tmp__ = (@:checkr _s ?? throw "null pointer dereference")._r.readAt(_p, (@:checkr _s ?? throw "null pointer dereference")._off);
            _n = @:tmpset0 __tmp__._0;
            _err = @:tmpset0 __tmp__._1;
        };
        (@:checkr _s ?? throw "null pointer dereference")._off = ((@:checkr _s ?? throw "null pointer dereference")._off + ((_n : stdgo.GoInt64)) : stdgo.GoInt64);
        return { _0 : _n, _1 : _err };
    }
}
