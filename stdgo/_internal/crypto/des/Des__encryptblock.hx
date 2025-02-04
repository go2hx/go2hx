package stdgo._internal.crypto.des;
function _encryptBlock(_subkeys:stdgo.Slice<stdgo.GoUInt64>, _dst:stdgo.Slice<stdgo.GoUInt8>, _src:stdgo.Slice<stdgo.GoUInt8>):Void {
        stdgo._internal.crypto.des.Des__cryptblock._cryptBlock(_subkeys, _dst, _src, false);
    }
