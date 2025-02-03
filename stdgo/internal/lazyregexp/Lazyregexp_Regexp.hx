package stdgo.internal.lazyregexp;
@:structInit @:using(stdgo.internal.lazyregexp.Lazyregexp.Regexp_static_extension) abstract Regexp(stdgo._internal.internal.lazyregexp.Lazyregexp_Regexp.Regexp) from stdgo._internal.internal.lazyregexp.Lazyregexp_Regexp.Regexp to stdgo._internal.internal.lazyregexp.Lazyregexp_Regexp.Regexp {
    public var _str(get, set) : String;
    function get__str():String return this._str;
    function set__str(v:String):String {
        this._str = (v : stdgo.GoString);
        return v;
    }
    public var _once(get, set) : stdgo._internal.sync.Sync_Once.Once;
    function get__once():stdgo._internal.sync.Sync_Once.Once return this._once;
    function set__once(v:stdgo._internal.sync.Sync_Once.Once):stdgo._internal.sync.Sync_Once.Once {
        this._once = v;
        return v;
    }
    public var _rx(get, set) : stdgo._internal.regexp.Regexp_Regexp.Regexp;
    function get__rx():stdgo._internal.regexp.Regexp_Regexp.Regexp return this._rx;
    function set__rx(v:stdgo._internal.regexp.Regexp_Regexp.Regexp):stdgo._internal.regexp.Regexp_Regexp.Regexp {
        this._rx = (v : stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp>);
        return v;
    }
    public function new(?_str:String, ?_once:stdgo._internal.sync.Sync_Once.Once, ?_rx:stdgo._internal.regexp.Regexp_Regexp.Regexp) this = new stdgo._internal.internal.lazyregexp.Lazyregexp_Regexp.Regexp((_str : stdgo.GoString), _once, (_rx : stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
