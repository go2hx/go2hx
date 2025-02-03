package stdgo.context;
@:structInit @:using(stdgo.context.Context.T_valueCtx_static_extension) abstract T_valueCtx(stdgo._internal.context.Context_T_valueCtx.T_valueCtx) from stdgo._internal.context.Context_T_valueCtx.T_valueCtx to stdgo._internal.context.Context_T_valueCtx.T_valueCtx {
    public var context(get, set) : Context_;
    function get_context():Context_ return this.context;
    function set_context(v:Context_):Context_ {
        this.context = v;
        return v;
    }
    public var _key(get, set) : stdgo.AnyInterface;
    function get__key():stdgo.AnyInterface return this._key;
    function set__key(v:stdgo.AnyInterface):stdgo.AnyInterface {
        this._key = (v : stdgo.AnyInterface);
        return v;
    }
    public var _val(get, set) : stdgo.AnyInterface;
    function get__val():stdgo.AnyInterface return this._val;
    function set__val(v:stdgo.AnyInterface):stdgo.AnyInterface {
        this._val = (v : stdgo.AnyInterface);
        return v;
    }
    public function new(?context:Context_, ?_key:stdgo.AnyInterface, ?_val:stdgo.AnyInterface) this = new stdgo._internal.context.Context_T_valueCtx.T_valueCtx(context, (_key : stdgo.AnyInterface), (_val : stdgo.AnyInterface));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
