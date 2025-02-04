package stdgo._internal.crypto.tls;
@:keep @:allow(stdgo._internal.crypto.tls.Tls.T_helloRequestMsg_asInterface) class T_helloRequestMsg_static_extension {
    @:keep
    @:tdfield
    static public function _unmarshal( _:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_hellorequestmsg.T_helloRequestMsg>, _data:stdgo.Slice<stdgo.GoUInt8>):Bool {
        @:recv var _:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_hellorequestmsg.T_helloRequestMsg> = _;
        return (_data.length) == ((4 : stdgo.GoInt));
    }
    @:keep
    @:tdfield
    static public function _marshal( _:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_hellorequestmsg.T_helloRequestMsg>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_hellorequestmsg.T_helloRequestMsg> = _;
        return { _0 : (new stdgo.Slice<stdgo.GoUInt8>(4, 4, ...[(0 : stdgo.GoUInt8), (0 : stdgo.GoUInt8), (0 : stdgo.GoUInt8), (0 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>), _1 : (null : stdgo.Error) };
    }
}
