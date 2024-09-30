package stdgo._internal.crypto.x509;
function isEncryptedPEMBlock(_b:stdgo.Ref<stdgo._internal.encoding.pem.Pem_Block.Block>):Bool {
        var __tmp__ = (_b.headers != null && _b.headers.exists(("DEK-Info" : stdgo.GoString)) ? { _0 : _b.headers[("DEK-Info" : stdgo.GoString)], _1 : true } : { _0 : ("" : stdgo.GoString), _1 : false }), __1:stdgo.GoString = __tmp__._0, _ok:Bool = __tmp__._1;
        return _ok;
    }
