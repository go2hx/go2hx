package stdgo._internal.internal.itoa;
function uitoa(_val:stdgo.GoUInt):stdgo.GoString {
        //"file:///home/runner/.go/go1.21.3/src/internal/itoa/itoa.go#L19"
        if (_val == ((0u32 : stdgo.GoUInt))) {
            //"file:///home/runner/.go/go1.21.3/src/internal/itoa/itoa.go#L20"
            return ("0" : stdgo.GoString);
        };
        var _buf:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(20, 20).__setNumber32__();
        var _i = (19 : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/internal/itoa/itoa.go#L24"
        while ((_val >= (10u32 : stdgo.GoUInt) : Bool)) {
            var _q = (_val / (10u32 : stdgo.GoUInt) : stdgo.GoUInt);
            _buf[(_i : stdgo.GoInt)] = ((((48u32 : stdgo.GoUInt) + _val : stdgo.GoUInt) - (_q * (10u32 : stdgo.GoUInt) : stdgo.GoUInt) : stdgo.GoUInt) : stdgo.GoUInt8);
            //"file:///home/runner/.go/go1.21.3/src/internal/itoa/itoa.go#L27"
            _i--;
            _val = _q;
        };
        _buf[(_i : stdgo.GoInt)] = (((48u32 : stdgo.GoUInt) + _val : stdgo.GoUInt) : stdgo.GoUInt8);
        //"file:///home/runner/.go/go1.21.3/src/internal/itoa/itoa.go#L32"
        return ((_buf.__slice__(_i) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)?.__copy__();
    }
