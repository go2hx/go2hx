package stdgo._internal.go.types;
@:keep @:allow(stdgo._internal.go.types.Types.Interface_asInterface) class Interface_static_extension {
    @:keep
    @:tdfield
    static public function _cleanup( _t:stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface>):Void {
        @:recv var _t:stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface> = _t;
        (@:checkr _t ?? throw "null pointer dereference")._check = null;
        (@:checkr _t ?? throw "null pointer dereference")._embedPos = (null : stdgo.Ref<stdgo.Slice<stdgo._internal.go.token.Token_pos.Pos>>);
    }
    @:keep
    @:tdfield
    static public function string( _t:stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface>):stdgo.GoString {
        @:recv var _t:stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface> = _t;
        //"file:///home/runner/.go/go1.21.3/src/go/types/interface.go#L148"
        return stdgo._internal.go.types.Types_typestring.typeString(stdgo.Go.asInterface(_t), null)?.__copy__();
    }
    @:keep
    @:tdfield
    static public function underlying( _t:stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface>):stdgo._internal.go.types.Types_type_.Type_ {
        @:recv var _t:stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface> = _t;
        //"file:///home/runner/.go/go1.21.3/src/go/types/interface.go#L147"
        return stdgo.Go.asInterface(_t);
    }
    @:keep
    @:tdfield
    static public function complete( _t:stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface>):stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface> {
        @:recv var _t:stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface> = _t;
        //"file:///home/runner/.go/go1.21.3/src/go/types/interface.go#L140"
        if (!(@:checkr _t ?? throw "null pointer dereference")._complete) {
            (@:checkr _t ?? throw "null pointer dereference")._complete = true;
        };
        //"file:///home/runner/.go/go1.21.3/src/go/types/interface.go#L143"
        _t._typeSet();
        //"file:///home/runner/.go/go1.21.3/src/go/types/interface.go#L144"
        return _t;
    }
    @:keep
    @:tdfield
    static public function isImplicit( _t:stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface>):Bool {
        @:recv var _t:stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface> = _t;
        //"file:///home/runner/.go/go1.21.3/src/go/types/interface.go#L130"
        return (@:checkr _t ?? throw "null pointer dereference")._implicit;
    }
    @:keep
    @:tdfield
    static public function isMethodSet( _t:stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface>):Bool {
        @:recv var _t:stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface> = _t;
        //"file:///home/runner/.go/go1.21.3/src/go/types/interface.go#L127"
        return _t._typeSet().isMethodSet();
    }
    @:keep
    @:tdfield
    static public function isComparable( _t:stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface>):Bool {
        @:recv var _t:stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface> = _t;
        //"file:///home/runner/.go/go1.21.3/src/go/types/interface.go#L123"
        return _t._typeSet().isComparable((null : stdgo.GoMap<stdgo._internal.go.types.Types_type_.Type_, Bool>));
    }
    @:keep
    @:tdfield
    static public function empty( _t:stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface>):Bool {
        @:recv var _t:stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface> = _t;
        //"file:///home/runner/.go/go1.21.3/src/go/types/interface.go#L120"
        return _t._typeSet().isAll();
    }
    @:keep
    @:tdfield
    static public function method( _t:stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface>, _i:stdgo.GoInt):stdgo.Ref<stdgo._internal.go.types.Types_func.Func> {
        @:recv var _t:stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface> = _t;
        //"file:///home/runner/.go/go1.21.3/src/go/types/interface.go#L117"
        return _t._typeSet().method(_i);
    }
    @:keep
    @:tdfield
    static public function numMethods( _t:stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface>):stdgo.GoInt {
        @:recv var _t:stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface> = _t;
        //"file:///home/runner/.go/go1.21.3/src/go/types/interface.go#L113"
        return _t._typeSet().numMethods();
    }
    @:keep
    @:tdfield
    static public function embeddedType( _t:stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface>, _i:stdgo.GoInt):stdgo._internal.go.types.Types_type_.Type_ {
        @:recv var _t:stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface> = _t;
        //"file:///home/runner/.go/go1.21.3/src/go/types/interface.go#L110"
        return (@:checkr _t ?? throw "null pointer dereference")._embeddeds[(_i : stdgo.GoInt)];
    }
    @:keep
    @:tdfield
    static public function embedded( _t:stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface>, _i:stdgo.GoInt):stdgo.Ref<stdgo._internal.go.types.Types_named.Named> {
        @:recv var _t:stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface> = _t;
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface((@:checkr _t ?? throw "null pointer dereference")._embeddeds[(_i : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.go.types.Types_named.Named>)) : stdgo.Ref<stdgo._internal.go.types.Types_named.Named>), _1 : true };
        } catch(_) {
            { _0 : (null : stdgo.Ref<stdgo._internal.go.types.Types_named.Named>), _1 : false };
        }, _tname = __tmp__._0, __8 = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/go/types/interface.go#L107"
        return _tname;
    }
    @:keep
    @:tdfield
    static public function numEmbeddeds( _t:stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface>):stdgo.GoInt {
        @:recv var _t:stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface> = _t;
        //"file:///home/runner/.go/go1.21.3/src/go/types/interface.go#L101"
        return ((@:checkr _t ?? throw "null pointer dereference")._embeddeds.length);
    }
    @:keep
    @:tdfield
    static public function explicitMethod( _t:stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface>, _i:stdgo.GoInt):stdgo.Ref<stdgo._internal.go.types.Types_func.Func> {
        @:recv var _t:stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface> = _t;
        //"file:///home/runner/.go/go1.21.3/src/go/types/interface.go#L98"
        return (@:checkr _t ?? throw "null pointer dereference")._methods[(_i : stdgo.GoInt)];
    }
    @:keep
    @:tdfield
    static public function numExplicitMethods( _t:stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface>):stdgo.GoInt {
        @:recv var _t:stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface> = _t;
        //"file:///home/runner/.go/go1.21.3/src/go/types/interface.go#L94"
        return ((@:checkr _t ?? throw "null pointer dereference")._methods.length);
    }
    @:keep
    @:tdfield
    static public function markImplicit( _t:stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface>):Void {
        @:recv var _t:stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface> = _t;
        (@:checkr _t ?? throw "null pointer dereference")._implicit = true;
    }
    @:keep
    @:tdfield
    static public function _typeSet( _t:stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface>):stdgo.Ref<stdgo._internal.go.types.Types_t__typeset.T__TypeSet> {
        @:recv var _t:stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface> = _t;
        //"file:///home/runner/.go/go1.21.3/src/go/types/interface.go#L29"
        return stdgo._internal.go.types.Types__computeinterfacetypeset._computeInterfaceTypeSet((@:checkr _t ?? throw "null pointer dereference")._check, stdgo._internal.go.types.Types__nopos._nopos, _t);
    }
}
