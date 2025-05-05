package stdgo._internal.crypto.x509;
function _matchIPConstraint(_ip:stdgo._internal.net.Net_ip.IP, _constraint:stdgo.Ref<stdgo._internal.net.Net_ipnet.IPNet>):{ var _0 : Bool; var _1 : stdgo.Error; } {
        //"file:///home/runner/.go/go1.21.3/src/crypto/x509/verify.go#L441"
        if ((_ip.length) != (((@:checkr _constraint ?? throw "null pointer dereference").iP.length))) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/x509/verify.go#L442"
            return { _0 : false, _1 : (null : stdgo.Error) };
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/x509/verify.go#L445"
        for (_i => _ in _ip) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/x509/verify.go#L446"
            {
                var _mask = ((@:checkr _constraint ?? throw "null pointer dereference").mask[(_i : stdgo.GoInt)] : stdgo.GoUInt8);
                if ((_ip[(_i : stdgo.GoInt)] & _mask : stdgo.GoUInt8) != (((@:checkr _constraint ?? throw "null pointer dereference").iP[(_i : stdgo.GoInt)] & _mask : stdgo.GoUInt8))) {
                    //"file:///home/runner/.go/go1.21.3/src/crypto/x509/verify.go#L447"
                    return { _0 : false, _1 : (null : stdgo.Error) };
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/x509/verify.go#L451"
        return { _0 : true, _1 : (null : stdgo.Error) };
    }
