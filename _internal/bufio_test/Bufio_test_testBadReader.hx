package _internal.bufio_test;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.bufio.Bufio;
function testBadReader(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _scanner = stdgo._internal.bufio.Bufio_newScanner.newScanner(stdgo.Go.asInterface((new _internal.bufio_test.Bufio_test_T_endlessZeros.T_endlessZeros() : _internal.bufio_test.Bufio_test_T_endlessZeros.T_endlessZeros)));
        while (_scanner.scan()) {
            _t.fatal(stdgo.Go.toInterface(("read should fail" : stdgo.GoString)));
        };
        var _err = (_scanner.err() : stdgo.Error);
        if (stdgo.Go.toInterface(_err) != (stdgo.Go.toInterface(stdgo._internal.io.Io_errNoProgress.errNoProgress))) {
            _t.errorf(("unexpected error: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
    }
