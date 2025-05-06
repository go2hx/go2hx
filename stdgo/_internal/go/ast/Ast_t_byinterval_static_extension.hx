package stdgo._internal.go.ast;
@:keep @:allow(stdgo._internal.go.ast.Ast.T_byInterval_asInterface) class T_byInterval_static_extension {
    @:keep
    @:tdfield
    static public function swap( _a:stdgo._internal.go.ast.Ast_t_byinterval.T_byInterval, _i:stdgo.GoInt, _j:stdgo.GoInt):Void {
        @:recv var _a:stdgo._internal.go.ast.Ast_t_byinterval.T_byInterval = _a;
        {
            final __tmp__0 = _a[(_j : stdgo.GoInt)];
            final __tmp__1 = _a[(_i : stdgo.GoInt)];
            final __tmp__2 = _a;
            final __tmp__3 = (_i : stdgo.GoInt);
            final __tmp__4 = _a;
            final __tmp__5 = (_j : stdgo.GoInt);
            __tmp__2[__tmp__3] = @:binopAssign __tmp__0;
            __tmp__4[__tmp__5] = @:binopAssign __tmp__1;
        };
    }
    @:keep
    @:tdfield
    static public function less( _a:stdgo._internal.go.ast.Ast_t_byinterval.T_byInterval, _i:stdgo.GoInt, _j:stdgo.GoInt):Bool {
        @:recv var _a:stdgo._internal.go.ast.Ast_t_byinterval.T_byInterval = _a;
        var __0 = (_a[(_i : stdgo.GoInt)].pos() : stdgo._internal.go.token.Token_pos.Pos), __1 = (_a[(_j : stdgo.GoInt)].pos() : stdgo._internal.go.token.Token_pos.Pos);
var _pj = __1, _pi = __0;
        //"file:///home/runner/.go/go1.21.3/src/go/ast/commentmap.go#L51"
        return ((_pi < _pj : Bool) || (_pi == (_pj) && (_a[(_i : stdgo.GoInt)].end() > _a[(_j : stdgo.GoInt)].end() : Bool) : Bool) : Bool);
    }
    @:keep
    @:tdfield
    static public function len( _a:stdgo._internal.go.ast.Ast_t_byinterval.T_byInterval):stdgo.GoInt {
        @:recv var _a:stdgo._internal.go.ast.Ast_t_byinterval.T_byInterval = _a;
        //"file:///home/runner/.go/go1.21.3/src/go/ast/commentmap.go#L48"
        return (_a.length);
    }
}
