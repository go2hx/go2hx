package _internal.bufio_test;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.bufio.Bufio;
function testScanByte(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (_n => _test in _internal.bufio_test.Bufio_test__scanTests._scanTests) {
            var _buf = stdgo._internal.strings.Strings_newReader.newReader(_test?.__copy__());
            var _s = stdgo._internal.bufio.Bufio_newScanner.newScanner(stdgo.Go.asInterface(_buf));
            _s.split(stdgo._internal.bufio.Bufio_scanBytes.scanBytes);
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            {
                _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor(_s.scan(), _i++, {
                    {
                        var _b = _s.bytes();
                        if (((_b.length != (1 : stdgo.GoInt)) || (_b[(0 : stdgo.GoInt)] != _test[(_i : stdgo.GoInt)]) : Bool)) {
                            _t.errorf(("#%d: %d: expected %q got %q" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_test), stdgo.Go.toInterface(_b));
                        };
                    };
                });
            };
            if (_i != ((_test.length))) {
                _t.errorf(("#%d: termination expected at %d; got %d" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface((_test.length)), stdgo.Go.toInterface(_i));
            };
            var _err = (_s.err() : stdgo.Error);
            if (_err != null) {
                _t.errorf(("#%d: %v" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_err));
            };
        };
    }
