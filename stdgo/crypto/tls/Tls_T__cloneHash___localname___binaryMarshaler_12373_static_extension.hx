package stdgo.crypto.tls;
class T__cloneHash___localname___binaryMarshaler_12373_static_extension {
    static public function unmarshalBinary(t:stdgo._internal.crypto.tls.Tls_T__cloneHash___localname___binaryMarshaler_12373.T__cloneHash___localname___binaryMarshaler_12373, _data:Array<std.UInt>):stdgo.Error {
        final _data = ([for (i in _data) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.crypto.tls.Tls_T__cloneHash___localname___binaryMarshaler_12373_static_extension.T__cloneHash___localname___binaryMarshaler_12373_static_extension.unmarshalBinary(t, _data);
    }
    static public function marshalBinary(t:stdgo._internal.crypto.tls.Tls_T__cloneHash___localname___binaryMarshaler_12373.T__cloneHash___localname___binaryMarshaler_12373):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        return {
            final obj = stdgo._internal.crypto.tls.Tls_T__cloneHash___localname___binaryMarshaler_12373_static_extension.T__cloneHash___localname___binaryMarshaler_12373_static_extension.marshalBinary(t);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
}
