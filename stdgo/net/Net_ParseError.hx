package stdgo.net;
@:structInit @:using(stdgo.net.Net.ParseError_static_extension) abstract ParseError(stdgo._internal.net.Net_ParseError.ParseError) from stdgo._internal.net.Net_ParseError.ParseError to stdgo._internal.net.Net_ParseError.ParseError {
    public var type(get, set) : String;
    function get_type():String return this.type;
    function set_type(v:String):String {
        this.type = (v : stdgo.GoString);
        return v;
    }
    public var text(get, set) : String;
    function get_text():String return this.text;
    function set_text(v:String):String {
        this.text = (v : stdgo.GoString);
        return v;
    }
    public function new(?type:String, ?text:String) this = new stdgo._internal.net.Net_ParseError.ParseError((type : stdgo.GoString), (text : stdgo.GoString));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
