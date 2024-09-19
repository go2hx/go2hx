package _internal.vendor.golang_dot_org.x.net.idna;
function _ascii(_s:stdgo.GoString):Bool {
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_s.length) : Bool), _i++, {
                if ((_s[(_i : stdgo.GoInt)] >= (128 : stdgo.GoUInt8) : Bool)) {
                    return false;
                };
            });
        };
        return true;
    }
