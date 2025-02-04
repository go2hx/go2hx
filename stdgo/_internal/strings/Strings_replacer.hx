package stdgo._internal.strings;
@:structInit @:using(stdgo._internal.strings.Strings_replacer_static_extension.Replacer_static_extension) class Replacer {
    public var _once : stdgo._internal.sync.Sync_once.Once = ({} : stdgo._internal.sync.Sync_once.Once);
    public var _r : stdgo._internal.strings.Strings_t_replacer.T_replacer = (null : stdgo._internal.strings.Strings_t_replacer.T_replacer);
    public var _oldnew : stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
    public function new(?_once:stdgo._internal.sync.Sync_once.Once, ?_r:stdgo._internal.strings.Strings_t_replacer.T_replacer, ?_oldnew:stdgo.Slice<stdgo.GoString>) {
        if (_once != null) this._once = _once;
        if (_r != null) this._r = _r;
        if (_oldnew != null) this._oldnew = _oldnew;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Replacer(_once, _r, _oldnew);
    }
}
