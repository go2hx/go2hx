package stdgo.time;
@:structInit @:using(stdgo.time.Time.ParseError_static_extension) abstract ParseError(stdgo._internal.time.Time_ParseError.ParseError) from stdgo._internal.time.Time_ParseError.ParseError to stdgo._internal.time.Time_ParseError.ParseError {
    public var layout(get, set) : String;
    function get_layout():String return this.layout;
    function set_layout(v:String):String {
        this.layout = (v : stdgo.GoString);
        return v;
    }
    public var value(get, set) : String;
    function get_value():String return this.value;
    function set_value(v:String):String {
        this.value = (v : stdgo.GoString);
        return v;
    }
    public var layoutElem(get, set) : String;
    function get_layoutElem():String return this.layoutElem;
    function set_layoutElem(v:String):String {
        this.layoutElem = (v : stdgo.GoString);
        return v;
    }
    public var valueElem(get, set) : String;
    function get_valueElem():String return this.valueElem;
    function set_valueElem(v:String):String {
        this.valueElem = (v : stdgo.GoString);
        return v;
    }
    public var message(get, set) : String;
    function get_message():String return this.message;
    function set_message(v:String):String {
        this.message = (v : stdgo.GoString);
        return v;
    }
    public function new(?layout:String, ?value:String, ?layoutElem:String, ?valueElem:String, ?message:String) this = new stdgo._internal.time.Time_ParseError.ParseError((layout : stdgo.GoString), (value : stdgo.GoString), (layoutElem : stdgo.GoString), (valueElem : stdgo.GoString), (message : stdgo.GoString));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
