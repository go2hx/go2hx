package stdgo._internal.crypto.x509;
@:keep @:allow(stdgo._internal.crypto.x509.X509.T_rfc1423Algo_asInterface) class T_rfc1423Algo_static_extension {
    @:keep
    @:tdfield
    static public function _deriveKey( _c:stdgo._internal.crypto.x509.X509_t_rfc1423algo.T_rfc1423Algo, _password:stdgo.Slice<stdgo.GoUInt8>, _salt:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _c:stdgo._internal.crypto.x509.X509_t_rfc1423algo.T_rfc1423Algo = _c?.__copy__();
        var _hash = (stdgo._internal.crypto.md5.Md5_new_.new_() : stdgo._internal.hash.Hash_hash.Hash);
        var _out = (new stdgo.Slice<stdgo.GoUInt8>((_c._keySize : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        var _digest:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (_out.length) : Bool)) {
                _hash.reset();
_hash.write(_digest);
_hash.write(_password);
_hash.write(_salt);
_digest = _hash.sum((_digest.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
(_out.__slice__(_i) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__(_digest);
                _i = (_i + ((_digest.length)) : stdgo.GoInt);
            };
        };
        return _out;
    }
}
