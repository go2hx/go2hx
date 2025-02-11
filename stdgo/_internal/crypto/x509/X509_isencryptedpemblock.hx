package stdgo._internal.crypto.x509;
function isEncryptedPEMBlock(_b:stdgo.Ref<stdgo._internal.encoding.pem.Pem_block.Block>):Bool {
        var __tmp__ = ((@:checkr _b ?? throw "null pointer dereference").headers != null && (@:checkr _b ?? throw "null pointer dereference").headers.__exists__(("DEK-Info" : stdgo.GoString)) ? { _0 : (@:checkr _b ?? throw "null pointer dereference").headers[("DEK-Info" : stdgo.GoString)], _1 : true } : { _0 : ("" : stdgo.GoString), _1 : false }), __1:stdgo.GoString = __tmp__._0, _ok:Bool = __tmp__._1;
        return _ok;
    }
