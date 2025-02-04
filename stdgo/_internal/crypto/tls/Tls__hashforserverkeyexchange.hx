package stdgo._internal.crypto.tls;
function _hashForServerKeyExchange(_sigType:stdgo.GoUInt8, _hashFunc:stdgo._internal.crypto.Crypto_hash.Hash, _version:stdgo.GoUInt16, _slices:haxe.Rest<stdgo.Slice<stdgo.GoUInt8>>):stdgo.Slice<stdgo.GoUInt8> {
        var _slices = new stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>(_slices.length, 0, ..._slices);
        if (_sigType == ((228 : stdgo.GoUInt8))) {
            var _signed:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
            for (__65 => _slice in _slices) {
                _signed = (_signed.__append__(...(_slice : Array<stdgo.GoUInt8>)));
            };
            return _signed;
        };
        if ((_version >= (771 : stdgo.GoUInt16) : Bool)) {
            var _h = (_hashFunc.new_() : stdgo._internal.hash.Hash_hash.Hash);
            for (__65 => _slice in _slices) {
                _h.write(_slice);
            };
            var _digest = _h.sum((null : stdgo.Slice<stdgo.GoUInt8>));
            return _digest;
        };
        if (_sigType == ((227 : stdgo.GoUInt8))) {
            return stdgo._internal.crypto.tls.Tls__sha1hash._sha1Hash(_slices);
        };
        return stdgo._internal.crypto.tls.Tls__md5sha1hash._md5SHA1Hash(_slices);
    }
