package stdgo._internal.crypto.subtle;
function constantTimeCopy(_v:stdgo.GoInt, _x:stdgo.Slice<stdgo.GoUInt8>, _y:stdgo.Slice<stdgo.GoUInt8>):Void {
        if ((_x.length) != ((_y.length))) {
            throw stdgo.Go.toInterface(("subtle: slices have different lengths" : stdgo.GoString));
        };
        var _xmask = ((_v - (1 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt8);
        var _ymask = (-1 ^ ((_v - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoUInt8);
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (_x.length) : Bool)) {
                _x[(_i : stdgo.GoInt)] = ((_x[(_i : stdgo.GoInt)] & _xmask : stdgo.GoUInt8) | (_y[(_i : stdgo.GoInt)] & _ymask : stdgo.GoUInt8) : stdgo.GoUInt8);
                _i++;
            };
        };
    }
