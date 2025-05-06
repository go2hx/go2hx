package stdgo.go.printer;
var rawFormat : Mode = 1i64;
var tabIndent : Mode = 2i64;
var useSpaces : Mode = 4i64;
var sourcePos : Mode = 8i64;
typedef Config = stdgo._internal.go.printer.Printer_config.Config;
typedef CommentedNode = stdgo._internal.go.printer.Printer_commentednode.CommentedNode;
typedef Mode = stdgo._internal.go.printer.Printer_mode.Mode;
typedef ConfigPointer = stdgo._internal.go.printer.Printer_configpointer.ConfigPointer;
typedef CommentedNodePointer = stdgo._internal.go.printer.Printer_commentednodepointer.CommentedNodePointer;
typedef ModePointer = stdgo._internal.go.printer.Printer_modepointer.ModePointer;
/**
    * Package printer implements printing of AST nodes.
**/
class Printer {
    static public inline function benchmarkPrintFile(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void stdgo._internal.go.printer.Printer_benchmarkprintfile.benchmarkPrintFile(_b);
    static public inline function benchmarkPrintDecl(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void stdgo._internal.go.printer.Printer_benchmarkprintdecl.benchmarkPrintDecl(_b);
    /**
        * Fprint "pretty-prints" an AST node to output.
        * It calls Config.Fprint with default settings.
        * Note that gofmt uses tabs for indentation but spaces for alignment;
        * use format.Node (package go/format) for output that matches gofmt.
    **/
    static public inline function fprint(_output:stdgo._internal.io.Io_writer.Writer, _fset:stdgo.Ref<stdgo._internal.go.token.Token_fileset.FileSet>, _node:stdgo.AnyInterface):stdgo.Error return stdgo._internal.go.printer.Printer_fprint.fprint(_output, _fset, _node);
    static public inline function testFiles(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.go.printer.Printer_testfiles.testFiles(_t);
    /**
        * TestLineComments, using a simple test case, checks that consecutive line
        * comments are properly terminated with a newline even if the AST position
        * information is incorrect.
    **/
    static public inline function testLineComments(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.go.printer.Printer_testlinecomments.testLineComments(_t);
    /**
        * Verify that the printer doesn't crash if the AST contains BadXXX nodes.
    **/
    static public inline function testBadNodes(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.go.printer.Printer_testbadnodes.testBadNodes(_t);
    /**
        * Verify that the printer produces a correct program
        * even if the position information of comments introducing newlines
        * is incorrect.
    **/
    static public inline function testBadComments(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.go.printer.Printer_testbadcomments.testBadComments(_t);
    /**
        * Verify that the SourcePos mode emits correct //line directives
        * by testing that position information for matching identifiers
        * is maintained.
    **/
    static public inline function testSourcePos(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.go.printer.Printer_testsourcepos.testSourcePos(_t);
    /**
        * Verify that the SourcePos mode doesn't emit unnecessary //line directives
        * before empty lines.
    **/
    static public inline function testIssue5945(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.go.printer.Printer_testissue5945.testIssue5945(_t);
    static public inline function testDeclLists(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.go.printer.Printer_testdecllists.testDeclLists(_t);
    static public inline function testStmtLists(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.go.printer.Printer_teststmtlists.testStmtLists(_t);
    static public inline function testBaseIndent(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.go.printer.Printer_testbaseindent.testBaseIndent(_t);
    /**
        * TestFuncType tests that an ast.FuncType with a nil Params field
        * can be printed (per go/ast specification). Test case for issue 3870.
    **/
    static public inline function testFuncType(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.go.printer.Printer_testfunctype.testFuncType(_t);
    /**
        * Test whether the printer stops writing after the first error
    **/
    static public inline function testWriteErrors(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.go.printer.Printer_testwriteerrors.testWriteErrors(_t);
    /**
        * TextX is a skeleton test that can be filled in for debugging one-off cases.
        * Do not remove.
    **/
    static public inline function testX(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.go.printer.Printer_testx.testX(_t);
    static public inline function testCommentedNode(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.go.printer.Printer_testcommentednode.testCommentedNode(_t);
    static public inline function testIssue11151(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.go.printer.Printer_testissue11151.testIssue11151(_t);
    /**
        * If a declaration has multiple specifications, a parenthesized
        * declaration must be printed even if Lparen is token.NoPos.
    **/
    static public inline function testParenthesizedDecl(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.go.printer.Printer_testparenthesizeddecl.testParenthesizedDecl(_t);
    /**
        * Verify that we don't print a newline between "return" and its results, as
        * that would incorrectly cause a naked return.
    **/
    static public inline function testIssue32854(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.go.printer.Printer_testissue32854.testIssue32854(_t);
    static public inline function testSourcePosNewline(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.go.printer.Printer_testsourceposnewline.testSourcePosNewline(_t);
}
