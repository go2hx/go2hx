package _internal.bytes_test;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
function testRunes(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (__0 => _tt in _internal.bytes_test.Bytes_test_runesTests.runesTests) {
            var _tin = (_tt._in : stdgo.Slice<stdgo.GoUInt8>);
            var _a = stdgo._internal.bytes.Bytes_runes.runes(_tin);
            if (!_internal.bytes_test.Bytes_test__runesEqual._runesEqual(_a, _tt._out)) {
                _t.errorf(("Runes(%q) = %v; want %v" : stdgo.GoString), stdgo.Go.toInterface(_tin), stdgo.Go.toInterface(_a), stdgo.Go.toInterface(_tt._out));
                continue;
            };
            if (!_tt._lossy) {
                var _s = ((_a : stdgo.GoString)?.__copy__() : stdgo.GoString);
                if (_s != (_tt._in)) {
                    _t.errorf(("string(Runes(%q)) = %x; want %x" : stdgo.GoString), stdgo.Go.toInterface(_tin), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_tin));
                };
            };
        };
    }
