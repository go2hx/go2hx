package _internal.unicode_test;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.unicode.Unicode;
function testSimpleFold(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (__0 => _tt in _internal.unicode_test.Unicode_test__simpleFoldTests._simpleFoldTests) {
            var _cycle = (_tt : stdgo.Slice<stdgo.GoInt32>);
            var _r = (_cycle[((_cycle.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoInt32);
            for (__1 => _out in _cycle) {
                {
                    var _r = (stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_r) : stdgo.GoInt32);
                    if (_r != (_out)) {
                        _t.errorf(("SimpleFold(%#U) = %#U, want %#U" : stdgo.GoString), stdgo.Go.toInterface(_r), stdgo.Go.toInterface(_r), stdgo.Go.toInterface(_out));
                    };
                };
                _r = _out;
            };
        };
        {
            var _r = (stdgo._internal.unicode.Unicode_simpleFold.simpleFold((-42 : stdgo.GoInt32)) : stdgo.GoInt32);
            if (_r != ((-42 : stdgo.GoInt32))) {
                _t.errorf(("SimpleFold(-42) = %v, want -42" : stdgo.GoString), stdgo.Go.toInterface(_r));
            };
        };
    }
