package stdgo._internal.math.big;
function _mulBytes(_x:stdgo.Slice<stdgo.GoUInt8>, _y:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> {
        var _z = (new stdgo.Slice<stdgo.GoUInt8>(((_x.length) + (_y.length) : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        var _k0 = ((_z.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
        {
            var _j = ((_y.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
            while ((_j >= (0 : stdgo.GoInt) : Bool)) {
                var _d = (_y[(_j : stdgo.GoInt)] : stdgo.GoInt);
if (_d != ((0 : stdgo.GoInt))) {
                    var _k = (_k0 : stdgo.GoInt);
                    var _carry = (0 : stdgo.GoInt);
                    {
                        var _i = ((_x.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
                        while ((_i >= (0 : stdgo.GoInt) : Bool)) {
                            var _t = (((_z[(_k : stdgo.GoInt)] : stdgo.GoInt) + ((_x[(_i : stdgo.GoInt)] : stdgo.GoInt) * _d : stdgo.GoInt) : stdgo.GoInt) + _carry : stdgo.GoInt);
{
                                final __tmp__0 = (_t : stdgo.GoUInt8);
                                final __tmp__1 = (_t >> (8i64 : stdgo.GoUInt64) : stdgo.GoInt);
                                final __tmp__2 = _z;
                                final __tmp__3 = (_k : stdgo.GoInt);
                                __tmp__2[__tmp__3] = __tmp__0;
                                _carry = __tmp__1;
                            };
_k--;
                            _i--;
                        };
                    };
                    _z[(_k : stdgo.GoInt)] = (_carry : stdgo.GoUInt8);
                };
_k0--;
                _j--;
            };
        };
        var _i = (0 : stdgo.GoInt);
        while (((_i < (_z.length) : Bool) && (_z[(_i : stdgo.GoInt)] == (0 : stdgo.GoUInt8)) : Bool)) {
            _i++;
        };
        return (_z.__slice__(_i) : stdgo.Slice<stdgo.GoUInt8>);
    }
