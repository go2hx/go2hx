package stdgo._internal.go.types;
@:keep @:allow(stdgo._internal.go.types.Types.T_color_asInterface) class T_color_static_extension {
    @:keep
    @:tdfield
    static public function string( _c:stdgo._internal.go.types.Types_t_color.T_color):stdgo.GoString {
        @:recv var _c:stdgo._internal.go.types.Types_t_color.T_color = _c;
        //"file:///home/runner/.go/go1.21.3/src/go/types/object.go#L113"
        {
            final __value__ = _c;
            if (__value__ == ((0u32 : stdgo._internal.go.types.Types_t_color.T_color))) {
                //"file:///home/runner/.go/go1.21.3/src/go/types/object.go#L115"
                return ("white" : stdgo.GoString);
            } else if (__value__ == ((1u32 : stdgo._internal.go.types.Types_t_color.T_color))) {
                //"file:///home/runner/.go/go1.21.3/src/go/types/object.go#L117"
                return ("black" : stdgo.GoString);
            } else {
                //"file:///home/runner/.go/go1.21.3/src/go/types/object.go#L119"
                return ("grey" : stdgo.GoString);
            };
        };
    }
}
