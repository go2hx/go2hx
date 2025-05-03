package stdgo._internal.crypto.des;
function _ksRotate(_in:stdgo.GoUInt32):stdgo.Slice<stdgo.GoUInt32> {
        var _out = (null : stdgo.Slice<stdgo.GoUInt32>);
        _out = (new stdgo.Slice<stdgo.GoUInt32>((16 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt32>);
        var _last = (_in : stdgo.GoUInt32);
        //"file:///home/runner/.go/go1.21.3/src/crypto/des/block.go#L216"
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (16 : stdgo.GoInt) : Bool)) {
                var _left = (((_last << (((4 : stdgo.GoUInt8) + stdgo._internal.crypto.des.Des__ksrotations._ksRotations[(_i : stdgo.GoInt)] : stdgo.GoUInt8)) : stdgo.GoUInt32)) >> (4i64 : stdgo.GoUInt64) : stdgo.GoUInt32);
var _right = (((_last << (4i64 : stdgo.GoUInt64) : stdgo.GoUInt32)) >> (((32 : stdgo.GoUInt8) - stdgo._internal.crypto.des.Des__ksrotations._ksRotations[(_i : stdgo.GoInt)] : stdgo.GoUInt8)) : stdgo.GoUInt32);
_out[(_i : stdgo.GoInt)] = (_left | _right : stdgo.GoUInt32);
_last = _out[(_i : stdgo.GoInt)];
                _i++;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/des/block.go#L223"
        return _out;
    }
