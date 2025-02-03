package stdgo.strings;
@:structInit @:using(stdgo.strings.Strings.Reader_static_extension) abstract Reader(stdgo._internal.strings.Strings_Reader.Reader) from stdgo._internal.strings.Strings_Reader.Reader to stdgo._internal.strings.Strings_Reader.Reader {
    public var _s(get, set) : String;
    function get__s():String return this._s;
    function set__s(v:String):String {
        this._s = (v : stdgo.GoString);
        return v;
    }
    public var _i(get, set) : haxe.Int64;
    function get__i():haxe.Int64 return this._i;
    function set__i(v:haxe.Int64):haxe.Int64 {
        this._i = (v : stdgo.GoInt64);
        return v;
    }
    public var _prevRune(get, set) : StdTypes.Int;
    function get__prevRune():StdTypes.Int return this._prevRune;
    function set__prevRune(v:StdTypes.Int):StdTypes.Int {
        this._prevRune = (v : stdgo.GoInt);
        return v;
    }
    public function new(?_s:String, ?_i:haxe.Int64, ?_prevRune:StdTypes.Int) this = new stdgo._internal.strings.Strings_Reader.Reader((_s : stdgo.GoString), (_i : stdgo.GoInt64), (_prevRune : stdgo.GoInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
