package stdgo._internal.context;
@:structInit @:using(stdgo._internal.context.Context_T_myDoneCtx_static_extension.T_myDoneCtx_static_extension) class T_myDoneCtx {
    @:embedded
    public var context : stdgo._internal.context.Context_Context.Context = (null : stdgo._internal.context.Context_Context.Context);
    public function new(?context:stdgo._internal.context.Context_Context.Context) {
        if (context != null) this.context = context;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public var deadline(get, never) : () -> { var _0 : stdgo._internal.time.Time_Time.Time; var _1 : Bool; };
    @:embedded
    @:embeddededffieldsffun
    public function get_deadline():() -> { var _0 : stdgo._internal.time.Time_Time.Time; var _1 : Bool; } return @:check3 (this.context ?? throw "null pointer derefrence").deadline;
    public var err(get, never) : () -> stdgo.Error;
    @:embedded
    @:embeddededffieldsffun
    public function get_err():() -> stdgo.Error return @:check3 (this.context ?? throw "null pointer derefrence").err;
    public var value(get, never) : stdgo.AnyInterface -> stdgo.AnyInterface;
    @:embedded
    @:embeddededffieldsffun
    public function get_value():stdgo.AnyInterface -> stdgo.AnyInterface return @:check3 (this.context ?? throw "null pointer derefrence").value;
    public function __copy__() {
        return new T_myDoneCtx(context);
    }
}
