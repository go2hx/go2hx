package stdgo._internal.time;
function _appendNano(_b:stdgo.Slice<stdgo.GoUInt8>, _nanosec:stdgo.GoInt, _std:stdgo.GoInt):stdgo.Slice<stdgo.GoUInt8> {
        var _trim = ((_std & (65535 : stdgo.GoInt) : stdgo.GoInt) == ((35 : stdgo.GoInt)) : Bool);
        var _n = (stdgo._internal.time.Time__digitslen._digitsLen(_std) : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/time/format.go#L496"
        if ((_trim && (((_n == (0 : stdgo.GoInt)) || (_nanosec == (0 : stdgo.GoInt)) : Bool)) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/time/format.go#L497"
            return _b;
        };
        var _dot = (stdgo._internal.time.Time__separator._separator(_std) : stdgo.GoUInt8);
        _b = (_b.__append__(_dot) : stdgo.Slice<stdgo.GoUInt8>);
        _b = stdgo._internal.time.Time__appendint._appendInt(_b, _nanosec, (9 : stdgo.GoInt));
        //"file:///home/runner/.go/go1.21.3/src/time/format.go#L502"
        if ((_n < (9 : stdgo.GoInt) : Bool)) {
            _b = (_b.__slice__(0, (((_b.length) - (9 : stdgo.GoInt) : stdgo.GoInt) + _n : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        };
        //"file:///home/runner/.go/go1.21.3/src/time/format.go#L505"
        if (_trim) {
            //"file:///home/runner/.go/go1.21.3/src/time/format.go#L506"
            while ((((_b.length) > (0 : stdgo.GoInt) : Bool) && (_b[((_b.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] == (48 : stdgo.GoUInt8)) : Bool)) {
                _b = (_b.__slice__(0, ((_b.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
            };
            //"file:///home/runner/.go/go1.21.3/src/time/format.go#L509"
            if ((((_b.length) > (0 : stdgo.GoInt) : Bool) && (_b[((_b.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] == _dot) : Bool)) {
                _b = (_b.__slice__(0, ((_b.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/time/format.go#L513"
        return _b;
    }
