package stdgo.regexp.syntax;
@:structInit @:using(stdgo.regexp.syntax.Syntax.T_parseTest_static_extension) abstract T_parseTest(stdgo._internal.regexp.syntax.Syntax_T_parseTest.T_parseTest) from stdgo._internal.regexp.syntax.Syntax_T_parseTest.T_parseTest to stdgo._internal.regexp.syntax.Syntax_T_parseTest.T_parseTest {
    public var regexp(get, set) : String;
    function get_regexp():String return this.regexp;
    function set_regexp(v:String):String {
        this.regexp = (v : stdgo.GoString);
        return v;
    }
    public var dump(get, set) : String;
    function get_dump():String return this.dump;
    function set_dump(v:String):String {
        this.dump = (v : stdgo.GoString);
        return v;
    }
    public function new(?regexp:String, ?dump:String) this = new stdgo._internal.regexp.syntax.Syntax_T_parseTest.T_parseTest((regexp : stdgo.GoString), (dump : stdgo.GoString));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
