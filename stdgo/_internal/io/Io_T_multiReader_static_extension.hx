package stdgo._internal.io;
@:keep @:allow(stdgo._internal.io.Io.T_multiReader_asInterface) class T_multiReader_static_extension {
    @:keep
    static public function _writeToWithBuffer( _mr:stdgo.Ref<stdgo._internal.io.Io_T_multiReader.T_multiReader>, _w:stdgo._internal.io.Io_Writer.Writer, _buf:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } {
        @:recv var _mr:stdgo.Ref<stdgo._internal.io.Io_T_multiReader.T_multiReader> = _mr;
        var _sum = (0 : stdgo.GoInt64), _err = (null : stdgo.Error);
        for (_i => _r in _mr._readers) {
            var _n:stdgo.GoInt64 = (0 : stdgo.GoInt64);
            {
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_r) : stdgo.Ref<stdgo._internal.io.Io_T_multiReader.T_multiReader>)) : stdgo.Ref<stdgo._internal.io.Io_T_multiReader.T_multiReader>), _1 : true };
                } catch(_) {
                    { _0 : (null : stdgo.Ref<stdgo._internal.io.Io_T_multiReader.T_multiReader>), _1 : false };
                }, _subMr = __tmp__._0, _ok = __tmp__._1;
                if (_ok) {
                    {
                        var __tmp__ = _subMr._writeToWithBuffer(_w, _buf);
                        _n = __tmp__._0;
                        _err = __tmp__._1;
                    };
                } else {
                    {
                        var __tmp__ = stdgo._internal.io.Io__copyBuffer._copyBuffer(_w, _r, _buf);
                        _n = __tmp__._0;
                        _err = __tmp__._1;
                    };
                };
            };
            _sum = (_sum + (_n) : stdgo.GoInt64);
            if (_err != null) {
                _mr._readers = (_mr._readers.__slice__(_i) : stdgo.Slice<stdgo._internal.io.Io_Reader.Reader>);
                return {
                    final __tmp__:{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } = { _0 : _sum, _1 : _err };
                    _sum = __tmp__._0;
                    _err = __tmp__._1;
                    __tmp__;
                };
            };
            _mr._readers[(_i : stdgo.GoInt)] = (null : stdgo._internal.io.Io_Reader.Reader);
        };
        _mr._readers = (null : stdgo.Slice<stdgo._internal.io.Io_Reader.Reader>);
        return {
            final __tmp__:{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } = { _0 : _sum, _1 : (null : stdgo.Error) };
            _sum = __tmp__._0;
            _err = __tmp__._1;
            __tmp__;
        };
    }
    @:keep
    static public function writeTo( _mr:stdgo.Ref<stdgo._internal.io.Io_T_multiReader.T_multiReader>, _w:stdgo._internal.io.Io_Writer.Writer):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } {
        @:recv var _mr:stdgo.Ref<stdgo._internal.io.Io_T_multiReader.T_multiReader> = _mr;
        var _sum = (0 : stdgo.GoInt64), _err = (null : stdgo.Error);
        return {
            final __tmp__:{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } = _mr._writeToWithBuffer(_w, (new stdgo.Slice<stdgo.GoUInt8>((32768 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>));
            _sum = __tmp__._0;
            _err = __tmp__._1;
            __tmp__;
        };
    }
    @:keep
    static public function read( _mr:stdgo.Ref<stdgo._internal.io.Io_T_multiReader.T_multiReader>, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _mr:stdgo.Ref<stdgo._internal.io.Io_T_multiReader.T_multiReader> = _mr;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        while (((_mr._readers.length) > (0 : stdgo.GoInt) : Bool)) {
            if ((_mr._readers.length) == ((1 : stdgo.GoInt))) {
                {
                    var __tmp__ = try {
                        { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_mr._readers[(0 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.io.Io_T_multiReader.T_multiReader>)) : stdgo.Ref<stdgo._internal.io.Io_T_multiReader.T_multiReader>), _1 : true };
                    } catch(_) {
                        { _0 : (null : stdgo.Ref<stdgo._internal.io.Io_T_multiReader.T_multiReader>), _1 : false };
                    }, _r = __tmp__._0, _ok = __tmp__._1;
                    if (_ok) {
                        _mr._readers = _r._readers;
                        continue;
                    };
                };
            };
            {
                var __tmp__ = _mr._readers[(0 : stdgo.GoInt)].read(_p);
                _n = __tmp__._0;
                _err = __tmp__._1;
            };
            if (stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eof))) {
                _mr._readers[(0 : stdgo.GoInt)] = stdgo.Go.asInterface((new stdgo._internal.io.Io_T_eofReader.T_eofReader() : stdgo._internal.io.Io_T_eofReader.T_eofReader));
                _mr._readers = (_mr._readers.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo._internal.io.Io_Reader.Reader>);
            };
            if (((_n > (0 : stdgo.GoInt) : Bool) || (stdgo.Go.toInterface(_err) != stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eof)) : Bool)) {
                if (((stdgo.Go.toInterface(_err) == stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eof)) && ((_mr._readers.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
                    _err = (null : stdgo.Error);
                };
                return { _0 : _n, _1 : _err };
            };
        };
        return {
            final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : stdgo._internal.io.Io_eof.eof };
            _n = __tmp__._0;
            _err = __tmp__._1;
            __tmp__;
        };
    }
}
