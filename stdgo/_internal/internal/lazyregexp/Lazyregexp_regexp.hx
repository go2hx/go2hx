package stdgo._internal.internal.lazyregexp;
@:structInit @:using(stdgo._internal.internal.lazyregexp.Lazyregexp_regexp_static_extension.Regexp_static_extension) class Regexp {
    public var _str : stdgo.GoString = "";
    public var _once : stdgo._internal.sync.Sync_once.Once = ({} : stdgo._internal.sync.Sync_once.Once);
    public var _rx : stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp> = (null : stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>);
    public function new(?_str:stdgo.GoString, ?_once:stdgo._internal.sync.Sync_once.Once, ?_rx:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>) {
        if (_str != null) this._str = _str;
        if (_once != null) this._once = _once;
        if (_rx != null) this._rx = _rx;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Regexp(_str, _once, _rx);
    }
}
