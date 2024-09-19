package stdgo._internal.crypto.sha512;
function sum384(_data:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoArray<stdgo.GoUInt8> {
        if (false) {
            return stdgo._internal.crypto.internal.boring.Boring_sha384.sha384(_data)?.__copy__();
        };
        var _d = ({ _function : (6u32 : stdgo._internal.crypto.Crypto_Hash.Hash) } : stdgo._internal.crypto.sha512.Sha512_T_digest.T_digest);
        _d.reset();
        _d.write(_data);
        var _sum = _d._checkSum()?.__copy__();
        var _ap = ((_sum.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.Ref<stdgo.GoArray<stdgo.GoUInt8>>);
        return (_ap : stdgo.GoArray<stdgo.GoUInt8>)?.__copy__();
    }
