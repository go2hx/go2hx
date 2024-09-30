package stdgo._internal.crypto.x509;
function _matchIPConstraint(_ip:stdgo._internal.net.Net_IP.IP, _constraint:stdgo.Ref<stdgo._internal.net.Net_IPNet.IPNet>):{ var _0 : Bool; var _1 : stdgo.Error; } {
        if ((_ip.length) != ((_constraint.ip.length))) {
            return { _0 : false, _1 : (null : stdgo.Error) };
        };
        for (_i => _ in _ip) {
            {
                var _mask = (_constraint.mask[(_i : stdgo.GoInt)] : stdgo.GoUInt8);
                if ((_ip[(_i : stdgo.GoInt)] & _mask : stdgo.GoUInt8) != ((_constraint.ip[(_i : stdgo.GoInt)] & _mask : stdgo.GoUInt8))) {
                    return { _0 : false, _1 : (null : stdgo.Error) };
                };
            };
        };
        return { _0 : true, _1 : (null : stdgo.Error) };
    }
