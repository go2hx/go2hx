package _internal.bufio_test;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.bufio.Bufio;
function testEmptyLinesOK(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _c = ((10000 : _internal.bufio_test.Bufio_test_T_countdown.T_countdown) : _internal.bufio_test.Bufio_test_T_countdown.T_countdown);
        var _s = stdgo._internal.bufio.Bufio_newScanner.newScanner(stdgo.Go.asInterface(stdgo._internal.strings.Strings_newReader.newReader(stdgo._internal.strings.Strings_repeat.repeat(("\n" : stdgo.GoString), (10000 : stdgo.GoInt))?.__copy__())));
        _s.split(_c._split);
        while (_s.scan()) {};
        if (_s.err() != null) {
            _t.fatal(stdgo.Go.toInterface(("after scan:" : stdgo.GoString)), stdgo.Go.toInterface(_s.err()));
        };
        if (_c != ((0 : _internal.bufio_test.Bufio_test_T_countdown.T_countdown))) {
            _t.fatalf(("stopped with %d left to process" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_c)));
        };
    }
