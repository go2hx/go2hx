package _internal.unicode_test;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.unicode.Unicode;
function _linear(_ranges:stdgo.Slice<stdgo._internal.unicode.Unicode_Range16.Range16>, _r:stdgo.GoUInt16):Bool {
        for (_i => _ in _ranges) {
            var _range_ = (stdgo.Go.setRef(_ranges[(_i : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.unicode.Unicode_Range16.Range16>);
            if ((_r < _range_.lo : Bool)) {
                return false;
            };
            if ((_r <= _range_.hi : Bool)) {
                return (((_r - _range_.lo : stdgo.GoUInt16)) % _range_.stride : stdgo.GoUInt16) == ((0 : stdgo.GoUInt16));
            };
        };
        return false;
    }
