package stdgo._internal.fmt;
@:structInit @:using(stdgo._internal.fmt.Fmt_t_pp_static_extension.T_pp_static_extension) class T_pp {
    public var _buf : stdgo._internal.fmt.Fmt_t_buffer.T_buffer = (new stdgo._internal.fmt.Fmt_t_buffer.T_buffer(0, 0) : stdgo._internal.fmt.Fmt_t_buffer.T_buffer);
    public var _arg : stdgo.AnyInterface = (null : stdgo.AnyInterface);
    public var _value : stdgo._internal.reflect.Reflect_value.Value = ({} : stdgo._internal.reflect.Reflect_value.Value);
    public var _fmt : stdgo._internal.fmt.Fmt_t_fmt.T_fmt = ({} : stdgo._internal.fmt.Fmt_t_fmt.T_fmt);
    public var _reordered : Bool = false;
    public var _goodArgNum : Bool = false;
    public var _panicking : Bool = false;
    public var _erroring : Bool = false;
    public var _wrapErrs : Bool = false;
    public var _wrappedErrs : stdgo.Slice<stdgo.GoInt> = (null : stdgo.Slice<stdgo.GoInt>);
    public function new(?_buf:stdgo._internal.fmt.Fmt_t_buffer.T_buffer, ?_arg:stdgo.AnyInterface, ?_value:stdgo._internal.reflect.Reflect_value.Value, ?_fmt:stdgo._internal.fmt.Fmt_t_fmt.T_fmt, ?_reordered:Bool, ?_goodArgNum:Bool, ?_panicking:Bool, ?_erroring:Bool, ?_wrapErrs:Bool, ?_wrappedErrs:stdgo.Slice<stdgo.GoInt>) {
        if (_buf != null) this._buf = _buf;
        if (_arg != null) this._arg = _arg;
        if (_value != null) this._value = _value;
        if (_fmt != null) this._fmt = _fmt;
        if (_reordered != null) this._reordered = _reordered;
        if (_goodArgNum != null) this._goodArgNum = _goodArgNum;
        if (_panicking != null) this._panicking = _panicking;
        if (_erroring != null) this._erroring = _erroring;
        if (_wrapErrs != null) this._wrapErrs = _wrapErrs;
        if (_wrappedErrs != null) this._wrappedErrs = _wrappedErrs;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_pp(_buf, _arg, _value, _fmt, _reordered, _goodArgNum, _panicking, _erroring, _wrapErrs, _wrappedErrs);
    }
}
