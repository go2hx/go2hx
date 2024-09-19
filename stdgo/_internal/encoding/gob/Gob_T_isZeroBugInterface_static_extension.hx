package stdgo._internal.encoding.gob;
@:keep @:allow(stdgo._internal.encoding.gob.Gob.T_isZeroBugInterface_asInterface) class T_isZeroBugInterface_static_extension {
    @:keep
    static public function gobDecode( _i:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_isZeroBugInterface.T_isZeroBugInterface>, _data:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error {
        @:recv var _i:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_isZeroBugInterface.T_isZeroBugInterface> = _i;
        return (null : stdgo.Error);
    }
    @:keep
    static public function gobEncode( _i:stdgo._internal.encoding.gob.Gob_T_isZeroBugInterface.T_isZeroBugInterface):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _i:stdgo._internal.encoding.gob.Gob_T_isZeroBugInterface.T_isZeroBugInterface = _i?.__copy__();
        var _b = (null : stdgo.Slice<stdgo.GoUInt8>), _e = (null : stdgo.Error);
        return { _0 : (new stdgo.Slice<stdgo.GoUInt8>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>), _1 : (null : stdgo.Error) };
    }
}
