package stdgo._internal.time;
function _match(_s1:stdgo.GoString, _s2:stdgo.GoString):Bool {
        //"file:///home/runner/.go/go1.21.3/src/time/format.go#L372"
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (_s1.length) : Bool)) {
                var _c1 = (_s1[(_i : stdgo.GoInt)] : stdgo.GoUInt8);
var _c2 = (_s2[(_i : stdgo.GoInt)] : stdgo.GoUInt8);
//"file:///home/runner/.go/go1.21.3/src/time/format.go#L375"
                if (_c1 != (_c2)) {
                    _c1 = (_c1 | ((32 : stdgo.GoUInt8)) : stdgo.GoUInt8);
                    _c2 = (_c2 | ((32 : stdgo.GoUInt8)) : stdgo.GoUInt8);
                    //"file:///home/runner/.go/go1.21.3/src/time/format.go#L379"
                    if (((_c1 != (_c2) || (_c1 < (97 : stdgo.GoUInt8) : Bool) : Bool) || (_c1 > (122 : stdgo.GoUInt8) : Bool) : Bool)) {
                        //"file:///home/runner/.go/go1.21.3/src/time/format.go#L380"
                        return false;
                    };
                };
                _i++;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/time/format.go#L384"
        return true;
    }
