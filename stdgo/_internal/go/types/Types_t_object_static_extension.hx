package stdgo._internal.go.types;
@:keep @:allow(stdgo._internal.go.types.Types.T_object_asInterface) class T_object_static_extension {
    @:keep
    @:tdfield
    static public function _less( _a:stdgo.Ref<stdgo._internal.go.types.Types_t_object.T_object>, _b:stdgo.Ref<stdgo._internal.go.types.Types_t_object.T_object>):Bool {
        @:recv var _a:stdgo.Ref<stdgo._internal.go.types.Types_t_object.T_object> = _a;
        //"file:///home/runner/.go/go1.21.3/src/go/types/object.go#L196"
        if (_a == (_b)) {
            //"file:///home/runner/.go/go1.21.3/src/go/types/object.go#L197"
            return false;
        };
        //"file:///home/runner/.go/go1.21.3/src/go/types/object.go#L201"
        if (({
            final value = _a;
            (value == null || (value : Dynamic).__nil__);
        })) {
            //"file:///home/runner/.go/go1.21.3/src/go/types/object.go#L202"
            return true;
        };
        //"file:///home/runner/.go/go1.21.3/src/go/types/object.go#L204"
        if (({
            final value = _b;
            (value == null || (value : Dynamic).__nil__);
        })) {
            //"file:///home/runner/.go/go1.21.3/src/go/types/object.go#L205"
            return false;
        };
        var _ea = (stdgo._internal.go.types.Types__isexported._isExported((@:checkr _a ?? throw "null pointer dereference")._name?.__copy__()) : Bool);
        var _eb = (stdgo._internal.go.types.Types__isexported._isExported((@:checkr _b ?? throw "null pointer dereference")._name?.__copy__()) : Bool);
        //"file:///home/runner/.go/go1.21.3/src/go/types/object.go#L211"
        if (_ea != (_eb)) {
            //"file:///home/runner/.go/go1.21.3/src/go/types/object.go#L212"
            return _ea;
        };
        //"file:///home/runner/.go/go1.21.3/src/go/types/object.go#L216"
        if ((@:checkr _a ?? throw "null pointer dereference")._name != ((@:checkr _b ?? throw "null pointer dereference")._name)) {
            //"file:///home/runner/.go/go1.21.3/src/go/types/object.go#L217"
            return ((@:checkr _a ?? throw "null pointer dereference")._name < (@:checkr _b ?? throw "null pointer dereference")._name : Bool);
        };
        //"file:///home/runner/.go/go1.21.3/src/go/types/object.go#L219"
        if (!_ea) {
            //"file:///home/runner/.go/go1.21.3/src/go/types/object.go#L220"
            return ((@:checkr (@:checkr _a ?? throw "null pointer dereference")._pkg ?? throw "null pointer dereference")._path < (@:checkr (@:checkr _b ?? throw "null pointer dereference")._pkg ?? throw "null pointer dereference")._path : Bool);
        };
        //"file:///home/runner/.go/go1.21.3/src/go/types/object.go#L223"
        return false;
    }
    @:keep
    @:tdfield
    static public function _sameId( _obj:stdgo.Ref<stdgo._internal.go.types.Types_t_object.T_object>, _pkg:stdgo.Ref<stdgo._internal.go.types.Types_package.Package>, _name:stdgo.GoString):Bool {
        @:recv var _obj:stdgo.Ref<stdgo._internal.go.types.Types_t_object.T_object> = _obj;
        //"file:///home/runner/.go/go1.21.3/src/go/types/object.go#L173"
        if (_name != ((@:checkr _obj ?? throw "null pointer dereference")._name)) {
            //"file:///home/runner/.go/go1.21.3/src/go/types/object.go#L174"
            return false;
        };
        //"file:///home/runner/.go/go1.21.3/src/go/types/object.go#L177"
        if (_obj.exported()) {
            //"file:///home/runner/.go/go1.21.3/src/go/types/object.go#L178"
            return true;
        };
        //"file:///home/runner/.go/go1.21.3/src/go/types/object.go#L183"
        if ((({
            final value = _pkg;
            (value == null || (value : Dynamic).__nil__);
        }) || ({
            final value = (@:checkr _obj ?? throw "null pointer dereference")._pkg;
            (value == null || (value : Dynamic).__nil__);
        }) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/go/types/object.go#L184"
            return _pkg == ((@:checkr _obj ?? throw "null pointer dereference")._pkg);
        };
        //"file:///home/runner/.go/go1.21.3/src/go/types/object.go#L187"
        return (@:checkr _pkg ?? throw "null pointer dereference")._path == ((@:checkr (@:checkr _obj ?? throw "null pointer dereference")._pkg ?? throw "null pointer dereference")._path);
    }
    @:keep
    @:tdfield
    static public function _setScopePos( _obj:stdgo.Ref<stdgo._internal.go.types.Types_t_object.T_object>, _pos:stdgo._internal.go.token.Token_pos.Pos):Void {
        @:recv var _obj:stdgo.Ref<stdgo._internal.go.types.Types_t_object.T_object> = _obj;
        (@:checkr _obj ?? throw "null pointer dereference")._scopePos_ = _pos;
    }
    @:keep
    @:tdfield
    static public function _setColor( _obj:stdgo.Ref<stdgo._internal.go.types.Types_t_object.T_object>, _color:stdgo._internal.go.types.Types_t_color.T_color):Void {
        @:recv var _obj:stdgo.Ref<stdgo._internal.go.types.Types_t_object.T_object> = _obj;
        //"file:///home/runner/.go/go1.21.3/src/go/types/object.go#L165"
        stdgo._internal.go.types.Types__assert._assert(_color != ((0u32 : stdgo._internal.go.types.Types_t_color.T_color)));
        (@:checkr _obj ?? throw "null pointer dereference")._color_ = _color;
    }
    @:keep
    @:tdfield
    static public function _setOrder( _obj:stdgo.Ref<stdgo._internal.go.types.Types_t_object.T_object>, _order:stdgo.GoUInt32):Void {
        @:recv var _obj:stdgo.Ref<stdgo._internal.go.types.Types_t_object.T_object> = _obj;
        //"file:///home/runner/.go/go1.21.3/src/go/types/object.go#L164"
        stdgo._internal.go.types.Types__assert._assert((_order > (0u32 : stdgo.GoUInt32) : Bool));
        (@:checkr _obj ?? throw "null pointer dereference")._order_ = _order;
    }
    @:keep
    @:tdfield
    static public function _setType( _obj:stdgo.Ref<stdgo._internal.go.types.Types_t_object.T_object>, _typ:stdgo._internal.go.types.Types_type_.Type_):Void {
        @:recv var _obj:stdgo.Ref<stdgo._internal.go.types.Types_t_object.T_object> = _obj;
        (@:checkr _obj ?? throw "null pointer dereference")._typ = _typ;
    }
    @:keep
    @:tdfield
    static public function _setParent( _obj:stdgo.Ref<stdgo._internal.go.types.Types_t_object.T_object>, _parent:stdgo.Ref<stdgo._internal.go.types.Types_scope.Scope>):Void {
        @:recv var _obj:stdgo.Ref<stdgo._internal.go.types.Types_t_object.T_object> = _obj;
        (@:checkr _obj ?? throw "null pointer dereference")._parent = _parent;
    }
    @:keep
    @:tdfield
    static public function _scopePos( _obj:stdgo.Ref<stdgo._internal.go.types.Types_t_object.T_object>):stdgo._internal.go.token.Token_pos.Pos {
        @:recv var _obj:stdgo.Ref<stdgo._internal.go.types.Types_t_object.T_object> = _obj;
        //"file:///home/runner/.go/go1.21.3/src/go/types/object.go#L160"
        return (@:checkr _obj ?? throw "null pointer dereference")._scopePos_;
    }
    @:keep
    @:tdfield
    static public function _color( _obj:stdgo.Ref<stdgo._internal.go.types.Types_t_object.T_object>):stdgo._internal.go.types.Types_t_color.T_color {
        @:recv var _obj:stdgo.Ref<stdgo._internal.go.types.Types_t_object.T_object> = _obj;
        //"file:///home/runner/.go/go1.21.3/src/go/types/object.go#L159"
        return (@:checkr _obj ?? throw "null pointer dereference")._color_;
    }
    @:keep
    @:tdfield
    static public function _order( _obj:stdgo.Ref<stdgo._internal.go.types.Types_t_object.T_object>):stdgo.GoUInt32 {
        @:recv var _obj:stdgo.Ref<stdgo._internal.go.types.Types_t_object.T_object> = _obj;
        //"file:///home/runner/.go/go1.21.3/src/go/types/object.go#L158"
        return (@:checkr _obj ?? throw "null pointer dereference")._order_;
    }
    @:keep
    @:tdfield
    static public function string( _obj:stdgo.Ref<stdgo._internal.go.types.Types_t_object.T_object>):stdgo.GoString {
        @:recv var _obj:stdgo.Ref<stdgo._internal.go.types.Types_t_object.T_object> = _obj;
        //"file:///home/runner/.go/go1.21.3/src/go/types/object.go#L157"
        throw stdgo.Go.toInterface(("abstract" : stdgo.GoString));
    }
    @:keep
    @:tdfield
    static public function id( _obj:stdgo.Ref<stdgo._internal.go.types.Types_t_object.T_object>):stdgo.GoString {
        @:recv var _obj:stdgo.Ref<stdgo._internal.go.types.Types_t_object.T_object> = _obj;
        //"file:///home/runner/.go/go1.21.3/src/go/types/object.go#L155"
        return stdgo._internal.go.types.Types_id.id((@:checkr _obj ?? throw "null pointer dereference")._pkg, (@:checkr _obj ?? throw "null pointer dereference")._name?.__copy__())?.__copy__();
    }
    @:keep
    @:tdfield
    static public function exported( _obj:stdgo.Ref<stdgo._internal.go.types.Types_t_object.T_object>):Bool {
        @:recv var _obj:stdgo.Ref<stdgo._internal.go.types.Types_t_object.T_object> = _obj;
        //"file:///home/runner/.go/go1.21.3/src/go/types/object.go#L152"
        return stdgo._internal.go.types.Types__isexported._isExported((@:checkr _obj ?? throw "null pointer dereference")._name?.__copy__());
    }
    @:keep
    @:tdfield
    static public function type( _obj:stdgo.Ref<stdgo._internal.go.types.Types_t_object.T_object>):stdgo._internal.go.types.Types_type_.Type_ {
        @:recv var _obj:stdgo.Ref<stdgo._internal.go.types.Types_t_object.T_object> = _obj;
        //"file:///home/runner/.go/go1.21.3/src/go/types/object.go#L147"
        return (@:checkr _obj ?? throw "null pointer dereference")._typ;
    }
    @:keep
    @:tdfield
    static public function name( _obj:stdgo.Ref<stdgo._internal.go.types.Types_t_object.T_object>):stdgo.GoString {
        @:recv var _obj:stdgo.Ref<stdgo._internal.go.types.Types_t_object.T_object> = _obj;
        //"file:///home/runner/.go/go1.21.3/src/go/types/object.go#L144"
        return (@:checkr _obj ?? throw "null pointer dereference")._name?.__copy__();
    }
    @:keep
    @:tdfield
    static public function pkg( _obj:stdgo.Ref<stdgo._internal.go.types.Types_t_object.T_object>):stdgo.Ref<stdgo._internal.go.types.Types_package.Package> {
        @:recv var _obj:stdgo.Ref<stdgo._internal.go.types.Types_t_object.T_object> = _obj;
        //"file:///home/runner/.go/go1.21.3/src/go/types/object.go#L141"
        return (@:checkr _obj ?? throw "null pointer dereference")._pkg;
    }
    @:keep
    @:tdfield
    static public function pos( _obj:stdgo.Ref<stdgo._internal.go.types.Types_t_object.T_object>):stdgo._internal.go.token.Token_pos.Pos {
        @:recv var _obj:stdgo.Ref<stdgo._internal.go.types.Types_t_object.T_object> = _obj;
        //"file:///home/runner/.go/go1.21.3/src/go/types/object.go#L137"
        return (@:checkr _obj ?? throw "null pointer dereference")._pos;
    }
    @:keep
    @:tdfield
    static public function parent( _obj:stdgo.Ref<stdgo._internal.go.types.Types_t_object.T_object>):stdgo.Ref<stdgo._internal.go.types.Types_scope.Scope> {
        @:recv var _obj:stdgo.Ref<stdgo._internal.go.types.Types_t_object.T_object> = _obj;
        //"file:///home/runner/.go/go1.21.3/src/go/types/object.go#L134"
        return (@:checkr _obj ?? throw "null pointer dereference")._parent;
    }
}
