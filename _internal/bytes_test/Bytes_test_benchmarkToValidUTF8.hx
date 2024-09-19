package _internal.bytes_test;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
function benchmarkToValidUTF8(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        var _tests = (new stdgo.Slice<_internal.bytes_test.Bytes_test_T__struct_14.T__struct_14>(3, 3, ...[({ _name : ("Valid" : stdgo.GoString), _input : (("typical" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>) } : _internal.bytes_test.Bytes_test_T__struct_14.T__struct_14), ({ _name : ("InvalidASCII" : stdgo.GoString), _input : (stdgo.Go.str("foo", 255, "bar") : stdgo.Slice<stdgo.GoUInt8>) } : _internal.bytes_test.Bytes_test_T__struct_14.T__struct_14), ({ _name : ("InvalidNonASCII" : stdgo.GoString), _input : (stdgo.Go.str("日本語", 255, "日本語") : stdgo.Slice<stdgo.GoUInt8>) } : _internal.bytes_test.Bytes_test_T__struct_14.T__struct_14)].concat([for (i in 3 ... (3 > 3 ? 3 : 3 : stdgo.GoInt).toBasic()) ({ _name : ("" : stdgo.GoString), _input : (null : stdgo.Slice<stdgo.GoUInt8>) } : _internal.bytes_test.Bytes_test_T__struct_14.T__struct_14)])) : stdgo.Slice<_internal.bytes_test.Bytes_test_T__struct_14.T__struct_14>);
        var _replacement = (("�" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>);
        _b.resetTimer();
        for (__8 => _test in _tests) {
            _b.run(_test._name?.__copy__(), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
                {
                    var _i = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                        stdgo._internal.bytes.Bytes_toValidUTF8.toValidUTF8(_test._input, _replacement);
                    });
                };
            });
        };
    }
