package stdgo._internal.time;
import stdgo._internal.unsafe.Unsafe;
function _match(_s1:stdgo.GoString, _s2:stdgo.GoString):Bool {
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_s1.length) : Bool), _i++, {
                var _c1 = (_s1[(_i : stdgo.GoInt)] : stdgo.GoUInt8);
                var _c2 = (_s2[(_i : stdgo.GoInt)] : stdgo.GoUInt8);
                if (_c1 != (_c2)) {
                    _c1 = (_c1 | ((32 : stdgo.GoUInt8)) : stdgo.GoUInt8);
                    _c2 = (_c2 | ((32 : stdgo.GoUInt8)) : stdgo.GoUInt8);
                    if (((_c1 != (_c2) || (_c1 < (97 : stdgo.GoUInt8) : Bool) : Bool) || (_c1 > (122 : stdgo.GoUInt8) : Bool) : Bool)) {
                        return false;
                    };
                };
            });
        };
        return true;
    }