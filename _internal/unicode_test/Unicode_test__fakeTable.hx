package _internal.unicode_test;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.unicode.Unicode;
function _fakeTable(_n:stdgo.GoInt):stdgo.Slice<stdgo._internal.unicode.Unicode_Range16.Range16> {
        var _r16:stdgo.Slice<stdgo._internal.unicode.Unicode_Range16.Range16> = (null : stdgo.Slice<stdgo._internal.unicode.Unicode_Range16.Range16>);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _n : Bool), _i++, {
                _r16 = (_r16.__append__((new stdgo._internal.unicode.Unicode_Range16.Range16((((_i * (5 : stdgo.GoInt) : stdgo.GoInt) + (10 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt16), (((_i * (5 : stdgo.GoInt) : stdgo.GoInt) + (12 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt16), (1 : stdgo.GoUInt16)) : stdgo._internal.unicode.Unicode_Range16.Range16)));
            });
        };
        return _r16;
    }
