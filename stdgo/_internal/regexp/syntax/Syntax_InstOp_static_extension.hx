package stdgo._internal.regexp.syntax;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.strings.Strings;
import stdgo._internal.sort.Sort;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.strconv.Strconv;
@:keep @:allow(stdgo._internal.regexp.syntax.Syntax.InstOp_asInterface) class InstOp_static_extension {
    @:keep
    @:tdfield
    static public function string( _i:stdgo._internal.regexp.syntax.Syntax_InstOp.InstOp):stdgo.GoString {
        @:recv var _i:stdgo._internal.regexp.syntax.Syntax_InstOp.InstOp = _i;
        if (((_i : stdgo.GoUInt) >= (stdgo._internal.regexp.syntax.Syntax__instOpNames._instOpNames.length : stdgo.GoUInt) : Bool)) {
            return stdgo.Go.str()?.__copy__();
        };
        return stdgo._internal.regexp.syntax.Syntax__instOpNames._instOpNames[(_i : stdgo.GoInt)]?.__copy__();
    }
}
