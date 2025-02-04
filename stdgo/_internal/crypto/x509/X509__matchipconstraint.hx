package stdgo._internal.crypto.x509;
function _matchIPConstraint(_ip:stdgo._internal.net.Net_ip.IP, _constraint:stdgo.Ref<stdgo._internal.net.Net_ipnet.IPNet>):{ var _0 : Bool; var _1 : stdgo.Error; } {
        if ((_ip.length) != (((@:checkr _constraint ?? throw "null pointer dereference").iP.length))) {
            return { _0 : false, _1 : (null : stdgo.Error) };
        };
        for (_i => _ in _ip) {
            {
                var _mask = ((@:checkr _constraint ?? throw "null pointer dereference").mask[(_i : stdgo.GoInt)] : stdgo.GoUInt8);
                if ((_ip[(_i : stdgo.GoInt)] & _mask : stdgo.GoUInt8) != (((@:checkr _constraint ?? throw "null pointer dereference").iP[(_i : stdgo.GoInt)] & _mask : stdgo.GoUInt8))) {
                    return { _0 : false, _1 : (null : stdgo.Error) };
                };
            };
        };
        return { _0 : true, _1 : (null : stdgo.Error) };
    }
