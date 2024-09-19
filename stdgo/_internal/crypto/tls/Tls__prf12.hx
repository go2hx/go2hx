package stdgo._internal.crypto.tls;
function _prf12(_hashFunc:() -> stdgo._internal.hash.Hash_Hash.Hash):(stdgo.Slice<stdgo.GoUInt8>, stdgo.Slice<stdgo.GoUInt8>, stdgo.Slice<stdgo.GoUInt8>, stdgo.Slice<stdgo.GoUInt8>) -> Void {
        return function(_result:stdgo.Slice<stdgo.GoUInt8>, _secret:stdgo.Slice<stdgo.GoUInt8>, _label:stdgo.Slice<stdgo.GoUInt8>, _seed:stdgo.Slice<stdgo.GoUInt8>):Void {
            var _labelAndSeed = (new stdgo.Slice<stdgo.GoUInt8>(((_label.length) + (_seed.length) : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
            stdgo.Go.copySlice(_labelAndSeed, _label);
            stdgo.Go.copySlice((_labelAndSeed.__slice__((_label.length)) : stdgo.Slice<stdgo.GoUInt8>), _seed);
            stdgo._internal.crypto.tls.Tls__pHash._pHash(_result, _secret, _labelAndSeed, _hashFunc);
        };
    }
