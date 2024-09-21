package _internal.vendor.golang_dot_org.x.crypto.hkdf;
function new_(_hash:() -> stdgo._internal.hash.Hash_Hash.Hash, _secret:stdgo.Slice<stdgo.GoUInt8>, _salt:stdgo.Slice<stdgo.GoUInt8>, _info:stdgo.Slice<stdgo.GoUInt8>):stdgo._internal.io.Io_Reader.Reader {
        var _prk = _internal.vendor.golang_dot_org.x.crypto.hkdf.Hkdf_extract.extract(_hash, _secret, _salt);
        return _internal.vendor.golang_dot_org.x.crypto.hkdf.Hkdf_expand.expand(_hash, _prk, _info);
    }
