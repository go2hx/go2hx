package stdgo._internal.fmt;
import stdgo._internal.errors.Errors;
import stdgo._internal.sort.Sort;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.os.Os;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.io.Io;
import stdgo._internal.internal.fmtsort.Fmtsort;
import stdgo._internal.math.Math;
@:keep @:allow(stdgo._internal.fmt.Fmt.T_wrapErrors_asInterface) class T_wrapErrors_static_extension {
    @:keep
    @:tdfield
    static public function unwrap( _e:stdgo.Ref<stdgo._internal.fmt.Fmt_T_wrapErrors.T_wrapErrors>):stdgo.Slice<stdgo.Error> {
        @:recv var _e:stdgo.Ref<stdgo._internal.fmt.Fmt_T_wrapErrors.T_wrapErrors> = _e;
        return (@:checkr _e ?? throw "null pointer dereference")._errs;
    }
    @:keep
    @:tdfield
    static public function error( _e:stdgo.Ref<stdgo._internal.fmt.Fmt_T_wrapErrors.T_wrapErrors>):stdgo.GoString {
        @:recv var _e:stdgo.Ref<stdgo._internal.fmt.Fmt_T_wrapErrors.T_wrapErrors> = _e;
        return (@:checkr _e ?? throw "null pointer dereference")._msg?.__copy__();
    }
}
