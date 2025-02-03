package stdgo.regexp;
@:structInit @:using(stdgo.regexp.Regexp.FindTest_static_extension) abstract FindTest(stdgo._internal.regexp.Regexp_FindTest.FindTest) from stdgo._internal.regexp.Regexp_FindTest.FindTest to stdgo._internal.regexp.Regexp_FindTest.FindTest {
    public var _pat(get, set) : String;
    function get__pat():String return this._pat;
    function set__pat(v:String):String {
        this._pat = (v : stdgo.GoString);
        return v;
    }
    public var _text(get, set) : String;
    function get__text():String return this._text;
    function set__text(v:String):String {
        this._text = (v : stdgo.GoString);
        return v;
    }
    public var _matches(get, set) : Array<Array<StdTypes.Int>>;
    function get__matches():Array<Array<StdTypes.Int>> return [for (i in this._matches) [for (i in i) i]];
    function set__matches(v:Array<Array<StdTypes.Int>>):Array<Array<StdTypes.Int>> {
        this._matches = ([for (i in v) ([for (i in i) (i : stdgo.GoInt)] : stdgo.Slice<stdgo.GoInt>)] : stdgo.Slice<stdgo.Slice<stdgo.GoInt>>);
        return v;
    }
    public function new(?_pat:String, ?_text:String, ?_matches:Array<Array<StdTypes.Int>>) this = new stdgo._internal.regexp.Regexp_FindTest.FindTest((_pat : stdgo.GoString), (_text : stdgo.GoString), ([for (i in _matches) ([for (i in i) (i : stdgo.GoInt)] : stdgo.Slice<stdgo.GoInt>)] : stdgo.Slice<stdgo.Slice<stdgo.GoInt>>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
