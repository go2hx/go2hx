package stdgo.go.printer_test;

import stdgo.StdGoTypes;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.Chan;

/**
	// Dummy test function so that godoc does not use the entire file as example.
**/
function test(_0:Ref<stdgo.testing.Testing.T>):Void {}

private function _parseFunc(_filename:GoString, _functionname:GoString):{var _0:Ref<stdgo.go.ast.Ast.FuncDecl>; var _1:Ref<stdgo.go.token.Token.FileSet>;} {
	var _fun:Ref<stdgo.go.ast.Ast.FuncDecl> = (null : Ref<stdgo.go.ast.Ast.FuncDecl>),
		_fset:Ref<stdgo.go.token.Token.FileSet> = (null : Ref<stdgo.go.token.Token.FileSet>);
	_fset = stdgo.go.token.Token.newFileSet();
	{
		var __tmp__ = stdgo.go.parser.Parser.parseFile(_fset, _filename, (null : AnyInterface), (("0" : GoUInt) : stdgo.go.parser.Parser.Mode)),
			_file:Ref<stdgo.go.ast.Ast.File> = __tmp__._0,
			_err:Error = __tmp__._1;
		if (_err == null) {
			for (_0 => _d in _file.decls) {
				{
					var __tmp__ = try {
						{value: (Go.typeAssert((Go.toInterface(_d) : Ref<stdgo.go.ast.Ast.FuncDecl>)) : Ref<stdgo.go.ast.Ast.FuncDecl>), ok: true};
					} catch (_) {
						{value: (null : Ref<stdgo.go.ast.Ast.FuncDecl>), ok: false};
					}, _f = __tmp__.value, _ok = __tmp__.ok;
					if (_ok && (_f.name.name == _functionname)) {
						_fun = _f;
						return {_0: _fun, _1: _fset};
					};
				};
			};
		};
	};
	throw Go.toInterface(("function not found" : GoString));
}

function exampleFprint():Void {
	var __tmp__ = _parseFunc(("example_test.go" : GoString), ("ExampleFprint" : GoString)),
		_funcAST:Ref<stdgo.go.ast.Ast.FuncDecl> = __tmp__._0,
		_fset:Ref<stdgo.go.token.Token.FileSet> = __tmp__._1;
	var _buf:stdgo.bytes.Bytes.Buffer = ({} : stdgo.bytes.Bytes.Buffer);
	stdgo.go.printer.Printer.fprint(Go.asInterface((_buf : Ref<stdgo.bytes.Bytes.Buffer>)), _fset, Go.toInterface(Go.asInterface(_funcAST.body)));
	var _s:GoString = (_buf.string() : GoString);
	_s = (_s.__slice__((1 : GoInt), (_s.length) - (1 : GoInt)) : GoString);
	_s = stdgo.strings.Strings.trimSpace(stdgo.strings.Strings.replaceAll(_s, ("\n\t" : GoString), ("\n" : GoString)));
	stdgo.fmt.Fmt.println(Go.toInterface(_s));
}
