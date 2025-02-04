package stdgo._internal.flag;
@:keep @:allow(stdgo._internal.flag.Flag.T_stringValue_asInterface) class T_stringValue_static_extension {
    @:keep
    @:pointer
    @:tdfield
    static public function string( _s:stdgo.Pointer<stdgo._internal.flag.Flag_t_stringvalue.T_stringValue>):stdgo.GoString {
        return (_s.value : stdgo.GoString)?.__copy__();
    }
    @:keep
    @:pointer
    @:tdfield
    static public function get( _s:stdgo.Pointer<stdgo._internal.flag.Flag_t_stringvalue.T_stringValue>):stdgo.AnyInterface {
        return stdgo.Go.toInterface((_s.value : stdgo.GoString));
    }
    @:keep
    @:pointer
    @:tdfield
    static public function set( _s:stdgo.Pointer<stdgo._internal.flag.Flag_t_stringvalue.T_stringValue>, _val:stdgo.GoString):stdgo.Error {
        _s.value = (_val : stdgo._internal.flag.Flag_t_stringvalue.T_stringValue);
        return (null : stdgo.Error);
    }
}
