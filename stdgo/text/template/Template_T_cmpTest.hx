package stdgo.text.template;
@:structInit @:using(stdgo.text.template.Template.T_cmpTest_static_extension) abstract T_cmpTest(stdgo._internal.text.template.Template_T_cmpTest.T_cmpTest) from stdgo._internal.text.template.Template_T_cmpTest.T_cmpTest to stdgo._internal.text.template.Template_T_cmpTest.T_cmpTest {
    public var _expr(get, set) : String;
    function get__expr():String return this._expr;
    function set__expr(v:String):String {
        this._expr = (v : stdgo.GoString);
        return v;
    }
    public var _truth(get, set) : String;
    function get__truth():String return this._truth;
    function set__truth(v:String):String {
        this._truth = (v : stdgo.GoString);
        return v;
    }
    public var _ok(get, set) : Bool;
    function get__ok():Bool return this._ok;
    function set__ok(v:Bool):Bool {
        this._ok = v;
        return v;
    }
    public function new(?_expr:String, ?_truth:String, ?_ok:Bool) this = new stdgo._internal.text.template.Template_T_cmpTest.T_cmpTest((_expr : stdgo.GoString), (_truth : stdgo.GoString), _ok);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
