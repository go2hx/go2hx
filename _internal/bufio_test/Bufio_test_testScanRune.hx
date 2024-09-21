package _internal.bufio_test;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.bufio.Bufio;
function testScanRune(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (_n => _test in _internal.bufio_test.Bufio_test__scanTests._scanTests) {
            var _buf = stdgo._internal.strings.Strings_newReader.newReader(_test?.__copy__());
            var _s = stdgo._internal.bufio.Bufio_newScanner.newScanner(stdgo.Go.asInterface(_buf));
            _s.split(stdgo._internal.bufio.Bufio_scanRunes.scanRunes);
            var __0:stdgo.GoInt = (0 : stdgo.GoInt), __1:stdgo.GoInt = (0 : stdgo.GoInt);
var _runeCount = __1, _i = __0;
            var _expect:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            for (__key__ => __value__ in (_test : stdgo.GoString)) {
                _expect = __value__;
                _i = __key__;
                if (!_s.scan()) {
                    break;
                };
                _runeCount++;
                var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRune.decodeRune(_s.bytes()), _got:stdgo.GoInt32 = __tmp__._0, __0:stdgo.GoInt = __tmp__._1;
                if (_got != (_expect)) {
                    _t.errorf(("#%d: %d: expected %q got %q" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_expect), stdgo.Go.toInterface(_got));
                };
            };
            if (_s.scan()) {
                _t.errorf(("#%d: scan ran too long, got %q" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_s.text()));
            };
            var _testRuneCount = (stdgo._internal.unicode.utf8.Utf8_runeCountInString.runeCountInString(_test?.__copy__()) : stdgo.GoInt);
            if (_runeCount != (_testRuneCount)) {
                _t.errorf(("#%d: termination expected at %d; got %d" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_testRuneCount), stdgo.Go.toInterface(_runeCount));
            };
            var _err = (_s.err() : stdgo.Error);
            if (_err != null) {
                _t.errorf(("#%d: %v" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_err));
            };
        };
    }
