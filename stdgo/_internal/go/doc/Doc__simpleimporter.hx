package stdgo._internal.go.doc;
function _simpleImporter(_imports:stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.go.ast.Ast_object.Object>>, _path:stdgo.GoString):{ var _0 : stdgo.Ref<stdgo._internal.go.ast.Ast_object.Object>; var _1 : stdgo.Error; } {
        var _pkg = (_imports[_path] ?? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_object.Object>));
        //"file:///home/runner/.go/go1.21.3/src/go/doc/doc.go#L263"
        if (({
            final value = _pkg;
            (value == null || (value : Dynamic).__nil__);
        })) {
            _pkg = stdgo._internal.go.ast.Ast_newobj.newObj((1 : stdgo._internal.go.ast.Ast_objkind.ObjKind), (_path.__slice__((stdgo._internal.strings.Strings_lastindex.lastIndex(_path?.__copy__(), ("/" : stdgo.GoString)) + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
            (@:checkr _pkg ?? throw "null pointer dereference").data = stdgo.Go.toInterface(stdgo.Go.asInterface(stdgo._internal.go.ast.Ast_newscope.newScope(null)));
            _imports[_path] = _pkg;
        };
        //"file:///home/runner/.go/go1.21.3/src/go/doc/doc.go#L269"
        return { _0 : _pkg, _1 : (null : stdgo.Error) };
    }
