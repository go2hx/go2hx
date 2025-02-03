package stdgo.net;
@:structInit @:using(stdgo.net.Net.Resolver_static_extension) abstract Resolver(stdgo._internal.net.Net_Resolver.Resolver) from stdgo._internal.net.Net_Resolver.Resolver to stdgo._internal.net.Net_Resolver.Resolver {
    public var preferGo(get, set) : Bool;
    function get_preferGo():Bool return this.preferGo;
    function set_preferGo(v:Bool):Bool {
        this.preferGo = v;
        return v;
    }
    public var strictErrors(get, set) : Bool;
    function get_strictErrors():Bool return this.strictErrors;
    function set_strictErrors(v:Bool):Bool {
        this.strictErrors = v;
        return v;
    }
    public var dial(get, set) : (stdgo._internal.context.Context_Context.Context, stdgo.GoString, stdgo.GoString) -> { var _0 : stdgo._internal.net.Net_Conn.Conn; var _1 : stdgo.Error; };
    function get_dial():(stdgo._internal.context.Context_Context.Context, stdgo.GoString, stdgo.GoString) -> { var _0 : stdgo._internal.net.Net_Conn.Conn; var _1 : stdgo.Error; } return (_0, _1, _2) -> this.dial(_0, _1, _2);
    function set_dial(v:(stdgo._internal.context.Context_Context.Context, stdgo.GoString, stdgo.GoString) -> { var _0 : stdgo._internal.net.Net_Conn.Conn; var _1 : stdgo.Error; }):(stdgo._internal.context.Context_Context.Context, stdgo.GoString, stdgo.GoString) -> { var _0 : stdgo._internal.net.Net_Conn.Conn; var _1 : stdgo.Error; } {
        this.dial = v;
        return v;
    }
    public function new(?preferGo:Bool, ?strictErrors:Bool, ?dial:(stdgo._internal.context.Context_Context.Context, stdgo.GoString, stdgo.GoString) -> { var _0 : stdgo._internal.net.Net_Conn.Conn; var _1 : stdgo.Error; }) this = new stdgo._internal.net.Net_Resolver.Resolver(preferGo, strictErrors, dial);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
