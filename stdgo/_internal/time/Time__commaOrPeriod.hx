package stdgo._internal.time;
import stdgo._internal.unsafe.Unsafe;
function _commaOrPeriod(_b:stdgo.GoUInt8):Bool {
        return ((_b == (46 : stdgo.GoUInt8)) || (_b == (44 : stdgo.GoUInt8)) : Bool);
    }