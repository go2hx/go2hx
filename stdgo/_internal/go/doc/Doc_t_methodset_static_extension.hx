package stdgo._internal.go.doc;
@:keep @:allow(stdgo._internal.go.doc.Doc.T_methodSet_asInterface) class T_methodSet_static_extension {
    @:keep
    @:tdfield
    static public function _add( _mset:stdgo._internal.go.doc.Doc_t_methodset.T_methodSet, _m:stdgo.Ref<stdgo._internal.go.doc.Doc_func.Func>):Void {
        @:recv var _mset:stdgo._internal.go.doc.Doc_t_methodset.T_methodSet = _mset;
        var _old = (_mset[(@:checkr _m ?? throw "null pointer dereference").name] ?? (null : stdgo.Ref<stdgo._internal.go.doc.Doc_func.Func>));
        //"file:///home/runner/.go/go1.21.3/src/go/doc/reader.go#L106"
        if ((({
            final value = _old;
            (value == null || (value : Dynamic).__nil__);
        }) || ((@:checkr _m ?? throw "null pointer dereference").level < (@:checkr _old ?? throw "null pointer dereference").level : Bool) : Bool)) {
            _mset[(@:checkr _m ?? throw "null pointer dereference").name] = _m;
            //"file:///home/runner/.go/go1.21.3/src/go/doc/reader.go#L108"
            return;
        };
        //"file:///home/runner/.go/go1.21.3/src/go/doc/reader.go#L110"
        if ((@:checkr _m ?? throw "null pointer dereference").level == ((@:checkr _old ?? throw "null pointer dereference").level)) {
            _mset[(@:checkr _m ?? throw "null pointer dereference").name] = (stdgo.Go.setRef(({ name : (@:checkr _m ?? throw "null pointer dereference").name?.__copy__(), level : (@:checkr _m ?? throw "null pointer dereference").level } : stdgo._internal.go.doc.Doc_func.Func)) : stdgo.Ref<stdgo._internal.go.doc.Doc_func.Func>);
        };
    }
    @:keep
    @:tdfield
    static public function _set( _mset:stdgo._internal.go.doc.Doc_t_methodset.T_methodSet, _f:stdgo.Ref<stdgo._internal.go.ast.Ast_funcdecl.FuncDecl>, _preserveAST:Bool):Void {
        @:recv var _mset:stdgo._internal.go.doc.Doc_t_methodset.T_methodSet = _mset;
        var _name = ((@:checkr (@:checkr _f ?? throw "null pointer dereference").name ?? throw "null pointer dereference").name?.__copy__() : stdgo.GoString);
        //"file:///home/runner/.go/go1.21.3/src/go/doc/reader.go#L71"
        {
            var _g = (_mset[_name] ?? (null : stdgo.Ref<stdgo._internal.go.doc.Doc_func.Func>));
            if ((({
                final value = _g;
                (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
            }) && ((@:checkr _g ?? throw "null pointer dereference").doc != (stdgo.Go.str() : stdgo.GoString)) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/go/doc/reader.go#L77"
                return;
            };
        };
        var _recv = ((stdgo.Go.str() : stdgo.GoString)?.__copy__() : stdgo.GoString);
        //"file:///home/runner/.go/go1.21.3/src/go/doc/reader.go#L81"
        if (({
            final value = (@:checkr _f ?? throw "null pointer dereference").recv;
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        })) {
            var _typ:stdgo._internal.go.ast.Ast_expr.Expr = (null : stdgo._internal.go.ast.Ast_expr.Expr);
            //"file:///home/runner/.go/go1.21.3/src/go/doc/reader.go#L84"
            {
                var _list = (@:checkr (@:checkr _f ?? throw "null pointer dereference").recv ?? throw "null pointer dereference").list;
                if ((_list.length) == ((1 : stdgo.GoInt))) {
                    _typ = (@:checkr _list[(0 : stdgo.GoInt)] ?? throw "null pointer dereference").type;
                };
            };
            _recv = stdgo._internal.go.doc.Doc__recvstring._recvString(_typ)?.__copy__();
        };
        _mset[_name] = (stdgo.Go.setRef(({ doc : (@:checkr _f ?? throw "null pointer dereference").doc.text()?.__copy__(), name : _name?.__copy__(), decl : _f, recv : _recv?.__copy__(), orig : _recv?.__copy__() } : stdgo._internal.go.doc.Doc_func.Func)) : stdgo.Ref<stdgo._internal.go.doc.Doc_func.Func>);
        //"file:///home/runner/.go/go1.21.3/src/go/doc/reader.go#L96"
        if (!_preserveAST) {
            (@:checkr _f ?? throw "null pointer dereference").doc = null;
        };
    }
}
