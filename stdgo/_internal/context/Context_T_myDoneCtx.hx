package stdgo._internal.context;
@:structInit @:using(stdgo._internal.context.Context_T_myDoneCtx_static_extension.T_myDoneCtx_static_extension) class T_myDoneCtx {
    @:embedded
    public var context : stdgo._internal.context.Context_Context.Context = (null : stdgo._internal.context.Context_Context.Context);
    public function new(?context:stdgo._internal.context.Context_Context.Context) {
        if (context != null) this.context = context;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    @:embedded
    public function deadline():{ var _0 : stdgo._internal.time.Time_Time.Time; var _1 : Bool; } return this.context.deadline();
    @:embedded
    public function err():stdgo.Error return this.context.err();
    @:embedded
    public function value(_key:stdgo.AnyInterface):stdgo.AnyInterface return this.context.value(_key);
    public function __copy__() {
        return new T_myDoneCtx(context);
    }
}
