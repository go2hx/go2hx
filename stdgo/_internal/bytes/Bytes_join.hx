package stdgo._internal.bytes;
function join(_s:stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>, _sep:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> {
        if ((_s.length) == ((0 : stdgo.GoInt))) {
            return (new stdgo.Slice<stdgo.GoUInt8>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        };
        if ((_s.length) == ((1 : stdgo.GoInt))) {
            return ((null : stdgo.Slice<stdgo.GoUInt8>).__append__(...(_s[(0 : stdgo.GoInt)] : Array<stdgo.GoUInt8>)));
        };
        var _n:stdgo.GoInt = (0 : stdgo.GoInt);
        if (((_sep.length) > (0 : stdgo.GoInt) : Bool)) {
            if (((_sep.length) >= ((2147483647 : stdgo.GoInt) / (((_s.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt) : Bool)) {
                throw stdgo.Go.toInterface(("bytes: Join output length overflow" : stdgo.GoString));
            };
            _n = (_n + (((_sep.length) * (((_s.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt)) : stdgo.GoInt);
        };
        for (__0 => _v in _s) {
            if (((_v.length) > ((2147483647 : stdgo.GoInt) - _n : stdgo.GoInt) : Bool)) {
                throw stdgo.Go.toInterface(("bytes: Join output length overflow" : stdgo.GoString));
            };
            _n = (_n + ((_v.length)) : stdgo.GoInt);
        };
        var _b = stdgo._internal.internal.bytealg.Bytealg_makenozero.makeNoZero(_n);
        var _bp = (_b.__copyTo__(_s[(0 : stdgo.GoInt)]) : stdgo.GoInt);
        for (__1 => _v in (_s.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>)) {
            _bp = (_bp + ((_b.__slice__(_bp) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__(_sep)) : stdgo.GoInt);
            _bp = (_bp + ((_b.__slice__(_bp) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__(_v)) : stdgo.GoInt);
        };
        return _b;
    }
