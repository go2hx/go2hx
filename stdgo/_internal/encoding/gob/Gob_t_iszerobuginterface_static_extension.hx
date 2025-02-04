package stdgo._internal.encoding.gob;
@:keep @:allow(stdgo._internal.encoding.gob.Gob.T_isZeroBugInterface_asInterface) class T_isZeroBugInterface_static_extension {
    @:keep
    @:tdfield
    static public function gobDecode( _i:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_iszerobuginterface.T_isZeroBugInterface>, _data:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error {
        @:recv var _i:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_iszerobuginterface.T_isZeroBugInterface> = _i;
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function gobEncode( _i:stdgo._internal.encoding.gob.Gob_t_iszerobuginterface.T_isZeroBugInterface):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _i:stdgo._internal.encoding.gob.Gob_t_iszerobuginterface.T_isZeroBugInterface = _i?.__copy__();
        var _b = (null : stdgo.Slice<stdgo.GoUInt8>), _e = (null : stdgo.Error);
        return {
            final __tmp__:{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } = { _0 : (new stdgo.Slice<stdgo.GoUInt8>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>), _1 : (null : stdgo.Error) };
            _b = __tmp__._0;
            _e = __tmp__._1;
            __tmp__;
        };
    }
}
