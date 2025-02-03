package stdgo.internal.profile;
@:structInit @:using(stdgo.internal.profile.Profile.Line_static_extension) abstract Line(stdgo._internal.internal.profile.Profile_Line.Line) from stdgo._internal.internal.profile.Profile_Line.Line to stdgo._internal.internal.profile.Profile_Line.Line {
    public var function_(get, set) : Function;
    function get_function_():Function return this.function_;
    function set_function_(v:Function):Function {
        this.function_ = (v : stdgo.Ref<stdgo._internal.internal.profile.Profile_Function.Function>);
        return v;
    }
    public var line(get, set) : haxe.Int64;
    function get_line():haxe.Int64 return this.line;
    function set_line(v:haxe.Int64):haxe.Int64 {
        this.line = (v : stdgo.GoInt64);
        return v;
    }
    public var _functionIDX(get, set) : haxe.UInt64;
    function get__functionIDX():haxe.UInt64 return this._functionIDX;
    function set__functionIDX(v:haxe.UInt64):haxe.UInt64 {
        this._functionIDX = (v : stdgo.GoUInt64);
        return v;
    }
    public function new(?function_:Function, ?line:haxe.Int64, ?_functionIDX:haxe.UInt64) this = new stdgo._internal.internal.profile.Profile_Line.Line((function_ : stdgo.Ref<stdgo._internal.internal.profile.Profile_Function.Function>), (line : stdgo.GoInt64), (_functionIDX : stdgo.GoUInt64));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
