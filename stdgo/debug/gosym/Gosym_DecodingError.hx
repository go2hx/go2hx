package stdgo.debug.gosym;
@:structInit @:using(stdgo.debug.gosym.Gosym.DecodingError_static_extension) abstract DecodingError(stdgo._internal.debug.gosym.Gosym_DecodingError.DecodingError) from stdgo._internal.debug.gosym.Gosym_DecodingError.DecodingError to stdgo._internal.debug.gosym.Gosym_DecodingError.DecodingError {
    public var _off(get, set) : StdTypes.Int;
    function get__off():StdTypes.Int return this._off;
    function set__off(v:StdTypes.Int):StdTypes.Int {
        this._off = (v : stdgo.GoInt);
        return v;
    }
    public var _msg(get, set) : String;
    function get__msg():String return this._msg;
    function set__msg(v:String):String {
        this._msg = (v : stdgo.GoString);
        return v;
    }
    public var _val(get, set) : stdgo.AnyInterface;
    function get__val():stdgo.AnyInterface return this._val;
    function set__val(v:stdgo.AnyInterface):stdgo.AnyInterface {
        this._val = (v : stdgo.AnyInterface);
        return v;
    }
    public function new(?_off:StdTypes.Int, ?_msg:String, ?_val:stdgo.AnyInterface) this = new stdgo._internal.debug.gosym.Gosym_DecodingError.DecodingError((_off : stdgo.GoInt), (_msg : stdgo.GoString), (_val : stdgo.AnyInterface));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
