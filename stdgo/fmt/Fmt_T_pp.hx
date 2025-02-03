package stdgo.fmt;
@:structInit @:using(stdgo.fmt.Fmt.T_pp_static_extension) abstract T_pp(stdgo._internal.fmt.Fmt_T_pp.T_pp) from stdgo._internal.fmt.Fmt_T_pp.T_pp to stdgo._internal.fmt.Fmt_T_pp.T_pp {
    public var _buf(get, set) : T_buffer;
    function get__buf():T_buffer return this._buf;
    function set__buf(v:T_buffer):T_buffer {
        this._buf = v;
        return v;
    }
    public var _arg(get, set) : stdgo.AnyInterface;
    function get__arg():stdgo.AnyInterface return this._arg;
    function set__arg(v:stdgo.AnyInterface):stdgo.AnyInterface {
        this._arg = (v : stdgo.AnyInterface);
        return v;
    }
    public var _value(get, set) : stdgo._internal.reflect.Reflect_Value.Value;
    function get__value():stdgo._internal.reflect.Reflect_Value.Value return this._value;
    function set__value(v:stdgo._internal.reflect.Reflect_Value.Value):stdgo._internal.reflect.Reflect_Value.Value {
        this._value = v;
        return v;
    }
    public var _fmt(get, set) : T_fmt;
    function get__fmt():T_fmt return this._fmt;
    function set__fmt(v:T_fmt):T_fmt {
        this._fmt = v;
        return v;
    }
    public var _reordered(get, set) : Bool;
    function get__reordered():Bool return this._reordered;
    function set__reordered(v:Bool):Bool {
        this._reordered = v;
        return v;
    }
    public var _goodArgNum(get, set) : Bool;
    function get__goodArgNum():Bool return this._goodArgNum;
    function set__goodArgNum(v:Bool):Bool {
        this._goodArgNum = v;
        return v;
    }
    public var _panicking(get, set) : Bool;
    function get__panicking():Bool return this._panicking;
    function set__panicking(v:Bool):Bool {
        this._panicking = v;
        return v;
    }
    public var _erroring(get, set) : Bool;
    function get__erroring():Bool return this._erroring;
    function set__erroring(v:Bool):Bool {
        this._erroring = v;
        return v;
    }
    public var _wrapErrs(get, set) : Bool;
    function get__wrapErrs():Bool return this._wrapErrs;
    function set__wrapErrs(v:Bool):Bool {
        this._wrapErrs = v;
        return v;
    }
    public var _wrappedErrs(get, set) : Array<StdTypes.Int>;
    function get__wrappedErrs():Array<StdTypes.Int> return [for (i in this._wrappedErrs) i];
    function set__wrappedErrs(v:Array<StdTypes.Int>):Array<StdTypes.Int> {
        this._wrappedErrs = ([for (i in v) (i : stdgo.GoInt)] : stdgo.Slice<stdgo.GoInt>);
        return v;
    }
    public function new(?_buf:T_buffer, ?_arg:stdgo.AnyInterface, ?_value:stdgo._internal.reflect.Reflect_Value.Value, ?_fmt:T_fmt, ?_reordered:Bool, ?_goodArgNum:Bool, ?_panicking:Bool, ?_erroring:Bool, ?_wrapErrs:Bool, ?_wrappedErrs:Array<StdTypes.Int>) this = new stdgo._internal.fmt.Fmt_T_pp.T_pp(_buf, (_arg : stdgo.AnyInterface), _value, _fmt, _reordered, _goodArgNum, _panicking, _erroring, _wrapErrs, ([for (i in _wrappedErrs) (i : stdgo.GoInt)] : stdgo.Slice<stdgo.GoInt>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
