package stdgo.go.token_test;
import stdgo.go.token.Token;
function example_retrievePositionInfo():Void {
        var _fset = stdgo.go.token.Token.newFileSet();
        {};
        var __tmp__ = stdgo.go.parser.Parser.parseFile(_fset, ("main.go" : stdgo.GoString), stdgo.Go.toInterface(("package main\n\nimport \"fmt\"\n\nimport \"go/token\"\n\n//line :1:5\ntype p = token.Pos\n\nconst bad = token.NoPos\n\n//line fake.go:42:11\nfunc ok(pos p) bool {\n\treturn pos != bad\n}\n\n/*line :7:9*/func main() {\n\tfmt.Println(ok(bad) == bad.IsValid())\n}\n" : stdgo.GoString)), (0u32 : stdgo.go.parser.Parser.Mode)), _f:stdgo.StdGoTypes.Ref<stdgo.go.ast.Ast.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            stdgo.fmt.Fmt.println(stdgo.Go.toInterface(_err));
            return;
        };
        for (__0 => _decl in _f.decls) {
            var _pos:stdgo.go.token.Token.Pos = _decl.pos();
            var _relPosition:stdgo.go.token.Token.Position = _fset.position(_pos)?.__copy__();
            var _absPosition:stdgo.go.token.Token.Position = _fset.positionFor(_pos, false)?.__copy__();
            var _kind:stdgo.GoString = ("func" : stdgo.GoString);
            {
                var __tmp__ = try {
                    { value : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_decl) : stdgo.StdGoTypes.Ref<stdgo.go.ast.Ast.GenDecl>)) : stdgo.StdGoTypes.Ref<stdgo.go.ast.Ast.GenDecl>), ok : true };
                } catch(_) {
                    { value : (null : stdgo.StdGoTypes.Ref<stdgo.go.ast.Ast.GenDecl>), ok : false };
                }, _gen = __tmp__.value, _ok = __tmp__.ok;
                if (_ok) {
                    _kind = (_gen.tok.string() : stdgo.GoString)?.__copy__();
                };
            };
            var _fmtPosition:stdgo.GoString = (_relPosition.string() : stdgo.GoString)?.__copy__();
            if (stdgo.Go.toInterface(_relPosition) != stdgo.Go.toInterface(_absPosition)) {
                _fmtPosition = _fmtPosition + (("[" : stdgo.GoString) + (_absPosition.string() : stdgo.GoString)?.__copy__() + ("]" : stdgo.GoString)?.__copy__())?.__copy__();
            };
            stdgo.fmt.Fmt.printf(("%s: %s\n" : stdgo.GoString), stdgo.Go.toInterface(_fmtPosition), stdgo.Go.toInterface(_kind));
        };
    }
