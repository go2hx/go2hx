package stdgo._internal.io;
function readAtLeast(_r:stdgo._internal.io.Io_reader.Reader, _buf:stdgo.Slice<stdgo.GoUInt8>, _min:stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        //"file:///home/runner/.go/go1.21.3/src/io/io.go#L330"
        if (((_buf.length) < _min : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/io/io.go#L331"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : stdgo._internal.io.Io_errshortbuffer.errShortBuffer };
                _n = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/io/io.go#L333"
        while (((_n < _min : Bool) && (_err == null) : Bool)) {
            var _nn:stdgo.GoInt = (0 : stdgo.GoInt);
            {
                var __tmp__ = _r.read((_buf.__slice__(_n) : stdgo.Slice<stdgo.GoUInt8>));
                _nn = @:tmpset0 __tmp__._0;
                _err = @:tmpset0 __tmp__._1;
            };
            _n = (_n + (_nn) : stdgo.GoInt);
        };
        //"file:///home/runner/.go/go1.21.3/src/io/io.go#L338"
        if ((_n >= _min : Bool)) {
            _err = (null : stdgo.Error);
        } else if (((_n > (0 : stdgo.GoInt) : Bool) && (stdgo.Go.toInterface(_err) == stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eOF)) : Bool)) {
            _err = stdgo._internal.io.Io_errunexpectedeof.errUnexpectedEOF;
        };
        //"file:///home/runner/.go/go1.21.3/src/io/io.go#L343"
        return { _0 : _n, _1 : _err };
    }
