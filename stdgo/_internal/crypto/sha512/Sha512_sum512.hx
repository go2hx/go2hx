package stdgo._internal.crypto.sha512;
function sum512(_data:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoArray<stdgo.GoUInt8> {
        if (false) {
            return stdgo._internal.crypto.internal.boring.Boring_sha512.sha512(_data)?.__copy__();
        };
        var _d = ({ _function : (7u32 : stdgo._internal.crypto.Crypto_Hash.Hash) } : stdgo._internal.crypto.sha512.Sha512_T_digest.T_digest);
        _d.reset();
        _d.write(_data);
        return _d._checkSum()?.__copy__();
    }
