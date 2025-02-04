package stdgo._internal.net;
@:structInit @:using(stdgo._internal.net.Net_resolver_static_extension.Resolver_static_extension) class Resolver {
    public var preferGo : Bool = false;
    public var strictErrors : Bool = false;
    public var dial : (stdgo._internal.context.Context_context.Context, stdgo.GoString, stdgo.GoString) -> { var _0 : stdgo._internal.net.Net_conn.Conn; var _1 : stdgo.Error; } = null;
    public function new(?preferGo:Bool, ?strictErrors:Bool, ?dial:(stdgo._internal.context.Context_context.Context, stdgo.GoString, stdgo.GoString) -> { var _0 : stdgo._internal.net.Net_conn.Conn; var _1 : stdgo.Error; }) {
        if (preferGo != null) this.preferGo = preferGo;
        if (strictErrors != null) this.strictErrors = strictErrors;
        if (dial != null) this.dial = dial;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Resolver(preferGo, strictErrors, dial);
    }
}
