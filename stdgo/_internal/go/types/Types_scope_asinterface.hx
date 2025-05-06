package stdgo._internal.go.types;
class Scope_asInterface {
    @:keep
    @:tdfield
    public dynamic function string():stdgo.GoString return @:_0 __self__.value.string();
    @:keep
    @:tdfield
    public dynamic function writeTo(_w:stdgo._internal.io.Io_writer.Writer, _n:stdgo.GoInt, _recurse:Bool):Void @:_0 __self__.value.writeTo(_w, _n, _recurse);
    @:keep
    @:tdfield
    public dynamic function innermost(_pos:stdgo._internal.go.token.Token_pos.Pos):stdgo.Ref<stdgo._internal.go.types.Types_scope.Scope> return @:_0 __self__.value.innermost(_pos);
    @:keep
    @:tdfield
    public dynamic function contains(_pos:stdgo._internal.go.token.Token_pos.Pos):Bool return @:_0 __self__.value.contains(_pos);
    @:keep
    @:tdfield
    public dynamic function end():stdgo._internal.go.token.Token_pos.Pos return @:_0 __self__.value.end();
    @:keep
    @:tdfield
    public dynamic function pos():stdgo._internal.go.token.Token_pos.Pos return @:_0 __self__.value.pos();
    @:keep
    @:tdfield
    public dynamic function _squash(_err:(stdgo._internal.go.types.Types_object.Object, stdgo._internal.go.types.Types_object.Object) -> Void):Void @:_0 __self__.value._squash(_err);
    @:keep
    @:tdfield
    public dynamic function _insert(_name:stdgo.GoString, _obj:stdgo._internal.go.types.Types_object.Object):Void @:_0 __self__.value._insert(_name, _obj);
    @:keep
    @:tdfield
    public dynamic function __InsertLazy(_name:stdgo.GoString, _resolve:() -> stdgo._internal.go.types.Types_object.Object):Bool return @:_0 __self__.value.__InsertLazy(_name, _resolve);
    @:keep
    @:tdfield
    public dynamic function insert(_obj:stdgo._internal.go.types.Types_object.Object):stdgo._internal.go.types.Types_object.Object return @:_0 __self__.value.insert(_obj);
    @:keep
    @:tdfield
    public dynamic function lookupParent(_name:stdgo.GoString, _pos:stdgo._internal.go.token.Token_pos.Pos):{ var _0 : stdgo.Ref<stdgo._internal.go.types.Types_scope.Scope>; var _1 : stdgo._internal.go.types.Types_object.Object; } return @:_0 __self__.value.lookupParent(_name, _pos);
    @:keep
    @:tdfield
    public dynamic function lookup(_name:stdgo.GoString):stdgo._internal.go.types.Types_object.Object return @:_0 __self__.value.lookup(_name);
    @:keep
    @:tdfield
    public dynamic function child(_i:stdgo.GoInt):stdgo.Ref<stdgo._internal.go.types.Types_scope.Scope> return @:_0 __self__.value.child(_i);
    @:keep
    @:tdfield
    public dynamic function numChildren():stdgo.GoInt return @:_0 __self__.value.numChildren();
    @:keep
    @:tdfield
    public dynamic function names():stdgo.Slice<stdgo.GoString> return @:_0 __self__.value.names();
    @:keep
    @:tdfield
    public dynamic function len():stdgo.GoInt return @:_0 __self__.value.len();
    @:keep
    @:tdfield
    public dynamic function parent():stdgo.Ref<stdgo._internal.go.types.Types_scope.Scope> return @:_0 __self__.value.parent();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.go.types.Types_scopepointer.ScopePointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
