package stdgo._internal.go.types;
@:keep @:allow(stdgo._internal.go.types.Types.T_unifyMode_asInterface) class T_unifyMode_static_extension {
    @:keep
    @:tdfield
    static public function string( _m:stdgo._internal.go.types.Types_t_unifymode.T_unifyMode):stdgo.GoString {
        @:recv var _m:stdgo._internal.go.types.Types_t_unifymode.T_unifyMode = _m;
        //"file:///home/runner/.go/go1.21.3/src/go/types/unify.go#L126"
        {
            final __value__ = _m;
            if (__value__ == ((0u32 : stdgo._internal.go.types.Types_t_unifymode.T_unifyMode))) {
                //"file:///home/runner/.go/go1.21.3/src/go/types/unify.go#L128"
                return ("inexact" : stdgo.GoString);
            } else if (__value__ == ((1u32 : stdgo._internal.go.types.Types_t_unifymode.T_unifyMode))) {
                //"file:///home/runner/.go/go1.21.3/src/go/types/unify.go#L130"
                return ("assign" : stdgo.GoString);
            } else if (__value__ == ((2u32 : stdgo._internal.go.types.Types_t_unifymode.T_unifyMode))) {
                //"file:///home/runner/.go/go1.21.3/src/go/types/unify.go#L132"
                return ("exact" : stdgo.GoString);
            } else if (__value__ == ((3u32 : stdgo._internal.go.types.Types_t_unifymode.T_unifyMode))) {
                //"file:///home/runner/.go/go1.21.3/src/go/types/unify.go#L134"
                return ("assign, exact" : stdgo.GoString);
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/types/unify.go#L136"
        return stdgo._internal.fmt.Fmt_sprintf.sprintf(("mode %d" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_m)))?.__copy__();
    }
}
