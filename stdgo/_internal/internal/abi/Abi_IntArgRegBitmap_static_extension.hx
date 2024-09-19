package stdgo._internal.internal.abi;
@:keep @:allow(stdgo._internal.internal.abi.Abi.IntArgRegBitmap_asInterface) class IntArgRegBitmap_static_extension {
    @:keep
    static public function get( _b:stdgo.Ref<stdgo._internal.internal.abi.Abi_IntArgRegBitmap.IntArgRegBitmap>, _i:stdgo.GoInt):Bool {
        @:recv var _b:stdgo.Ref<stdgo._internal.internal.abi.Abi_IntArgRegBitmap.IntArgRegBitmap> = _b;
        return (_b[(_i / (8 : stdgo.GoInt) : stdgo.GoInt)] & (((1 : stdgo.GoUInt8) << ((_i % (8 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoUInt8)) : stdgo.GoUInt8) != ((0 : stdgo.GoUInt8));
    }
    @:keep
    static public function set( _b:stdgo.Ref<stdgo._internal.internal.abi.Abi_IntArgRegBitmap.IntArgRegBitmap>, _i:stdgo.GoInt):Void {
        @:recv var _b:stdgo.Ref<stdgo._internal.internal.abi.Abi_IntArgRegBitmap.IntArgRegBitmap> = _b;
        _b[(_i / (8 : stdgo.GoInt) : stdgo.GoInt)] = (_b[(_i / (8 : stdgo.GoInt) : stdgo.GoInt)] | (((1 : stdgo.GoUInt8) << ((_i % (8 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoUInt8)) : stdgo.GoUInt8);
    }
}
