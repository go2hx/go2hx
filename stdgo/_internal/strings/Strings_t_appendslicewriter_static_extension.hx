package stdgo._internal.strings;
@:keep @:allow(stdgo._internal.strings.Strings.T_appendSliceWriter_asInterface) class T_appendSliceWriter_static_extension {
    @:keep
    @:tdfield
    static public function writeString( _w:stdgo.Ref<stdgo._internal.strings.Strings_t_appendslicewriter.T_appendSliceWriter>, _s:stdgo.GoString):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _w:stdgo.Ref<stdgo._internal.strings.Strings_t_appendslicewriter.T_appendSliceWriter> = _w;
        (_w : stdgo._internal.strings.Strings_t_appendslicewriter.T_appendSliceWriter).__setData__(((_w : stdgo._internal.strings.Strings_t_appendslicewriter.T_appendSliceWriter).__append__(...(_s : Array<stdgo.GoUInt8>))));
        return { _0 : (_s.length), _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function write( _w:stdgo.Ref<stdgo._internal.strings.Strings_t_appendslicewriter.T_appendSliceWriter>, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _w:stdgo.Ref<stdgo._internal.strings.Strings_t_appendslicewriter.T_appendSliceWriter> = _w;
        (_w : stdgo._internal.strings.Strings_t_appendslicewriter.T_appendSliceWriter).__setData__(((_w : stdgo._internal.strings.Strings_t_appendslicewriter.T_appendSliceWriter).__append__(...(_p : Array<stdgo.GoUInt8>))));
        return { _0 : (_p.length), _1 : (null : stdgo.Error) };
    }
}
