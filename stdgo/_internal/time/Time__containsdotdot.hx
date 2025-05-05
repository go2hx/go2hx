package stdgo._internal.time;
function _containsDotDot(_s:stdgo.GoString):Bool {
        //"file:///home/runner/.go/go1.21.3/src/time/zoneinfo.go#L699"
        if (((_s.length) < (2 : stdgo.GoInt) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/time/zoneinfo.go#L700"
            return false;
        };
        //"file:///home/runner/.go/go1.21.3/src/time/zoneinfo.go#L702"
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < ((_s.length) - (1 : stdgo.GoInt) : stdgo.GoInt) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/time/zoneinfo.go#L703"
                if (((_s[(_i : stdgo.GoInt)] == (46 : stdgo.GoUInt8)) && (_s[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)] == (46 : stdgo.GoUInt8)) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/time/zoneinfo.go#L704"
                    return true;
                };
                _i++;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/time/zoneinfo.go#L707"
        return false;
    }
