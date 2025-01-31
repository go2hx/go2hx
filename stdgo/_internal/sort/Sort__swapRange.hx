package stdgo._internal.sort;
import stdgo._internal.internal.reflectlite.Reflectlite;
import stdgo._internal.math.bits.Bits;
function _swapRange(_data:stdgo._internal.sort.Sort_Interface.Interface, _a:stdgo.GoInt, _b:stdgo.GoInt, _n:stdgo.GoInt):Void {
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < _n : Bool)) {
                _data.swap((_a + _i : stdgo.GoInt), (_b + _i : stdgo.GoInt));
                _i++;
            };
        };
    }
