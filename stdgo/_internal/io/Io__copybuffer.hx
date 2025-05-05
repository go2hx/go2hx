package stdgo._internal.io;
function _copyBuffer(_dst:stdgo._internal.io.Io_writer.Writer, _src:stdgo._internal.io.Io_reader.Reader, _buf:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } {
        var _written = (0 : stdgo.GoInt64), _err = (null : stdgo.Error);
        //"file:///home/runner/.go/go1.21.3/src/io/io.go#L411"
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_src) : stdgo._internal.io.Io_writerto.WriterTo)) : stdgo._internal.io.Io_writerto.WriterTo), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo._internal.io.Io_writerto.WriterTo), _1 : false };
            }, _wt = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                //"file:///home/runner/.go/go1.21.3/src/io/io.go#L412"
                return ({
                    @:explicitConversion final __tmp__ = _wt.writeTo(_dst);
                    { _0 : __tmp__._0, _1 : __tmp__._1 };
                });
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/io/io.go#L415"
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_dst) : stdgo._internal.io.Io_readerfrom.ReaderFrom)) : stdgo._internal.io.Io_readerfrom.ReaderFrom), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo._internal.io.Io_readerfrom.ReaderFrom), _1 : false };
            }, _rt = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                //"file:///home/runner/.go/go1.21.3/src/io/io.go#L416"
                return ({
                    @:explicitConversion final __tmp__ = _rt.readFrom(_src);
                    { _0 : __tmp__._0, _1 : __tmp__._1 };
                });
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/io/io.go#L418"
        if (_buf == null) {
            var _size = (32768 : stdgo.GoInt);
            //"file:///home/runner/.go/go1.21.3/src/io/io.go#L420"
            {
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_src) : stdgo.Ref<stdgo._internal.io.Io_limitedreader.LimitedReader>)) : stdgo.Ref<stdgo._internal.io.Io_limitedreader.LimitedReader>), _1 : true };
                } catch(_) {
                    { _0 : (null : stdgo.Ref<stdgo._internal.io.Io_limitedreader.LimitedReader>), _1 : false };
                }, _l = __tmp__._0, _ok = __tmp__._1;
                if ((_ok && ((_size : stdgo.GoInt64) > (@:checkr _l ?? throw "null pointer dereference").n : Bool) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/io/io.go#L421"
                    if (((@:checkr _l ?? throw "null pointer dereference").n < (1i64 : stdgo.GoInt64) : Bool)) {
                        _size = (1 : stdgo.GoInt);
                    } else {
                        _size = ((@:checkr _l ?? throw "null pointer dereference").n : stdgo.GoInt);
                    };
                };
            };
            _buf = (new stdgo.Slice<stdgo.GoUInt8>((_size : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        };
        //"file:///home/runner/.go/go1.21.3/src/io/io.go#L429"
        while (true) {
            var __tmp__ = _src.read(_buf), _nr:stdgo.GoInt = __tmp__._0, _er:stdgo.Error = __tmp__._1;
            //"file:///home/runner/.go/go1.21.3/src/io/io.go#L431"
            if ((_nr > (0 : stdgo.GoInt) : Bool)) {
                var __tmp__ = _dst.write((_buf.__slice__((0 : stdgo.GoInt), _nr) : stdgo.Slice<stdgo.GoUInt8>)), _nw:stdgo.GoInt = __tmp__._0, _ew:stdgo.Error = __tmp__._1;
                //"file:///home/runner/.go/go1.21.3/src/io/io.go#L433"
                if (((_nw < (0 : stdgo.GoInt) : Bool) || (_nr < _nw : Bool) : Bool)) {
                    _nw = (0 : stdgo.GoInt);
                    //"file:///home/runner/.go/go1.21.3/src/io/io.go#L435"
                    if (_ew == null) {
                        _ew = stdgo._internal.io.Io__errinvalidwrite._errInvalidWrite;
                    };
                };
                _written = (_written + ((_nw : stdgo.GoInt64)) : stdgo.GoInt64);
                //"file:///home/runner/.go/go1.21.3/src/io/io.go#L440"
                if (_ew != null) {
                    _err = _ew;
                    //"file:///home/runner/.go/go1.21.3/src/io/io.go#L442"
                    break;
                };
                //"file:///home/runner/.go/go1.21.3/src/io/io.go#L444"
                if (_nr != (_nw)) {
                    _err = stdgo._internal.io.Io_errshortwrite.errShortWrite;
                    //"file:///home/runner/.go/go1.21.3/src/io/io.go#L446"
                    break;
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/io/io.go#L449"
            if (_er != null) {
                //"file:///home/runner/.go/go1.21.3/src/io/io.go#L450"
                if (stdgo.Go.toInterface(_er) != (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eOF))) {
                    _err = _er;
                };
                //"file:///home/runner/.go/go1.21.3/src/io/io.go#L453"
                break;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/io/io.go#L456"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } = { _0 : _written, _1 : _err };
            _written = __tmp__._0;
            _err = __tmp__._1;
            __tmp__;
        };
    }
