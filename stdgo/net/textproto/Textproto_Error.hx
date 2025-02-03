package stdgo.net.textproto;
@:structInit @:using(stdgo.net.textproto.Textproto.Error_static_extension) abstract Error(stdgo._internal.net.textproto.Textproto_Error.Error) from stdgo._internal.net.textproto.Textproto_Error.Error to stdgo._internal.net.textproto.Textproto_Error.Error {
    public var code(get, set) : StdTypes.Int;
    function get_code():StdTypes.Int return this.code;
    function set_code(v:StdTypes.Int):StdTypes.Int {
        this.code = (v : stdgo.GoInt);
        return v;
    }
    public var msg(get, set) : String;
    function get_msg():String return this.msg;
    function set_msg(v:String):String {
        this.msg = (v : stdgo.GoString);
        return v;
    }
    public function new(?code:StdTypes.Int, ?msg:String) this = new stdgo._internal.net.textproto.Textproto_Error.Error((code : stdgo.GoInt), (msg : stdgo.GoString));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
