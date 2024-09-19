package stdgo._internal.os.signal;
@:keep @:allow(stdgo._internal.os.signal.Signal.T_handler_asInterface) class T_handler_static_extension {
    @:keep
    static public function _clear( _h:stdgo.Ref<stdgo._internal.os.signal.Signal_T_handler.T_handler>, _sig:stdgo.GoInt):Void {
        @:recv var _h:stdgo.Ref<stdgo._internal.os.signal.Signal_T_handler.T_handler> = _h;
        _h._mask[(_sig / (32 : stdgo.GoInt) : stdgo.GoInt)] = (_h._mask[(_sig / (32 : stdgo.GoInt) : stdgo.GoInt)] & (((((1u32 : stdgo.GoUInt32) << ((_sig & (31 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt) : stdgo.GoUInt32)) ^ (-1i32 : stdgo.GoInt) : stdgo.GoUInt32)) : stdgo.GoUInt32);
    }
    @:keep
    static public function _set( _h:stdgo.Ref<stdgo._internal.os.signal.Signal_T_handler.T_handler>, _sig:stdgo.GoInt):Void {
        @:recv var _h:stdgo.Ref<stdgo._internal.os.signal.Signal_T_handler.T_handler> = _h;
        _h._mask[(_sig / (32 : stdgo.GoInt) : stdgo.GoInt)] = (_h._mask[(_sig / (32 : stdgo.GoInt) : stdgo.GoInt)] | (((1u32 : stdgo.GoUInt32) << ((_sig & (31 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt) : stdgo.GoUInt32)) : stdgo.GoUInt32);
    }
    @:keep
    static public function _want( _h:stdgo.Ref<stdgo._internal.os.signal.Signal_T_handler.T_handler>, _sig:stdgo.GoInt):Bool {
        @:recv var _h:stdgo.Ref<stdgo._internal.os.signal.Signal_T_handler.T_handler> = _h;
        return (((_h._mask[(_sig / (32 : stdgo.GoInt) : stdgo.GoInt)] >> ((_sig & (31 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt) : stdgo.GoUInt32)) & (1u32 : stdgo.GoUInt32) : stdgo.GoUInt32) != ((0u32 : stdgo.GoUInt32));
    }
}
