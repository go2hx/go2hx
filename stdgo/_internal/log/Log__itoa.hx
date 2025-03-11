package stdgo._internal.log;
function _itoa(_buf:stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>, _i:stdgo.GoInt, _wid:stdgo.GoInt):Void {
        var _b:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(20, 20).__setNumber32__();
        var _bp = (19 : stdgo.GoInt);
        while (((_i >= (10 : stdgo.GoInt) : Bool) || (_wid > (1 : stdgo.GoInt) : Bool) : Bool)) {
            _wid--;
            var _q = (_i / (10 : stdgo.GoInt) : stdgo.GoInt);
            _b[(_bp : stdgo.GoInt)] = ((((48 : stdgo.GoInt) + _i : stdgo.GoInt) - (_q * (10 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt8);
            _bp--;
            _i = _q;
        };
        _b[(_bp : stdgo.GoInt)] = (((48 : stdgo.GoInt) + _i : stdgo.GoInt) : stdgo.GoUInt8);
        (_buf : stdgo.Slice<stdgo.GoUInt8>).__setData__(((_buf : stdgo.Slice<stdgo.GoUInt8>).__append__(...((_b.__slice__(_bp) : stdgo.Slice<stdgo.GoUInt8>) : Array<stdgo.GoUInt8>))));
    }
