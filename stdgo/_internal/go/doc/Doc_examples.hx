package stdgo._internal.go.doc;
function examples(_testFiles:haxe.Rest<stdgo.Ref<stdgo._internal.go.ast.Ast_file.File>>):stdgo.Slice<stdgo.Ref<stdgo._internal.go.doc.Doc_example.Example>> {
        var _testFiles = new stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_file.File>>(_testFiles.length, 0, ..._testFiles);
        var _list:stdgo.Slice<stdgo.Ref<stdgo._internal.go.doc.Doc_example.Example>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.go.doc.Doc_example.Example>>);
        //"file:///home/runner/.go/go1.21.3/src/go/doc/example.go#L52"
        for (__0 => _file in _testFiles) {
            var _hasTests = (false : Bool);
            var _numDecl = (0 : stdgo.GoInt);
            var _flist:stdgo.Slice<stdgo.Ref<stdgo._internal.go.doc.Doc_example.Example>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.go.doc.Doc_example.Example>>);
            //"file:///home/runner/.go/go1.21.3/src/go/doc/example.go#L56"
            for (__1 => _decl in (@:checkr _file ?? throw "null pointer dereference").decls) {
                //"file:///home/runner/.go/go1.21.3/src/go/doc/example.go#L57"
                {
                    var __tmp__ = try {
                        { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_decl) : stdgo.Ref<stdgo._internal.go.ast.Ast_gendecl.GenDecl>)) : stdgo.Ref<stdgo._internal.go.ast.Ast_gendecl.GenDecl>), _1 : true };
                    } catch(_) {
                        { _0 : (null : stdgo.Ref<stdgo._internal.go.ast.Ast_gendecl.GenDecl>), _1 : false };
                    }, _g = __tmp__._0, _ok = __tmp__._1;
                    if ((_ok && ((@:checkr _g ?? throw "null pointer dereference").tok != (75 : stdgo._internal.go.token.Token_token.Token)) : Bool)) {
                        //"file:///home/runner/.go/go1.21.3/src/go/doc/example.go#L58"
                        _numDecl++;
                        //"file:///home/runner/.go/go1.21.3/src/go/doc/example.go#L59"
                        continue;
                    };
                };
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_decl) : stdgo.Ref<stdgo._internal.go.ast.Ast_funcdecl.FuncDecl>)) : stdgo.Ref<stdgo._internal.go.ast.Ast_funcdecl.FuncDecl>), _1 : true };
                } catch(_) {
                    { _0 : (null : stdgo.Ref<stdgo._internal.go.ast.Ast_funcdecl.FuncDecl>), _1 : false };
                }, _f = __tmp__._0, _ok = __tmp__._1;
                //"file:///home/runner/.go/go1.21.3/src/go/doc/example.go#L62"
                if ((!_ok || ({
                    final value = (@:checkr _f ?? throw "null pointer dereference").recv;
                    (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                }) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/doc/example.go#L63"
                    continue;
                };
                //"file:///home/runner/.go/go1.21.3/src/go/doc/example.go#L65"
                _numDecl++;
                var _name = ((@:checkr (@:checkr _f ?? throw "null pointer dereference").name ?? throw "null pointer dereference").name?.__copy__() : stdgo.GoString);
                //"file:///home/runner/.go/go1.21.3/src/go/doc/example.go#L67"
                if (((stdgo._internal.go.doc.Doc__istest._isTest(_name?.__copy__(), ("Test" : stdgo.GoString)) || stdgo._internal.go.doc.Doc__istest._isTest(_name?.__copy__(), ("Benchmark" : stdgo.GoString)) : Bool) || stdgo._internal.go.doc.Doc__istest._isTest(_name?.__copy__(), ("Fuzz" : stdgo.GoString)) : Bool)) {
                    _hasTests = true;
                    //"file:///home/runner/.go/go1.21.3/src/go/doc/example.go#L69"
                    continue;
                };
                //"file:///home/runner/.go/go1.21.3/src/go/doc/example.go#L71"
                if (!stdgo._internal.go.doc.Doc__istest._isTest(_name?.__copy__(), ("Example" : stdgo.GoString))) {
                    //"file:///home/runner/.go/go1.21.3/src/go/doc/example.go#L72"
                    continue;
                };
                //"file:///home/runner/.go/go1.21.3/src/go/doc/example.go#L74"
                {
                    var _params = (@:checkr (@:checkr _f ?? throw "null pointer dereference").type ?? throw "null pointer dereference").params;
                    if (((@:checkr _params ?? throw "null pointer dereference").list.length) != ((0 : stdgo.GoInt))) {
                        //"file:///home/runner/.go/go1.21.3/src/go/doc/example.go#L75"
                        continue;
                    };
                };
                //"file:///home/runner/.go/go1.21.3/src/go/doc/example.go#L77"
                if (({
                    final value = (@:checkr _f ?? throw "null pointer dereference").body;
                    (value == null || (value : Dynamic).__nil__);
                })) {
                    //"file:///home/runner/.go/go1.21.3/src/go/doc/example.go#L78"
                    continue;
                };
                var _doc:stdgo.GoString = ("" : stdgo.GoString);
                //"file:///home/runner/.go/go1.21.3/src/go/doc/example.go#L81"
                if (({
                    final value = (@:checkr _f ?? throw "null pointer dereference").doc;
                    (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                })) {
                    _doc = (@:checkr _f ?? throw "null pointer dereference").doc.text()?.__copy__();
                };
                var __tmp__ = stdgo._internal.go.doc.Doc__exampleoutput._exampleOutput((@:checkr _f ?? throw "null pointer dereference").body, (@:checkr _file ?? throw "null pointer dereference").comments), _output:stdgo.GoString = __tmp__._0, _unordered:Bool = __tmp__._1, _hasOutput:Bool = __tmp__._2;
                _flist = (_flist.__append__((stdgo.Go.setRef(({ name : (_name.__slice__(((("Example" : stdgo.GoString) : stdgo.GoString).length)) : stdgo.GoString)?.__copy__(), doc : _doc?.__copy__(), code : stdgo.Go.asInterface((@:checkr _f ?? throw "null pointer dereference").body), play : stdgo._internal.go.doc.Doc__playexample._playExample(_file, _f), comments : (@:checkr _file ?? throw "null pointer dereference").comments, output : _output?.__copy__(), unordered : _unordered, emptyOutput : ((_output == (stdgo.Go.str() : stdgo.GoString)) && _hasOutput : Bool), order : (_flist.length) } : stdgo._internal.go.doc.Doc_example.Example)) : stdgo.Ref<stdgo._internal.go.doc.Doc_example.Example>)) : stdgo.Slice<stdgo.Ref<stdgo._internal.go.doc.Doc_example.Example>>);
            };
            //"file:///home/runner/.go/go1.21.3/src/go/doc/example.go#L97"
            if (((!_hasTests && (_numDecl > (1 : stdgo.GoInt) : Bool) : Bool) && (_flist.length == (1 : stdgo.GoInt)) : Bool)) {
                (@:checkr _flist[(0 : stdgo.GoInt)] ?? throw "null pointer dereference").code = stdgo.Go.asInterface(_file);
                (@:checkr _flist[(0 : stdgo.GoInt)] ?? throw "null pointer dereference").play = stdgo._internal.go.doc.Doc__playexamplefile._playExampleFile(_file);
            };
            _list = (_list.__append__(...(_flist : Array<stdgo.Ref<stdgo._internal.go.doc.Doc_example.Example>>)) : stdgo.Slice<stdgo.Ref<stdgo._internal.go.doc.Doc_example.Example>>);
        };
        //"file:///home/runner/.go/go1.21.3/src/go/doc/example.go#L107"
        stdgo._internal.sort.Sort_slice.slice(stdgo.Go.toInterface(_list), function(_i:stdgo.GoInt, _j:stdgo.GoInt):Bool {
            //"file:///home/runner/.go/go1.21.3/src/go/doc/example.go#L108"
            return ((@:checkr _list[(_i : stdgo.GoInt)] ?? throw "null pointer dereference").name < (@:checkr _list[(_j : stdgo.GoInt)] ?? throw "null pointer dereference").name : Bool);
        });
        //"file:///home/runner/.go/go1.21.3/src/go/doc/example.go#L110"
        return _list;
    }
