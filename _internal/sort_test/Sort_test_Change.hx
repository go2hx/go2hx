package _internal.sort_test;
import stdgo._internal.sort.Sort;
import stdgo._internal.sort.Sort;
@:structInit class Change {
    public var _user : stdgo.GoString = "";
    public var _language : stdgo.GoString = "";
    public var _lines : stdgo.GoInt = 0;
    public function new(?_user:stdgo.GoString, ?_language:stdgo.GoString, ?_lines:stdgo.GoInt) {
        if (_user != null) this._user = _user;
        if (_language != null) this._language = _language;
        if (_lines != null) this._lines = _lines;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Change(_user, _language, _lines);
    }
}
