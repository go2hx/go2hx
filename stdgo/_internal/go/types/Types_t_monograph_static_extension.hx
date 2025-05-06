package stdgo._internal.go.types;
@:keep @:allow(stdgo._internal.go.types.Types.T_monoGraph_asInterface) class T_monoGraph_static_extension {
    @:keep
    @:tdfield
    static public function _addEdge( _w:stdgo.Ref<stdgo._internal.go.types.Types_t_monograph.T_monoGraph>, _dst:stdgo.GoInt, _src:stdgo.GoInt, _weight:stdgo.GoInt, _pos:stdgo._internal.go.token.Token_pos.Pos, _typ:stdgo._internal.go.types.Types_type_.Type_):Void {
        @:recv var _w:stdgo.Ref<stdgo._internal.go.types.Types_t_monograph.T_monoGraph> = _w;
        (@:checkr _w ?? throw "null pointer dereference")._edges = ((@:checkr _w ?? throw "null pointer dereference")._edges.__append__(({ _dst : _dst, _src : _src, _weight : _weight, _pos : _pos, _typ : _typ } : stdgo._internal.go.types.Types_t_monoedge.T_monoEdge)) : stdgo.Slice<stdgo._internal.go.types.Types_t_monoedge.T_monoEdge>);
    }
    @:keep
    @:tdfield
    static public function _typeParamVertex( _w:stdgo.Ref<stdgo._internal.go.types.Types_t_monograph.T_monoGraph>, _tpar:stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>):stdgo.GoInt {
        @:recv var _w:stdgo.Ref<stdgo._internal.go.types.Types_t_monograph.T_monoGraph> = _w;
        //"file:///home/runner/.go/go1.21.3/src/go/types/mono.go#L307"
        {
            var __tmp__ = ((@:checkr _w ?? throw "null pointer dereference")._canon != null && (@:checkr _w ?? throw "null pointer dereference")._canon.__exists__(_tpar) ? { _0 : (@:checkr _w ?? throw "null pointer dereference")._canon[_tpar], _1 : true } : { _0 : (null : stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>), _1 : false }), _x:stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam> = __tmp__._0, _ok:Bool = __tmp__._1;
            if (_ok) {
                _tpar = _x;
            };
        };
        var _obj = _tpar.obj();
        //"file:///home/runner/.go/go1.21.3/src/go/types/mono.go#L313"
        {
            var __tmp__ = ((@:checkr _w ?? throw "null pointer dereference")._nameIdx != null && (@:checkr _w ?? throw "null pointer dereference")._nameIdx.__exists__(_obj) ? { _0 : (@:checkr _w ?? throw "null pointer dereference")._nameIdx[_obj], _1 : true } : { _0 : (0 : stdgo.GoInt), _1 : false }), _idx:stdgo.GoInt = __tmp__._0, _ok:Bool = __tmp__._1;
            if (_ok) {
                //"file:///home/runner/.go/go1.21.3/src/go/types/mono.go#L314"
                return _idx;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/types/mono.go#L317"
        if ((@:checkr _w ?? throw "null pointer dereference")._nameIdx == null) {
            (@:checkr _w ?? throw "null pointer dereference")._nameIdx = ({
                final x = new stdgo.GoMap.GoRefMap<stdgo.Ref<stdgo._internal.go.types.Types_typename.TypeName>, stdgo.GoInt>();
                {};
                cast x;
            } : stdgo.GoMap<stdgo.Ref<stdgo._internal.go.types.Types_typename.TypeName>, stdgo.GoInt>);
        };
        var _idx = ((@:checkr _w ?? throw "null pointer dereference")._vertices.length : stdgo.GoInt);
        (@:checkr _w ?? throw "null pointer dereference")._vertices = ((@:checkr _w ?? throw "null pointer dereference")._vertices.__append__(({ _obj : _obj } : stdgo._internal.go.types.Types_t_monovertex.T_monoVertex)) : stdgo.Slice<stdgo._internal.go.types.Types_t_monovertex.T_monoVertex>);
        (@:checkr _w ?? throw "null pointer dereference")._nameIdx[_obj] = _idx;
        //"file:///home/runner/.go/go1.21.3/src/go/types/mono.go#L324"
        return _idx;
    }
    @:keep
    @:tdfield
    static public function _localNamedVertex( _w:stdgo.Ref<stdgo._internal.go.types.Types_t_monograph.T_monoGraph>, _pkg:stdgo.Ref<stdgo._internal.go.types.Types_package.Package>, _named:stdgo.Ref<stdgo._internal.go.types.Types_named.Named>):stdgo.GoInt {
        @:recv var _w:stdgo.Ref<stdgo._internal.go.types.Types_t_monograph.T_monoGraph> = _w;
        var _obj = _named.obj();
        //"file:///home/runner/.go/go1.21.3/src/go/types/mono.go#L266"
        if (_obj.pkg() != (_pkg)) {
            //"file:///home/runner/.go/go1.21.3/src/go/types/mono.go#L267"
            return (-1 : stdgo.GoInt);
        };
        var _root = _pkg.scope();
        //"file:///home/runner/.go/go1.21.3/src/go/types/mono.go#L271"
        if (_obj.parent() == (_root)) {
            //"file:///home/runner/.go/go1.21.3/src/go/types/mono.go#L272"
            return (-1 : stdgo.GoInt);
        };
        //"file:///home/runner/.go/go1.21.3/src/go/types/mono.go#L275"
        {
            var __tmp__ = ((@:checkr _w ?? throw "null pointer dereference")._nameIdx != null && (@:checkr _w ?? throw "null pointer dereference")._nameIdx.__exists__(_obj) ? { _0 : (@:checkr _w ?? throw "null pointer dereference")._nameIdx[_obj], _1 : true } : { _0 : (0 : stdgo.GoInt), _1 : false }), _idx:stdgo.GoInt = __tmp__._0, _ok:Bool = __tmp__._1;
            if (_ok) {
                //"file:///home/runner/.go/go1.21.3/src/go/types/mono.go#L276"
                return _idx;
            };
        };
        var _idx = (-1 : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/go/types/mono.go#L283"
        {
            var _scope = _obj.parent();
            while (_scope != (_root)) {
                //"file:///home/runner/.go/go1.21.3/src/go/types/mono.go#L284"
                for (__8 => _elem in (@:checkr _scope ?? throw "null pointer dereference")._elems) {
                    //"file:///home/runner/.go/go1.21.3/src/go/types/mono.go#L285"
                    {
                        var __tmp__ = try {
                            { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_elem) : stdgo.Ref<stdgo._internal.go.types.Types_typename.TypeName>)) : stdgo.Ref<stdgo._internal.go.types.Types_typename.TypeName>), _1 : true };
                        } catch(_) {
                            { _0 : (null : stdgo.Ref<stdgo._internal.go.types.Types_typename.TypeName>), _1 : false };
                        }, _elem = __tmp__._0, _ok = __tmp__._1;
                        if (((_ok && !_elem.isAlias() : Bool) && (stdgo._internal.go.types.Types__cmppos._cmpPos(_elem.pos(), _obj.pos()) < (0 : stdgo.GoInt) : Bool) : Bool)) {
                            //"file:///home/runner/.go/go1.21.3/src/go/types/mono.go#L286"
                            {
                                var __tmp__ = try {
                                    { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_elem.type()) : stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>)) : stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>), _1 : true };
                                } catch(_) {
                                    { _0 : (null : stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>), _1 : false };
                                }, _tpar = __tmp__._0, _ok = __tmp__._1;
                                if (_ok) {
                                    //"file:///home/runner/.go/go1.21.3/src/go/types/mono.go#L287"
                                    if ((_idx < (0 : stdgo.GoInt) : Bool)) {
                                        _idx = ((@:checkr _w ?? throw "null pointer dereference")._vertices.length);
                                        (@:checkr _w ?? throw "null pointer dereference")._vertices = ((@:checkr _w ?? throw "null pointer dereference")._vertices.__append__(({ _obj : _obj } : stdgo._internal.go.types.Types_t_monovertex.T_monoVertex)) : stdgo.Slice<stdgo._internal.go.types.Types_t_monovertex.T_monoVertex>);
                                    };
                                    //"file:///home/runner/.go/go1.21.3/src/go/types/mono.go#L292"
                                    _w._addEdge(_idx, _w._typeParamVertex(_tpar), (1 : stdgo.GoInt), _obj.pos(), stdgo.Go.asInterface(_tpar));
                                };
                            };
                        };
                    };
                };
                _scope = _scope.parent();
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/types/mono.go#L298"
        if ((@:checkr _w ?? throw "null pointer dereference")._nameIdx == null) {
            (@:checkr _w ?? throw "null pointer dereference")._nameIdx = ({
                final x = new stdgo.GoMap.GoRefMap<stdgo.Ref<stdgo._internal.go.types.Types_typename.TypeName>, stdgo.GoInt>();
                {};
                cast x;
            } : stdgo.GoMap<stdgo.Ref<stdgo._internal.go.types.Types_typename.TypeName>, stdgo.GoInt>);
        };
        (@:checkr _w ?? throw "null pointer dereference")._nameIdx[_obj] = _idx;
        //"file:///home/runner/.go/go1.21.3/src/go/types/mono.go#L302"
        return _idx;
    }
    @:keep
    @:tdfield
    static public function _assign( _w:stdgo.Ref<stdgo._internal.go.types.Types_t_monograph.T_monoGraph>, _pkg:stdgo.Ref<stdgo._internal.go.types.Types_package.Package>, _pos:stdgo._internal.go.token.Token_pos.Pos, _tpar:stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>, _targ:stdgo._internal.go.types.Types_type_.Type_):Void {
        @:recv var _w:stdgo.Ref<stdgo._internal.go.types.Types_t_monograph.T_monoGraph> = _w;
        //"file:///home/runner/.go/go1.21.3/src/go/types/mono.go#L191"
        if (_tpar.obj().pkg() != (_pkg)) {
            //"file:///home/runner/.go/go1.21.3/src/go/types/mono.go#L192"
            return;
        };
        var _flow = (function(_src:stdgo.GoInt, _typ:stdgo._internal.go.types.Types_type_.Type_):Void {
            var _weight = (1 : stdgo.GoInt);
            //"file:///home/runner/.go/go1.21.3/src/go/types/mono.go#L198"
            if (stdgo.Go.toInterface(_typ) == (stdgo.Go.toInterface(_targ))) {
                _weight = (0 : stdgo.GoInt);
            };
            //"file:///home/runner/.go/go1.21.3/src/go/types/mono.go#L202"
            _w._addEdge(_w._typeParamVertex(_tpar), _src, _weight, _pos, _targ);
        } : (stdgo.GoInt, stdgo._internal.go.types.Types_type_.Type_) -> Void);
        var _do:stdgo._internal.go.types.Types_type_.Type_ -> Void = null;
        _do = function(_typ:stdgo._internal.go.types.Types_type_.Type_):Void {
            //"file:///home/runner/.go/go1.21.3/src/go/types/mono.go#L209"
            {
                final __type__ = _typ;
                if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>))) {
                    var _typ:stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>) : __type__.__underlying__().value);
                    //"file:///home/runner/.go/go1.21.3/src/go/types/mono.go#L214"
                    stdgo._internal.go.types.Types__assert._assert(_typ.obj().pkg() == (_pkg));
                    //"file:///home/runner/.go/go1.21.3/src/go/types/mono.go#L215"
                    _flow(_w._typeParamVertex(_typ), stdgo.Go.asInterface(_typ));
                } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.types.Types_named.Named>))) {
                    var _typ:stdgo.Ref<stdgo._internal.go.types.Types_named.Named> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_named.Named>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_named.Named>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_named.Named>) : __type__.__underlying__().value);
                    //"file:///home/runner/.go/go1.21.3/src/go/types/mono.go#L218"
                    {
                        var _src = (_w._localNamedVertex(_pkg, _typ.origin()) : stdgo.GoInt);
                        if ((_src >= (0 : stdgo.GoInt) : Bool)) {
                            //"file:///home/runner/.go/go1.21.3/src/go/types/mono.go#L219"
                            _flow(_src, stdgo.Go.asInterface(_typ));
                        };
                    };
                    var _targs = _typ.typeArgs();
                    //"file:///home/runner/.go/go1.21.3/src/go/types/mono.go#L223"
                    {
                        var _i = (0 : stdgo.GoInt);
                        while ((_i < _targs.len() : Bool)) {
                            //"file:///home/runner/.go/go1.21.3/src/go/types/mono.go#L224"
                            _do(_targs.at(_i));
                            _i++;
                        };
                    };
                } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.types.Types_array_.Array_>))) {
                    var _typ:stdgo.Ref<stdgo._internal.go.types.Types_array_.Array_> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_array_.Array_>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_array_.Array_>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_array_.Array_>) : __type__.__underlying__().value);
                    //"file:///home/runner/.go/go1.21.3/src/go/types/mono.go#L228"
                    _do(_typ.elem());
                } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.types.Types_basic.Basic>))) {
                    var _typ:stdgo.Ref<stdgo._internal.go.types.Types_basic.Basic> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_basic.Basic>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_basic.Basic>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_basic.Basic>) : __type__.__underlying__().value);
                } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.types.Types_chan.Chan>))) {
                    var _typ:stdgo.Ref<stdgo._internal.go.types.Types_chan.Chan> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_chan.Chan>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_chan.Chan>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_chan.Chan>) : __type__.__underlying__().value);
                    //"file:///home/runner/.go/go1.21.3/src/go/types/mono.go#L232"
                    _do(_typ.elem());
                } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.types.Types_map_.Map_>))) {
                    var _typ:stdgo.Ref<stdgo._internal.go.types.Types_map_.Map_> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_map_.Map_>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_map_.Map_>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_map_.Map_>) : __type__.__underlying__().value);
                    //"file:///home/runner/.go/go1.21.3/src/go/types/mono.go#L234"
                    _do(_typ.key());
                    //"file:///home/runner/.go/go1.21.3/src/go/types/mono.go#L235"
                    _do(_typ.elem());
                } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.types.Types_pointer_.Pointer_>))) {
                    var _typ:stdgo.Ref<stdgo._internal.go.types.Types_pointer_.Pointer_> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_pointer_.Pointer_>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_pointer_.Pointer_>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_pointer_.Pointer_>) : __type__.__underlying__().value);
                    //"file:///home/runner/.go/go1.21.3/src/go/types/mono.go#L237"
                    _do(_typ.elem());
                } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.types.Types_slice_.Slice_>))) {
                    var _typ:stdgo.Ref<stdgo._internal.go.types.Types_slice_.Slice_> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_slice_.Slice_>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_slice_.Slice_>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_slice_.Slice_>) : __type__.__underlying__().value);
                    //"file:///home/runner/.go/go1.21.3/src/go/types/mono.go#L239"
                    _do(_typ.elem());
                } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface>))) {
                    var _typ:stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface>) : __type__.__underlying__().value);
                    //"file:///home/runner/.go/go1.21.3/src/go/types/mono.go#L242"
                    {
                        var _i = (0 : stdgo.GoInt);
                        while ((_i < _typ.numMethods() : Bool)) {
                            //"file:///home/runner/.go/go1.21.3/src/go/types/mono.go#L243"
                            _do(_typ.method(_i).type());
                            _i++;
                        };
                    };
                } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.types.Types_signature.Signature>))) {
                    var _typ:stdgo.Ref<stdgo._internal.go.types.Types_signature.Signature> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_signature.Signature>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_signature.Signature>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_signature.Signature>) : __type__.__underlying__().value);
                    var _tuple = function(_tup:stdgo.Ref<stdgo._internal.go.types.Types_tuple.Tuple>):Void {
                        //"file:///home/runner/.go/go1.21.3/src/go/types/mono.go#L247"
                        {
                            var _i = (0 : stdgo.GoInt);
                            while ((_i < _tup.len() : Bool)) {
                                //"file:///home/runner/.go/go1.21.3/src/go/types/mono.go#L248"
                                _do(_tup.at(_i).type());
                                _i++;
                            };
                        };
                    };
                    //"file:///home/runner/.go/go1.21.3/src/go/types/mono.go#L251"
                    _tuple(_typ.params());
                    //"file:///home/runner/.go/go1.21.3/src/go/types/mono.go#L252"
                    _tuple(_typ.results());
                } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.types.Types_struct.Struct>))) {
                    var _typ:stdgo.Ref<stdgo._internal.go.types.Types_struct.Struct> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_struct.Struct>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_struct.Struct>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_struct.Struct>) : __type__.__underlying__().value);
                    //"file:///home/runner/.go/go1.21.3/src/go/types/mono.go#L254"
                    {
                        var _i = (0 : stdgo.GoInt);
                        while ((_i < _typ.numFields() : Bool)) {
                            //"file:///home/runner/.go/go1.21.3/src/go/types/mono.go#L255"
                            _do(_typ.field(_i).type());
                            _i++;
                        };
                    };
                } else {
                    var _typ:stdgo._internal.go.types.Types_type_.Type_ = __type__ == null ? (null : stdgo._internal.go.types.Types_type_.Type_) : cast __type__;
                    //"file:///home/runner/.go/go1.21.3/src/go/types/mono.go#L211"
                    throw stdgo.Go.toInterface(("unexpected type" : stdgo.GoString));
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/types/mono.go#L259"
        _do(_targ);
    }
    @:keep
    @:tdfield
    static public function _recordInstance( _w:stdgo.Ref<stdgo._internal.go.types.Types_t_monograph.T_monoGraph>, _pkg:stdgo.Ref<stdgo._internal.go.types.Types_package.Package>, _pos:stdgo._internal.go.token.Token_pos.Pos, _tparams:stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>>, _targs:stdgo.Slice<stdgo._internal.go.types.Types_type_.Type_>, _xlist:stdgo.Slice<stdgo._internal.go.ast.Ast_expr.Expr>):Void {
        @:recv var _w:stdgo.Ref<stdgo._internal.go.types.Types_t_monograph.T_monoGraph> = _w;
        //"file:///home/runner/.go/go1.21.3/src/go/types/mono.go#L172"
        for (_i => _tpar in _tparams) {
            var _pos = (_pos : stdgo._internal.go.token.Token_pos.Pos);
            //"file:///home/runner/.go/go1.21.3/src/go/types/mono.go#L174"
            if ((_i < (_xlist.length) : Bool)) {
                _pos = _xlist[(_i : stdgo.GoInt)].pos();
            };
            //"file:///home/runner/.go/go1.21.3/src/go/types/mono.go#L177"
            _w._assign(_pkg, _pos, _tpar, _targs[(_i : stdgo.GoInt)]);
        };
    }
    @:keep
    @:tdfield
    static public function _recordCanon( _w:stdgo.Ref<stdgo._internal.go.types.Types_t_monograph.T_monoGraph>, _mpar:stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>, _tpar:stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>):Void {
        @:recv var _w:stdgo.Ref<stdgo._internal.go.types.Types_t_monograph.T_monoGraph> = _w;
        //"file:///home/runner/.go/go1.21.3/src/go/types/mono.go#L163"
        if ((@:checkr _w ?? throw "null pointer dereference")._canon == null) {
            (@:checkr _w ?? throw "null pointer dereference")._canon = ({
                final x = new stdgo.GoMap.GoRefMap<stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>, stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>>();
                {};
                cast x;
            } : stdgo.GoMap<stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>, stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>>);
        };
        (@:checkr _w ?? throw "null pointer dereference")._canon[_mpar] = _tpar;
    }
}
