package _internal.runtime_test;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.unsafe.Unsafe;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.unsafe.Unsafe;
import stdgo._internal.unsafe.Unsafe;
@:structInit @:using(_internal.runtime_test.Runtime_test_Visitor_static_extension.Visitor_static_extension) class Visitor {
    public var _fset : stdgo.Ref<stdgo._internal.go.token.Token_FileSet.FileSet> = (null : stdgo.Ref<stdgo._internal.go.token.Token_FileSet.FileSet>);
    public var _types : stdgo.GoMap<stdgo._internal.go.ast.Ast_Expr.Expr, stdgo._internal.go.types.Types_TypeAndValue.TypeAndValue> = (null : stdgo.GoMap<stdgo._internal.go.ast.Ast_Expr.Expr, stdgo._internal.go.types.Types_TypeAndValue.TypeAndValue>);
    public var _checked : stdgo.GoMap<stdgo.GoString, Bool> = (null : stdgo.GoMap<stdgo.GoString, Bool>);
    public var _t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_> = (null : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
    public function new(?_fset:stdgo.Ref<stdgo._internal.go.token.Token_FileSet.FileSet>, ?_types:stdgo.GoMap<stdgo._internal.go.ast.Ast_Expr.Expr, stdgo._internal.go.types.Types_TypeAndValue.TypeAndValue>, ?_checked:stdgo.GoMap<stdgo.GoString, Bool>, ?_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>) {
        if (_fset != null) this._fset = _fset;
        if (_types != null) this._types = _types;
        if (_checked != null) this._checked = _checked;
        if (_t != null) this._t = _t;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Visitor(_fset, _types, _checked, _t);
    }
}
