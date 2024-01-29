package stdgo.go.printer;
/**
    // Package printer implements printing of AST nodes.
**/
private var __go2hxdoc__package : Bool;
final rawFormat : stdgo._internal.go.printer.Printer.Mode = stdgo._internal.go.printer.Printer.rawFormat;
final tabIndent = stdgo._internal.go.printer.Printer.tabIndent;
final useSpaces = stdgo._internal.go.printer.Printer.useSpaces;
final sourcePos = stdgo._internal.go.printer.Printer.sourcePos;
@:invalid typedef T_sizeCounter = Dynamic;
@:invalid typedef T_commentInfo = Dynamic;
@:invalid typedef T_printer = Dynamic;
@:invalid typedef T_trimmer = Dynamic;
@:invalid typedef Config = Dynamic;
@:invalid typedef CommentedNode = Dynamic;
@:invalid typedef T_entry = Dynamic;
@:invalid typedef T_limitWriter = Dynamic;
typedef T_exprListMode = stdgo._internal.go.printer.Printer.T_exprListMode;
typedef T_paramMode = stdgo._internal.go.printer.Printer.T_paramMode;
typedef T_whiteSpace = stdgo._internal.go.printer.Printer.T_whiteSpace;
typedef T_pmode = stdgo._internal.go.printer.Printer.T_pmode;
typedef Mode = stdgo._internal.go.printer.Printer.Mode;
typedef T_checkMode = stdgo._internal.go.printer.Printer.T_checkMode;
typedef T_visitor = stdgo._internal.go.printer.Printer.T_visitor;
inline function benchmarkPrintFile(b:stdgo._internal.testing.Testing.B):Void throw "not implemented";
inline function benchmarkPrintDecl(b:stdgo._internal.testing.Testing.B):Void throw "not implemented";
/**
    // Fprint "pretty-prints" an AST node to output.
    // It calls Config.Fprint with default settings.
    // Note that gofmt uses tabs for indentation but spaces for alignment;
    // use format.Node (package go/format) for output that matches gofmt.
**/
inline function fprint(output:stdgo._internal.io.Io.Writer, fset:stdgo._internal.go.token.Token.FileSet, node:stdgo.AnyInterface):stdgo.Error throw "not implemented";
inline function testFiles(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
/**
    // TestLineComments, using a simple test case, checks that consecutive line
    // comments are properly terminated with a newline even if the AST position
    // information is incorrect.
**/
inline function testLineComments(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
/**
    // Verify that the printer doesn't crash if the AST contains BadXXX nodes.
**/
inline function testBadNodes(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
/**
    // Verify that the printer produces a correct program
    // even if the position information of comments introducing newlines
    // is incorrect.
**/
inline function testBadComments(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
/**
    // Verify that the SourcePos mode emits correct //line directives
    // by testing that position information for matching identifiers
    // is maintained.
**/
inline function testSourcePos(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
/**
    // Verify that the SourcePos mode doesn't emit unnecessary //line directives
    // before empty lines.
**/
inline function testIssue5945(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testDeclLists(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testStmtLists(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testBaseIndent(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
/**
    // TestFuncType tests that an ast.FuncType with a nil Params field
    // can be printed (per go/ast specification). Test case for issue 3870.
**/
inline function testFuncType(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
/**
    // Test whether the printer stops writing after the first error
**/
inline function testWriteErrors(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
/**
    // TextX is a skeleton test that can be filled in for debugging one-off cases.
    // Do not remove.
**/
inline function testX(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testCommentedNode(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testIssue11151(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
/**
    // If a declaration has multiple specifications, a parenthesized
    // declaration must be printed even if Lparen is token.NoPos.
**/
inline function testParenthesizedDecl(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
/**
    // Verify that we don't print a newline between "return" and its results, as
    // that would incorrectly cause a naked return.
**/
inline function testIssue32854(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testSourcePosNewline(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
@:invalid typedef T_sizeCounter_asInterface = Dynamic;
@:invalid typedef T_sizeCounter_static_extension = Dynamic;
@:invalid typedef T_printer_asInterface = Dynamic;
@:invalid typedef T_printer_static_extension = Dynamic;
@:invalid typedef T_trimmer_asInterface = Dynamic;
@:invalid typedef T_trimmer_static_extension = Dynamic;
@:invalid typedef Config_asInterface = Dynamic;
@:invalid typedef Config_static_extension = Dynamic;
@:invalid typedef T_limitWriter_asInterface = Dynamic;
@:invalid typedef T_limitWriter_static_extension = Dynamic;
@:invalid typedef T_visitor_asInterface = Dynamic;
@:invalid typedef T_visitor_static_extension = Dynamic;
