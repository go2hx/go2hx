package _internal.context_test;
import stdgo._internal.context.Context;
import stdgo._internal.context.Context;
@:structInit @:using(_internal.context_test.Context_test_T_customDoneContext_static_extension.T_customDoneContext_static_extension) class T_customDoneContext {
    @:embedded
    public var context : stdgo._internal.context.Context_Context.Context = (null : stdgo._internal.context.Context_Context.Context);
    public var _donec : stdgo.Chan<{ }> = (null : stdgo.Chan<{ }>);
    public function new(?context:stdgo._internal.context.Context_Context.Context, ?_donec:stdgo.Chan<{ }>) {
        if (context != null) this.context = context;
        if (_donec != null) this._donec = _donec;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    @:embedded
    public function deadline():{ var _0 : stdgo._internal.time.Time_Time.Time; var _1 : Bool; } return this.context.deadline();
    @:embedded
    public function err():stdgo.Error return this.context.err();
    @:embedded
    public function value(_key:stdgo.AnyInterface):stdgo.AnyInterface return this.context.value(_key);
    public function __copy__() {
        return new T_customDoneContext(context, _donec);
    }
}
