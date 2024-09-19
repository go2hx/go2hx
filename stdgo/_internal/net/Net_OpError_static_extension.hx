package stdgo._internal.net;
@:keep @:allow(stdgo._internal.net.Net.OpError_asInterface) class OpError_static_extension {
    @:keep
    static public function temporary( _e:stdgo.Ref<stdgo._internal.net.Net_OpError.OpError>):Bool throw "OpError:net.temporary is not yet implemented";
    @:keep
    static public function timeout( _e:stdgo.Ref<stdgo._internal.net.Net_OpError.OpError>):Bool throw "OpError:net.timeout is not yet implemented";
    @:keep
    static public function error( _e:stdgo.Ref<stdgo._internal.net.Net_OpError.OpError>):stdgo.GoString throw "OpError:net.error is not yet implemented";
    @:keep
    static public function unwrap( _e:stdgo.Ref<stdgo._internal.net.Net_OpError.OpError>):stdgo.Error throw "OpError:net.unwrap is not yet implemented";
}