package _internal.vendor.golang_dot_org.x.crypto.chacha20;
function hchaCha20(_key:stdgo.Slice<stdgo.GoUInt8>, _nonce:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        var _out = (new stdgo.Slice<stdgo.GoUInt8>((32 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        return _internal.vendor.golang_dot_org.x.crypto.chacha20.Chacha20__hChaCha20._hChaCha20(_out, _key, _nonce);
    }
