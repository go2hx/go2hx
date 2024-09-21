package _internal.vendor.golang_dot_org.x.crypto.hkdf;
function expand(_hash:() -> stdgo._internal.hash.Hash_Hash.Hash, _pseudorandomKey:stdgo.Slice<stdgo.GoUInt8>, _info:stdgo.Slice<stdgo.GoUInt8>):stdgo._internal.io.Io_Reader.Reader {
        var _expander = (stdgo._internal.crypto.hmac.Hmac_new_.new_(_hash, _pseudorandomKey) : stdgo._internal.hash.Hash_Hash.Hash);
        return stdgo.Go.asInterface((stdgo.Go.setRef((new _internal.vendor.golang_dot_org.x.crypto.hkdf.Hkdf_T_hkdf.T_hkdf(_expander, _expander.size(), _info, (1 : stdgo.GoUInt8), (null : stdgo.Slice<stdgo.GoUInt8>), (null : stdgo.Slice<stdgo.GoUInt8>)) : _internal.vendor.golang_dot_org.x.crypto.hkdf.Hkdf_T_hkdf.T_hkdf)) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.hkdf.Hkdf_T_hkdf.T_hkdf>));
    }
