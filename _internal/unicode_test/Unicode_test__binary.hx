package _internal.unicode_test;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.unicode.Unicode;
function _binary(_ranges:stdgo.Slice<stdgo._internal.unicode.Unicode_Range16.Range16>, _r:stdgo.GoUInt16):Bool {
        var _lo = (0 : stdgo.GoInt);
        var _hi = (_ranges.length : stdgo.GoInt);
        while ((_lo < _hi : Bool)) {
            var _m = (_lo + (((_hi - _lo : stdgo.GoInt)) / (2 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt);
            var _range_ = (stdgo.Go.setRef(_ranges[(_m : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.unicode.Unicode_Range16.Range16>);
            if (((_range_.lo <= _r : Bool) && (_r <= _range_.hi : Bool) : Bool)) {
                return (((_r - _range_.lo : stdgo.GoUInt16)) % _range_.stride : stdgo.GoUInt16) == ((0 : stdgo.GoUInt16));
            };
            if ((_r < _range_.lo : Bool)) {
                _hi = _m;
            } else {
                _lo = (_m + (1 : stdgo.GoInt) : stdgo.GoInt);
            };
        };
        return false;
    }
