package stdgo._internal.net.http;
@:structInit @:using(stdgo._internal.net.http.Http_T_timeoutHandler_static_extension.T_timeoutHandler_static_extension) class T_timeoutHandler {
    public var _handler : stdgo._internal.net.http.Http_Handler.Handler = (null : stdgo._internal.net.http.Http_Handler.Handler);
    public var _body : stdgo.GoString = "";
    public var _dt : stdgo._internal.time.Time_Duration.Duration = ((0 : stdgo.GoInt64) : stdgo._internal.time.Time_Duration.Duration);
    public var _testContext : stdgo._internal.context.Context_Context.Context = (null : stdgo._internal.context.Context_Context.Context);
    public function new(?_handler:stdgo._internal.net.http.Http_Handler.Handler, ?_body:stdgo.GoString, ?_dt:stdgo._internal.time.Time_Duration.Duration, ?_testContext:stdgo._internal.context.Context_Context.Context) {
        if (_handler != null) this._handler = _handler;
        if (_body != null) this._body = _body;
        if (_dt != null) this._dt = _dt;
        if (_testContext != null) this._testContext = _testContext;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_timeoutHandler(_handler, _body, _dt, _testContext);
    }
}
