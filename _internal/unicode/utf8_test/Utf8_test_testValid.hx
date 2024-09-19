package _internal.unicode.utf8_test;
import stdgo._internal.unicode.utf8.Utf8;
function testValid(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (__0 => _tt in _internal.unicode.utf8_test.Utf8_test__validTests._validTests) {
            if (stdgo._internal.unicode.utf8.Utf8_valid.valid((_tt._in : stdgo.Slice<stdgo.GoUInt8>)) != (_tt._out)) {
                _t.errorf(("Valid(%q) = %v; want %v" : stdgo.GoString), stdgo.Go.toInterface(_tt._in), stdgo.Go.toInterface(!_tt._out), stdgo.Go.toInterface(_tt._out));
            };
            if (stdgo._internal.unicode.utf8.Utf8_validString.validString(_tt._in?.__copy__()) != (_tt._out)) {
                _t.errorf(("ValidString(%q) = %v; want %v" : stdgo.GoString), stdgo.Go.toInterface(_tt._in), stdgo.Go.toInterface(!_tt._out), stdgo.Go.toInterface(_tt._out));
            };
        };
    }
