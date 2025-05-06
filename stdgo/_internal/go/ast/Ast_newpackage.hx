package stdgo._internal.go.ast;
function newPackage(_fset:stdgo.Ref<stdgo._internal.go.token.Token_fileset.FileSet>, _files:stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.go.ast.Ast_file.File>>, _importer:stdgo._internal.go.ast.Ast_importer.Importer, _universe:stdgo.Ref<stdgo._internal.go.ast.Ast_scope.Scope>):{ var _0 : stdgo.Ref<stdgo._internal.go.ast.Ast_package.Package>; var _1 : stdgo.Error; } {
        var _p:stdgo._internal.go.ast.Ast_t_pkgbuilder.T_pkgBuilder = ({} : stdgo._internal.go.ast.Ast_t_pkgbuilder.T_pkgBuilder);
        _p._fset = _fset;
        var _pkgName = ((stdgo.Go.str() : stdgo.GoString)?.__copy__() : stdgo.GoString);
        var _pkgScope = stdgo._internal.go.ast.Ast_newscope.newScope(_universe);
        //"file:///home/runner/.go/go1.21.3/src/go/ast/resolve.go#L80"
        for (__8 => _file in _files) {
            //"file:///home/runner/.go/go1.21.3/src/go/ast/resolve.go#L82"
            {
                var _name = ((@:checkr (@:checkr _file ?? throw "null pointer dereference").name ?? throw "null pointer dereference").name?.__copy__() : stdgo.GoString);
                if (_pkgName == ((stdgo.Go.str() : stdgo.GoString))) {
                    _pkgName = _name?.__copy__();
                } else if (_name != (_pkgName)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/ast/resolve.go#L86"
                    _p._errorf((@:checkr _file ?? throw "null pointer dereference").package_, ("package %s; expected %s" : stdgo.GoString), stdgo.Go.toInterface(_name), stdgo.Go.toInterface(_pkgName));
                    //"file:///home/runner/.go/go1.21.3/src/go/ast/resolve.go#L87"
                    continue;
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/go/ast/resolve.go#L91"
            for (__9 => _obj in (@:checkr (@:checkr _file ?? throw "null pointer dereference").scope ?? throw "null pointer dereference").objects) {
                //"file:///home/runner/.go/go1.21.3/src/go/ast/resolve.go#L92"
                _p._declare(_pkgScope, null, _obj);
            };
        };
        var _imports = (({
            final x = new stdgo.GoMap.GoStringMap<stdgo.Ref<stdgo._internal.go.ast.Ast_object.Object>>();
            x.__defaultValue__ = () -> (null : stdgo.Ref<stdgo._internal.go.ast.Ast_object.Object>);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.go.ast.Ast_object.Object>>) : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.go.ast.Ast_object.Object>>);
        //"file:///home/runner/.go/go1.21.3/src/go/ast/resolve.go#L100"
        for (__9 => _file in _files) {
            //"file:///home/runner/.go/go1.21.3/src/go/ast/resolve.go#L103"
            if ((@:checkr (@:checkr _file ?? throw "null pointer dereference").name ?? throw "null pointer dereference").name != (_pkgName)) {
                //"file:///home/runner/.go/go1.21.3/src/go/ast/resolve.go#L104"
                continue;
            };
            var _importErrors = (false : Bool);
            var _fileScope = stdgo._internal.go.ast.Ast_newscope.newScope(_pkgScope);
            //"file:///home/runner/.go/go1.21.3/src/go/ast/resolve.go#L110"
            for (__10 => _spec in (@:checkr _file ?? throw "null pointer dereference").imports) {
                //"file:///home/runner/.go/go1.21.3/src/go/ast/resolve.go#L111"
                if (_importer == null) {
                    _importErrors = true;
                    //"file:///home/runner/.go/go1.21.3/src/go/ast/resolve.go#L113"
                    continue;
                };
                var __tmp__ = stdgo._internal.strconv.Strconv_unquote.unquote((@:checkr (@:checkr _spec ?? throw "null pointer dereference").path ?? throw "null pointer dereference").value?.__copy__()), _path:stdgo.GoString = __tmp__._0, __11:stdgo.Error = __tmp__._1;
                var __tmp__ = _importer(_imports, _path?.__copy__()), _pkg:stdgo.Ref<stdgo._internal.go.ast.Ast_object.Object> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                //"file:///home/runner/.go/go1.21.3/src/go/ast/resolve.go#L117"
                if (_err != null) {
                    //"file:///home/runner/.go/go1.21.3/src/go/ast/resolve.go#L118"
                    _p._errorf((@:checkr _spec ?? throw "null pointer dereference").path.pos(), ("could not import %s (%s)" : stdgo.GoString), stdgo.Go.toInterface(_path), stdgo.Go.toInterface(_err));
                    _importErrors = true;
                    //"file:///home/runner/.go/go1.21.3/src/go/ast/resolve.go#L120"
                    continue;
                };
                var _name = ((@:checkr _pkg ?? throw "null pointer dereference").name?.__copy__() : stdgo.GoString);
                //"file:///home/runner/.go/go1.21.3/src/go/ast/resolve.go#L128"
                if (({
                    final value = (@:checkr _spec ?? throw "null pointer dereference").name;
                    (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                })) {
                    _name = (@:checkr (@:checkr _spec ?? throw "null pointer dereference").name ?? throw "null pointer dereference").name?.__copy__();
                };
                //"file:///home/runner/.go/go1.21.3/src/go/ast/resolve.go#L133"
                if (_name == (("." : stdgo.GoString))) {
                    //"file:///home/runner/.go/go1.21.3/src/go/ast/resolve.go#L135"
                    for (__12 => _obj in (@:checkr (stdgo.Go.typeAssert(((@:checkr _pkg ?? throw "null pointer dereference").data : stdgo.Ref<stdgo._internal.go.ast.Ast_scope.Scope>)) : stdgo.Ref<stdgo._internal.go.ast.Ast_scope.Scope>) ?? throw "null pointer dereference").objects) {
                        //"file:///home/runner/.go/go1.21.3/src/go/ast/resolve.go#L136"
                        _p._declare(_fileScope, _pkgScope, _obj);
                    };
                } else if (_name != (("_" : stdgo.GoString))) {
                    var _obj = stdgo._internal.go.ast.Ast_newobj.newObj((1 : stdgo._internal.go.ast.Ast_objkind.ObjKind), _name?.__copy__());
                    (@:checkr _obj ?? throw "null pointer dereference").decl = stdgo.Go.toInterface(stdgo.Go.asInterface(_spec));
                    (@:checkr _obj ?? throw "null pointer dereference").data = (@:checkr _pkg ?? throw "null pointer dereference").data;
                    //"file:///home/runner/.go/go1.21.3/src/go/ast/resolve.go#L146"
                    _p._declare(_fileScope, _pkgScope, _obj);
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/go/ast/resolve.go#L151"
            if (_importErrors) {
                (@:checkr _pkgScope ?? throw "null pointer dereference").outer = null;
            };
            var _i = (0 : stdgo.GoInt);
            //"file:///home/runner/.go/go1.21.3/src/go/ast/resolve.go#L159"
            for (__11 => _ident in (@:checkr _file ?? throw "null pointer dereference").unresolved) {
                //"file:///home/runner/.go/go1.21.3/src/go/ast/resolve.go#L160"
                if (!stdgo._internal.go.ast.Ast__resolve._resolve(_fileScope, _ident)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/ast/resolve.go#L161"
                    _p._errorf(_ident.pos(), ("undeclared name: %s" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _ident ?? throw "null pointer dereference").name));
                    (@:checkr _file ?? throw "null pointer dereference").unresolved[(_i : stdgo.GoInt)] = _ident;
                    //"file:///home/runner/.go/go1.21.3/src/go/ast/resolve.go#L163"
                    _i++;
                };
            };
            (@:checkr _file ?? throw "null pointer dereference").unresolved = ((@:checkr _file ?? throw "null pointer dereference").unresolved.__slice__((0 : stdgo.GoInt), _i) : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>>);
            (@:checkr _pkgScope ?? throw "null pointer dereference").outer = _universe;
        };
        //"file:///home/runner/.go/go1.21.3/src/go/ast/resolve.go#L171"
        _p._errors.sort();
        //"file:///home/runner/.go/go1.21.3/src/go/ast/resolve.go#L172"
        return { _0 : (stdgo.Go.setRef((new stdgo._internal.go.ast.Ast_package.Package(_pkgName?.__copy__(), _pkgScope, _imports, _files) : stdgo._internal.go.ast.Ast_package.Package)) : stdgo.Ref<stdgo._internal.go.ast.Ast_package.Package>), _1 : _p._errors.err() };
    }
