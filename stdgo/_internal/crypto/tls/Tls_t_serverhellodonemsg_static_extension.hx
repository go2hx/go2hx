package stdgo._internal.crypto.tls;
@:keep @:allow(stdgo._internal.crypto.tls.Tls.T_serverHelloDoneMsg_asInterface) class T_serverHelloDoneMsg_static_extension {
    @:keep
    @:tdfield
    static public function _unmarshal( _m:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_serverhellodonemsg.T_serverHelloDoneMsg>, _data:stdgo.Slice<stdgo.GoUInt8>):Bool {
        @:recv var _m:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_serverhellodonemsg.T_serverHelloDoneMsg> = _m;
        return (_data.length) == ((4 : stdgo.GoInt));
    }
    @:keep
    @:tdfield
    static public function _marshal( _m:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_serverhellodonemsg.T_serverHelloDoneMsg>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _m:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_serverhellodonemsg.T_serverHelloDoneMsg> = _m;
        var _x = (new stdgo.Slice<stdgo.GoUInt8>((4 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        _x[(0 : stdgo.GoInt)] = (14 : stdgo.GoUInt8);
        return { _0 : _x, _1 : (null : stdgo.Error) };
    }
}
