package stdgo.context;
@:structInit @:using(stdgo.context.Context.T_stopCtx_static_extension) abstract T_stopCtx(stdgo._internal.context.Context_T_stopCtx.T_stopCtx) from stdgo._internal.context.Context_T_stopCtx.T_stopCtx to stdgo._internal.context.Context_T_stopCtx.T_stopCtx {
    public var context(get, set) : Context_;
    function get_context():Context_ return this.context;
    function set_context(v:Context_):Context_ {
        this.context = v;
        return v;
    }
    public var _stop(get, set) : () -> Bool;
    function get__stop():() -> Bool return () -> this._stop();
    function set__stop(v:() -> Bool):() -> Bool {
        this._stop = v;
        return v;
    }
    public function new(?context:Context_, ?_stop:() -> Bool) this = new stdgo._internal.context.Context_T_stopCtx.T_stopCtx(context, _stop);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
