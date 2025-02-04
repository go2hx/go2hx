package stdgo._internal.log;
@:keep @:allow(stdgo._internal.log.Log.T_discard_asInterface) class T_discard_static_extension {
    @:keep
    @:tdfield
    static public function write( _:stdgo._internal.log.Log_t_discard.T_discard, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _:stdgo._internal.log.Log_t_discard.T_discard = _?.__copy__();
        return { _0 : (_p.length), _1 : (null : stdgo.Error) };
    }
}
