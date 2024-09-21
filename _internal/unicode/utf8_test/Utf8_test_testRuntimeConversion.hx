package _internal.unicode.utf8_test;
import stdgo._internal.unicode.utf8.Utf8;
function testRuntimeConversion(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (__0 => _ts in _internal.unicode.utf8_test.Utf8_test__testStrings._testStrings) {
            var _count = (stdgo._internal.unicode.utf8.Utf8_runeCountInString.runeCountInString(_ts?.__copy__()) : stdgo.GoInt);
            {
                var _n = (_internal.unicode.utf8_test.Utf8_test__runtimeRuneCount._runtimeRuneCount(_ts?.__copy__()) : stdgo.GoInt);
                if (_n != (_count)) {
                    _t.errorf(("%q: len([]rune()) counted %d runes; got %d from RuneCountInString" : stdgo.GoString), stdgo.Go.toInterface(_ts), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_count));
                    break;
                };
            };
            var _runes = (_ts : stdgo.Slice<stdgo.GoInt32>);
            {
                var _n = (_runes.length : stdgo.GoInt);
                if (_n != (_count)) {
                    _t.errorf(("%q: []rune() has length %d; got %d from RuneCountInString" : stdgo.GoString), stdgo.Go.toInterface(_ts), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_count));
                    break;
                };
            };
            var _i = (0 : stdgo.GoInt);
            for (__1 => _r in _ts) {
                if (_r != (_runes[(_i : stdgo.GoInt)])) {
                    _t.errorf(("%q[%d]: expected %c (%U); got %c (%U)" : stdgo.GoString), stdgo.Go.toInterface(_ts), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_runes[(_i : stdgo.GoInt)]), stdgo.Go.toInterface(_runes[(_i : stdgo.GoInt)]), stdgo.Go.toInterface(_r), stdgo.Go.toInterface(_r));
                };
                _i++;
            };
        };
    }
