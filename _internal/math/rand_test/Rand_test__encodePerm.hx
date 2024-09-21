package _internal.math.rand_test;
import stdgo._internal.math.rand.Rand;
import stdgo._internal.math.rand.Rand;
import stdgo._internal.math.rand.Rand;
import stdgo._internal.math.rand.Rand;
import stdgo._internal.math.rand.Rand;
function _encodePerm(_s:stdgo.Slice<stdgo.GoInt>):stdgo.GoInt {
        for (_i => _x in _s) {
            var _r = (_s.__slice__((_i + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>);
            for (_j => _y in _r) {
                if ((_y > _x : Bool)) {
                    _r[(_j : stdgo.GoInt)]--;
                };
            };
        };
        var _m = (0 : stdgo.GoInt);
        var _fact = (1 : stdgo.GoInt);
        {
            var _i = ((_s.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
            stdgo.Go.cfor((_i >= (0 : stdgo.GoInt) : Bool), _i--, {
                _m = (_m + ((_s[(_i : stdgo.GoInt)] * _fact : stdgo.GoInt)) : stdgo.GoInt);
                _fact = (_fact * (((_s.length) - _i : stdgo.GoInt)) : stdgo.GoInt);
            });
        };
        return _m;
    }
