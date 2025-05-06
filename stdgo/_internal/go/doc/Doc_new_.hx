package stdgo._internal.go.doc;
function new_(_pkg:stdgo.Ref<stdgo._internal.go.ast.Ast_package.Package>, _importPath:stdgo.GoString, _mode:stdgo._internal.go.doc.Doc_mode.Mode):stdgo.Ref<stdgo._internal.go.doc.Doc_package.Package> {
        var _r:stdgo._internal.go.doc.Doc_t_reader.T_reader = ({} : stdgo._internal.go.doc.Doc_t_reader.T_reader);
        //"file:///home/runner/.go/go1.21.3/src/go/doc/doc.go#L123"
        _r._readPackage(_pkg, _mode);
        //"file:///home/runner/.go/go1.21.3/src/go/doc/doc.go#L124"
        _r._computeMethodSets();
        //"file:///home/runner/.go/go1.21.3/src/go/doc/doc.go#L125"
        _r._cleanupTypes();
        var _p = (stdgo.Go.setRef(({ doc : _r._doc?.__copy__(), name : (@:checkr _pkg ?? throw "null pointer dereference").name?.__copy__(), importPath : _importPath?.__copy__(), imports : stdgo._internal.go.doc.Doc__sortedkeys._sortedKeys(_r._imports), filenames : _r._filenames, notes : _r._notes, bugs : stdgo._internal.go.doc.Doc__notebodies._noteBodies((_r._notes[("BUG" : stdgo.GoString)] ?? (null : stdgo.Slice<stdgo.Ref<stdgo._internal.go.doc.Doc_note.Note>>))), consts : stdgo._internal.go.doc.Doc__sortedvalues._sortedValues(_r._values, (64 : stdgo._internal.go.token.Token_token.Token)), types : stdgo._internal.go.doc.Doc__sortedtypes._sortedTypes(_r._types, (_mode & (2 : stdgo._internal.go.doc.Doc_mode.Mode) : stdgo._internal.go.doc.Doc_mode.Mode) != ((0 : stdgo._internal.go.doc.Doc_mode.Mode))), vars : stdgo._internal.go.doc.Doc__sortedvalues._sortedValues(_r._values, (85 : stdgo._internal.go.token.Token_token.Token)), funcs : stdgo._internal.go.doc.Doc__sortedfuncs._sortedFuncs(_r._funcs, true), _importByName : _r._importByName, _syms : (({
            final x = new stdgo.GoMap.GoStringMap<Bool>();
            x.__defaultValue__ = () -> false;
            {};
            x;
        } : stdgo.GoMap<stdgo.GoString, Bool>) : stdgo.GoMap<stdgo.GoString, Bool>) } : stdgo._internal.go.doc.Doc_package.Package)) : stdgo.Ref<stdgo._internal.go.doc.Doc_package.Package>);
        //"file:///home/runner/.go/go1.21.3/src/go/doc/doc.go#L143"
        _p._collectValues((@:checkr _p ?? throw "null pointer dereference").consts);
        //"file:///home/runner/.go/go1.21.3/src/go/doc/doc.go#L144"
        _p._collectValues((@:checkr _p ?? throw "null pointer dereference").vars);
        //"file:///home/runner/.go/go1.21.3/src/go/doc/doc.go#L145"
        _p._collectTypes((@:checkr _p ?? throw "null pointer dereference").types);
        //"file:///home/runner/.go/go1.21.3/src/go/doc/doc.go#L146"
        _p._collectFuncs((@:checkr _p ?? throw "null pointer dereference").funcs);
        //"file:///home/runner/.go/go1.21.3/src/go/doc/doc.go#L148"
        return _p;
    }
