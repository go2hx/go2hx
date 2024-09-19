package _internal.unicode.utf16_test;
import stdgo._internal.unicode.utf16.Utf16;
function benchmarkAppendRuneValidASCII(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        var _data = (new stdgo.Slice<stdgo.GoInt32>(5, 5, ...[(104 : stdgo.GoInt32), (101 : stdgo.GoInt32), (108 : stdgo.GoInt32), (108 : stdgo.GoInt32), (111 : stdgo.GoInt32)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
        var _a = (new stdgo.Slice<stdgo.GoUInt16>((0 : stdgo.GoInt).toBasic(), ((_data.length) * (2 : stdgo.GoInt) : stdgo.GoInt)).__setNumber32__() : stdgo.Slice<stdgo.GoUInt16>);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                for (__8 => _u in _data) {
                    _a = stdgo._internal.unicode.utf16.Utf16_appendRune.appendRune(_a, _u);
                };
                _a = (_a.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt16>);
            });
        };
    }
