package stdgo;
@:structInit @:using(stdgo.internal.lazyregexp.Lazyregexp.Regexp_static_extension) abstract Regexp(stdgo._internal.internal.lazyregexp.Lazyregexp_regexp.Regexp) from stdgo._internal.internal.lazyregexp.Lazyregexp_regexp.Regexp to stdgo._internal.internal.lazyregexp.Lazyregexp_regexp.Regexp {
    public var _str(get, set) : String;
    function get__str():String return this._str;
    function set__str(v:String):String {
        this._str = (v : stdgo.GoString);
        return v;
    }
    public var _once(get, set) : stdgo._internal.sync.Sync_once.Once;
    function get__once():stdgo._internal.sync.Sync_once.Once return this._once;
    function set__once(v:stdgo._internal.sync.Sync_once.Once):stdgo._internal.sync.Sync_once.Once {
        this._once = v;
        return v;
    }
    public var _rx(get, set) : stdgo._internal.regexp.Regexp_regexp.Regexp;
    function get__rx():stdgo._internal.regexp.Regexp_regexp.Regexp return this._rx;
    function set__rx(v:stdgo._internal.regexp.Regexp_regexp.Regexp):stdgo._internal.regexp.Regexp_regexp.Regexp {
        this._rx = (v : stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>);
        return v;
    }
    public function new(?_str:String, ?_once:stdgo._internal.sync.Sync_once.Once, ?_rx:stdgo._internal.regexp.Regexp_regexp.Regexp) this = new stdgo._internal.internal.lazyregexp.Lazyregexp_regexp.Regexp((_str : stdgo.GoString), _once, (_rx : stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
typedef RegexpPointer = stdgo._internal.internal.lazyregexp.Lazyregexp_regexppointer.RegexpPointer;
class Regexp_static_extension {
    static public function subexpNames(_r:Regexp):Array<String> {
        final _r = (_r : stdgo.Ref<stdgo._internal.internal.lazyregexp.Lazyregexp_regexp.Regexp>);
        return [for (i in stdgo._internal.internal.lazyregexp.Lazyregexp_regexp_static_extension.Regexp_static_extension.subexpNames(_r)) i];
    }
    static public function matchString(_r:Regexp, _s:String):Bool {
        final _r = (_r : stdgo.Ref<stdgo._internal.internal.lazyregexp.Lazyregexp_regexp.Regexp>);
        final _s = (_s : stdgo.GoString);
        return stdgo._internal.internal.lazyregexp.Lazyregexp_regexp_static_extension.Regexp_static_extension.matchString(_r, _s);
    }
    static public function findAllString(_r:Regexp, _s:String, _n:StdTypes.Int):Array<String> {
        final _r = (_r : stdgo.Ref<stdgo._internal.internal.lazyregexp.Lazyregexp_regexp.Regexp>);
        final _s = (_s : stdgo.GoString);
        final _n = (_n : stdgo.GoInt);
        return [for (i in stdgo._internal.internal.lazyregexp.Lazyregexp_regexp_static_extension.Regexp_static_extension.findAllString(_r, _s, _n)) i];
    }
    static public function findString(_r:Regexp, _s:String):String {
        final _r = (_r : stdgo.Ref<stdgo._internal.internal.lazyregexp.Lazyregexp_regexp.Regexp>);
        final _s = (_s : stdgo.GoString);
        return stdgo._internal.internal.lazyregexp.Lazyregexp_regexp_static_extension.Regexp_static_extension.findString(_r, _s);
    }
    static public function replaceAllString(_r:Regexp, _src:String, _repl:String):String {
        final _r = (_r : stdgo.Ref<stdgo._internal.internal.lazyregexp.Lazyregexp_regexp.Regexp>);
        final _src = (_src : stdgo.GoString);
        final _repl = (_repl : stdgo.GoString);
        return stdgo._internal.internal.lazyregexp.Lazyregexp_regexp_static_extension.Regexp_static_extension.replaceAllString(_r, _src, _repl);
    }
    static public function findStringSubmatchIndex(_r:Regexp, _s:String):Array<StdTypes.Int> {
        final _r = (_r : stdgo.Ref<stdgo._internal.internal.lazyregexp.Lazyregexp_regexp.Regexp>);
        final _s = (_s : stdgo.GoString);
        return [for (i in stdgo._internal.internal.lazyregexp.Lazyregexp_regexp_static_extension.Regexp_static_extension.findStringSubmatchIndex(_r, _s)) i];
    }
    static public function findStringSubmatch(_r:Regexp, _s:String):Array<String> {
        final _r = (_r : stdgo.Ref<stdgo._internal.internal.lazyregexp.Lazyregexp_regexp.Regexp>);
        final _s = (_s : stdgo.GoString);
        return [for (i in stdgo._internal.internal.lazyregexp.Lazyregexp_regexp_static_extension.Regexp_static_extension.findStringSubmatch(_r, _s)) i];
    }
    static public function findSubmatch(_r:Regexp, _s:Array<std.UInt>):Array<Array<std.UInt>> {
        final _r = (_r : stdgo.Ref<stdgo._internal.internal.lazyregexp.Lazyregexp_regexp.Regexp>);
        final _s = ([for (i in _s) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return [for (i in stdgo._internal.internal.lazyregexp.Lazyregexp_regexp_static_extension.Regexp_static_extension.findSubmatch(_r, _s)) [for (i in i) i]];
    }
    static public function _build(_r:Regexp):Void {
        final _r = (_r : stdgo.Ref<stdgo._internal.internal.lazyregexp.Lazyregexp_regexp.Regexp>);
        stdgo._internal.internal.lazyregexp.Lazyregexp_regexp_static_extension.Regexp_static_extension._build(_r);
    }
    static public function _re(_r:Regexp):stdgo._internal.regexp.Regexp_regexp.Regexp {
        final _r = (_r : stdgo.Ref<stdgo._internal.internal.lazyregexp.Lazyregexp_regexp.Regexp>);
        return stdgo._internal.internal.lazyregexp.Lazyregexp_regexp_static_extension.Regexp_static_extension._re(_r);
    }
}
/**
    * Package lazyregexp is a thin wrapper over regexp, allowing the use of global
    * regexp variables without forcing them to be compiled at init.
**/
class Lazyregexp {
    /**
        * New creates a new lazy regexp, delaying the compiling work until it is first
        * needed. If the code is being run as part of tests, the regexp compiling will
        * happen immediately.
    **/
    static public inline function new_(_str:String):Regexp {
        final _str = (_str : stdgo.GoString);
        return stdgo._internal.internal.lazyregexp.Lazyregexp_new_.new_(_str);
    }
}
