package stdgo._internal.net.http;
@:keep @:allow(stdgo._internal.net.http.Http.T_exactSig_asInterface) class T_exactSig_static_extension {
    @:keep
    static public function _match( _e:stdgo.Ref<stdgo._internal.net.http.Http_T_exactSig.T_exactSig>, _data:stdgo.Slice<stdgo.GoUInt8>, _firstNonWS:stdgo.GoInt):stdgo.GoString {
        @:recv var _e:stdgo.Ref<stdgo._internal.net.http.Http_T_exactSig.T_exactSig> = _e;
        if (stdgo._internal.bytes.Bytes_hasPrefix.hasPrefix(_data, _e._sig)) {
            return _e._ct?.__copy__();
        };
        return stdgo.Go.str()?.__copy__();
    }
}