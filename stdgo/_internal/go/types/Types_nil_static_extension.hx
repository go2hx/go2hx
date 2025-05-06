package stdgo._internal.go.types;
@:keep @:allow(stdgo._internal.go.types.Types.Nil_asInterface) class Nil_static_extension {
    @:keep
    @:tdfield
    static public function string( _obj:stdgo.Ref<stdgo._internal.go.types.Types_nil.Nil>):stdgo.GoString {
        @:recv var _obj:stdgo.Ref<stdgo._internal.go.types.Types_nil.Nil> = _obj;
        //"file:///home/runner/.go/go1.21.3/src/go/types/object.go#L590"
        return stdgo._internal.go.types.Types_objectstring.objectString(stdgo.Go.asInterface(_obj), null)?.__copy__();
    }
    @:embedded
    @:embeddededffieldsffun
    public static function _setType( __self__:stdgo._internal.go.types.Types_nil.Nil, _0:stdgo._internal.go.types.Types_type_.Type_):Void return @:_5 __self__._setType(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function _setScopePos( __self__:stdgo._internal.go.types.Types_nil.Nil, _0:stdgo._internal.go.token.Token_pos.Pos):Void return @:_5 __self__._setScopePos(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function _setParent( __self__:stdgo._internal.go.types.Types_nil.Nil, _0:stdgo.Ref<stdgo._internal.go.types.Types_scope.Scope>):Void return @:_5 __self__._setParent(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function _setOrder( __self__:stdgo._internal.go.types.Types_nil.Nil, _0:stdgo.GoUInt32):Void return @:_5 __self__._setOrder(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function _setColor( __self__:stdgo._internal.go.types.Types_nil.Nil, _0:stdgo._internal.go.types.Types_t_color.T_color):Void return @:_5 __self__._setColor(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function _scopePos( __self__:stdgo._internal.go.types.Types_nil.Nil):stdgo._internal.go.token.Token_pos.Pos return @:_5 __self__._scopePos();
    @:embedded
    @:embeddededffieldsffun
    public static function _sameId( __self__:stdgo._internal.go.types.Types_nil.Nil, _0:stdgo.Ref<stdgo._internal.go.types.Types_package.Package>, _1:stdgo.GoString):Bool return @:_5 __self__._sameId(_0, _1);
    @:embedded
    @:embeddededffieldsffun
    public static function _order( __self__:stdgo._internal.go.types.Types_nil.Nil):stdgo.GoUInt32 return @:_5 __self__._order();
    @:embedded
    @:embeddededffieldsffun
    public static function _less( __self__:stdgo._internal.go.types.Types_nil.Nil, _0:stdgo.Ref<stdgo._internal.go.types.Types_t_object.T_object>):Bool return @:_5 __self__._less(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function _color( __self__:stdgo._internal.go.types.Types_nil.Nil):stdgo._internal.go.types.Types_t_color.T_color return @:_5 __self__._color();
    @:embedded
    @:embeddededffieldsffun
    public static function type( __self__:stdgo._internal.go.types.Types_nil.Nil):stdgo._internal.go.types.Types_type_.Type_ return @:_5 __self__.type();
    @:embedded
    @:embeddededffieldsffun
    public static function pos( __self__:stdgo._internal.go.types.Types_nil.Nil):stdgo._internal.go.token.Token_pos.Pos return @:_5 __self__.pos();
    @:embedded
    @:embeddededffieldsffun
    public static function pkg( __self__:stdgo._internal.go.types.Types_nil.Nil):stdgo.Ref<stdgo._internal.go.types.Types_package.Package> return @:_5 __self__.pkg();
    @:embedded
    @:embeddededffieldsffun
    public static function parent( __self__:stdgo._internal.go.types.Types_nil.Nil):stdgo.Ref<stdgo._internal.go.types.Types_scope.Scope> return @:_5 __self__.parent();
    @:embedded
    @:embeddededffieldsffun
    public static function name( __self__:stdgo._internal.go.types.Types_nil.Nil):stdgo.GoString return @:_5 __self__.name();
    @:embedded
    @:embeddededffieldsffun
    public static function id( __self__:stdgo._internal.go.types.Types_nil.Nil):stdgo.GoString return @:_5 __self__.id();
    @:embedded
    @:embeddededffieldsffun
    public static function exported( __self__:stdgo._internal.go.types.Types_nil.Nil):Bool return @:_5 __self__.exported();
}
