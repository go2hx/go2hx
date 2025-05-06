package stdgo._internal.go.build;
function _readGoInfo(_f:stdgo._internal.io.Io_reader.Reader, _info:stdgo.Ref<stdgo._internal.go.build.Build_t_fileinfo.T_fileInfo>):stdgo.Error {
        var _r = stdgo._internal.go.build.Build__newimportreader._newImportReader((@:checkr _info ?? throw "null pointer dereference")._name?.__copy__(), _f);
        //"file:///home/runner/.go/go1.21.3/src/go/build/read.go#L401"
        _r._readKeyword(("package" : stdgo.GoString));
        //"file:///home/runner/.go/go1.21.3/src/go/build/read.go#L402"
        _r._readIdent();
        //"file:///home/runner/.go/go1.21.3/src/go/build/read.go#L403"
        while (_r._peekByte(true) == ((105 : stdgo.GoUInt8))) {
            //"file:///home/runner/.go/go1.21.3/src/go/build/read.go#L404"
            _r._readKeyword(("import" : stdgo.GoString));
            //"file:///home/runner/.go/go1.21.3/src/go/build/read.go#L405"
            if (_r._peekByte(true) == ((40 : stdgo.GoUInt8))) {
                //"file:///home/runner/.go/go1.21.3/src/go/build/read.go#L406"
                _r._nextByte(false);
                //"file:///home/runner/.go/go1.21.3/src/go/build/read.go#L407"
                while (((_r._peekByte(true) != (41 : stdgo.GoUInt8)) && ((@:checkr _r ?? throw "null pointer dereference")._err == null) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/build/read.go#L408"
                    _r._readImport();
                };
                //"file:///home/runner/.go/go1.21.3/src/go/build/read.go#L410"
                _r._nextByte(false);
            } else {
                //"file:///home/runner/.go/go1.21.3/src/go/build/read.go#L412"
                _r._readImport();
            };
        };
        (@:checkr _info ?? throw "null pointer dereference")._header = (@:checkr _r ?? throw "null pointer dereference")._buf;
        //"file:///home/runner/.go/go1.21.3/src/go/build/read.go#L420"
        if ((((@:checkr _r ?? throw "null pointer dereference")._err == null) && !(@:checkr _r ?? throw "null pointer dereference")._eof : Bool)) {
            (@:checkr _info ?? throw "null pointer dereference")._header = ((@:checkr _r ?? throw "null pointer dereference")._buf.__slice__(0, (((@:checkr _r ?? throw "null pointer dereference")._buf.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        };
        //"file:///home/runner/.go/go1.21.3/src/go/build/read.go#L426"
        if (stdgo.Go.toInterface((@:checkr _r ?? throw "null pointer dereference")._err) == (stdgo.Go.toInterface(stdgo._internal.go.build.Build__errsyntax._errSyntax))) {
            (@:checkr _r ?? throw "null pointer dereference")._err = (null : stdgo.Error);
            //"file:///home/runner/.go/go1.21.3/src/go/build/read.go#L428"
            while ((((@:checkr _r ?? throw "null pointer dereference")._err == null) && !(@:checkr _r ?? throw "null pointer dereference")._eof : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/go/build/read.go#L429"
                _r._readByte();
            };
            (@:checkr _info ?? throw "null pointer dereference")._header = (@:checkr _r ?? throw "null pointer dereference")._buf;
        };
        //"file:///home/runner/.go/go1.21.3/src/go/build/read.go#L433"
        if ((@:checkr _r ?? throw "null pointer dereference")._err != null) {
            //"file:///home/runner/.go/go1.21.3/src/go/build/read.go#L434"
            return (@:checkr _r ?? throw "null pointer dereference")._err;
        };
        //"file:///home/runner/.go/go1.21.3/src/go/build/read.go#L437"
        if (({
            final value = (@:checkr _info ?? throw "null pointer dereference")._fset;
            (value == null || (value : Dynamic).__nil__);
        })) {
            //"file:///home/runner/.go/go1.21.3/src/go/build/read.go#L438"
            return (null : stdgo.Error);
        };
        {
            var __tmp__ = stdgo._internal.go.parser.Parser_parsefile.parseFile((@:checkr _info ?? throw "null pointer dereference")._fset, (@:checkr _info ?? throw "null pointer dereference")._name?.__copy__(), stdgo.Go.toInterface((@:checkr _info ?? throw "null pointer dereference")._header), (6u32 : stdgo._internal.go.parser.Parser_mode.Mode));
            (@:checkr _info ?? throw "null pointer dereference")._parsed = @:tmpset0 __tmp__._0;
            (@:checkr _info ?? throw "null pointer dereference")._parseErr = @:tmpset0 __tmp__._1;
        };
        //"file:///home/runner/.go/go1.21.3/src/go/build/read.go#L443"
        if ((@:checkr _info ?? throw "null pointer dereference")._parseErr != null) {
            //"file:///home/runner/.go/go1.21.3/src/go/build/read.go#L444"
            return (null : stdgo.Error);
        };
        var _hasEmbed = (false : Bool);
        //"file:///home/runner/.go/go1.21.3/src/go/build/read.go#L448"
        for (__80 => _decl in (@:checkr (@:checkr _info ?? throw "null pointer dereference")._parsed ?? throw "null pointer dereference").decls) {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_decl) : stdgo.Ref<stdgo._internal.go.ast.Ast_gendecl.GenDecl>)) : stdgo.Ref<stdgo._internal.go.ast.Ast_gendecl.GenDecl>), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo.Ref<stdgo._internal.go.ast.Ast_gendecl.GenDecl>), _1 : false };
            }, _d = __tmp__._0, _ok = __tmp__._1;
            //"file:///home/runner/.go/go1.21.3/src/go/build/read.go#L450"
            if (!_ok) {
                //"file:///home/runner/.go/go1.21.3/src/go/build/read.go#L451"
                continue;
            };
            //"file:///home/runner/.go/go1.21.3/src/go/build/read.go#L453"
            for (__81 => _dspec in (@:checkr _d ?? throw "null pointer dereference").specs) {
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_dspec) : stdgo.Ref<stdgo._internal.go.ast.Ast_importspec.ImportSpec>)) : stdgo.Ref<stdgo._internal.go.ast.Ast_importspec.ImportSpec>), _1 : true };
                } catch(_) {
                    { _0 : (null : stdgo.Ref<stdgo._internal.go.ast.Ast_importspec.ImportSpec>), _1 : false };
                }, _spec = __tmp__._0, _ok = __tmp__._1;
                //"file:///home/runner/.go/go1.21.3/src/go/build/read.go#L455"
                if (!_ok) {
                    //"file:///home/runner/.go/go1.21.3/src/go/build/read.go#L456"
                    continue;
                };
                var _quoted = ((@:checkr (@:checkr _spec ?? throw "null pointer dereference").path ?? throw "null pointer dereference").value?.__copy__() : stdgo.GoString);
                var __tmp__ = stdgo._internal.strconv.Strconv_unquote.unquote(_quoted?.__copy__()), _path:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                //"file:///home/runner/.go/go1.21.3/src/go/build/read.go#L460"
                if (_err != null) {
                    //"file:///home/runner/.go/go1.21.3/src/go/build/read.go#L461"
                    return stdgo._internal.fmt.Fmt_errorf.errorf(("parser returned invalid quoted string: <%s>" : stdgo.GoString), stdgo.Go.toInterface(_quoted));
                };
                //"file:///home/runner/.go/go1.21.3/src/go/build/read.go#L463"
                if (!stdgo._internal.go.build.Build__isvalidimport._isValidImport(_path?.__copy__())) {
                    (@:checkr _info ?? throw "null pointer dereference")._parseErr = stdgo.Go.asInterface(({ pos : (@:checkr _info ?? throw "null pointer dereference")._fset.position(_spec.pos())?.__copy__(), msg : (("invalid import path: " : stdgo.GoString) + _path?.__copy__() : stdgo.GoString)?.__copy__() } : stdgo._internal.go.scanner.Scanner_error.Error));
                    (@:checkr _info ?? throw "null pointer dereference")._imports = (null : stdgo.Slice<stdgo._internal.go.build.Build_t_fileimport.T_fileImport>);
                    //"file:///home/runner/.go/go1.21.3/src/go/build/read.go#L468"
                    return (null : stdgo.Error);
                };
                //"file:///home/runner/.go/go1.21.3/src/go/build/read.go#L470"
                if (_path == (("embed" : stdgo.GoString))) {
                    _hasEmbed = true;
                };
                var _doc = (@:checkr _spec ?? throw "null pointer dereference").doc;
                //"file:///home/runner/.go/go1.21.3/src/go/build/read.go#L475"
                if ((({
                    final value = _doc;
                    (value == null || (value : Dynamic).__nil__);
                }) && ((@:checkr _d ?? throw "null pointer dereference").specs.length == (1 : stdgo.GoInt)) : Bool)) {
                    _doc = (@:checkr _d ?? throw "null pointer dereference").doc;
                };
                (@:checkr _info ?? throw "null pointer dereference")._imports = ((@:checkr _info ?? throw "null pointer dereference")._imports.__append__((new stdgo._internal.go.build.Build_t_fileimport.T_fileImport(_path?.__copy__(), _spec.pos(), _doc) : stdgo._internal.go.build.Build_t_fileimport.T_fileImport)) : stdgo.Slice<stdgo._internal.go.build.Build_t_fileimport.T_fileImport>);
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/build/read.go#L483"
        for (__89 => _group in (@:checkr (@:checkr _info ?? throw "null pointer dereference")._parsed ?? throw "null pointer dereference").comments) {
            //"file:///home/runner/.go/go1.21.3/src/go/build/read.go#L484"
            if ((_group.pos() >= (@:checkr (@:checkr _info ?? throw "null pointer dereference")._parsed ?? throw "null pointer dereference").package_ : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/go/build/read.go#L485"
                break;
            };
            //"file:///home/runner/.go/go1.21.3/src/go/build/read.go#L487"
            for (__98 => _c in (@:checkr _group ?? throw "null pointer dereference").list) {
                //"file:///home/runner/.go/go1.21.3/src/go/build/read.go#L488"
                if (stdgo._internal.strings.Strings_hasprefix.hasPrefix((@:checkr _c ?? throw "null pointer dereference").text?.__copy__(), ("//go:" : stdgo.GoString))) {
                    (@:checkr _info ?? throw "null pointer dereference")._directives = ((@:checkr _info ?? throw "null pointer dereference")._directives.__append__((new stdgo._internal.go.build.Build_directive.Directive((@:checkr _c ?? throw "null pointer dereference").text?.__copy__(), (@:checkr _info ?? throw "null pointer dereference")._fset.position((@:checkr _c ?? throw "null pointer dereference").slash)?.__copy__()) : stdgo._internal.go.build.Build_directive.Directive)) : stdgo.Slice<stdgo._internal.go.build.Build_directive.Directive>);
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/build/read.go#L502"
        if (_hasEmbed) {
            var _line:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
            //"file:///home/runner/.go/go1.21.3/src/go/build/read.go#L504"
            {
                var _first = (true : Bool);
                while (_r._findEmbed(_first)) {
                    _line = (_line.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
var _pos = ((@:checkr _r ?? throw "null pointer dereference")._pos.__copy__() : stdgo._internal.go.token.Token_position.Position);
//"file:///home/runner/.go/go1.21.3/src/go/build/read.go#L507"
                    while (true) {
                        var _c = (_r._readByteNoBuf() : stdgo.GoUInt8);
                        //"file:///home/runner/.go/go1.21.3/src/go/build/read.go#L509"
                        if (((_c == ((10 : stdgo.GoUInt8)) || (@:checkr _r ?? throw "null pointer dereference")._err != null : Bool) || (@:checkr _r ?? throw "null pointer dereference")._eof : Bool)) {
                            //"file:///home/runner/.go/go1.21.3/src/go/build/read.go#L510"
                            break;
                        };
                        _line = (_line.__append__(_c) : stdgo.Slice<stdgo.GoUInt8>);
                    };
var __tmp__ = stdgo._internal.go.build.Build__parsegoembed._parseGoEmbed((_line : stdgo.GoString).__copy__(), _pos.__copy__()), _embs:stdgo.Slice<stdgo._internal.go.build.Build_t_fileembed.T_fileEmbed> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
//"file:///home/runner/.go/go1.21.3/src/go/build/read.go#L518"
                    if (_err == null) {
                        (@:checkr _info ?? throw "null pointer dereference")._embeds = ((@:checkr _info ?? throw "null pointer dereference")._embeds.__append__(...(_embs : Array<stdgo._internal.go.build.Build_t_fileembed.T_fileEmbed>)) : stdgo.Slice<stdgo._internal.go.build.Build_t_fileembed.T_fileEmbed>);
                    };
                    _first = false;
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/build/read.go#L524"
        return (null : stdgo.Error);
    }
