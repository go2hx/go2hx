package _internal.vendor.golang_dot_org.x.text.transform;
function _grow(_b:stdgo.Slice<stdgo.GoUInt8>, _n:stdgo.GoInt):stdgo.Slice<stdgo.GoUInt8> {
        var _m = (_b.length : stdgo.GoInt);
        if ((_m <= (32 : stdgo.GoInt) : Bool)) {
            _m = (64 : stdgo.GoInt);
        } else if ((_m <= (256 : stdgo.GoInt) : Bool)) {
            _m = (_m * ((2 : stdgo.GoInt)) : stdgo.GoInt);
        } else {
            _m = (_m + ((_m >> (1i64 : stdgo.GoUInt64) : stdgo.GoInt)) : stdgo.GoInt);
        };
        var _buf = (new stdgo.Slice<stdgo.GoUInt8>((_m : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        stdgo.Go.copySlice(_buf, (_b.__slice__(0, _n) : stdgo.Slice<stdgo.GoUInt8>));
        return _buf;
    }
