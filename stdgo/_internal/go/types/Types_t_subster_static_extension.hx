package stdgo._internal.go.types;
@:keep @:allow(stdgo._internal.go.types.Types.T_subster_asInterface) class T_subster_static_extension {
    @:keep
    @:tdfield
    static public function _termlist( _subst:stdgo.Ref<stdgo._internal.go.types.Types_t_subster.T_subster>, _in:stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_term.Term>>):{ var _0 : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_term.Term>>; var _1 : Bool; } {
        @:recv var _subst:stdgo.Ref<stdgo._internal.go.types.Types_t_subster.T_subster> = _subst;
        var _out = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_term.Term>>), _copied = false;
        _out = _in;
        //"file:///home/runner/.go/go1.21.3/src/go/types/subst.go#L382"
        for (_i => _t in _in) {
            //"file:///home/runner/.go/go1.21.3/src/go/types/subst.go#L383"
            {
                var _u = (_subst._typ((@:checkr _t ?? throw "null pointer dereference")._typ) : stdgo._internal.go.types.Types_type_.Type_);
                if (stdgo.Go.toInterface(_u) != (stdgo.Go.toInterface((@:checkr _t ?? throw "null pointer dereference")._typ))) {
                    //"file:///home/runner/.go/go1.21.3/src/go/types/subst.go#L384"
                    if (!_copied) {
                        var _new_ = (new stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_term.Term>>((_in.length : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_term.Term>>);
                        //"file:///home/runner/.go/go1.21.3/src/go/types/subst.go#L388"
                        _new_.__copyTo__(_out);
                        _out = _new_;
                        _copied = true;
                    };
                    _out[(_i : stdgo.GoInt)] = stdgo._internal.go.types.Types_newterm.newTerm((@:checkr _t ?? throw "null pointer dereference")._tilde, _u);
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/types/subst.go#L395"
        return { _0 : _out, _1 : _copied };
    }
    @:keep
    @:tdfield
    static public function _typeList( _subst:stdgo.Ref<stdgo._internal.go.types.Types_t_subster.T_subster>, _in:stdgo.Slice<stdgo._internal.go.types.Types_type_.Type_>):{ var _0 : stdgo.Slice<stdgo._internal.go.types.Types_type_.Type_>; var _1 : Bool; } {
        @:recv var _subst:stdgo.Ref<stdgo._internal.go.types.Types_t_subster.T_subster> = _subst;
        var _out = (null : stdgo.Slice<stdgo._internal.go.types.Types_type_.Type_>), _copied = false;
        _out = _in;
        //"file:///home/runner/.go/go1.21.3/src/go/types/subst.go#L364"
        for (_i => _t in _in) {
            //"file:///home/runner/.go/go1.21.3/src/go/types/subst.go#L365"
            {
                var _u = (_subst._typ(_t) : stdgo._internal.go.types.Types_type_.Type_);
                if (stdgo.Go.toInterface(_u) != (stdgo.Go.toInterface(_t))) {
                    //"file:///home/runner/.go/go1.21.3/src/go/types/subst.go#L366"
                    if (!_copied) {
                        var _new_ = (new stdgo.Slice<stdgo._internal.go.types.Types_type_.Type_>((_in.length : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo._internal.go.types.Types_type_.Type_>);
                        //"file:///home/runner/.go/go1.21.3/src/go/types/subst.go#L370"
                        _new_.__copyTo__(_out);
                        _out = _new_;
                        _copied = true;
                    };
                    _out[(_i : stdgo.GoInt)] = _u;
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/types/subst.go#L377"
        return { _0 : _out, _1 : _copied };
    }
    @:keep
    @:tdfield
    static public function _funcList( _subst:stdgo.Ref<stdgo._internal.go.types.Types_t_subster.T_subster>, _in:stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_func.Func>>):{ var _0 : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_func.Func>>; var _1 : Bool; } {
        @:recv var _subst:stdgo.Ref<stdgo._internal.go.types.Types_t_subster.T_subster> = _subst;
        var _out = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_func.Func>>), _copied = false;
        _out = _in;
        //"file:///home/runner/.go/go1.21.3/src/go/types/subst.go#L346"
        for (_i => _f in _in) {
            //"file:///home/runner/.go/go1.21.3/src/go/types/subst.go#L347"
            {
                var _g = _subst._func_(_f);
                if (_g != (_f)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/types/subst.go#L348"
                    if (!_copied) {
                        var _new_ = (new stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_func.Func>>((_in.length : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_func.Func>>);
                        //"file:///home/runner/.go/go1.21.3/src/go/types/subst.go#L352"
                        _new_.__copyTo__(_out);
                        _out = _new_;
                        _copied = true;
                    };
                    _out[(_i : stdgo.GoInt)] = _g;
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/types/subst.go#L359"
        return { _0 : _out, _1 : _copied };
    }
    @:keep
    @:tdfield
    static public function _func_( _subst:stdgo.Ref<stdgo._internal.go.types.Types_t_subster.T_subster>, _f:stdgo.Ref<stdgo._internal.go.types.Types_func.Func>):stdgo.Ref<stdgo._internal.go.types.Types_func.Func> {
        @:recv var _subst:stdgo.Ref<stdgo._internal.go.types.Types_t_subster.T_subster> = _subst;
        //"file:///home/runner/.go/go1.21.3/src/go/types/subst.go#L329"
        if (({
            final value = _f;
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        })) {
            //"file:///home/runner/.go/go1.21.3/src/go/types/subst.go#L330"
            {
                var _typ = (_subst._typ((@:checkr _f ?? throw "null pointer dereference")._object._typ) : stdgo._internal.go.types.Types_type_.Type_);
                if (stdgo.Go.toInterface(_typ) != (stdgo.Go.toInterface((@:checkr _f ?? throw "null pointer dereference")._object._typ))) {
                    //"file:///home/runner/.go/go1.21.3/src/go/types/subst.go#L331"
                    return stdgo._internal.go.types.Types__substfunc._substFunc(_f, _typ);
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/types/subst.go#L334"
        return _f;
    }
    @:keep
    @:tdfield
    static public function _varList( _subst:stdgo.Ref<stdgo._internal.go.types.Types_t_subster.T_subster>, _in:stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_var.Var>>):{ var _0 : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_var.Var>>; var _1 : Bool; } {
        @:recv var _subst:stdgo.Ref<stdgo._internal.go.types.Types_t_subster.T_subster> = _subst;
        var _out = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_var.Var>>), _copied = false;
        _out = _in;
        //"file:///home/runner/.go/go1.21.3/src/go/types/subst.go#L312"
        for (_i => _v in _in) {
            //"file:///home/runner/.go/go1.21.3/src/go/types/subst.go#L313"
            {
                var _w = _subst._var_(_v);
                if (_w != (_v)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/types/subst.go#L314"
                    if (!_copied) {
                        var _new_ = (new stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_var.Var>>((_in.length : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_var.Var>>);
                        //"file:///home/runner/.go/go1.21.3/src/go/types/subst.go#L318"
                        _new_.__copyTo__(_out);
                        _out = _new_;
                        _copied = true;
                    };
                    _out[(_i : stdgo.GoInt)] = _w;
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/types/subst.go#L325"
        return { _0 : _out, _1 : _copied };
    }
    @:keep
    @:tdfield
    static public function _tuple( _subst:stdgo.Ref<stdgo._internal.go.types.Types_t_subster.T_subster>, _t:stdgo.Ref<stdgo._internal.go.types.Types_tuple.Tuple>):stdgo.Ref<stdgo._internal.go.types.Types_tuple.Tuple> {
        @:recv var _subst:stdgo.Ref<stdgo._internal.go.types.Types_t_subster.T_subster> = _subst;
        //"file:///home/runner/.go/go1.21.3/src/go/types/subst.go#L302"
        if (({
            final value = _t;
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        })) {
            //"file:///home/runner/.go/go1.21.3/src/go/types/subst.go#L303"
            {
                var __tmp__ = _subst._varList((@:checkr _t ?? throw "null pointer dereference")._vars), _vars:stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_var.Var>> = __tmp__._0, _copied:Bool = __tmp__._1;
                if (_copied) {
                    //"file:///home/runner/.go/go1.21.3/src/go/types/subst.go#L304"
                    return (stdgo.Go.setRef(({ _vars : _vars } : stdgo._internal.go.types.Types_tuple.Tuple)) : stdgo.Ref<stdgo._internal.go.types.Types_tuple.Tuple>);
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/types/subst.go#L307"
        return _t;
    }
    @:keep
    @:tdfield
    static public function _var_( _subst:stdgo.Ref<stdgo._internal.go.types.Types_t_subster.T_subster>, _v:stdgo.Ref<stdgo._internal.go.types.Types_var.Var>):stdgo.Ref<stdgo._internal.go.types.Types_var.Var> {
        @:recv var _subst:stdgo.Ref<stdgo._internal.go.types.Types_t_subster.T_subster> = _subst;
        //"file:///home/runner/.go/go1.21.3/src/go/types/subst.go#L286"
        if (({
            final value = _v;
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        })) {
            //"file:///home/runner/.go/go1.21.3/src/go/types/subst.go#L287"
            {
                var _typ = (_subst._typ((@:checkr _v ?? throw "null pointer dereference")._object._typ) : stdgo._internal.go.types.Types_type_.Type_);
                if (stdgo.Go.toInterface(_typ) != (stdgo.Go.toInterface((@:checkr _v ?? throw "null pointer dereference")._object._typ))) {
                    //"file:///home/runner/.go/go1.21.3/src/go/types/subst.go#L288"
                    return stdgo._internal.go.types.Types__substvar._substVar(_v, _typ);
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/types/subst.go#L291"
        return _v;
    }
    @:keep
    @:tdfield
    static public function _typOrNil( _subst:stdgo.Ref<stdgo._internal.go.types.Types_t_subster.T_subster>, _typ:stdgo._internal.go.types.Types_type_.Type_):stdgo._internal.go.types.Types_type_.Type_ {
        @:recv var _subst:stdgo.Ref<stdgo._internal.go.types.Types_t_subster.T_subster> = _subst;
        //"file:///home/runner/.go/go1.21.3/src/go/types/subst.go#L279"
        if (_typ == null) {
            //"file:///home/runner/.go/go1.21.3/src/go/types/subst.go#L280"
            return stdgo.Go.asInterface(stdgo._internal.go.types.Types_typ.typ[((0 : stdgo._internal.go.types.Types_basickind.BasicKind) : stdgo.GoInt)]);
        };
        //"file:///home/runner/.go/go1.21.3/src/go/types/subst.go#L282"
        return _subst._typ(_typ);
    }
    @:keep
    @:tdfield
    static public function _typ( _subst:stdgo.Ref<stdgo._internal.go.types.Types_t_subster.T_subster>, _typ:stdgo._internal.go.types.Types_type_.Type_):stdgo._internal.go.types.Types_type_.Type_ {
        @:recv var _subst:stdgo.Ref<stdgo._internal.go.types.Types_t_subster.T_subster> = _subst;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            //"file:///home/runner/.go/go1.21.3/src/go/types/subst.go#L92"
            {
                final __type__ = _typ;
                if (__type__ == null) {
                    var _t:stdgo.AnyInterface = __type__ == null ? (null : stdgo.AnyInterface) : cast __type__;
                    //"file:///home/runner/.go/go1.21.3/src/go/types/subst.go#L95"
                    throw stdgo.Go.toInterface(("nil typ" : stdgo.GoString));
                } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.types.Types_basic.Basic>))) {
                    var _t:stdgo.Ref<stdgo._internal.go.types.Types_basic.Basic> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_basic.Basic>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_basic.Basic>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_basic.Basic>) : __type__.__underlying__().value);
                } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.types.Types_array_.Array_>))) {
                    var _t:stdgo.Ref<stdgo._internal.go.types.Types_array_.Array_> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_array_.Array_>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_array_.Array_>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_array_.Array_>) : __type__.__underlying__().value);
                    var _elem = (_subst._typOrNil((@:checkr _t ?? throw "null pointer dereference")._elem) : stdgo._internal.go.types.Types_type_.Type_);
                    //"file:///home/runner/.go/go1.21.3/src/go/types/subst.go#L102"
                    if (stdgo.Go.toInterface(_elem) != (stdgo.Go.toInterface((@:checkr _t ?? throw "null pointer dereference")._elem))) {
                        //"file:///home/runner/.go/go1.21.3/src/go/types/subst.go#L103"
                        return stdgo.Go.asInterface((stdgo.Go.setRef(({ _len : (@:checkr _t ?? throw "null pointer dereference")._len, _elem : _elem } : stdgo._internal.go.types.Types_array_.Array_)) : stdgo.Ref<stdgo._internal.go.types.Types_array_.Array_>));
                    };
                } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.types.Types_slice_.Slice_>))) {
                    var _t:stdgo.Ref<stdgo._internal.go.types.Types_slice_.Slice_> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_slice_.Slice_>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_slice_.Slice_>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_slice_.Slice_>) : __type__.__underlying__().value);
                    var _elem = (_subst._typOrNil((@:checkr _t ?? throw "null pointer dereference")._elem) : stdgo._internal.go.types.Types_type_.Type_);
                    //"file:///home/runner/.go/go1.21.3/src/go/types/subst.go#L108"
                    if (stdgo.Go.toInterface(_elem) != (stdgo.Go.toInterface((@:checkr _t ?? throw "null pointer dereference")._elem))) {
                        //"file:///home/runner/.go/go1.21.3/src/go/types/subst.go#L109"
                        return stdgo.Go.asInterface((stdgo.Go.setRef(({ _elem : _elem } : stdgo._internal.go.types.Types_slice_.Slice_)) : stdgo.Ref<stdgo._internal.go.types.Types_slice_.Slice_>));
                    };
                } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.types.Types_struct.Struct>))) {
                    var _t:stdgo.Ref<stdgo._internal.go.types.Types_struct.Struct> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_struct.Struct>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_struct.Struct>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_struct.Struct>) : __type__.__underlying__().value);
                    //"file:///home/runner/.go/go1.21.3/src/go/types/subst.go#L113"
                    {
                        var __tmp__ = _subst._varList((@:checkr _t ?? throw "null pointer dereference")._fields), _fields:stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_var.Var>> = __tmp__._0, _copied:Bool = __tmp__._1;
                        if (_copied) {
                            var _s = (stdgo.Go.setRef(({ _fields : _fields, _tags : (@:checkr _t ?? throw "null pointer dereference")._tags } : stdgo._internal.go.types.Types_struct.Struct)) : stdgo.Ref<stdgo._internal.go.types.Types_struct.Struct>);
                            //"file:///home/runner/.go/go1.21.3/src/go/types/subst.go#L115"
                            _s._markComplete();
                            //"file:///home/runner/.go/go1.21.3/src/go/types/subst.go#L116"
                            return stdgo.Go.asInterface(_s);
                        };
                    };
                } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.types.Types_pointer_.Pointer_>))) {
                    var _t:stdgo.Ref<stdgo._internal.go.types.Types_pointer_.Pointer_> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_pointer_.Pointer_>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_pointer_.Pointer_>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_pointer_.Pointer_>) : __type__.__underlying__().value);
                    var _base = (_subst._typ((@:checkr _t ?? throw "null pointer dereference")._base) : stdgo._internal.go.types.Types_type_.Type_);
                    //"file:///home/runner/.go/go1.21.3/src/go/types/subst.go#L121"
                    if (stdgo.Go.toInterface(_base) != (stdgo.Go.toInterface((@:checkr _t ?? throw "null pointer dereference")._base))) {
                        //"file:///home/runner/.go/go1.21.3/src/go/types/subst.go#L122"
                        return stdgo.Go.asInterface((stdgo.Go.setRef(({ _base : _base } : stdgo._internal.go.types.Types_pointer_.Pointer_)) : stdgo.Ref<stdgo._internal.go.types.Types_pointer_.Pointer_>));
                    };
                } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.types.Types_tuple.Tuple>))) {
                    var _t:stdgo.Ref<stdgo._internal.go.types.Types_tuple.Tuple> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_tuple.Tuple>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_tuple.Tuple>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_tuple.Tuple>) : __type__.__underlying__().value);
                    //"file:///home/runner/.go/go1.21.3/src/go/types/subst.go#L126"
                    return stdgo.Go.asInterface(_subst._tuple(_t));
                } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.types.Types_signature.Signature>))) {
                    var _t:stdgo.Ref<stdgo._internal.go.types.Types_signature.Signature> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_signature.Signature>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_signature.Signature>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_signature.Signature>) : __type__.__underlying__().value);
                    var _recv = (@:checkr _t ?? throw "null pointer dereference")._recv;
                    var _params = _subst._tuple((@:checkr _t ?? throw "null pointer dereference")._params);
                    var _results = _subst._tuple((@:checkr _t ?? throw "null pointer dereference")._results);
                    //"file:///home/runner/.go/go1.21.3/src/go/types/subst.go#L146"
                    if (((_params != (@:checkr _t ?? throw "null pointer dereference")._params) || (_results != (@:checkr _t ?? throw "null pointer dereference")._results) : Bool)) {
                        //"file:///home/runner/.go/go1.21.3/src/go/types/subst.go#L147"
                        return stdgo.Go.asInterface((stdgo.Go.setRef(({ _rparams : (@:checkr _t ?? throw "null pointer dereference")._rparams, _tparams : (@:checkr _t ?? throw "null pointer dereference")._tparams, _recv : _recv, _params : _params, _results : _results, _variadic : (@:checkr _t ?? throw "null pointer dereference")._variadic } : stdgo._internal.go.types.Types_signature.Signature)) : stdgo.Ref<stdgo._internal.go.types.Types_signature.Signature>));
                    };
                } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.types.Types_union.Union>))) {
                    var _t:stdgo.Ref<stdgo._internal.go.types.Types_union.Union> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_union.Union>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_union.Union>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_union.Union>) : __type__.__underlying__().value);
                    var __tmp__ = _subst._termlist((@:checkr _t ?? throw "null pointer dereference")._terms), _terms:stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_term.Term>> = __tmp__._0, _copied:Bool = __tmp__._1;
                    //"file:///home/runner/.go/go1.21.3/src/go/types/subst.go#L161"
                    if (_copied) {
                        //"file:///home/runner/.go/go1.21.3/src/go/types/subst.go#L165"
                        return stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.go.types.Types_union.Union(_terms) : stdgo._internal.go.types.Types_union.Union)) : stdgo.Ref<stdgo._internal.go.types.Types_union.Union>));
                    };
                } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface>))) {
                    var _t:stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface>) : __type__.__underlying__().value);
                    var __tmp__ = _subst._funcList((@:checkr _t ?? throw "null pointer dereference")._methods), _methods:stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_func.Func>> = __tmp__._0, _mcopied:Bool = __tmp__._1;
                    var __tmp__ = _subst._typeList((@:checkr _t ?? throw "null pointer dereference")._embeddeds), _embeddeds:stdgo.Slice<stdgo._internal.go.types.Types_type_.Type_> = __tmp__._0, _ecopied:Bool = __tmp__._1;
                    //"file:///home/runner/.go/go1.21.3/src/go/types/subst.go#L171"
                    if ((_mcopied || _ecopied : Bool)) {
                        var _iface = (@:checkr _subst ?? throw "null pointer dereference")._check._newInterface();
                        (@:checkr _iface ?? throw "null pointer dereference")._embeddeds = _embeddeds;
                        (@:checkr _iface ?? throw "null pointer dereference")._implicit = (@:checkr _t ?? throw "null pointer dereference")._implicit;
                        (@:checkr _iface ?? throw "null pointer dereference")._complete = (@:checkr _t ?? throw "null pointer dereference")._complete;
                        {
                            var __tmp__ = stdgo._internal.go.types.Types__replacerecvtype._replaceRecvType(_methods, stdgo.Go.asInterface(_t), stdgo.Go.asInterface(_iface));
                            (@:checkr _iface ?? throw "null pointer dereference")._methods = @:tmpset0 __tmp__._0;
                        };
                        //"file:///home/runner/.go/go1.21.3/src/go/types/subst.go#L190"
                        return stdgo.Go.asInterface(_iface);
                    };
                } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.types.Types_map_.Map_>))) {
                    var _t:stdgo.Ref<stdgo._internal.go.types.Types_map_.Map_> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_map_.Map_>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_map_.Map_>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_map_.Map_>) : __type__.__underlying__().value);
                    var _key = (_subst._typ((@:checkr _t ?? throw "null pointer dereference")._key) : stdgo._internal.go.types.Types_type_.Type_);
                    var _elem = (_subst._typ((@:checkr _t ?? throw "null pointer dereference")._elem) : stdgo._internal.go.types.Types_type_.Type_);
                    //"file:///home/runner/.go/go1.21.3/src/go/types/subst.go#L196"
                    if (((stdgo.Go.toInterface(_key) != stdgo.Go.toInterface((@:checkr _t ?? throw "null pointer dereference")._key)) || (stdgo.Go.toInterface(_elem) != stdgo.Go.toInterface((@:checkr _t ?? throw "null pointer dereference")._elem)) : Bool)) {
                        //"file:///home/runner/.go/go1.21.3/src/go/types/subst.go#L197"
                        return stdgo.Go.asInterface((stdgo.Go.setRef(({ _key : _key, _elem : _elem } : stdgo._internal.go.types.Types_map_.Map_)) : stdgo.Ref<stdgo._internal.go.types.Types_map_.Map_>));
                    };
                } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.types.Types_chan.Chan>))) {
                    var _t:stdgo.Ref<stdgo._internal.go.types.Types_chan.Chan> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_chan.Chan>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_chan.Chan>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_chan.Chan>) : __type__.__underlying__().value);
                    var _elem = (_subst._typ((@:checkr _t ?? throw "null pointer dereference")._elem) : stdgo._internal.go.types.Types_type_.Type_);
                    //"file:///home/runner/.go/go1.21.3/src/go/types/subst.go#L202"
                    if (stdgo.Go.toInterface(_elem) != (stdgo.Go.toInterface((@:checkr _t ?? throw "null pointer dereference")._elem))) {
                        //"file:///home/runner/.go/go1.21.3/src/go/types/subst.go#L203"
                        return stdgo.Go.asInterface((stdgo.Go.setRef(({ _dir : (@:checkr _t ?? throw "null pointer dereference")._dir, _elem : _elem } : stdgo._internal.go.types.Types_chan.Chan)) : stdgo.Ref<stdgo._internal.go.types.Types_chan.Chan>));
                    };
                } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.types.Types_named.Named>))) {
                    var _t:stdgo.Ref<stdgo._internal.go.types.Types_named.Named> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_named.Named>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_named.Named>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_named.Named>) : __type__.__underlying__().value);
                    var _dump = function(_0:stdgo.GoString, _1:haxe.Rest<stdgo.AnyInterface>):Void {
                        var _1 = new stdgo.Slice<stdgo.AnyInterface>(_1.length, 0, ..._1);
                    };
                    //"file:///home/runner/.go/go1.21.3/src/go/types/subst.go#L209"
                    if ((({
                        final value = (@:checkr _subst ?? throw "null pointer dereference")._check;
                        (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                    }) && (@:checkr (@:checkr (@:checkr _subst ?? throw "null pointer dereference")._check ?? throw "null pointer dereference")._conf ?? throw "null pointer dereference").__Trace : Bool)) {
                        //"file:///home/runner/.go/go1.21.3/src/go/types/subst.go#L210"
                        (@:checkr (@:checkr _subst ?? throw "null pointer dereference")._check ?? throw "null pointer dereference")._indent++;
                        {
                            __deferstack__.unshift({ ran : false, f : () -> ({
                                var a = function():Void {
                                    //"file:///home/runner/.go/go1.21.3/src/go/types/subst.go#L212"
                                    (@:checkr (@:checkr _subst ?? throw "null pointer dereference")._check ?? throw "null pointer dereference")._indent--;
                                };
                                a();
                            }) });
                        };
                        _dump = function(_format:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):Void {
                            var _args = new stdgo.Slice<stdgo.AnyInterface>(_args.length, 0, ..._args);
                            //"file:///home/runner/.go/go1.21.3/src/go/types/subst.go#L215"
                            (@:checkr _subst ?? throw "null pointer dereference")._check._trace((@:checkr _subst ?? throw "null pointer dereference")._pos, _format?.__copy__(), ...(_args : Array<stdgo.AnyInterface>));
                        };
                    };
                    var _orig = _t.origin();
                    var _n = (_orig.typeParams().len() : stdgo.GoInt);
                    //"file:///home/runner/.go/go1.21.3/src/go/types/subst.go#L226"
                    if (_n == ((0 : stdgo.GoInt))) {
                        //"file:///home/runner/.go/go1.21.3/src/go/types/subst.go#L227"
                        _dump((">>> %s is not parameterized" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_t)));
                        //"file:///home/runner/.go/go1.21.3/src/go/types/subst.go#L228"
                        {
                            final __ret__:stdgo._internal.go.types.Types_type_.Type_ = stdgo.Go.asInterface(_t);
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return __ret__;
                        };
                    };
                    var _newTArgs:stdgo.Slice<stdgo._internal.go.types.Types_type_.Type_> = (null : stdgo.Slice<stdgo._internal.go.types.Types_type_.Type_>);
                    //"file:///home/runner/.go/go1.21.3/src/go/types/subst.go#L232"
                    if (_t.typeArgs().len() != (_n)) {
                        //"file:///home/runner/.go/go1.21.3/src/go/types/subst.go#L233"
                        {
                            final __ret__:stdgo._internal.go.types.Types_type_.Type_ = stdgo.Go.asInterface(stdgo._internal.go.types.Types_typ.typ[((0 : stdgo._internal.go.types.Types_basickind.BasicKind) : stdgo.GoInt)]);
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return __ret__;
                        };
                    };
                    //"file:///home/runner/.go/go1.21.3/src/go/types/subst.go#L237"
                    _dump((">>> %s already instantiated" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_t)));
                    //"file:///home/runner/.go/go1.21.3/src/go/types/subst.go#L241"
                    for (_i => _targ in _t.typeArgs()._list()) {
                        //"file:///home/runner/.go/go1.21.3/src/go/types/subst.go#L242"
                        _dump((">>> %d targ = %s" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_targ));
                        var _new_targ = (_subst._typ(_targ) : stdgo._internal.go.types.Types_type_.Type_);
                        //"file:///home/runner/.go/go1.21.3/src/go/types/subst.go#L244"
                        if (stdgo.Go.toInterface(_new_targ) != (stdgo.Go.toInterface(_targ))) {
                            //"file:///home/runner/.go/go1.21.3/src/go/types/subst.go#L245"
                            _dump((">>> substituted %d targ %s => %s" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_targ), stdgo.Go.toInterface(_new_targ));
                            //"file:///home/runner/.go/go1.21.3/src/go/types/subst.go#L246"
                            if (_newTArgs == null) {
                                _newTArgs = (new stdgo.Slice<stdgo._internal.go.types.Types_type_.Type_>((_n : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo._internal.go.types.Types_type_.Type_>);
                                //"file:///home/runner/.go/go1.21.3/src/go/types/subst.go#L248"
                                _newTArgs.__copyTo__(_t.typeArgs()._list());
                            };
                            _newTArgs[(_i : stdgo.GoInt)] = _new_targ;
                        };
                    };
                    //"file:///home/runner/.go/go1.21.3/src/go/types/subst.go#L254"
                    if (_newTArgs == null) {
                        //"file:///home/runner/.go/go1.21.3/src/go/types/subst.go#L255"
                        _dump((">>> nothing to substitute in %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_t)));
                        //"file:///home/runner/.go/go1.21.3/src/go/types/subst.go#L256"
                        {
                            final __ret__:stdgo._internal.go.types.Types_type_.Type_ = stdgo.Go.asInterface(_t);
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return __ret__;
                        };
                    };
                    //"file:///home/runner/.go/go1.21.3/src/go/types/subst.go#L263"
                    {
                        final __ret__:stdgo._internal.go.types.Types_type_.Type_ = (@:checkr _subst ?? throw "null pointer dereference")._check._instance((@:checkr _subst ?? throw "null pointer dereference")._pos, stdgo.Go.asInterface(_orig), _newTArgs, (@:checkr _subst ?? throw "null pointer dereference")._expanding, (@:checkr _subst ?? throw "null pointer dereference")._ctxt);
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return __ret__;
                    };
                } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>))) {
                    var _t:stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>) : __type__.__underlying__().value);
                    //"file:///home/runner/.go/go1.21.3/src/go/types/subst.go#L266"
                    {
                        final __ret__:stdgo._internal.go.types.Types_type_.Type_ = (@:checkr _subst ?? throw "null pointer dereference")._smap._lookup(_t);
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return __ret__;
                    };
                } else {
                    var _t:stdgo._internal.go.types.Types_type_.Type_ = __type__ == null ? (null : stdgo._internal.go.types.Types_type_.Type_) : cast __type__;
                    //"file:///home/runner/.go/go1.21.3/src/go/types/subst.go#L269"
                    stdgo._internal.go.types.Types__unreachable._unreachable();
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/go/types/subst.go#L272"
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                return _typ;
            };
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    throw e;
                };
                return (null : stdgo._internal.go.types.Types_type_.Type_);
            };
        } catch(__exception__) {
            {
                var exe:Dynamic = __exception__.native;
                if ((exe is haxe.ValueException)) exe = exe.value;
                if ((exe is stdgo.AnyInterface.AnyInterfaceData) == false) {
                    if (__exception__.message == "__return__") throw "__return__";
                    exe = stdgo.Go.toInterface(__exception__.message);
                };
                stdgo.Go.recover_exception = exe;
                {
                    function f() {
                        try {
                            {
                                for (defer in __deferstack__) {
                                    if (defer.ran) continue;
                                    defer.ran = true;
                                    defer.f();
                                };
                            };
                        } catch(__exception__2) {
                            var exe:Dynamic = __exception__2.native;
                            if ((exe is haxe.ValueException)) exe = exe.value;
                            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                                if (__exception__.message == "__return__") throw "__return__";
                                exe = stdgo.Go.toInterface(__exception__.message);
                            };
                            stdgo.Go.recover_exception = exe;
                            f();
                        };
                    };
                    f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    throw e;
                };
                return (null : stdgo._internal.go.types.Types_type_.Type_);
            };
        };
    }
}
