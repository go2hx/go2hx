package stdgo._internal.encoding.ascii85;
function encode(_dst:stdgo.Slice<stdgo.GoUInt8>, _src:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoInt {
        if ((_src.length) == ((0 : stdgo.GoInt))) {
            return (0 : stdgo.GoInt);
        };
        var _n = (0 : stdgo.GoInt);
        while (((_src.length) > (0 : stdgo.GoInt) : Bool)) {
            _dst[(0 : stdgo.GoInt)] = (0 : stdgo.GoUInt8);
            _dst[(1 : stdgo.GoInt)] = (0 : stdgo.GoUInt8);
            _dst[(2 : stdgo.GoInt)] = (0 : stdgo.GoUInt8);
            _dst[(3 : stdgo.GoInt)] = (0 : stdgo.GoUInt8);
            _dst[(4 : stdgo.GoInt)] = (0 : stdgo.GoUInt8);
            var _v:stdgo.GoUInt32 = (0 : stdgo.GoUInt32);
            {
                var __switchIndex__ = -1;
                var __run__ = true;
                while (__run__) {
                    __run__ = false;
                    {
                        final __value__ = (_src.length);
                        if (__switchIndex__ == 1 || (__switchIndex__ == -1 && (__value__ == (3 : stdgo.GoInt)))) {
                            _v = (_v | (((_src[(2 : stdgo.GoInt)] : stdgo.GoUInt32) << (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32)) : stdgo.GoUInt32);
                            @:fallthrough {
                                __switchIndex__ = 2;
                                __run__ = true;
                                continue;
                            };
                            break;
                        } else if (__switchIndex__ == 2 || (__switchIndex__ == -1 && (__value__ == (2 : stdgo.GoInt)))) {
                            _v = (_v | (((_src[(1 : stdgo.GoInt)] : stdgo.GoUInt32) << (16i64 : stdgo.GoUInt64) : stdgo.GoUInt32)) : stdgo.GoUInt32);
                            @:fallthrough {
                                __switchIndex__ = 3;
                                __run__ = true;
                                continue;
                            };
                            break;
                        } else if (__switchIndex__ == 3 || (__switchIndex__ == -1 && (__value__ == (1 : stdgo.GoInt)))) {
                            _v = (_v | (((_src[(0 : stdgo.GoInt)] : stdgo.GoUInt32) << (24i64 : stdgo.GoUInt64) : stdgo.GoUInt32)) : stdgo.GoUInt32);
                            break;
                            break;
                        } else {
                            _v = (_v | ((_src[(3 : stdgo.GoInt)] : stdgo.GoUInt32)) : stdgo.GoUInt32);
                            @:fallthrough {
                                __switchIndex__ = 1;
                                __run__ = true;
                                continue;
                            };
                        };
                    };
                    break;
                };
            };
            if (((_v == (0u32 : stdgo.GoUInt32)) && ((_src.length) >= (4 : stdgo.GoInt) : Bool) : Bool)) {
                _dst[(0 : stdgo.GoInt)] = (122 : stdgo.GoUInt8);
                _dst = (_dst.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                _src = (_src.__slice__((4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                _n++;
                continue;
            };
            {
                var _i = (4 : stdgo.GoInt);
                while ((_i >= (0 : stdgo.GoInt) : Bool)) {
                    _dst[(_i : stdgo.GoInt)] = ((33 : stdgo.GoUInt8) + ((_v % (85u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoUInt8) : stdgo.GoUInt8);
_v = (_v / ((85u32 : stdgo.GoUInt32)) : stdgo.GoUInt32);
                    _i--;
                };
            };
            var _m = (5 : stdgo.GoInt);
            if (((_src.length) < (4 : stdgo.GoInt) : Bool)) {
                _m = (_m - (((4 : stdgo.GoInt) - (_src.length) : stdgo.GoInt)) : stdgo.GoInt);
                _src = (null : stdgo.Slice<stdgo.GoUInt8>);
            } else {
                _src = (_src.__slice__((4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
            };
            _dst = (_dst.__slice__(_m) : stdgo.Slice<stdgo.GoUInt8>);
            _n = (_n + (_m) : stdgo.GoInt);
        };
        return _n;
    }
