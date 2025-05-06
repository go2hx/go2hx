package stdgo._internal.go.types;
@:keep @:allow(stdgo._internal.go.types.Types.Func_asInterface) class Func_static_extension {
    @:keep
    @:tdfield
    static public function string( _obj:stdgo.Ref<stdgo._internal.go.types.Types_func.Func>):stdgo.GoString {
        @:recv var _obj:stdgo.Ref<stdgo._internal.go.types.Types_func.Func> = _obj;
        //"file:///home/runner/.go/go1.21.3/src/go/types/object.go#L587"
        return stdgo._internal.go.types.Types_objectstring.objectString(stdgo.Go.asInterface(_obj), null)?.__copy__();
    }
    @:keep
    @:tdfield
    static public function _isDependency( _:stdgo.Ref<stdgo._internal.go.types.Types_func.Func>):Void {
        @:recv var _:stdgo.Ref<stdgo._internal.go.types.Types_func.Func> = _;
    }
    @:keep
    @:tdfield
    static public function _hasPtrRecv( _obj:stdgo.Ref<stdgo._internal.go.types.Types_func.Func>):Bool {
        @:recv var _obj:stdgo.Ref<stdgo._internal.go.types.Types_func.Func> = _obj;
        //"file:///home/runner/.go/go1.21.3/src/go/types/object.go#L417"
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface((@:checkr _obj ?? throw "null pointer dereference")._object._typ) : stdgo.Ref<stdgo._internal.go.types.Types_signature.Signature>)) : stdgo.Ref<stdgo._internal.go.types.Types_signature.Signature>), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo.Ref<stdgo._internal.go.types.Types_signature.Signature>), _1 : false };
            }, _sig = __tmp__._0, __0 = __tmp__._1;
            if ((({
                final value = _sig;
                (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
            }) && ({
                final value = (@:checkr _sig ?? throw "null pointer dereference")._recv;
                (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
            }) : Bool)) {
                var __tmp__ = stdgo._internal.go.types.Types__deref._deref((@:checkr (@:checkr _sig ?? throw "null pointer dereference")._recv ?? throw "null pointer dereference")._object._typ), __1:stdgo._internal.go.types.Types_type_.Type_ = __tmp__._0, _isPtr:Bool = __tmp__._1;
                //"file:///home/runner/.go/go1.21.3/src/go/types/object.go#L419"
                return _isPtr;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/types/object.go#L427"
        return (@:checkr _obj ?? throw "null pointer dereference")._hasPtrRecv_;
    }
    @:keep
    @:tdfield
    static public function origin( _obj:stdgo.Ref<stdgo._internal.go.types.Types_func.Func>):stdgo.Ref<stdgo._internal.go.types.Types_func.Func> {
        @:recv var _obj:stdgo.Ref<stdgo._internal.go.types.Types_func.Func> = _obj;
        //"file:///home/runner/.go/go1.21.3/src/go/types/object.go#L405"
        if (({
            final value = (@:checkr _obj ?? throw "null pointer dereference")._origin;
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        })) {
            //"file:///home/runner/.go/go1.21.3/src/go/types/object.go#L406"
            return (@:checkr _obj ?? throw "null pointer dereference")._origin;
        };
        //"file:///home/runner/.go/go1.21.3/src/go/types/object.go#L408"
        return _obj;
    }
    @:keep
    @:tdfield
    static public function scope( _obj:stdgo.Ref<stdgo._internal.go.types.Types_func.Func>):stdgo.Ref<stdgo._internal.go.types.Types_scope.Scope> {
        @:recv var _obj:stdgo.Ref<stdgo._internal.go.types.Types_func.Func> = _obj;
        //"file:///home/runner/.go/go1.21.3/src/go/types/object.go#L395"
        return (@:checkr (stdgo.Go.typeAssert((stdgo.Go.toInterface((@:checkr _obj ?? throw "null pointer dereference")._object._typ) : stdgo.Ref<stdgo._internal.go.types.Types_signature.Signature>)) : stdgo.Ref<stdgo._internal.go.types.Types_signature.Signature>) ?? throw "null pointer dereference")._scope;
    }
    @:keep
    @:tdfield
    static public function fullName( _obj:stdgo.Ref<stdgo._internal.go.types.Types_func.Func>):stdgo.GoString {
        @:recv var _obj:stdgo.Ref<stdgo._internal.go.types.Types_func.Func> = _obj;
        var _buf:stdgo._internal.bytes.Bytes_buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_buffer.Buffer);
        //"file:///home/runner/.go/go1.21.3/src/go/types/object.go#L388"
        stdgo._internal.go.types.Types__writefuncname._writeFuncName((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>), _obj, null);
        //"file:///home/runner/.go/go1.21.3/src/go/types/object.go#L389"
        return (_buf.string() : stdgo.GoString)?.__copy__();
    }
    @:embedded
    @:embeddededffieldsffun
    public static function _setType( __self__:stdgo._internal.go.types.Types_func.Func, _0:stdgo._internal.go.types.Types_type_.Type_):Void return @:_5 __self__._setType(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function _setScopePos( __self__:stdgo._internal.go.types.Types_func.Func, _0:stdgo._internal.go.token.Token_pos.Pos):Void return @:_5 __self__._setScopePos(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function _setParent( __self__:stdgo._internal.go.types.Types_func.Func, _0:stdgo.Ref<stdgo._internal.go.types.Types_scope.Scope>):Void return @:_5 __self__._setParent(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function _setOrder( __self__:stdgo._internal.go.types.Types_func.Func, _0:stdgo.GoUInt32):Void return @:_5 __self__._setOrder(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function _setColor( __self__:stdgo._internal.go.types.Types_func.Func, _0:stdgo._internal.go.types.Types_t_color.T_color):Void return @:_5 __self__._setColor(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function _scopePos( __self__:stdgo._internal.go.types.Types_func.Func):stdgo._internal.go.token.Token_pos.Pos return @:_5 __self__._scopePos();
    @:embedded
    @:embeddededffieldsffun
    public static function _sameId( __self__:stdgo._internal.go.types.Types_func.Func, _0:stdgo.Ref<stdgo._internal.go.types.Types_package.Package>, _1:stdgo.GoString):Bool return @:_5 __self__._sameId(_0, _1);
    @:embedded
    @:embeddededffieldsffun
    public static function _order( __self__:stdgo._internal.go.types.Types_func.Func):stdgo.GoUInt32 return @:_5 __self__._order();
    @:embedded
    @:embeddededffieldsffun
    public static function _less( __self__:stdgo._internal.go.types.Types_func.Func, _0:stdgo.Ref<stdgo._internal.go.types.Types_t_object.T_object>):Bool return @:_5 __self__._less(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function _color( __self__:stdgo._internal.go.types.Types_func.Func):stdgo._internal.go.types.Types_t_color.T_color return @:_5 __self__._color();
    @:embedded
    @:embeddededffieldsffun
    public static function type( __self__:stdgo._internal.go.types.Types_func.Func):stdgo._internal.go.types.Types_type_.Type_ return @:_5 __self__.type();
    @:embedded
    @:embeddededffieldsffun
    public static function pos( __self__:stdgo._internal.go.types.Types_func.Func):stdgo._internal.go.token.Token_pos.Pos return @:_5 __self__.pos();
    @:embedded
    @:embeddededffieldsffun
    public static function pkg( __self__:stdgo._internal.go.types.Types_func.Func):stdgo.Ref<stdgo._internal.go.types.Types_package.Package> return @:_5 __self__.pkg();
    @:embedded
    @:embeddededffieldsffun
    public static function parent( __self__:stdgo._internal.go.types.Types_func.Func):stdgo.Ref<stdgo._internal.go.types.Types_scope.Scope> return @:_5 __self__.parent();
    @:embedded
    @:embeddededffieldsffun
    public static function name( __self__:stdgo._internal.go.types.Types_func.Func):stdgo.GoString return @:_5 __self__.name();
    @:embedded
    @:embeddededffieldsffun
    public static function id( __self__:stdgo._internal.go.types.Types_func.Func):stdgo.GoString return @:_5 __self__.id();
    @:embedded
    @:embeddededffieldsffun
    public static function exported( __self__:stdgo._internal.go.types.Types_func.Func):Bool return @:_5 __self__.exported();
}
