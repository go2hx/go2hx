package stdgo._internal.go.ast;
@:keep @:allow(stdgo._internal.go.ast.Ast.T_byPos_asInterface) class T_byPos_static_extension {
    @:keep
    @:tdfield
    static public function swap( _a:stdgo._internal.go.ast.Ast_t_bypos.T_byPos, _i:stdgo.GoInt, _j:stdgo.GoInt):Void {
        @:recv var _a:stdgo._internal.go.ast.Ast_t_bypos.T_byPos = _a;
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
    static public function less( _a:stdgo._internal.go.ast.Ast_t_bypos.T_byPos, _i:stdgo.GoInt, _j:stdgo.GoInt):Bool {
        @:recv var _a:stdgo._internal.go.ast.Ast_t_bypos.T_byPos = _a;
        //"file:///home/runner/.go/go1.21.3/src/go/ast/commentmap.go#L18"
        return (_a[(_i : stdgo.GoInt)].pos() < _a[(_j : stdgo.GoInt)].pos() : Bool);
    }
    @:keep
    @:tdfield
    static public function len( _a:stdgo._internal.go.ast.Ast_t_bypos.T_byPos):stdgo.GoInt {
        @:recv var _a:stdgo._internal.go.ast.Ast_t_bypos.T_byPos = _a;
        //"file:///home/runner/.go/go1.21.3/src/go/ast/commentmap.go#L17"
        return (_a.length);
    }
}
