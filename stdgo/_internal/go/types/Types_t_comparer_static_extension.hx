package stdgo._internal.go.types;
@:keep @:allow(stdgo._internal.go.types.Types.T_comparer_asInterface) class T_comparer_static_extension {
    @:keep
    @:tdfield
    static public function _identical( _c:stdgo.Ref<stdgo._internal.go.types.Types_t_comparer.T_comparer>, _x:stdgo._internal.go.types.Types_type_.Type_, _y:stdgo._internal.go.types.Types_type_.Type_, _p:stdgo.Ref<stdgo._internal.go.types.Types_t_ifacepair.T_ifacePair>):Bool {
        @:recv var _c:stdgo.Ref<stdgo._internal.go.types.Types_t_comparer.T_comparer> = _c;
        //"file:///home/runner/.go/go1.21.3/src/go/types/predicates.go#L223"
        if (stdgo.Go.toInterface(_x) == (stdgo.Go.toInterface(_y))) {
            //"file:///home/runner/.go/go1.21.3/src/go/types/predicates.go#L224"
            return true;
        };
        //"file:///home/runner/.go/go1.21.3/src/go/types/predicates.go#L227"
        if (((@:checkr _c ?? throw "null pointer dereference")._ignoreInvalids && (((stdgo.Go.toInterface(_x) == stdgo.Go.toInterface(stdgo.Go.asInterface(stdgo._internal.go.types.Types_typ.typ[((0 : stdgo._internal.go.types.Types_basickind.BasicKind) : stdgo.GoInt)]))) || (stdgo.Go.toInterface(_y) == stdgo.Go.toInterface(stdgo.Go.asInterface(stdgo._internal.go.types.Types_typ.typ[((0 : stdgo._internal.go.types.Types_basickind.BasicKind) : stdgo.GoInt)]))) : Bool)) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/go/types/predicates.go#L228"
            return true;
        };
        //"file:///home/runner/.go/go1.21.3/src/go/types/predicates.go#L231"
        {
            final __type__ = _x;
            if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.types.Types_basic.Basic>))) {
                var _x:stdgo.Ref<stdgo._internal.go.types.Types_basic.Basic> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_basic.Basic>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_basic.Basic>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_basic.Basic>) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/go/types/predicates.go#L236"
                {
                    var __tmp__ = try {
                        { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_y) : stdgo.Ref<stdgo._internal.go.types.Types_basic.Basic>)) : stdgo.Ref<stdgo._internal.go.types.Types_basic.Basic>), _1 : true };
                    } catch(_) {
                        { _0 : (null : stdgo.Ref<stdgo._internal.go.types.Types_basic.Basic>), _1 : false };
                    }, _y = __tmp__._0, _ok = __tmp__._1;
                    if (_ok) {
                        //"file:///home/runner/.go/go1.21.3/src/go/types/predicates.go#L237"
                        return (@:checkr _x ?? throw "null pointer dereference")._kind == ((@:checkr _y ?? throw "null pointer dereference")._kind);
                    };
                };
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.types.Types_array_.Array_>))) {
                var _x:stdgo.Ref<stdgo._internal.go.types.Types_array_.Array_> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_array_.Array_>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_array_.Array_>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_array_.Array_>) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/go/types/predicates.go#L243"
                {
                    var __tmp__ = try {
                        { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_y) : stdgo.Ref<stdgo._internal.go.types.Types_array_.Array_>)) : stdgo.Ref<stdgo._internal.go.types.Types_array_.Array_>), _1 : true };
                    } catch(_) {
                        { _0 : (null : stdgo.Ref<stdgo._internal.go.types.Types_array_.Array_>), _1 : false };
                    }, _y = __tmp__._0, _ok = __tmp__._1;
                    if (_ok) {
                        //"file:///home/runner/.go/go1.21.3/src/go/types/predicates.go#L246"
                        return ((((((@:checkr _x ?? throw "null pointer dereference")._len < (0i64 : stdgo.GoInt64) : Bool) || ((@:checkr _y ?? throw "null pointer dereference")._len < (0i64 : stdgo.GoInt64) : Bool) : Bool) || ((@:checkr _x ?? throw "null pointer dereference")._len == (@:checkr _y ?? throw "null pointer dereference")._len) : Bool)) && _c._identical((@:checkr _x ?? throw "null pointer dereference")._elem, (@:checkr _y ?? throw "null pointer dereference")._elem, _p) : Bool);
                    };
                };
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.types.Types_slice_.Slice_>))) {
                var _x:stdgo.Ref<stdgo._internal.go.types.Types_slice_.Slice_> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_slice_.Slice_>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_slice_.Slice_>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_slice_.Slice_>) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/go/types/predicates.go#L251"
                {
                    var __tmp__ = try {
                        { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_y) : stdgo.Ref<stdgo._internal.go.types.Types_slice_.Slice_>)) : stdgo.Ref<stdgo._internal.go.types.Types_slice_.Slice_>), _1 : true };
                    } catch(_) {
                        { _0 : (null : stdgo.Ref<stdgo._internal.go.types.Types_slice_.Slice_>), _1 : false };
                    }, _y = __tmp__._0, _ok = __tmp__._1;
                    if (_ok) {
                        //"file:///home/runner/.go/go1.21.3/src/go/types/predicates.go#L252"
                        return _c._identical((@:checkr _x ?? throw "null pointer dereference")._elem, (@:checkr _y ?? throw "null pointer dereference")._elem, _p);
                    };
                };
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.types.Types_struct.Struct>))) {
                var _x:stdgo.Ref<stdgo._internal.go.types.Types_struct.Struct> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_struct.Struct>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_struct.Struct>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_struct.Struct>) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/go/types/predicates.go#L260"
                {
                    var __tmp__ = try {
                        { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_y) : stdgo.Ref<stdgo._internal.go.types.Types_struct.Struct>)) : stdgo.Ref<stdgo._internal.go.types.Types_struct.Struct>), _1 : true };
                    } catch(_) {
                        { _0 : (null : stdgo.Ref<stdgo._internal.go.types.Types_struct.Struct>), _1 : false };
                    }, _y = __tmp__._0, _ok = __tmp__._1;
                    if (_ok) {
                        //"file:///home/runner/.go/go1.21.3/src/go/types/predicates.go#L261"
                        if (_x.numFields() == (_y.numFields())) {
                            //"file:///home/runner/.go/go1.21.3/src/go/types/predicates.go#L262"
                            for (_i => _f in (@:checkr _x ?? throw "null pointer dereference")._fields) {
                                var _g = (@:checkr _y ?? throw "null pointer dereference")._fields[(_i : stdgo.GoInt)];
                                //"file:///home/runner/.go/go1.21.3/src/go/types/predicates.go#L264"
                                if (((((@:checkr _f ?? throw "null pointer dereference")._embedded != ((@:checkr _g ?? throw "null pointer dereference")._embedded) || (!(@:checkr _c ?? throw "null pointer dereference")._ignoreTags && _x.tag(_i) != (_y.tag(_i)) : Bool) : Bool) || !_f._sameId((@:checkr _g ?? throw "null pointer dereference")._object._pkg, (@:checkr _g ?? throw "null pointer dereference")._object._name?.__copy__()) : Bool) || !_c._identical((@:checkr _f ?? throw "null pointer dereference")._object._typ, (@:checkr _g ?? throw "null pointer dereference")._object._typ, _p) : Bool)) {
                                    //"file:///home/runner/.go/go1.21.3/src/go/types/predicates.go#L268"
                                    return false;
                                };
                            };
                            //"file:///home/runner/.go/go1.21.3/src/go/types/predicates.go#L271"
                            return true;
                        };
                    };
                };
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.types.Types_pointer_.Pointer_>))) {
                var _x:stdgo.Ref<stdgo._internal.go.types.Types_pointer_.Pointer_> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_pointer_.Pointer_>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_pointer_.Pointer_>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_pointer_.Pointer_>) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/go/types/predicates.go#L277"
                {
                    var __tmp__ = try {
                        { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_y) : stdgo.Ref<stdgo._internal.go.types.Types_pointer_.Pointer_>)) : stdgo.Ref<stdgo._internal.go.types.Types_pointer_.Pointer_>), _1 : true };
                    } catch(_) {
                        { _0 : (null : stdgo.Ref<stdgo._internal.go.types.Types_pointer_.Pointer_>), _1 : false };
                    }, _y = __tmp__._0, _ok = __tmp__._1;
                    if (_ok) {
                        //"file:///home/runner/.go/go1.21.3/src/go/types/predicates.go#L278"
                        return _c._identical((@:checkr _x ?? throw "null pointer dereference")._base, (@:checkr _y ?? throw "null pointer dereference")._base, _p);
                    };
                };
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.types.Types_tuple.Tuple>))) {
                var _x:stdgo.Ref<stdgo._internal.go.types.Types_tuple.Tuple> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_tuple.Tuple>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_tuple.Tuple>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_tuple.Tuple>) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/go/types/predicates.go#L284"
                {
                    var __tmp__ = try {
                        { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_y) : stdgo.Ref<stdgo._internal.go.types.Types_tuple.Tuple>)) : stdgo.Ref<stdgo._internal.go.types.Types_tuple.Tuple>), _1 : true };
                    } catch(_) {
                        { _0 : (null : stdgo.Ref<stdgo._internal.go.types.Types_tuple.Tuple>), _1 : false };
                    }, _y = __tmp__._0, _ok = __tmp__._1;
                    if (_ok) {
                        //"file:///home/runner/.go/go1.21.3/src/go/types/predicates.go#L285"
                        if (_x.len() == (_y.len())) {
                            //"file:///home/runner/.go/go1.21.3/src/go/types/predicates.go#L286"
                            if (({
                                final value = _x;
                                (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                            })) {
                                //"file:///home/runner/.go/go1.21.3/src/go/types/predicates.go#L287"
                                for (_i => _v in (@:checkr _x ?? throw "null pointer dereference")._vars) {
                                    var _w = (@:checkr _y ?? throw "null pointer dereference")._vars[(_i : stdgo.GoInt)];
                                    //"file:///home/runner/.go/go1.21.3/src/go/types/predicates.go#L289"
                                    if (!_c._identical((@:checkr _v ?? throw "null pointer dereference")._object._typ, (@:checkr _w ?? throw "null pointer dereference")._object._typ, _p)) {
                                        //"file:///home/runner/.go/go1.21.3/src/go/types/predicates.go#L290"
                                        return false;
                                    };
                                };
                            };
                            //"file:///home/runner/.go/go1.21.3/src/go/types/predicates.go#L294"
                            return true;
                        };
                    };
                };
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.types.Types_signature.Signature>))) {
                var _x:stdgo.Ref<stdgo._internal.go.types.Types_signature.Signature> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_signature.Signature>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_signature.Signature>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_signature.Signature>) : __type__.__underlying__().value);
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_y) : stdgo.Ref<stdgo._internal.go.types.Types_signature.Signature>)) : stdgo.Ref<stdgo._internal.go.types.Types_signature.Signature>), _1 : true };
                } catch(_) {
                    { _0 : (null : stdgo.Ref<stdgo._internal.go.types.Types_signature.Signature>), _1 : false };
                }, _y = __tmp__._0, __0 = __tmp__._1;
                //"file:///home/runner/.go/go1.21.3/src/go/types/predicates.go#L300"
                if (({
                    final value = _y;
                    (value == null || (value : Dynamic).__nil__);
                })) {
                    //"file:///home/runner/.go/go1.21.3/src/go/types/predicates.go#L301"
                    return false;
                };
                //"file:///home/runner/.go/go1.21.3/src/go/types/predicates.go#L310"
                if (_x.typeParams().len() != (_y.typeParams().len())) {
                    //"file:///home/runner/.go/go1.21.3/src/go/types/predicates.go#L311"
                    return false;
                };
                var _yparams = (@:checkr _y ?? throw "null pointer dereference")._params;
                var _yresults = (@:checkr _y ?? throw "null pointer dereference")._results;
                //"file:///home/runner/.go/go1.21.3/src/go/types/predicates.go#L319"
                if ((_x.typeParams().len() > (0 : stdgo.GoInt) : Bool)) {
                    var _xtparams = _x.typeParams()._list();
                    var _ytparams = _y.typeParams()._list();
                    var _targs:stdgo.Slice<stdgo._internal.go.types.Types_type_.Type_> = (null : stdgo.Slice<stdgo._internal.go.types.Types_type_.Type_>);
                    //"file:///home/runner/.go/go1.21.3/src/go/types/predicates.go#L326"
                    for (_i => _ in _xtparams) {
                        _targs = (_targs.__append__(stdgo.Go.asInterface(_x.typeParams().at(_i))) : stdgo.Slice<stdgo._internal.go.types.Types_type_.Type_>);
                    };
                    var _smap = (stdgo._internal.go.types.Types__makesubstmap._makeSubstMap(_ytparams, _targs) : stdgo._internal.go.types.Types_t_substmap.T_substMap);
                    var _check:stdgo.Ref<stdgo._internal.go.types.Types_checker.Checker> = (null : stdgo.Ref<stdgo._internal.go.types.Types_checker.Checker>);
                    var _ctxt = stdgo._internal.go.types.Types_newcontext.newContext();
                    //"file:///home/runner/.go/go1.21.3/src/go/types/predicates.go#L335"
                    for (_i => _xtparam in _xtparams) {
                        var _ybound = (_check._subst(stdgo._internal.go.types.Types__nopos._nopos, (@:checkr _ytparams[(_i : stdgo.GoInt)] ?? throw "null pointer dereference")._bound, _smap, null, _ctxt) : stdgo._internal.go.types.Types_type_.Type_);
                        //"file:///home/runner/.go/go1.21.3/src/go/types/predicates.go#L337"
                        if (!_c._identical((@:checkr _xtparam ?? throw "null pointer dereference")._bound, _ybound, _p)) {
                            //"file:///home/runner/.go/go1.21.3/src/go/types/predicates.go#L338"
                            return false;
                        };
                    };
                    _yparams = (stdgo.Go.typeAssert((stdgo.Go.toInterface(_check._subst(stdgo._internal.go.types.Types__nopos._nopos, stdgo.Go.asInterface((@:checkr _y ?? throw "null pointer dereference")._params), _smap, null, _ctxt)) : stdgo.Ref<stdgo._internal.go.types.Types_tuple.Tuple>)) : stdgo.Ref<stdgo._internal.go.types.Types_tuple.Tuple>);
                    _yresults = (stdgo.Go.typeAssert((stdgo.Go.toInterface(_check._subst(stdgo._internal.go.types.Types__nopos._nopos, stdgo.Go.asInterface((@:checkr _y ?? throw "null pointer dereference")._results), _smap, null, _ctxt)) : stdgo.Ref<stdgo._internal.go.types.Types_tuple.Tuple>)) : stdgo.Ref<stdgo._internal.go.types.Types_tuple.Tuple>);
                };
                //"file:///home/runner/.go/go1.21.3/src/go/types/predicates.go#L346"
                return (((@:checkr _x ?? throw "null pointer dereference")._variadic == ((@:checkr _y ?? throw "null pointer dereference")._variadic) && _c._identical(stdgo.Go.asInterface((@:checkr _x ?? throw "null pointer dereference")._params), stdgo.Go.asInterface(_yparams), _p) : Bool) && _c._identical(stdgo.Go.asInterface((@:checkr _x ?? throw "null pointer dereference")._results), stdgo.Go.asInterface(_yresults), _p) : Bool);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.types.Types_union.Union>))) {
                var _x:stdgo.Ref<stdgo._internal.go.types.Types_union.Union> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_union.Union>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_union.Union>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_union.Union>) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/go/types/predicates.go#L351"
                {
                    var __tmp__ = try {
                        { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_y) : stdgo.Ref<stdgo._internal.go.types.Types_union.Union>)) : stdgo.Ref<stdgo._internal.go.types.Types_union.Union>), _1 : true };
                    } catch(_) {
                        { _0 : (null : stdgo.Ref<stdgo._internal.go.types.Types_union.Union>), _1 : false };
                    }, _y = __tmp__._0, __0 = __tmp__._1;
                    if (({
                        final value = _y;
                        (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                    })) {
                        var _unionSets = ({
                            final x = new stdgo.GoMap.GoRefMap<stdgo.Ref<stdgo._internal.go.types.Types_union.Union>, stdgo.Ref<stdgo._internal.go.types.Types_t__typeset.T__TypeSet>>();
                            {};
                            cast x;
                        } : stdgo.GoMap<stdgo.Ref<stdgo._internal.go.types.Types_union.Union>, stdgo.Ref<stdgo._internal.go.types.Types_t__typeset.T__TypeSet>>);
                        var _xset = stdgo._internal.go.types.Types__computeuniontypeset._computeUnionTypeSet(null, _unionSets, stdgo._internal.go.types.Types__nopos._nopos, _x);
                        var _yset = stdgo._internal.go.types.Types__computeuniontypeset._computeUnionTypeSet(null, _unionSets, stdgo._internal.go.types.Types__nopos._nopos, _y);
                        //"file:///home/runner/.go/go1.21.3/src/go/types/predicates.go#L357"
                        return (@:checkr _xset ?? throw "null pointer dereference")._terms._equal((@:checkr _yset ?? throw "null pointer dereference")._terms);
                    };
                };
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface>))) {
                var _x:stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface>) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/go/types/predicates.go#L368"
                {
                    var __tmp__ = try {
                        { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_y) : stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface>)) : stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface>), _1 : true };
                    } catch(_) {
                        { _0 : (null : stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface>), _1 : false };
                    }, _y = __tmp__._0, _ok = __tmp__._1;
                    if (_ok) {
                        var _xset = _x._typeSet();
                        var _yset = _y._typeSet();
                        //"file:///home/runner/.go/go1.21.3/src/go/types/predicates.go#L371"
                        if ((@:checkr _xset ?? throw "null pointer dereference")._comparable != ((@:checkr _yset ?? throw "null pointer dereference")._comparable)) {
                            //"file:///home/runner/.go/go1.21.3/src/go/types/predicates.go#L372"
                            return false;
                        };
                        //"file:///home/runner/.go/go1.21.3/src/go/types/predicates.go#L374"
                        if (!(@:checkr _xset ?? throw "null pointer dereference")._terms._equal((@:checkr _yset ?? throw "null pointer dereference")._terms)) {
                            //"file:///home/runner/.go/go1.21.3/src/go/types/predicates.go#L375"
                            return false;
                        };
                        var _a = (@:checkr _xset ?? throw "null pointer dereference")._methods;
                        var _b = (@:checkr _yset ?? throw "null pointer dereference")._methods;
                        //"file:///home/runner/.go/go1.21.3/src/go/types/predicates.go#L379"
                        if ((_a.length) == ((_b.length))) {
                            var _q = (stdgo.Go.setRef((new stdgo._internal.go.types.Types_t_ifacepair.T_ifacePair(_x, _y, _p) : stdgo._internal.go.types.Types_t_ifacepair.T_ifacePair)) : stdgo.Ref<stdgo._internal.go.types.Types_t_ifacepair.T_ifacePair>);
                            //"file:///home/runner/.go/go1.21.3/src/go/types/predicates.go#L403"
                            while (({
                                final value = _p;
                                (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                            })) {
                                //"file:///home/runner/.go/go1.21.3/src/go/types/predicates.go#L404"
                                if (_p._identical(_q)) {
                                    //"file:///home/runner/.go/go1.21.3/src/go/types/predicates.go#L405"
                                    return true;
                                };
                                _p = (@:checkr _p ?? throw "null pointer dereference")._prev;
                            };
                            //"file:///home/runner/.go/go1.21.3/src/go/types/predicates.go#L409"
                            if (false) {
                                //"file:///home/runner/.go/go1.21.3/src/go/types/predicates.go#L410"
                                stdgo._internal.go.types.Types__assertsortedmethods._assertSortedMethods(_a);
                                //"file:///home/runner/.go/go1.21.3/src/go/types/predicates.go#L411"
                                stdgo._internal.go.types.Types__assertsortedmethods._assertSortedMethods(_b);
                            };
                            //"file:///home/runner/.go/go1.21.3/src/go/types/predicates.go#L413"
                            for (_i => _f in _a) {
                                var _g = _b[(_i : stdgo.GoInt)];
                                //"file:///home/runner/.go/go1.21.3/src/go/types/predicates.go#L415"
                                if (((_f.id() != _g.id()) || !_c._identical((@:checkr _f ?? throw "null pointer dereference")._object._typ, (@:checkr _g ?? throw "null pointer dereference")._object._typ, _q) : Bool)) {
                                    //"file:///home/runner/.go/go1.21.3/src/go/types/predicates.go#L416"
                                    return false;
                                };
                            };
                            //"file:///home/runner/.go/go1.21.3/src/go/types/predicates.go#L419"
                            return true;
                        };
                    };
                };
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.types.Types_map_.Map_>))) {
                var _x:stdgo.Ref<stdgo._internal.go.types.Types_map_.Map_> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_map_.Map_>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_map_.Map_>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_map_.Map_>) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/go/types/predicates.go#L425"
                {
                    var __tmp__ = try {
                        { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_y) : stdgo.Ref<stdgo._internal.go.types.Types_map_.Map_>)) : stdgo.Ref<stdgo._internal.go.types.Types_map_.Map_>), _1 : true };
                    } catch(_) {
                        { _0 : (null : stdgo.Ref<stdgo._internal.go.types.Types_map_.Map_>), _1 : false };
                    }, _y = __tmp__._0, _ok = __tmp__._1;
                    if (_ok) {
                        //"file:///home/runner/.go/go1.21.3/src/go/types/predicates.go#L426"
                        return (_c._identical((@:checkr _x ?? throw "null pointer dereference")._key, (@:checkr _y ?? throw "null pointer dereference")._key, _p) && _c._identical((@:checkr _x ?? throw "null pointer dereference")._elem, (@:checkr _y ?? throw "null pointer dereference")._elem, _p) : Bool);
                    };
                };
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.types.Types_chan.Chan>))) {
                var _x:stdgo.Ref<stdgo._internal.go.types.Types_chan.Chan> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_chan.Chan>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_chan.Chan>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_chan.Chan>) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/go/types/predicates.go#L432"
                {
                    var __tmp__ = try {
                        { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_y) : stdgo.Ref<stdgo._internal.go.types.Types_chan.Chan>)) : stdgo.Ref<stdgo._internal.go.types.Types_chan.Chan>), _1 : true };
                    } catch(_) {
                        { _0 : (null : stdgo.Ref<stdgo._internal.go.types.Types_chan.Chan>), _1 : false };
                    }, _y = __tmp__._0, _ok = __tmp__._1;
                    if (_ok) {
                        //"file:///home/runner/.go/go1.21.3/src/go/types/predicates.go#L433"
                        return (((@:checkr _x ?? throw "null pointer dereference")._dir == (@:checkr _y ?? throw "null pointer dereference")._dir) && _c._identical((@:checkr _x ?? throw "null pointer dereference")._elem, (@:checkr _y ?? throw "null pointer dereference")._elem, _p) : Bool);
                    };
                };
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.types.Types_named.Named>))) {
                var _x:stdgo.Ref<stdgo._internal.go.types.Types_named.Named> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_named.Named>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_named.Named>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_named.Named>) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/go/types/predicates.go#L440"
                {
                    var __tmp__ = try {
                        { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_y) : stdgo.Ref<stdgo._internal.go.types.Types_named.Named>)) : stdgo.Ref<stdgo._internal.go.types.Types_named.Named>), _1 : true };
                    } catch(_) {
                        { _0 : (null : stdgo.Ref<stdgo._internal.go.types.Types_named.Named>), _1 : false };
                    }, _y = __tmp__._0, _ok = __tmp__._1;
                    if (_ok) {
                        var _xargs = _x.typeArgs()._list();
                        var _yargs = _y.typeArgs()._list();
                        //"file:///home/runner/.go/go1.21.3/src/go/types/predicates.go#L446"
                        if ((_xargs.length) != ((_yargs.length))) {
                            //"file:///home/runner/.go/go1.21.3/src/go/types/predicates.go#L447"
                            return false;
                        };
                        //"file:///home/runner/.go/go1.21.3/src/go/types/predicates.go#L449"
                        for (_i => _xarg in _xargs) {
                            //"file:///home/runner/.go/go1.21.3/src/go/types/predicates.go#L450"
                            if (!stdgo._internal.go.types.Types_identical.identical(_xarg, _yargs[(_i : stdgo.GoInt)])) {
                                //"file:///home/runner/.go/go1.21.3/src/go/types/predicates.go#L451"
                                return false;
                            };
                        };
                        //"file:///home/runner/.go/go1.21.3/src/go/types/predicates.go#L454"
                        return stdgo._internal.go.types.Types__indenticalorigin._indenticalOrigin(_x, _y);
                    };
                };
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>))) {
                var _x:stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>) : __type__.__underlying__().value);
            } else if (__type__ == null) {
                var _x:stdgo.AnyInterface = __type__ == null ? (null : stdgo.AnyInterface) : cast __type__;
            } else {
                var _x:stdgo._internal.go.types.Types_type_.Type_ = __type__ == null ? (null : stdgo._internal.go.types.Types_type_.Type_) : cast __type__;
                //"file:///home/runner/.go/go1.21.3/src/go/types/predicates.go#L464"
                stdgo._internal.go.types.Types__unreachable._unreachable();
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/types/predicates.go#L467"
        return false;
    }
}
