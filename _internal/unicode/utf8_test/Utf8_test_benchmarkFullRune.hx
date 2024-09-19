package _internal.unicode.utf8_test;
import stdgo._internal.unicode.utf8.Utf8;
function benchmarkFullRune(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        var _benchmarks = (new stdgo.Slice<_internal.unicode.utf8_test.Utf8_test_T__struct_0.T__struct_0>(3, 3, ...[({ _name : ("ASCII" : stdgo.GoString), _data : (("a" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>) } : _internal.unicode.utf8_test.Utf8_test_T__struct_0.T__struct_0), ({ _name : ("Incomplete" : stdgo.GoString), _data : (stdgo.Go.str(240, 144, 128) : stdgo.Slice<stdgo.GoUInt8>) } : _internal.unicode.utf8_test.Utf8_test_T__struct_0.T__struct_0), ({ _name : ("Japanese" : stdgo.GoString), _data : (("本" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>) } : _internal.unicode.utf8_test.Utf8_test_T__struct_0.T__struct_0)].concat([for (i in 3 ... (3 > 3 ? 3 : 3 : stdgo.GoInt).toBasic()) ({ _name : ("" : stdgo.GoString), _data : (null : stdgo.Slice<stdgo.GoUInt8>) } : _internal.unicode.utf8_test.Utf8_test_T__struct_0.T__struct_0)])) : stdgo.Slice<_internal.unicode.utf8_test.Utf8_test_T__struct_0.T__struct_0>);
        for (__0 => _bm in _benchmarks) {
            _b.run(_bm._name?.__copy__(), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
                {
                    var _i = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                        _internal.unicode.utf8_test.Utf8_test__boolSink._boolSink = stdgo._internal.unicode.utf8.Utf8_fullRune.fullRune(_bm._data);
                    });
                };
            });
        };
    }
