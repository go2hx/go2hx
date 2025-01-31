package stdgo._internal.slices;
import stdgo._internal.math.Math;
import stdgo._internal.cmp.Cmp;
import stdgo._internal.unsafe.Unsafe;
import stdgo._internal.strings.Strings;
import stdgo._internal.internal.testenv.Testenv;
import stdgo._internal.testing.Testing;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.math.rand.Rand;
import stdgo._internal.sort.Sort;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.fmt.Fmt;
@:keep @:allow(stdgo._internal.slices.Slices.T_intPairs_asInterface) class T_intPairs_static_extension {
    @:keep
    @:tdfield
    static public function _inOrder( _d:stdgo._internal.slices.Slices_T_intPairs.T_intPairs):Bool {
        @:recv var _d:stdgo._internal.slices.Slices_T_intPairs.T_intPairs = _d;
        var __0 = (-1 : stdgo.GoInt), __1 = (0 : stdgo.GoInt);
var _lastB = __1, _lastA = __0;
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (_d.length) : Bool)) {
                if (_lastA != (_d[(_i : stdgo.GoInt)]._a)) {
                    _lastA = _d[(_i : stdgo.GoInt)]._a;
                    _lastB = _d[(_i : stdgo.GoInt)]._b;
                    {
                        _i++;
                        continue;
                    };
                };
if ((_d[(_i : stdgo.GoInt)]._b <= _lastB : Bool)) {
                    return false;
                };
_lastB = _d[(_i : stdgo.GoInt)]._b;
                _i++;
            };
        };
        return true;
    }
    @:keep
    @:tdfield
    static public function _initB( _d:stdgo._internal.slices.Slices_T_intPairs.T_intPairs):Void {
        @:recv var _d:stdgo._internal.slices.Slices_T_intPairs.T_intPairs = _d;
        for (_i => _ in _d) {
            _d[(_i : stdgo.GoInt)]._b = _i;
        };
    }
}
