package _internal.bufio_test;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.bufio.Bufio;
function testLargeReader(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _scanner = stdgo._internal.bufio.Bufio_newScanner.newScanner(stdgo.Go.asInterface((new _internal.bufio_test.Bufio_test_T_largeReader.T_largeReader() : _internal.bufio_test.Bufio_test_T_largeReader.T_largeReader)));
        while (_scanner.scan()) {};
        {
            var __0 = (_scanner.err() : stdgo.Error), __1 = (stdgo._internal.bufio.Bufio_errBadReadCount.errBadReadCount : stdgo.Error);
var _want = __1, _got = __0;
            if (stdgo.Go.toInterface(_got) != (stdgo.Go.toInterface(_want))) {
                _t.errorf(("scanner.Err: got %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
            };
        };
    }
