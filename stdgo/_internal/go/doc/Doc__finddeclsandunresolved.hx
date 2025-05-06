package stdgo._internal.go.doc;
function _findDeclsAndUnresolved(_body:stdgo._internal.go.ast.Ast_node.Node, _topDecls:stdgo.GoMap<stdgo.Ref<stdgo._internal.go.ast.Ast_object.Object>, stdgo._internal.go.ast.Ast_decl.Decl>, _typMethods:stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo._internal.go.ast.Ast_decl.Decl>>):{ var _0 : stdgo.Slice<stdgo._internal.go.ast.Ast_decl.Decl>; var _1 : stdgo.GoMap<stdgo.GoString, Bool>; } {
        var _unresolved = (({
            final x = new stdgo.GoMap.GoStringMap<Bool>();
            x.__defaultValue__ = () -> false;
            {};
            x;
        } : stdgo.GoMap<stdgo.GoString, Bool>) : stdgo.GoMap<stdgo.GoString, Bool>);
        var _depDecls:stdgo.Slice<stdgo._internal.go.ast.Ast_decl.Decl> = (null : stdgo.Slice<stdgo._internal.go.ast.Ast_decl.Decl>);
        var _usedDecls = (({
            final x = new stdgo.GoMap.GoObjectMap<stdgo._internal.go.ast.Ast_decl.Decl, Bool>();
            x.t = new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.go.ast.Ast_decl.Decl", [], stdgo._internal.internal.reflect.Reflect.GoType.interfaceType(false, []), false, { get : () -> null }));
            x.__defaultValue__ = () -> false;
            {};
            cast x;
        } : stdgo.GoMap<stdgo._internal.go.ast.Ast_decl.Decl, Bool>) : stdgo.GoMap<stdgo._internal.go.ast.Ast_decl.Decl, Bool>);
        var _usedObjs = ({
            final x = new stdgo.GoMap.GoRefMap<stdgo.Ref<stdgo._internal.go.ast.Ast_object.Object>, Bool>();
            {};
            cast x;
        } : stdgo.GoMap<stdgo.Ref<stdgo._internal.go.ast.Ast_object.Object>, Bool>);
        var _inspectFunc:stdgo._internal.go.ast.Ast_node.Node -> Bool = null;
        _inspectFunc = function(_n:stdgo._internal.go.ast.Ast_node.Node):Bool {
            //"file:///home/runner/.go/go1.21.3/src/go/doc/example.go#L347"
            {
                final __type__ = _n;
                if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>))) {
                    var _e:stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>) : __type__.__underlying__().value);
                    //"file:///home/runner/.go/go1.21.3/src/go/doc/example.go#L349"
                    if ((({
                        final value = (@:checkr _e ?? throw "null pointer dereference").obj;
                        (value == null || (value : Dynamic).__nil__);
                    }) && ((@:checkr _e ?? throw "null pointer dereference").name != ("_" : stdgo.GoString)) : Bool)) {
                        _unresolved[(@:checkr _e ?? throw "null pointer dereference").name] = true;
                    } else {
                        var _d = (_topDecls[(@:checkr _e ?? throw "null pointer dereference").obj] ?? (null : stdgo._internal.go.ast.Ast_decl.Decl) : stdgo._internal.go.ast.Ast_decl.Decl);
                        if (_d != null) {
                            _usedObjs[(@:checkr _e ?? throw "null pointer dereference").obj] = true;
                            //"file:///home/runner/.go/go1.21.3/src/go/doc/example.go#L354"
                            if (!(_usedDecls[_d] ?? false)) {
                                _usedDecls[_d] = true;
                                _depDecls = (_depDecls.__append__(_d) : stdgo.Slice<stdgo._internal.go.ast.Ast_decl.Decl>);
                            };
                        };
                    };
                    //"file:///home/runner/.go/go1.21.3/src/go/doc/example.go#L359"
                    return true;
                } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_selectorexpr.SelectorExpr>))) {
                    var _e:stdgo.Ref<stdgo._internal.go.ast.Ast_selectorexpr.SelectorExpr> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_selectorexpr.SelectorExpr>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_selectorexpr.SelectorExpr>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_selectorexpr.SelectorExpr>) : __type__.__underlying__().value);
                    //"file:///home/runner/.go/go1.21.3/src/go/doc/example.go#L364"
                    stdgo._internal.go.ast.Ast_inspect.inspect((@:checkr _e ?? throw "null pointer dereference").x, _inspectFunc);
                    //"file:///home/runner/.go/go1.21.3/src/go/doc/example.go#L365"
                    return false;
                } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_keyvalueexpr.KeyValueExpr>))) {
                    var _e:stdgo.Ref<stdgo._internal.go.ast.Ast_keyvalueexpr.KeyValueExpr> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_keyvalueexpr.KeyValueExpr>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_keyvalueexpr.KeyValueExpr>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_keyvalueexpr.KeyValueExpr>) : __type__.__underlying__().value);
                    //"file:///home/runner/.go/go1.21.3/src/go/doc/example.go#L370"
                    stdgo._internal.go.ast.Ast_inspect.inspect((@:checkr _e ?? throw "null pointer dereference").value, _inspectFunc);
                    //"file:///home/runner/.go/go1.21.3/src/go/doc/example.go#L371"
                    return false;
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/go/doc/example.go#L373"
            return true;
        };
        var _inspectFieldList = function(_fl:stdgo.Ref<stdgo._internal.go.ast.Ast_fieldlist.FieldList>):Void {
            //"file:///home/runner/.go/go1.21.3/src/go/doc/example.go#L377"
            if (({
                final value = _fl;
                (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
            })) {
                //"file:///home/runner/.go/go1.21.3/src/go/doc/example.go#L378"
                for (__0 => _f in (@:checkr _fl ?? throw "null pointer dereference").list) {
                    //"file:///home/runner/.go/go1.21.3/src/go/doc/example.go#L379"
                    stdgo._internal.go.ast.Ast_inspect.inspect((@:checkr _f ?? throw "null pointer dereference").type, _inspectFunc);
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/doc/example.go#L385"
        stdgo._internal.go.ast.Ast_inspect.inspect(_body, _inspectFunc);
        //"file:///home/runner/.go/go1.21.3/src/go/doc/example.go#L388"
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (_depDecls.length) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/go/doc/example.go#L389"
                {
                    final __type__ = _depDecls[(_i : stdgo.GoInt)];
                    if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_funcdecl.FuncDecl>))) {
                        var _d:stdgo.Ref<stdgo._internal.go.ast.Ast_funcdecl.FuncDecl> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_funcdecl.FuncDecl>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_funcdecl.FuncDecl>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_funcdecl.FuncDecl>) : __type__.__underlying__().value);
                        //"file:///home/runner/.go/go1.21.3/src/go/doc/example.go#L392"
                        _inspectFieldList((@:checkr (@:checkr _d ?? throw "null pointer dereference").type ?? throw "null pointer dereference").typeParams);
                        //"file:///home/runner/.go/go1.21.3/src/go/doc/example.go#L394"
                        _inspectFieldList((@:checkr (@:checkr _d ?? throw "null pointer dereference").type ?? throw "null pointer dereference").params);
                        //"file:///home/runner/.go/go1.21.3/src/go/doc/example.go#L395"
                        _inspectFieldList((@:checkr (@:checkr _d ?? throw "null pointer dereference").type ?? throw "null pointer dereference").results);
                        //"file:///home/runner/.go/go1.21.3/src/go/doc/example.go#L398"
                        if (({
                            final value = (@:checkr _d ?? throw "null pointer dereference").body;
                            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                        })) {
                            //"file:///home/runner/.go/go1.21.3/src/go/doc/example.go#L399"
                            stdgo._internal.go.ast.Ast_inspect.inspect(stdgo.Go.asInterface((@:checkr _d ?? throw "null pointer dereference").body), _inspectFunc);
                        };
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_gendecl.GenDecl>))) {
                        var _d:stdgo.Ref<stdgo._internal.go.ast.Ast_gendecl.GenDecl> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_gendecl.GenDecl>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_gendecl.GenDecl>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_gendecl.GenDecl>) : __type__.__underlying__().value);
                        //"file:///home/runner/.go/go1.21.3/src/go/doc/example.go#L402"
                        for (__0 => _spec in (@:checkr _d ?? throw "null pointer dereference").specs) {
                            //"file:///home/runner/.go/go1.21.3/src/go/doc/example.go#L403"
                            {
                                final __type__ = _spec;
                                if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_typespec.TypeSpec>))) {
                                    var _s:stdgo.Ref<stdgo._internal.go.ast.Ast_typespec.TypeSpec> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_typespec.TypeSpec>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_typespec.TypeSpec>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_typespec.TypeSpec>) : __type__.__underlying__().value);
                                    //"file:///home/runner/.go/go1.21.3/src/go/doc/example.go#L405"
                                    _inspectFieldList((@:checkr _s ?? throw "null pointer dereference").typeParams);
                                    //"file:///home/runner/.go/go1.21.3/src/go/doc/example.go#L406"
                                    stdgo._internal.go.ast.Ast_inspect.inspect((@:checkr _s ?? throw "null pointer dereference").type, _inspectFunc);
                                    _depDecls = (_depDecls.__append__(...(_typMethods[(@:checkr (@:checkr _s ?? throw "null pointer dereference").name ?? throw "null pointer dereference").name] ?? (null : stdgo.Slice<stdgo._internal.go.ast.Ast_decl.Decl>) : Array<stdgo._internal.go.ast.Ast_decl.Decl>)) : stdgo.Slice<stdgo._internal.go.ast.Ast_decl.Decl>);
                                } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_valuespec.ValueSpec>))) {
                                    var _s:stdgo.Ref<stdgo._internal.go.ast.Ast_valuespec.ValueSpec> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_valuespec.ValueSpec>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_valuespec.ValueSpec>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_valuespec.ValueSpec>) : __type__.__underlying__().value);
                                    //"file:///home/runner/.go/go1.21.3/src/go/doc/example.go#L409"
                                    if ((@:checkr _s ?? throw "null pointer dereference").type != null) {
                                        //"file:///home/runner/.go/go1.21.3/src/go/doc/example.go#L410"
                                        stdgo._internal.go.ast.Ast_inspect.inspect((@:checkr _s ?? throw "null pointer dereference").type, _inspectFunc);
                                    };
                                    //"file:///home/runner/.go/go1.21.3/src/go/doc/example.go#L412"
                                    for (__1 => _val in (@:checkr _s ?? throw "null pointer dereference").values) {
                                        //"file:///home/runner/.go/go1.21.3/src/go/doc/example.go#L413"
                                        stdgo._internal.go.ast.Ast_inspect.inspect(_val, _inspectFunc);
                                    };
                                };
                            };
                        };
                    };
                };
                _i++;
            };
        };
        var _ds:stdgo.Slice<stdgo._internal.go.ast.Ast_decl.Decl> = (null : stdgo.Slice<stdgo._internal.go.ast.Ast_decl.Decl>);
        //"file:///home/runner/.go/go1.21.3/src/go/doc/example.go#L429"
        for (__0 => _d in _depDecls) {
            //"file:///home/runner/.go/go1.21.3/src/go/doc/example.go#L430"
            {
                final __type__ = _d;
                if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_funcdecl.FuncDecl>))) {
                    var _d:stdgo.Ref<stdgo._internal.go.ast.Ast_funcdecl.FuncDecl> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_funcdecl.FuncDecl>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_funcdecl.FuncDecl>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_funcdecl.FuncDecl>) : __type__.__underlying__().value);
                    _ds = (_ds.__append__(stdgo.Go.asInterface(_d)) : stdgo.Slice<stdgo._internal.go.ast.Ast_decl.Decl>);
                } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_gendecl.GenDecl>))) {
                    var _d:stdgo.Ref<stdgo._internal.go.ast.Ast_gendecl.GenDecl> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_gendecl.GenDecl>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_gendecl.GenDecl>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_gendecl.GenDecl>) : __type__.__underlying__().value);
                    var _containsIota = (false : Bool);
                    var _specs:stdgo.Slice<stdgo._internal.go.ast.Ast_spec.Spec> = (null : stdgo.Slice<stdgo._internal.go.ast.Ast_spec.Spec>);
                    //"file:///home/runner/.go/go1.21.3/src/go/doc/example.go#L437"
                    for (__1 => _s in (@:checkr _d ?? throw "null pointer dereference").specs) {
                        //"file:///home/runner/.go/go1.21.3/src/go/doc/example.go#L438"
                        {
                            final __type__ = _s;
                            if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_typespec.TypeSpec>))) {
                                var _s:stdgo.Ref<stdgo._internal.go.ast.Ast_typespec.TypeSpec> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_typespec.TypeSpec>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_typespec.TypeSpec>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_typespec.TypeSpec>) : __type__.__underlying__().value);
                                //"file:///home/runner/.go/go1.21.3/src/go/doc/example.go#L440"
                                if ((_usedObjs[(@:checkr (@:checkr _s ?? throw "null pointer dereference").name ?? throw "null pointer dereference").obj] ?? false)) {
                                    _specs = (_specs.__append__(stdgo.Go.asInterface(_s)) : stdgo.Slice<stdgo._internal.go.ast.Ast_spec.Spec>);
                                };
                            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_valuespec.ValueSpec>))) {
                                var _s:stdgo.Ref<stdgo._internal.go.ast.Ast_valuespec.ValueSpec> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_valuespec.ValueSpec>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_valuespec.ValueSpec>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_valuespec.ValueSpec>) : __type__.__underlying__().value);
                                //"file:///home/runner/.go/go1.21.3/src/go/doc/example.go#L444"
                                if (!_containsIota) {
                                    _containsIota = stdgo._internal.go.doc.Doc__hasiota._hasIota(stdgo.Go.asInterface(_s));
                                };
                                //"file:///home/runner/.go/go1.21.3/src/go/doc/example.go#L452"
                                if (((((@:checkr _s ?? throw "null pointer dereference").names.length) > (1 : stdgo.GoInt) : Bool) && ((@:checkr _s ?? throw "null pointer dereference").values.length == (1 : stdgo.GoInt)) : Bool)) {
                                    _specs = (_specs.__append__(stdgo.Go.asInterface(_s)) : stdgo.Slice<stdgo._internal.go.ast.Ast_spec.Spec>);
                                    //"file:///home/runner/.go/go1.21.3/src/go/doc/example.go#L454"
                                    continue;
                                };
                                var _ns = ((_s : stdgo._internal.go.ast.Ast_valuespec.ValueSpec)?.__copy__() : stdgo._internal.go.ast.Ast_valuespec.ValueSpec);
                                _ns.names = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>>);
                                _ns.values = (null : stdgo.Slice<stdgo._internal.go.ast.Ast_expr.Expr>);
                                //"file:///home/runner/.go/go1.21.3/src/go/doc/example.go#L459"
                                for (_i => _n in (@:checkr _s ?? throw "null pointer dereference").names) {
                                    //"file:///home/runner/.go/go1.21.3/src/go/doc/example.go#L460"
                                    if ((_usedObjs[(@:checkr _n ?? throw "null pointer dereference").obj] ?? false)) {
                                        _ns.names = (_ns.names.__append__(_n) : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>>);
                                        //"file:///home/runner/.go/go1.21.3/src/go/doc/example.go#L462"
                                        if ((@:checkr _s ?? throw "null pointer dereference").values != null) {
                                            _ns.values = (_ns.values.__append__((@:checkr _s ?? throw "null pointer dereference").values[(_i : stdgo.GoInt)]) : stdgo.Slice<stdgo._internal.go.ast.Ast_expr.Expr>);
                                        };
                                    };
                                };
                                //"file:///home/runner/.go/go1.21.3/src/go/doc/example.go#L467"
                                if (((_ns.names.length) > (0 : stdgo.GoInt) : Bool)) {
                                    _specs = (_specs.__append__(stdgo.Go.asInterface((stdgo.Go.setRef(_ns) : stdgo.Ref<stdgo._internal.go.ast.Ast_valuespec.ValueSpec>))) : stdgo.Slice<stdgo._internal.go.ast.Ast_spec.Spec>);
                                };
                            };
                        };
                    };
                    //"file:///home/runner/.go/go1.21.3/src/go/doc/example.go#L472"
                    if (((_specs.length) > (0 : stdgo.GoInt) : Bool)) {
                        //"file:///home/runner/.go/go1.21.3/src/go/doc/example.go#L474"
                        if ((((@:checkr _d ?? throw "null pointer dereference").tok == (64 : stdgo._internal.go.token.Token_token.Token)) && _containsIota : Bool)) {
                            _ds = (_ds.__append__(stdgo.Go.asInterface(_d)) : stdgo.Slice<stdgo._internal.go.ast.Ast_decl.Decl>);
                        } else {
                            var _nd = ((_d : stdgo._internal.go.ast.Ast_gendecl.GenDecl)?.__copy__() : stdgo._internal.go.ast.Ast_gendecl.GenDecl);
                            _nd.specs = _specs;
                            //"file:///home/runner/.go/go1.21.3/src/go/doc/example.go#L480"
                            if ((_specs.length) == ((1 : stdgo.GoInt))) {
                                _nd.lparen = (0 : stdgo._internal.go.token.Token_pos.Pos);
                            };
                            _ds = (_ds.__append__(stdgo.Go.asInterface((stdgo.Go.setRef(_nd) : stdgo.Ref<stdgo._internal.go.ast.Ast_gendecl.GenDecl>))) : stdgo.Slice<stdgo._internal.go.ast.Ast_decl.Decl>);
                        };
                    };
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/doc/example.go#L489"
        return { _0 : _ds, _1 : _unresolved };
    }
