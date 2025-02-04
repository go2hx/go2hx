package stdgo._internal.crypto.tls;
function _prf12(_hashFunc:() -> stdgo._internal.hash.Hash_hash.Hash):(stdgo.Slice<stdgo.GoUInt8>, stdgo.Slice<stdgo.GoUInt8>, stdgo.Slice<stdgo.GoUInt8>, stdgo.Slice<stdgo.GoUInt8>) -> Void {
        return function(_result:stdgo.Slice<stdgo.GoUInt8>, _secret:stdgo.Slice<stdgo.GoUInt8>, _label:stdgo.Slice<stdgo.GoUInt8>, _seed:stdgo.Slice<stdgo.GoUInt8>):Void {
            var _labelAndSeed = (new stdgo.Slice<stdgo.GoUInt8>(((_label.length) + (_seed.length) : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
            _labelAndSeed.__copyTo__(_label);
            (_labelAndSeed.__slice__((_label.length)) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__(_seed);
            stdgo._internal.crypto.tls.Tls__phash._pHash(_result, _secret, _labelAndSeed, _hashFunc);
        };
    }
