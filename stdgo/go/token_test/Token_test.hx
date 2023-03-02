package stdgo.go.token_test;
import stdgo.StdGoTypes;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.Chan;
function example_retrievePositionInfo():Void {
        var _fset = stdgo.go.token.Token.newFileSet();
        {};
        var __tmp__ = stdgo.go.parser.Parser.parseFile(_fset, ("main.go" : GoString), Go.toInterface(("package main\n\nimport \"fmt\"\n\nimport \"go/token\"\n\n//line :1:5\ntype p = token.Pos\n\nconst bad = token.NoPos\n\n//line fake.go:42:11\nfunc ok(pos p) bool {\n\treturn pos != bad\n}\n\n/*line :7:9*/func main() {\n\tfmt.Println(ok(bad) == bad.IsValid())\n}\n" : GoString)), (("0" : GoUInt) : stdgo.go.parser.Parser.Mode)), _f:Ref<stdgo.go.ast.Ast.File> = __tmp__._0, _err:Error = __tmp__._1;
        if (_err != null) {
            stdgo.fmt.Fmt.println(Go.toInterface(_err));
            return;
        };
        for (_0 => _decl in _f.decls) {
            var _pos:Pos = _decl.pos();
            var _relPosition:Position = _fset.position(_pos).__copy__();
            var _absPosition:Position = _fset.positionFor(_pos, false).__copy__();
            var _kind:GoString = ("func" : GoString);
            {
                var __tmp__ = try {
                    { value : (Go.typeAssert((Go.toInterface(_decl) : Ref<stdgo.go.ast.Ast.GenDecl>)) : Ref<stdgo.go.ast.Ast.GenDecl>), ok : true };
                } catch(_) {
                    { value : (null : Ref<stdgo.go.ast.Ast.GenDecl>), ok : false };
                }, _gen = __tmp__.value, _ok = __tmp__.ok;
                if (_ok) {
                    _kind = (_gen.tok.string() : GoString);
                };
            };
            var _fmtPosition:GoString = (_relPosition.string() : GoString);
            if (Go.toInterface(Go.asInterface(_relPosition)) != Go.toInterface(Go.asInterface(_absPosition))) {
                _fmtPosition = _fmtPosition + ((("[" : GoString) + (_absPosition.string() : GoString)) + ("]" : GoString));
            };
            stdgo.fmt.Fmt.printf(("%s: %s\n" : GoString), Go.toInterface(_fmtPosition), Go.toInterface(_kind));
        };
    }
