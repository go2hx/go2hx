package stdgo._internal.crypto.des;
function _decryptBlock(_subkeys:stdgo.Slice<stdgo.GoUInt64>, _dst:stdgo.Slice<stdgo.GoUInt8>, _src:stdgo.Slice<stdgo.GoUInt8>):Void {
        stdgo._internal.crypto.des.Des__cryptBlock._cryptBlock(_subkeys, _dst, _src, true);
    }