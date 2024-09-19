package _internal.bufio_test;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.bufio.Bufio;
function testNegativeEOFReader(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _r = ((10 : _internal.bufio_test.Bufio_test_T_negativeEOFReader.T_negativeEOFReader) : _internal.bufio_test.Bufio_test_T_negativeEOFReader.T_negativeEOFReader);
        var _scanner = stdgo._internal.bufio.Bufio_newScanner.newScanner(stdgo.Go.asInterface(stdgo.Go.pointer(_r)));
        var _c = (0 : stdgo.GoInt);
        while (_scanner.scan()) {
            _c++;
            if ((_c > (1 : stdgo.GoInt) : Bool)) {
                _t.error(stdgo.Go.toInterface(("read too many lines" : stdgo.GoString)));
                break;
            };
        };
        {
            var __0 = (_scanner.err() : stdgo.Error), __1 = (stdgo._internal.bufio.Bufio_errBadReadCount.errBadReadCount : stdgo.Error);
var _want = __1, _got = __0;
            if (stdgo.Go.toInterface(_got) != (stdgo.Go.toInterface(_want))) {
                _t.errorf(("scanner.Err: got %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
            };
        };
    }
