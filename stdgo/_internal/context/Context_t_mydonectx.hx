package stdgo._internal.context;
@:structInit @:using(stdgo._internal.context.Context_t_mydonectx_static_extension.T_myDoneCtx_static_extension) class T_myDoneCtx {
    @:embedded
    public var context : stdgo._internal.context.Context_context.Context = (null : stdgo._internal.context.Context_context.Context);
    public function new(?context:stdgo._internal.context.Context_context.Context) {
        if (context != null) this.context = context;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public var deadline(get, never) : () -> { var _0 : stdgo._internal.time.Time_time.Time; var _1 : Bool; };
    @:embedded
    @:embeddededffieldsffun
    public function get_deadline():() -> { var _0 : stdgo._internal.time.Time_time.Time; var _1 : Bool; } return @:check31 (this.context ?? throw "null pointer dereference").deadline;
    public var err(get, never) : () -> stdgo.Error;
    @:embedded
    @:embeddededffieldsffun
    public function get_err():() -> stdgo.Error return @:check31 (this.context ?? throw "null pointer dereference").err;
    public var value(get, never) : stdgo.AnyInterface -> stdgo.AnyInterface;
    @:embedded
    @:embeddededffieldsffun
    public function get_value():stdgo.AnyInterface -> stdgo.AnyInterface return @:check31 (this.context ?? throw "null pointer dereference").value;
    public function __copy__() {
        return new T_myDoneCtx(context);
    }
}
