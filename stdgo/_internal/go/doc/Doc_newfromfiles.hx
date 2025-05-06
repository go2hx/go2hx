package stdgo._internal.go.doc;
function newFromFiles(_fset:stdgo.Ref<stdgo._internal.go.token.Token_fileset.FileSet>, _files:stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_file.File>>, _importPath:stdgo.GoString, _opts:haxe.Rest<stdgo.AnyInterface>):{ var _0 : stdgo.Ref<stdgo._internal.go.doc.Doc_package.Package>; var _1 : stdgo.Error; } {
        var _opts = new stdgo.Slice<stdgo.AnyInterface>(_opts.length, 0, ..._opts);
        //"file:///home/runner/.go/go1.21.3/src/go/doc/doc.go#L210"
        if (({
            final value = _fset;
            (value == null || (value : Dynamic).__nil__);
        })) {
            //"file:///home/runner/.go/go1.21.3/src/go/doc/doc.go#L211"
            throw stdgo.Go.toInterface(stdgo._internal.fmt.Fmt_errorf.errorf(("doc.NewFromFiles: no token.FileSet provided (fset == nil)" : stdgo.GoString)));
        };
        var _mode:stdgo._internal.go.doc.Doc_mode.Mode = ((0 : stdgo.GoInt) : stdgo._internal.go.doc.Doc_mode.Mode);
        //"file:///home/runner/.go/go1.21.3/src/go/doc/doc.go#L214"
        {
            final __value__ = (_opts.length);
            if (__value__ == ((0 : stdgo.GoInt))) {} else if (__value__ == ((1 : stdgo.GoInt))) {
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((_opts[(0 : stdgo.GoInt)] : stdgo._internal.go.doc.Doc_mode.Mode)) : stdgo._internal.go.doc.Doc_mode.Mode), _1 : true };
                } catch(_) {
                    { _0 : ((0 : stdgo.GoInt) : stdgo._internal.go.doc.Doc_mode.Mode), _1 : false };
                }, _m = __tmp__._0, _ok = __tmp__._1;
                //"file:///home/runner/.go/go1.21.3/src/go/doc/doc.go#L219"
                if (!_ok) {
                    //"file:///home/runner/.go/go1.21.3/src/go/doc/doc.go#L220"
                    throw stdgo.Go.toInterface(stdgo._internal.fmt.Fmt_errorf.errorf(("doc.NewFromFiles: option argument type must be doc.Mode" : stdgo.GoString)));
                };
                _mode = _m;
            } else {
                //"file:///home/runner/.go/go1.21.3/src/go/doc/doc.go#L224"
                throw stdgo.Go.toInterface(stdgo._internal.fmt.Fmt_errorf.errorf(("doc.NewFromFiles: there must not be more than 1 option argument" : stdgo.GoString)));
            };
        };
        var _goFiles = (({
            final x = new stdgo.GoMap.GoStringMap<stdgo.Ref<stdgo._internal.go.ast.Ast_file.File>>();
            x.__defaultValue__ = () -> (null : stdgo.Ref<stdgo._internal.go.ast.Ast_file.File>);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.go.ast.Ast_file.File>>) : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.go.ast.Ast_file.File>>), _testGoFiles:stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_file.File>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_file.File>>);
        //"file:///home/runner/.go/go1.21.3/src/go/doc/doc.go#L232"
        for (_i => _ in _files) {
            var _f = _fset.file(_files[(_i : stdgo.GoInt)].pos());
            //"file:///home/runner/.go/go1.21.3/src/go/doc/doc.go#L234"
            if (({
                final value = _f;
                (value == null || (value : Dynamic).__nil__);
            })) {
                //"file:///home/runner/.go/go1.21.3/src/go/doc/doc.go#L235"
                return { _0 : null, _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("file files[%d] is not found in the provided file set" : stdgo.GoString), stdgo.Go.toInterface(_i)) };
            };
            //"file:///home/runner/.go/go1.21.3/src/go/doc/doc.go#L237"
            {
                var _name = (_f.name()?.__copy__() : stdgo.GoString);
                if ((stdgo._internal.strings.Strings_hassuffix.hasSuffix(_name?.__copy__(), (".go" : stdgo.GoString)) && !stdgo._internal.strings.Strings_hassuffix.hasSuffix(_name?.__copy__(), ("_test.go" : stdgo.GoString)) : Bool)) {
                    _goFiles[_name] = _files[(_i : stdgo.GoInt)];
                } else if (stdgo._internal.strings.Strings_hassuffix.hasSuffix(_name?.__copy__(), ("_test.go" : stdgo.GoString))) {
                    _testGoFiles = (_testGoFiles.__append__(_files[(_i : stdgo.GoInt)]) : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_file.File>>);
                } else {
                    //"file:///home/runner/.go/go1.21.3/src/go/doc/doc.go#L243"
                    return { _0 : null, _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("file files[%d] filename %q does not have a .go extension" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_name)) };
                };
            };
        };
        var __tmp__ = stdgo._internal.go.ast.Ast_newpackage.newPackage(_fset, _goFiles, stdgo._internal.go.doc.Doc__simpleimporter._simpleImporter, null), _pkg:stdgo.Ref<stdgo._internal.go.ast.Ast_package.Package> = __tmp__._0, __0:stdgo.Error = __tmp__._1;
        var _p = stdgo._internal.go.doc.Doc_new_.new_(_pkg, _importPath?.__copy__(), _mode);
        //"file:///home/runner/.go/go1.21.3/src/go/doc/doc.go#L253"
        stdgo._internal.go.doc.Doc__classifyexamples._classifyExamples(_p, stdgo._internal.go.doc.Doc_examples.examples(...(_testGoFiles : Array<stdgo.Ref<stdgo._internal.go.ast.Ast_file.File>>)));
        //"file:///home/runner/.go/go1.21.3/src/go/doc/doc.go#L254"
        return { _0 : _p, _1 : (null : stdgo.Error) };
    }
