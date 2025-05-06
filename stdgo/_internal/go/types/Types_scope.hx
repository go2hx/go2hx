package stdgo._internal.go.types;
@:structInit @:using(stdgo._internal.go.types.Types_scope_static_extension.Scope_static_extension) class Scope {
    public var _parent : stdgo.Ref<stdgo._internal.go.types.Types_scope.Scope> = (null : stdgo.Ref<stdgo._internal.go.types.Types_scope.Scope>);
    public var _children : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_scope.Scope>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_scope.Scope>>);
    public var _number : stdgo.GoInt = 0;
    public var _elems : stdgo.GoMap<stdgo.GoString, stdgo._internal.go.types.Types_object.Object> = (null : stdgo.GoMap<stdgo.GoString, stdgo._internal.go.types.Types_object.Object>);
    public var _pos : stdgo._internal.go.token.Token_pos.Pos = ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token_pos.Pos);
    public var _end : stdgo._internal.go.token.Token_pos.Pos = ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token_pos.Pos);
    public var _comment : stdgo.GoString = "";
    public var _isFunc : Bool = false;
    public function new(?_parent:stdgo.Ref<stdgo._internal.go.types.Types_scope.Scope>, ?_children:stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_scope.Scope>>, ?_number:stdgo.GoInt, ?_elems:stdgo.GoMap<stdgo.GoString, stdgo._internal.go.types.Types_object.Object>, ?_pos:stdgo._internal.go.token.Token_pos.Pos, ?_end:stdgo._internal.go.token.Token_pos.Pos, ?_comment:stdgo.GoString, ?_isFunc:Bool) {
        if (_parent != null) this._parent = _parent;
        if (_children != null) this._children = _children;
        if (_number != null) this._number = _number;
        if (_elems != null) this._elems = _elems;
        if (_pos != null) this._pos = _pos;
        if (_end != null) this._end = _end;
        if (_comment != null) this._comment = _comment;
        if (_isFunc != null) this._isFunc = _isFunc;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Scope(_parent, _children, _number, _elems, _pos, _end, _comment, _isFunc);
    }
}
