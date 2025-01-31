package stdgo._internal.regexp.syntax;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.strings.Strings;
import stdgo._internal.sort.Sort;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.strconv.Strconv;
@:structInit @:using(stdgo._internal.regexp.syntax.Syntax_T_ranges_static_extension.T_ranges_static_extension) class T_ranges {
    public var _p : stdgo.Ref<stdgo.Slice<stdgo.GoInt32>> = (null : stdgo.Ref<stdgo.Slice<stdgo.GoInt32>>);
    public function new(?_p:stdgo.Ref<stdgo.Slice<stdgo.GoInt32>>) {
        if (_p != null) this._p = _p;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_ranges(_p);
    }
}
