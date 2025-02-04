package stdgo._internal.image.color;
@:keep @:allow(stdgo._internal.image.color.Color.T_modelFunc_asInterface) class T_modelFunc_static_extension {
    @:keep
    @:tdfield
    static public function convert( _m:stdgo.Ref<stdgo._internal.image.color.Color_t_modelfunc.T_modelFunc>, _c:stdgo._internal.image.color.Color_color.Color):stdgo._internal.image.color.Color_color.Color {
        @:recv var _m:stdgo.Ref<stdgo._internal.image.color.Color_t_modelfunc.T_modelFunc> = _m;
        return (@:checkr _m ?? throw "null pointer dereference")._f(_c);
    }
}
