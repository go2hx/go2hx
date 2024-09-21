package _internal.unicode.utf8_test;
import stdgo._internal.unicode.utf8.Utf8;
function testRuneCount(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (__0 => _tt in _internal.unicode.utf8_test.Utf8_test__runecounttests._runecounttests) {
            {
                var _out = (stdgo._internal.unicode.utf8.Utf8_runeCountInString.runeCountInString(_tt._in?.__copy__()) : stdgo.GoInt);
                if (_out != (_tt._out)) {
                    _t.errorf(("RuneCountInString(%q) = %d, want %d" : stdgo.GoString), stdgo.Go.toInterface(_tt._in), stdgo.Go.toInterface(_out), stdgo.Go.toInterface(_tt._out));
                };
            };
            {
                var _out = (stdgo._internal.unicode.utf8.Utf8_runeCount.runeCount((_tt._in : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoInt);
                if (_out != (_tt._out)) {
                    _t.errorf(("RuneCount(%q) = %d, want %d" : stdgo.GoString), stdgo.Go.toInterface(_tt._in), stdgo.Go.toInterface(_out), stdgo.Go.toInterface(_tt._out));
                };
            };
        };
    }
