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
@:keep @:allow(_internal.runtime_test.Runtime_test.Visitor_asInterface) class Visitor_static_extension {
    @:keep
    static public function _print( _v:stdgo.Ref<_internal.runtime_test.Runtime_test_Visitor.Visitor>, _n:stdgo._internal.go.ast.Ast_Node.Node):stdgo.GoString {
        @:recv var _v:stdgo.Ref<_internal.runtime_test.Runtime_test_Visitor.Visitor> = _v;
        var _b:stdgo._internal.strings.Strings_Builder.Builder = ({} : stdgo._internal.strings.Strings_Builder.Builder);
        stdgo._internal.go.printer.Printer_fprint.fprint(stdgo.Go.asInterface((stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.strings.Strings_Builder.Builder>)), _v._fset, stdgo.Go.toInterface(_n));
        return (_b.string() : stdgo.GoString)?.__copy__();
    }
    @:keep
    static public function _checkAddr( _v:stdgo.Ref<_internal.runtime_test.Runtime_test_Visitor.Visitor>, _n:stdgo._internal.go.ast.Ast_Node.Node):Void {
        @:recv var _v:stdgo.Ref<_internal.runtime_test.Runtime_test_Visitor.Visitor> = _v;
        {
            final __type__ = _n;
            if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_IndexExpr.IndexExpr>))) {
                var _n:stdgo.Ref<stdgo._internal.go.ast.Ast_IndexExpr.IndexExpr> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_IndexExpr.IndexExpr>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_IndexExpr.IndexExpr>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_IndexExpr.IndexExpr>) : __type__.__underlying__().value;
                _v._checkAddr(_n.x);
                return;
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_Ident.Ident>))) {
                var _n:stdgo.Ref<stdgo._internal.go.ast.Ast_Ident.Ident> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_Ident.Ident>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_Ident.Ident>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_Ident.Ident>) : __type__.__underlying__().value;
                var _key = ((("var " : stdgo.GoString) + _v._print(stdgo.Go.asInterface(_n))?.__copy__() : stdgo.GoString)?.__copy__() : stdgo.GoString);
                if (!(_v._checked[_key] ?? false)) {
                    _v._t.errorf(("unchecked variable %s %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_v._fset.position(_n.pos()))), stdgo.Go.toInterface(_key));
                };
                return;
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_SelectorExpr.SelectorExpr>))) {
                var _n:stdgo.Ref<stdgo._internal.go.ast.Ast_SelectorExpr.SelectorExpr> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_SelectorExpr.SelectorExpr>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_SelectorExpr.SelectorExpr>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_SelectorExpr.SelectorExpr>) : __type__.__underlying__().value;
                var _t = ((_v._types[_n.x] ?? ({} : stdgo._internal.go.types.Types_TypeAndValue.TypeAndValue)).type : stdgo._internal.go.types.Types_Type_.Type_);
                if (_t == null) {
                    return;
                };
                {
                    var __tmp__ = try {
                        { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_t) : stdgo.Ref<stdgo._internal.go.types.Types_Pointer_.Pointer_>)) : stdgo.Ref<stdgo._internal.go.types.Types_Pointer_.Pointer_>), _1 : true };
                    } catch(_) {
                        { _0 : (null : stdgo.Ref<stdgo._internal.go.types.Types_Pointer_.Pointer_>), _1 : false };
                    }, _p = __tmp__._0, _ok = __tmp__._1;
                    if (_ok) {
                        _t = _p.elem();
                    } else {
                        _v._checkAddr(_n.x);
                    };
                };
                if (stdgo.Go.toInterface(_t.underlying()) == (stdgo.Go.toInterface(_t))) {
                    _v._t.errorf(("analysis can\'t handle unnamed type %s %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_v._fset.position(_n.pos()))), stdgo.Go.toInterface(_t));
                };
                var _key = ((((("field " : stdgo.GoString) + (_t.string() : stdgo.GoString)?.__copy__() : stdgo.GoString) + ("." : stdgo.GoString)?.__copy__() : stdgo.GoString) + _n.sel.name?.__copy__() : stdgo.GoString)?.__copy__() : stdgo.GoString);
                if (!(_v._checked[_key] ?? false)) {
                    _v._t.errorf(("unchecked field %s %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_v._fset.position(_n.pos()))), stdgo.Go.toInterface(_key));
                };
            } else {
                var _n:stdgo._internal.go.ast.Ast_Node.Node = __type__ == null ? (null : stdgo._internal.go.ast.Ast_Node.Node) : cast __type__;
                _v._t.errorf(("unchecked atomic address %s %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_v._fset.position(_n.pos()))), stdgo.Go.toInterface(_v._print(_n)));
            };
        };
    }
    @:keep
    static public function visit( _v:stdgo.Ref<_internal.runtime_test.Runtime_test_Visitor.Visitor>, _n:stdgo._internal.go.ast.Ast_Node.Node):stdgo._internal.go.ast.Ast_Visitor.Visitor {
        @:recv var _v:stdgo.Ref<_internal.runtime_test.Runtime_test_Visitor.Visitor> = _v;
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_n) : stdgo.Ref<stdgo._internal.go.ast.Ast_CallExpr.CallExpr>)) : stdgo.Ref<stdgo._internal.go.ast.Ast_CallExpr.CallExpr>), _1 : true };
        } catch(_) {
            { _0 : (null : stdgo.Ref<stdgo._internal.go.ast.Ast_CallExpr.CallExpr>), _1 : false };
        }, _c = __tmp__._0, _ok = __tmp__._1;
        if (!_ok) {
            return stdgo.Go.asInterface(_v);
        };
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_c.fun) : stdgo.Ref<stdgo._internal.go.ast.Ast_SelectorExpr.SelectorExpr>)) : stdgo.Ref<stdgo._internal.go.ast.Ast_SelectorExpr.SelectorExpr>), _1 : true };
        } catch(_) {
            { _0 : (null : stdgo.Ref<stdgo._internal.go.ast.Ast_SelectorExpr.SelectorExpr>), _1 : false };
        }, _f = __tmp__._0, _ok = __tmp__._1;
        if (!_ok) {
            return stdgo.Go.asInterface(_v);
        };
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_f.x) : stdgo.Ref<stdgo._internal.go.ast.Ast_Ident.Ident>)) : stdgo.Ref<stdgo._internal.go.ast.Ast_Ident.Ident>), _1 : true };
        } catch(_) {
            { _0 : (null : stdgo.Ref<stdgo._internal.go.ast.Ast_Ident.Ident>), _1 : false };
        }, _p = __tmp__._0, _ok = __tmp__._1;
        if (!_ok) {
            return stdgo.Go.asInterface(_v);
        };
        if (_p.name != (("atomic" : stdgo.GoString))) {
            return stdgo.Go.asInterface(_v);
        };
        if (!stdgo._internal.strings.Strings_hasSuffix.hasSuffix(_f.sel.name?.__copy__(), ("64" : stdgo.GoString))) {
            return stdgo.Go.asInterface(_v);
        };
        var _a = (_c.args[(0 : stdgo.GoInt)] : stdgo._internal.go.ast.Ast_Expr.Expr);
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_a) : stdgo.Ref<stdgo._internal.go.ast.Ast_UnaryExpr.UnaryExpr>)) : stdgo.Ref<stdgo._internal.go.ast.Ast_UnaryExpr.UnaryExpr>), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo.Ref<stdgo._internal.go.ast.Ast_UnaryExpr.UnaryExpr>), _1 : false };
            }, _u = __tmp__._0, _ok = __tmp__._1;
            if ((_ok && (_u.op == (17 : stdgo._internal.go.token.Token_Token.Token)) : Bool)) {
                _v._checkAddr(_u.x);
                return stdgo.Go.asInterface(_v);
            };
        };
        _v._t.logf(("unchecked atomic operation %s %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_v._fset.position(_n.pos()))), stdgo.Go.toInterface(_v._print(_n)));
        return stdgo.Go.asInterface(_v);
    }
}
