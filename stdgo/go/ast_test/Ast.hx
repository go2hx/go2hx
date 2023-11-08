package stdgo.go.ast_test;
import stdgo.go.ast.Ast;
/**
    
    
    
**/
var _tests : stdgo.Slice<stdgo.testing.Testing.InternalTest> = (new stdgo.Slice<stdgo.testing.Testing.InternalTest>(8, 8, (new stdgo.testing.Testing.InternalTest(("TestCommentText" : stdgo.GoString), stdgo.go.ast.Ast.testCommentText) : stdgo.testing.Testing.InternalTest), (new stdgo.testing.Testing.InternalTest(("TestIsDirective" : stdgo.GoString), stdgo.go.ast.Ast.testIsDirective) : stdgo.testing.Testing.InternalTest), (new stdgo.testing.Testing.InternalTest(("TestPrint" : stdgo.GoString), stdgo.go.ast.Ast.testPrint) : stdgo.testing.Testing.InternalTest), (new stdgo.testing.Testing.InternalTest(("TestCommentMap" : stdgo.GoString), stdgo.go.ast_test.Ast_test.testCommentMap) : stdgo.testing.Testing.InternalTest), (new stdgo.testing.Testing.InternalTest(("TestFilter" : stdgo.GoString), stdgo.go.ast_test.Ast_test.testFilter) : stdgo.testing.Testing.InternalTest), (new stdgo.testing.Testing.InternalTest(("TestFilterDuplicates" : stdgo.GoString), stdgo.go.ast_test.Ast_test.testFilterDuplicates) : stdgo.testing.Testing.InternalTest), (new stdgo.testing.Testing.InternalTest(("TestIssue33649" : stdgo.GoString), stdgo.go.ast_test.Ast_test.testIssue33649) : stdgo.testing.Testing.InternalTest), (new stdgo.testing.Testing.InternalTest(("TestIssue28089" : stdgo.GoString), stdgo.go.ast_test.Ast_test.testIssue28089) : stdgo.testing.Testing.InternalTest)) : stdgo.Slice<stdgo.testing.Testing.InternalTest>);
/**
    
    
    
**/
var _benchmarks : stdgo.Slice<stdgo.testing.Testing.InternalBenchmark> = (new stdgo.Slice<stdgo.testing.Testing.InternalBenchmark>(0, 0) : stdgo.Slice<stdgo.testing.Testing.InternalBenchmark>);
/**
    
    
    
**/
var _fuzzTargets : stdgo.Slice<stdgo.testing.Testing.InternalFuzzTarget> = (new stdgo.Slice<stdgo.testing.Testing.InternalFuzzTarget>(0, 0) : stdgo.Slice<stdgo.testing.Testing.InternalFuzzTarget>);
/**
    
    
    
**/
var _examples : stdgo.Slice<stdgo.testing.Testing.InternalExample> = (new stdgo.Slice<stdgo.testing.Testing.InternalExample>(3, 3, (new stdgo.testing.Testing.InternalExample(("ExampleInspect" : stdgo.GoString), stdgo.go.ast_test.Ast_test.exampleInspect, ("src.go:2:9:\tp\nsrc.go:3:7:\tc\nsrc.go:3:11:\t1.0\nsrc.go:4:5:\tX\nsrc.go:4:9:\tf\nsrc.go:4:11:\t3.14\nsrc.go:4:17:\t2\nsrc.go:4:21:\tc\n" : stdgo.GoString), false) : stdgo.testing.Testing.InternalExample), (new stdgo.testing.Testing.InternalExample(("ExamplePrint" : stdgo.GoString), stdgo.go.ast_test.Ast_test.examplePrint, ("     0  *ast.File {\n     1  .  Package: 2:1\n     2  .  Name: *ast.Ident {\n     3  .  .  NamePos: 2:9\n     4  .  .  Name: \"main\"\n     5  .  }\n     6  .  Decls: []ast.Decl (len = 1) {\n     7  .  .  0: *ast.FuncDecl {\n     8  .  .  .  Name: *ast.Ident {\n     9  .  .  .  .  NamePos: 3:6\n    10  .  .  .  .  Name: \"main\"\n    11  .  .  .  .  Obj: *ast.Object {\n    12  .  .  .  .  .  Kind: func\n    13  .  .  .  .  .  Name: \"main\"\n    14  .  .  .  .  .  Decl: *(obj @ 7)\n    15  .  .  .  .  }\n    16  .  .  .  }\n    17  .  .  .  Type: *ast.FuncType {\n    18  .  .  .  .  Func: 3:1\n    19  .  .  .  .  Params: *ast.FieldList {\n    20  .  .  .  .  .  Opening: 3:10\n    21  .  .  .  .  .  Closing: 3:11\n    22  .  .  .  .  }\n    23  .  .  .  }\n    24  .  .  .  Body: *ast.BlockStmt {\n    25  .  .  .  .  Lbrace: 3:13\n    26  .  .  .  .  List: []ast.Stmt (len = 1) {\n    27  .  .  .  .  .  0: *ast.ExprStmt {\n    28  .  .  .  .  .  .  X: *ast.CallExpr {\n    29  .  .  .  .  .  .  .  Fun: *ast.Ident {\n    30  .  .  .  .  .  .  .  .  NamePos: 4:2\n    31  .  .  .  .  .  .  .  .  Name: \"println\"\n    32  .  .  .  .  .  .  .  }\n    33  .  .  .  .  .  .  .  Lparen: 4:9\n    34  .  .  .  .  .  .  .  Args: []ast.Expr (len = 1) {\n    35  .  .  .  .  .  .  .  .  0: *ast.BasicLit {\n    36  .  .  .  .  .  .  .  .  .  ValuePos: 4:10\n    37  .  .  .  .  .  .  .  .  .  Kind: STRING\n    38  .  .  .  .  .  .  .  .  .  Value: \"\\\"Hello, World!\\\"\"\n    39  .  .  .  .  .  .  .  .  }\n    40  .  .  .  .  .  .  .  }\n    41  .  .  .  .  .  .  .  Ellipsis: -\n    42  .  .  .  .  .  .  .  Rparen: 4:25\n    43  .  .  .  .  .  .  }\n    44  .  .  .  .  .  }\n    45  .  .  .  .  }\n    46  .  .  .  .  Rbrace: 5:1\n    47  .  .  .  }\n    48  .  .  }\n    49  .  }\n    50  .  FileStart: 1:1\n    51  .  FileEnd: 5:3\n    52  .  Scope: *ast.Scope {\n    53  .  .  Objects: map[string]*ast.Object (len = 1) {\n    54  .  .  .  \"main\": *(obj @ 11)\n    55  .  .  }\n    56  .  }\n    57  .  Unresolved: []*ast.Ident (len = 1) {\n    58  .  .  0: *(obj @ 29)\n    59  .  }\n    60  .  GoVersion: \"\"\n    61  }\n" : stdgo.GoString), false) : stdgo.testing.Testing.InternalExample), (new stdgo.testing.Testing.InternalExample(("ExampleCommentMap" : stdgo.GoString), stdgo.go.ast_test.Ast_test.exampleCommentMap, ("// This is the package comment.\npackage main\n\n// This comment is associated with the hello constant.\nconst hello = \"Hello, World!\" // line comment 1\n\n// This comment is associated with the main function.\nfunc main() {\n\tfmt.Println(hello) // line comment 3\n}\n" : stdgo.GoString), false) : stdgo.testing.Testing.InternalExample)) : stdgo.Slice<stdgo.testing.Testing.InternalExample>);
function main():Void {
        var _m = stdgo.testing.Testing.mainStart(stdgo.Go.asInterface((new stdgo.testing.internal.testdeps.Testdeps.TestDeps() : stdgo.testing.internal.testdeps.Testdeps.TestDeps)), _tests, _benchmarks, _fuzzTargets, _examples);
        Sys.exit(_m.run());
    }
@:keep var _ = {
        try {
            stdgo.testing.internal.testdeps.Testdeps.importPath = ("go/ast" : stdgo.GoString);
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };
