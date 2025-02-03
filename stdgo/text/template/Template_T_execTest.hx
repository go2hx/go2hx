package stdgo.text.template;
@:structInit @:using(stdgo.text.template.Template.T_execTest_static_extension) abstract T_execTest(stdgo._internal.text.template.Template_T_execTest.T_execTest) from stdgo._internal.text.template.Template_T_execTest.T_execTest to stdgo._internal.text.template.Template_T_execTest.T_execTest {
    public var _name(get, set) : String;
    function get__name():String return this._name;
    function set__name(v:String):String {
        this._name = (v : stdgo.GoString);
        return v;
    }
    public var _input(get, set) : String;
    function get__input():String return this._input;
    function set__input(v:String):String {
        this._input = (v : stdgo.GoString);
        return v;
    }
    public var _output(get, set) : String;
    function get__output():String return this._output;
    function set__output(v:String):String {
        this._output = (v : stdgo.GoString);
        return v;
    }
    public var _data(get, set) : stdgo.AnyInterface;
    function get__data():stdgo.AnyInterface return this._data;
    function set__data(v:stdgo.AnyInterface):stdgo.AnyInterface {
        this._data = (v : stdgo.AnyInterface);
        return v;
    }
    public var _ok(get, set) : Bool;
    function get__ok():Bool return this._ok;
    function set__ok(v:Bool):Bool {
        this._ok = v;
        return v;
    }
    public function new(?_name:String, ?_input:String, ?_output:String, ?_data:stdgo.AnyInterface, ?_ok:Bool) this = new stdgo._internal.text.template.Template_T_execTest.T_execTest((_name : stdgo.GoString), (_input : stdgo.GoString), (_output : stdgo.GoString), (_data : stdgo.AnyInterface), _ok);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
