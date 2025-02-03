package stdgo.strings;
@:structInit @:using(stdgo.strings.Strings.Replacer_static_extension) abstract Replacer(stdgo._internal.strings.Strings_Replacer.Replacer) from stdgo._internal.strings.Strings_Replacer.Replacer to stdgo._internal.strings.Strings_Replacer.Replacer {
    public var _once(get, set) : stdgo._internal.sync.Sync_Once.Once;
    function get__once():stdgo._internal.sync.Sync_Once.Once return this._once;
    function set__once(v:stdgo._internal.sync.Sync_Once.Once):stdgo._internal.sync.Sync_Once.Once {
        this._once = v;
        return v;
    }
    public var _r(get, set) : T_replacer;
    function get__r():T_replacer return this._r;
    function set__r(v:T_replacer):T_replacer {
        this._r = v;
        return v;
    }
    public var _oldnew(get, set) : Array<String>;
    function get__oldnew():Array<String> return [for (i in this._oldnew) i];
    function set__oldnew(v:Array<String>):Array<String> {
        this._oldnew = ([for (i in v) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>);
        return v;
    }
    public function new(?_once:stdgo._internal.sync.Sync_Once.Once, ?_r:T_replacer, ?_oldnew:Array<String>) this = new stdgo._internal.strings.Strings_Replacer.Replacer(_once, _r, ([for (i in _oldnew) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
