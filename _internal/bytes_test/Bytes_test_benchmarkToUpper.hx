package _internal.bytes_test;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
function benchmarkToUpper(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        for (__0 => _tc in _internal.bytes_test.Bytes_test__upperTests._upperTests) {
            var _tin = (_tc._in : stdgo.Slice<stdgo.GoUInt8>);
            _b.run(_tc._in?.__copy__(), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
                {
                    var _i = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                        var _actual = stdgo._internal.bytes.Bytes_toUpper.toUpper(_tin);
                        if (!stdgo._internal.bytes.Bytes_equal.equal(_actual, _tc._out)) {
                            _b.errorf(("ToUpper(%q) = %q; want %q" : stdgo.GoString), stdgo.Go.toInterface(_tc._in), stdgo.Go.toInterface(_actual), stdgo.Go.toInterface(_tc._out));
                        };
                    });
                };
            });
        };
    }
