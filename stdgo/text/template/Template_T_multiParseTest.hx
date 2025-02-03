package stdgo.text.template;
@:structInit @:using(stdgo.text.template.Template.T_multiParseTest_static_extension) abstract T_multiParseTest(stdgo._internal.text.template.Template_T_multiParseTest.T_multiParseTest) from stdgo._internal.text.template.Template_T_multiParseTest.T_multiParseTest to stdgo._internal.text.template.Template_T_multiParseTest.T_multiParseTest {
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
    public var _ok(get, set) : Bool;
    function get__ok():Bool return this._ok;
    function set__ok(v:Bool):Bool {
        this._ok = v;
        return v;
    }
    public var _names(get, set) : Array<String>;
    function get__names():Array<String> return [for (i in this._names) i];
    function set__names(v:Array<String>):Array<String> {
        this._names = ([for (i in v) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>);
        return v;
    }
    public var _results(get, set) : Array<String>;
    function get__results():Array<String> return [for (i in this._results) i];
    function set__results(v:Array<String>):Array<String> {
        this._results = ([for (i in v) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>);
        return v;
    }
    public function new(?_name:String, ?_input:String, ?_ok:Bool, ?_names:Array<String>, ?_results:Array<String>) this = new stdgo._internal.text.template.Template_T_multiParseTest.T_multiParseTest((_name : stdgo.GoString), (_input : stdgo.GoString), _ok, ([for (i in _names) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>), ([for (i in _results) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
