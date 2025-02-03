package stdgo.debug.macho;
@:structInit @:using(stdgo.debug.macho.Macho.FormatError_static_extension) abstract FormatError(stdgo._internal.debug.macho.Macho_FormatError.FormatError) from stdgo._internal.debug.macho.Macho_FormatError.FormatError to stdgo._internal.debug.macho.Macho_FormatError.FormatError {
    public var _off(get, set) : haxe.Int64;
    function get__off():haxe.Int64 return this._off;
    function set__off(v:haxe.Int64):haxe.Int64 {
        this._off = (v : stdgo.GoInt64);
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
    public function new(?_off:haxe.Int64, ?_msg:String, ?_val:stdgo.AnyInterface) this = new stdgo._internal.debug.macho.Macho_FormatError.FormatError((_off : stdgo.GoInt64), (_msg : stdgo.GoString), (_val : stdgo.AnyInterface));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
