package stdgo._internal.image.color;
import stdgo._internal.testing.quick.Quick;
import stdgo._internal.fmt.Fmt;
@:keep @:allow(stdgo._internal.image.color.Color.T_modelFunc_asInterface) class T_modelFunc_static_extension {
    @:keep
    @:tdfield
    static public function convert( _m:stdgo.Ref<stdgo._internal.image.color.Color_T_modelFunc.T_modelFunc>, _c:stdgo._internal.image.color.Color_Color.Color):stdgo._internal.image.color.Color_Color.Color {
        @:recv var _m:stdgo.Ref<stdgo._internal.image.color.Color_T_modelFunc.T_modelFunc> = _m;
        return (@:checkr _m ?? throw "null pointer dereference")._f(_c);
    }
}
