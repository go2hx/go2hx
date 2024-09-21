package _internal.io_test;
import stdgo._internal.io.Io;
import stdgo._internal.io.Io;
import stdgo._internal.io.Io;
function _testReadAtLeast(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>, _rb:stdgo._internal.io.Io_ReadWriter.ReadWriter):Void {
        _rb.write((("0123" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>));
        var _buf = (new stdgo.Slice<stdgo.GoUInt8>((2 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        var __tmp__ = stdgo._internal.io.Io_readAtLeast.readAtLeast(_rb, _buf, (2 : stdgo.GoInt)), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.error(stdgo.Go.toInterface(_err));
        };
        if (_n != ((2 : stdgo.GoInt))) {
            _t.errorf(("expected to have read 2 bytes, got %v" : stdgo.GoString), stdgo.Go.toInterface(_n));
        };
        {
            var __tmp__ = stdgo._internal.io.Io_readAtLeast.readAtLeast(_rb, _buf, (4 : stdgo.GoInt));
            _n = __tmp__._0;
            _err = __tmp__._1;
        };
        if (stdgo.Go.toInterface(_err) != (stdgo.Go.toInterface(stdgo._internal.io.Io_errShortBuffer.errShortBuffer))) {
            _t.errorf(("expected ErrShortBuffer got %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        if (_n != ((0 : stdgo.GoInt))) {
            _t.errorf(("expected to have read 0 bytes, got %v" : stdgo.GoString), stdgo.Go.toInterface(_n));
        };
        {
            var __tmp__ = stdgo._internal.io.Io_readAtLeast.readAtLeast(_rb, _buf, (1 : stdgo.GoInt));
            _n = __tmp__._0;
            _err = __tmp__._1;
        };
        if (_err != null) {
            _t.error(stdgo.Go.toInterface(_err));
        };
        if (_n != ((2 : stdgo.GoInt))) {
            _t.errorf(("expected to have read 2 bytes, got %v" : stdgo.GoString), stdgo.Go.toInterface(_n));
        };
        {
            var __tmp__ = stdgo._internal.io.Io_readAtLeast.readAtLeast(_rb, _buf, (2 : stdgo.GoInt));
            _n = __tmp__._0;
            _err = __tmp__._1;
        };
        if (stdgo.Go.toInterface(_err) != (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eof))) {
            _t.errorf(("expected EOF, got %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        if (_n != ((0 : stdgo.GoInt))) {
            _t.errorf(("expected to have read 0 bytes, got %v" : stdgo.GoString), stdgo.Go.toInterface(_n));
        };
        _rb.write((("4" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>));
        {
            var __tmp__ = stdgo._internal.io.Io_readAtLeast.readAtLeast(_rb, _buf, (2 : stdgo.GoInt));
            _n = __tmp__._0;
            _err = __tmp__._1;
        };
        var _want = (stdgo._internal.io.Io_errUnexpectedEOF.errUnexpectedEOF : stdgo.Error);
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_rb) : stdgo.Ref<_internal.io_test.Io_test_T_dataAndErrorBuffer.T_dataAndErrorBuffer>)) : stdgo.Ref<_internal.io_test.Io_test_T_dataAndErrorBuffer.T_dataAndErrorBuffer>), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo.Ref<_internal.io_test.Io_test_T_dataAndErrorBuffer.T_dataAndErrorBuffer>), _1 : false };
            }, _rb = __tmp__._0, _ok = __tmp__._1;
            if ((_ok && (stdgo.Go.toInterface(_rb._err) != stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eof)) : Bool)) {
                _want = _rb._err;
            };
        };
        if (stdgo.Go.toInterface(_err) != (stdgo.Go.toInterface(_want))) {
            _t.errorf(("expected %v, got %v" : stdgo.GoString), stdgo.Go.toInterface(_want), stdgo.Go.toInterface(_err));
        };
        if (_n != ((1 : stdgo.GoInt))) {
            _t.errorf(("expected to have read 1 bytes, got %v" : stdgo.GoString), stdgo.Go.toInterface(_n));
        };
    }
