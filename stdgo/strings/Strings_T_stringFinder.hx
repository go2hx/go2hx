package stdgo.strings;
@:structInit @:using(stdgo.strings.Strings.T_stringFinder_static_extension) abstract T_stringFinder(stdgo._internal.strings.Strings_T_stringFinder.T_stringFinder) from stdgo._internal.strings.Strings_T_stringFinder.T_stringFinder to stdgo._internal.strings.Strings_T_stringFinder.T_stringFinder {
    public var _pattern(get, set) : String;
    function get__pattern():String return this._pattern;
    function set__pattern(v:String):String {
        this._pattern = (v : stdgo.GoString);
        return v;
    }
    public var _badCharSkip(get, set) : haxe.ds.Vector<StdTypes.Int>;
    function get__badCharSkip():haxe.ds.Vector<StdTypes.Int> return haxe.ds.Vector.fromArrayCopy([for (i in this._badCharSkip) i]);
    function set__badCharSkip(v:haxe.ds.Vector<StdTypes.Int>):haxe.ds.Vector<StdTypes.Int> {
        this._badCharSkip = ([for (i in v) (i : stdgo.GoInt)] : stdgo.GoArray<stdgo.GoInt>);
        return v;
    }
    public var _goodSuffixSkip(get, set) : Array<StdTypes.Int>;
    function get__goodSuffixSkip():Array<StdTypes.Int> return [for (i in this._goodSuffixSkip) i];
    function set__goodSuffixSkip(v:Array<StdTypes.Int>):Array<StdTypes.Int> {
        this._goodSuffixSkip = ([for (i in v) (i : stdgo.GoInt)] : stdgo.Slice<stdgo.GoInt>);
        return v;
    }
    public function new(?_pattern:String, ?_badCharSkip:haxe.ds.Vector<StdTypes.Int>, ?_goodSuffixSkip:Array<StdTypes.Int>) this = new stdgo._internal.strings.Strings_T_stringFinder.T_stringFinder((_pattern : stdgo.GoString), ([for (i in _badCharSkip) (i : stdgo.GoInt)] : stdgo.GoArray<stdgo.GoInt>), ([for (i in _goodSuffixSkip) (i : stdgo.GoInt)] : stdgo.Slice<stdgo.GoInt>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
