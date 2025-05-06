package stdgo._internal.go.types;
@:keep @:allow(stdgo._internal.go.types.Types.TypeName_asInterface) class TypeName_static_extension {
    @:keep
    @:tdfield
    static public function string( _obj:stdgo.Ref<stdgo._internal.go.types.Types_typename.TypeName>):stdgo.GoString {
        @:recv var _obj:stdgo.Ref<stdgo._internal.go.types.Types_typename.TypeName> = _obj;
        //"file:///home/runner/.go/go1.21.3/src/go/types/object.go#L585"
        return stdgo._internal.go.types.Types_objectstring.objectString(stdgo.Go.asInterface(_obj), null)?.__copy__();
    }
    @:keep
    @:tdfield
    static public function isAlias( _obj:stdgo.Ref<stdgo._internal.go.types.Types_typename.TypeName>):Bool {
        @:recv var _obj:stdgo.Ref<stdgo._internal.go.types.Types_typename.TypeName> = _obj;
        //"file:///home/runner/.go/go1.21.3/src/go/types/object.go#L287"
        {
            final __type__ = (@:checkr _obj ?? throw "null pointer dereference")._object._typ;
            if (__type__ == null) {
                var _t:stdgo.AnyInterface = __type__ == null ? (null : stdgo.AnyInterface) : cast __type__;
                //"file:///home/runner/.go/go1.21.3/src/go/types/object.go#L289"
                return false;
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.types.Types_basic.Basic>))) {
                var _t:stdgo.Ref<stdgo._internal.go.types.Types_basic.Basic> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_basic.Basic>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_basic.Basic>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_basic.Basic>) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/go/types/object.go#L292"
                if ((@:checkr _obj ?? throw "null pointer dereference")._object._pkg == (stdgo._internal.go.types.Types_unsafe.unsafe)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/types/object.go#L293"
                    return false;
                };
                //"file:///home/runner/.go/go1.21.3/src/go/types/object.go#L301"
                return (((({
                    final value = (@:checkr _obj ?? throw "null pointer dereference")._object._pkg;
                    (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                }) || (@:checkr _t ?? throw "null pointer dereference")._name != ((@:checkr _obj ?? throw "null pointer dereference")._object._name) : Bool) || stdgo.Go.toInterface(stdgo.Go.asInterface(_t)) == (stdgo.Go.toInterface(stdgo._internal.go.types.Types__universebyte._universeByte)) : Bool) || (stdgo.Go.toInterface(stdgo.Go.asInterface(_t)) == stdgo.Go.toInterface(stdgo._internal.go.types.Types__universerune._universeRune)) : Bool);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.types.Types_named.Named>))) {
                var _t:stdgo.Ref<stdgo._internal.go.types.Types_named.Named> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_named.Named>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_named.Named>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_named.Named>) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/go/types/object.go#L303"
                return _obj != ((@:checkr _t ?? throw "null pointer dereference")._obj);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>))) {
                var _t:stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/go/types/object.go#L305"
                return _obj != ((@:checkr _t ?? throw "null pointer dereference")._obj);
            } else {
                var _t:stdgo._internal.go.types.Types_type_.Type_ = __type__ == null ? (null : stdgo._internal.go.types.Types_type_.Type_) : cast __type__;
                //"file:///home/runner/.go/go1.21.3/src/go/types/object.go#L307"
                return true;
            };
        };
    }
    @:embedded
    @:embeddededffieldsffun
    public static function _setType( __self__:stdgo._internal.go.types.Types_typename.TypeName, _0:stdgo._internal.go.types.Types_type_.Type_):Void return @:_5 __self__._setType(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function _setScopePos( __self__:stdgo._internal.go.types.Types_typename.TypeName, _0:stdgo._internal.go.token.Token_pos.Pos):Void return @:_5 __self__._setScopePos(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function _setParent( __self__:stdgo._internal.go.types.Types_typename.TypeName, _0:stdgo.Ref<stdgo._internal.go.types.Types_scope.Scope>):Void return @:_5 __self__._setParent(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function _setOrder( __self__:stdgo._internal.go.types.Types_typename.TypeName, _0:stdgo.GoUInt32):Void return @:_5 __self__._setOrder(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function _setColor( __self__:stdgo._internal.go.types.Types_typename.TypeName, _0:stdgo._internal.go.types.Types_t_color.T_color):Void return @:_5 __self__._setColor(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function _scopePos( __self__:stdgo._internal.go.types.Types_typename.TypeName):stdgo._internal.go.token.Token_pos.Pos return @:_5 __self__._scopePos();
    @:embedded
    @:embeddededffieldsffun
    public static function _sameId( __self__:stdgo._internal.go.types.Types_typename.TypeName, _0:stdgo.Ref<stdgo._internal.go.types.Types_package.Package>, _1:stdgo.GoString):Bool return @:_5 __self__._sameId(_0, _1);
    @:embedded
    @:embeddededffieldsffun
    public static function _order( __self__:stdgo._internal.go.types.Types_typename.TypeName):stdgo.GoUInt32 return @:_5 __self__._order();
    @:embedded
    @:embeddededffieldsffun
    public static function _less( __self__:stdgo._internal.go.types.Types_typename.TypeName, _0:stdgo.Ref<stdgo._internal.go.types.Types_t_object.T_object>):Bool return @:_5 __self__._less(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function _color( __self__:stdgo._internal.go.types.Types_typename.TypeName):stdgo._internal.go.types.Types_t_color.T_color return @:_5 __self__._color();
    @:embedded
    @:embeddededffieldsffun
    public static function type( __self__:stdgo._internal.go.types.Types_typename.TypeName):stdgo._internal.go.types.Types_type_.Type_ return @:_5 __self__.type();
    @:embedded
    @:embeddededffieldsffun
    public static function pos( __self__:stdgo._internal.go.types.Types_typename.TypeName):stdgo._internal.go.token.Token_pos.Pos return @:_5 __self__.pos();
    @:embedded
    @:embeddededffieldsffun
    public static function pkg( __self__:stdgo._internal.go.types.Types_typename.TypeName):stdgo.Ref<stdgo._internal.go.types.Types_package.Package> return @:_5 __self__.pkg();
    @:embedded
    @:embeddededffieldsffun
    public static function parent( __self__:stdgo._internal.go.types.Types_typename.TypeName):stdgo.Ref<stdgo._internal.go.types.Types_scope.Scope> return @:_5 __self__.parent();
    @:embedded
    @:embeddededffieldsffun
    public static function name( __self__:stdgo._internal.go.types.Types_typename.TypeName):stdgo.GoString return @:_5 __self__.name();
    @:embedded
    @:embeddededffieldsffun
    public static function id( __self__:stdgo._internal.go.types.Types_typename.TypeName):stdgo.GoString return @:_5 __self__.id();
    @:embedded
    @:embeddededffieldsffun
    public static function exported( __self__:stdgo._internal.go.types.Types_typename.TypeName):Bool return @:_5 __self__.exported();
}
