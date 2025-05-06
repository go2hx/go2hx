package stdgo._internal.go.types;
@:keep @:allow(stdgo._internal.go.types.Types.TypeParam_asInterface) class TypeParam_static_extension {
    @:keep
    @:tdfield
    static public function _underIs( _t:stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>, _f:stdgo._internal.go.types.Types_type_.Type_ -> Bool):Bool {
        @:recv var _t:stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam> = _t;
        //"file:///home/runner/.go/go1.21.3/src/go/types/typeparam.go#L157"
        return _t._iface()._typeSet()._underIs(_f);
    }
    @:keep
    @:tdfield
    static public function _is( _t:stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>, _f:stdgo.Ref<stdgo._internal.go.types.Types_t_term.T_term> -> Bool):Bool {
        @:recv var _t:stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam> = _t;
        //"file:///home/runner/.go/go1.21.3/src/go/types/typeparam.go#L150"
        return _t._iface()._typeSet()._is(_f);
    }
    @:keep
    @:tdfield
    static public function _iface( _t:stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>):stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface> {
        @:recv var _t:stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam> = _t;
        var _bound = ((@:checkr _t ?? throw "null pointer dereference")._bound : stdgo._internal.go.types.Types_type_.Type_);
        var _ityp:stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface> = (null : stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface>);
        //"file:///home/runner/.go/go1.21.3/src/go/types/typeparam.go#L111"
        {
            final __type__ = stdgo._internal.go.types.Types__under._under(_bound);
            if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.types.Types_basic.Basic>))) {
                var _u:stdgo.Ref<stdgo._internal.go.types.Types_basic.Basic> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_basic.Basic>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_basic.Basic>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_basic.Basic>) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/go/types/typeparam.go#L113"
                if (_u == (stdgo._internal.go.types.Types_typ.typ[((0 : stdgo._internal.go.types.Types_basickind.BasicKind) : stdgo.GoInt)])) {
                    //"file:///home/runner/.go/go1.21.3/src/go/types/typeparam.go#L115"
                    return (stdgo.Go.setRef(stdgo._internal.go.types.Types__emptyinterface._emptyInterface) : stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface>);
                };
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface>))) {
                var _u:stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface>) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/go/types/typeparam.go#L118"
                if (stdgo._internal.go.types.Types__istypeparam._isTypeParam(_bound)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/types/typeparam.go#L120"
                    return (stdgo.Go.setRef(stdgo._internal.go.types.Types__emptyinterface._emptyInterface) : stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface>);
                };
                _ityp = _u;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/types/typeparam.go#L126"
        if (({
            final value = _ityp;
            (value == null || (value : Dynamic).__nil__);
        })) {
            _ityp = stdgo._internal.go.types.Types_newinterfacetype.newInterfaceType((null : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_func.Func>>), (new stdgo.Slice<stdgo._internal.go.types.Types_type_.Type_>(1, 1, ...[_bound]) : stdgo.Slice<stdgo._internal.go.types.Types_type_.Type_>));
            (@:checkr _ityp ?? throw "null pointer dereference")._implicit = true;
            (@:checkr _t ?? throw "null pointer dereference")._bound = stdgo.Go.asInterface(_ityp);
        };
        //"file:///home/runner/.go/go1.21.3/src/go/types/typeparam.go#L133"
        if (({
            final value = (@:checkr _ityp ?? throw "null pointer dereference")._tset;
            (value == null || (value : Dynamic).__nil__);
        })) {
            var _pos = ((@:checkr (@:checkr _t ?? throw "null pointer dereference")._obj ?? throw "null pointer dereference")._object._pos : stdgo._internal.go.token.Token_pos.Pos);
            //"file:///home/runner/.go/go1.21.3/src/go/types/typeparam.go#L137"
            {
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_bound) : stdgo.Ref<stdgo._internal.go.types.Types_named.Named>)) : stdgo.Ref<stdgo._internal.go.types.Types_named.Named>), _1 : true };
                } catch(_) {
                    { _0 : (null : stdgo.Ref<stdgo._internal.go.types.Types_named.Named>), _1 : false };
                }, _n = __tmp__._0, __24 = __tmp__._1;
                if (({
                    final value = _n;
                    (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                })) {
                    _pos = (@:checkr (@:checkr _n ?? throw "null pointer dereference")._obj ?? throw "null pointer dereference")._object._pos;
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/go/types/typeparam.go#L140"
            stdgo._internal.go.types.Types__computeinterfacetypeset._computeInterfaceTypeSet((@:checkr _t ?? throw "null pointer dereference")._check, _pos, _ityp);
        };
        //"file:///home/runner/.go/go1.21.3/src/go/types/typeparam.go#L143"
        return _ityp;
    }
    @:keep
    @:tdfield
    static public function _cleanup( _t:stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>):Void {
        @:recv var _t:stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam> = _t;
        //"file:///home/runner/.go/go1.21.3/src/go/types/typeparam.go#L101"
        _t._iface();
        (@:checkr _t ?? throw "null pointer dereference")._check = null;
    }
    @:keep
    @:tdfield
    static public function string( _t:stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>):stdgo.GoString {
        @:recv var _t:stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam> = _t;
        //"file:///home/runner/.go/go1.21.3/src/go/types/typeparam.go#L95"
        return stdgo._internal.go.types.Types_typestring.typeString(stdgo.Go.asInterface(_t), null)?.__copy__();
    }
    @:keep
    @:tdfield
    static public function underlying( _t:stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>):stdgo._internal.go.types.Types_type_.Type_ {
        @:recv var _t:stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam> = _t;
        //"file:///home/runner/.go/go1.21.3/src/go/types/typeparam.go#L92"
        return stdgo.Go.asInterface(_t._iface());
    }
    @:keep
    @:tdfield
    static public function setConstraint( _t:stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>, _bound:stdgo._internal.go.types.Types_type_.Type_):Void {
        @:recv var _t:stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam> = _t;
        //"file:///home/runner/.go/go1.21.3/src/go/types/typeparam.go#L82"
        if (_bound == null) {
            //"file:///home/runner/.go/go1.21.3/src/go/types/typeparam.go#L83"
            throw stdgo.Go.toInterface(("nil constraint" : stdgo.GoString));
        };
        (@:checkr _t ?? throw "null pointer dereference")._bound = _bound;
        //"file:///home/runner/.go/go1.21.3/src/go/types/typeparam.go#L88"
        _t._iface();
    }
    @:keep
    @:tdfield
    static public function constraint( _t:stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>):stdgo._internal.go.types.Types_type_.Type_ {
        @:recv var _t:stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam> = _t;
        //"file:///home/runner/.go/go1.21.3/src/go/types/typeparam.go#L72"
        return (@:checkr _t ?? throw "null pointer dereference")._bound;
    }
    @:keep
    @:tdfield
    static public function index( _t:stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>):stdgo.GoInt {
        @:recv var _t:stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam> = _t;
        //"file:///home/runner/.go/go1.21.3/src/go/types/typeparam.go#L67"
        return (@:checkr _t ?? throw "null pointer dereference")._index;
    }
    @:keep
    @:tdfield
    static public function obj( _t:stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>):stdgo.Ref<stdgo._internal.go.types.Types_typename.TypeName> {
        @:recv var _t:stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam> = _t;
        //"file:///home/runner/.go/go1.21.3/src/go/types/typeparam.go#L62"
        return (@:checkr _t ?? throw "null pointer dereference")._obj;
    }
}
