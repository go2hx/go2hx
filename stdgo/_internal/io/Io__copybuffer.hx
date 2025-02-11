package stdgo._internal.io;
function _copyBuffer(_dst:stdgo._internal.io.Io_writer.Writer, _src:stdgo._internal.io.Io_reader.Reader, _buf:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } {
        var _written = (0 : stdgo.GoInt64), _err = (null : stdgo.Error);
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_src) : stdgo._internal.io.Io_writerto.WriterTo)) : stdgo._internal.io.Io_writerto.WriterTo), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo._internal.io.Io_writerto.WriterTo), _1 : false };
            }, _wt = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                return {
                    final __tmp__ = _wt.writeTo(_dst);
                    _written = __tmp__._0;
                    _err = __tmp__._1;
                    { _0 : _written, _1 : _err };
                };
            };
        };
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_dst) : stdgo._internal.io.Io_readerfrom.ReaderFrom)) : stdgo._internal.io.Io_readerfrom.ReaderFrom), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo._internal.io.Io_readerfrom.ReaderFrom), _1 : false };
            }, _rt = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                return {
                    final __tmp__ = _rt.readFrom(_src);
                    _written = __tmp__._0;
                    _err = __tmp__._1;
                    { _0 : _written, _1 : _err };
                };
            };
        };
        if (_buf == null) {
            var _size = (32768 : stdgo.GoInt);
            {
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_src) : stdgo.Ref<stdgo._internal.io.Io_limitedreader.LimitedReader>)) : stdgo.Ref<stdgo._internal.io.Io_limitedreader.LimitedReader>), _1 : true };
                } catch(_) {
                    { _0 : (null : stdgo.Ref<stdgo._internal.io.Io_limitedreader.LimitedReader>), _1 : false };
                }, _l = __tmp__._0, _ok = __tmp__._1;
                if ((_ok && ((_size : stdgo.GoInt64) > (@:checkr _l ?? throw "null pointer dereference").n : Bool) : Bool)) {
                    if (((@:checkr _l ?? throw "null pointer dereference").n < (1i64 : stdgo.GoInt64) : Bool)) {
                        _size = (1 : stdgo.GoInt);
                    } else {
                        _size = ((@:checkr _l ?? throw "null pointer dereference").n : stdgo.GoInt);
                    };
                };
            };
            _buf = (new stdgo.Slice<stdgo.GoUInt8>((_size : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        };
        while (true) {
            var __tmp__ = _src.read(_buf), _nr:stdgo.GoInt = __tmp__._0, _er:stdgo.Error = __tmp__._1;
            if ((_nr > (0 : stdgo.GoInt) : Bool)) {
                var __tmp__ = _dst.write((_buf.__slice__((0 : stdgo.GoInt), _nr) : stdgo.Slice<stdgo.GoUInt8>)), _nw:stdgo.GoInt = __tmp__._0, _ew:stdgo.Error = __tmp__._1;
                if (((_nw < (0 : stdgo.GoInt) : Bool) || (_nr < _nw : Bool) : Bool)) {
                    _nw = (0 : stdgo.GoInt);
                    if (_ew == null) {
                        _ew = stdgo._internal.io.Io__errinvalidwrite._errInvalidWrite;
                    };
                };
                _written = (_written + ((_nw : stdgo.GoInt64)) : stdgo.GoInt64);
                if (_ew != null) {
                    _err = _ew;
                    break;
                };
                if (_nr != (_nw)) {
                    _err = stdgo._internal.io.Io_errshortwrite.errShortWrite;
                    break;
                };
            };
            if (_er != null) {
                if (stdgo.Go.toInterface(_er) != (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eOF))) {
                    _err = _er;
                };
                break;
            };
        };
        return {
            final __tmp__:{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } = { _0 : _written, _1 : _err };
            _written = __tmp__._0;
            _err = __tmp__._1;
            __tmp__;
        };
    }
