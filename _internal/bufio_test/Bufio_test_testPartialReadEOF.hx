package _internal.bufio_test;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.bufio.Bufio;
function testPartialReadEOF(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _src = (new stdgo.Slice<stdgo.GoUInt8>((10 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        var _eofR = (stdgo.Go.setRef(({ _buf : _src } : _internal.bufio_test.Bufio_test_T_eofReader.T_eofReader)) : stdgo.Ref<_internal.bufio_test.Bufio_test_T_eofReader.T_eofReader>);
        var _r = stdgo._internal.bufio.Bufio_newReader.newReader(stdgo.Go.asInterface(_eofR));
        var _dest = (new stdgo.Slice<stdgo.GoUInt8>((5 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        var __tmp__ = _r.read(_dest), _read:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatalf(("unexpected error: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        {
            var _n = (_dest.length : stdgo.GoInt);
            if (_read != (_n)) {
                _t.fatalf(("read %d bytes; wanted %d bytes" : stdgo.GoString), stdgo.Go.toInterface(_read), stdgo.Go.toInterface(_n));
            };
        };
        {
            var _n = (_eofR._buf.length : stdgo.GoInt);
            if (_n != ((0 : stdgo.GoInt))) {
                _t.fatalf(("got %d bytes left in bufio.Reader source; want 0 bytes" : stdgo.GoString), stdgo.Go.toInterface(_n));
            };
        };
        {
            var _n = (_r.buffered() : stdgo.GoInt);
            if (_n != ((5 : stdgo.GoInt))) {
                _t.fatalf(("got %d bytes buffered in bufio.Reader; want 5 bytes" : stdgo.GoString), stdgo.Go.toInterface(_n));
            };
        };
        {
            var __tmp__ = _r.read((new stdgo.Slice<stdgo.GoUInt8>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>));
            _read = __tmp__._0;
            _err = __tmp__._1;
        };
        if (_err != null) {
            _t.fatalf(("unexpected error: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        if (_read != ((0 : stdgo.GoInt))) {
            _t.fatalf(("read %d bytes; want 0 bytes" : stdgo.GoString), stdgo.Go.toInterface(_read));
        };
    }
