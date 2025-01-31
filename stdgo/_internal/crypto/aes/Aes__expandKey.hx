package stdgo._internal.crypto.aes;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.crypto.internal.boring.Boring;
import stdgo._internal.crypto.internal.alias.Alias;
import stdgo._internal.strconv.Strconv;
function _expandKey(_key:stdgo.Slice<stdgo.GoUInt8>, _enc:stdgo.Slice<stdgo.GoUInt32>, _dec:stdgo.Slice<stdgo.GoUInt32>):Void {
        stdgo._internal.crypto.aes.Aes__expandKeyGo._expandKeyGo(_key, _enc, _dec);
    }
