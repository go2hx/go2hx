package stdgo._internal.regexp.syntax;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.strings.Strings;
import stdgo._internal.sort.Sort;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.strconv.Strconv;
@:structInit @:using(stdgo._internal.regexp.syntax.Syntax_T_patchList_static_extension.T_patchList_static_extension) class T_patchList {
    public var _head : stdgo.GoUInt32 = 0;
    public var _tail : stdgo.GoUInt32 = 0;
    public function new(?_head:stdgo.GoUInt32, ?_tail:stdgo.GoUInt32) {
        if (_head != null) this._head = _head;
        if (_tail != null) this._tail = _tail;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_patchList(_head, _tail);
    }
}
