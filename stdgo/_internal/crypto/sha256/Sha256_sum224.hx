package stdgo._internal.crypto.sha256;
function sum224(_data:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoArray<stdgo.GoUInt8> {
        if (false) {
            return stdgo._internal.crypto.internal.boring.Boring_sha224.sha224(_data)?.__copy__();
        };
        var _d:stdgo._internal.crypto.sha256.Sha256_T_digest.T_digest = ({} : stdgo._internal.crypto.sha256.Sha256_T_digest.T_digest);
        _d._is224 = true;
        _d.reset();
        _d.write(_data);
        var _sum = _d._checkSum()?.__copy__();
        var _ap = ((_sum.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.Ref<stdgo.GoArray<stdgo.GoUInt8>>);
        return (_ap : stdgo.GoArray<stdgo.GoUInt8>)?.__copy__();
    }
