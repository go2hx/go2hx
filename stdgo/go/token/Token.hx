package stdgo.go.token;
var noPos : Pos = 0i64;
var iLLEGAL : Token_ = 0i64;
var eOF : Token_ = 1i64;
var cOMMENT : Token_ = 2i64;
var iDENT : Token_ = 4i64;
var iNT : Token_ = 5i64;
var fLOAT : Token_ = 6i64;
var iMAG : Token_ = 7i64;
var cHAR : Token_ = 8i64;
var sTRING : Token_ = 9i64;
var aDD : Token_ = 12i64;
var sUB : Token_ = 13i64;
var mUL : Token_ = 14i64;
var qUO : Token_ = 15i64;
var rEM : Token_ = 16i64;
var aND : Token_ = 17i64;
var oR : Token_ = 18i64;
var xOR : Token_ = 19i64;
var sHL : Token_ = 20i64;
var sHR : Token_ = 21i64;
var aND_NOT : Token_ = 22i64;
var aDD_ASSIGN : Token_ = 23i64;
var sUB_ASSIGN : Token_ = 24i64;
var mUL_ASSIGN : Token_ = 25i64;
var qUO_ASSIGN : Token_ = 26i64;
var rEM_ASSIGN : Token_ = 27i64;
var aND_ASSIGN : Token_ = 28i64;
var oR_ASSIGN : Token_ = 29i64;
var xOR_ASSIGN : Token_ = 30i64;
var sHL_ASSIGN : Token_ = 31i64;
var sHR_ASSIGN : Token_ = 32i64;
var aND_NOT_ASSIGN : Token_ = 33i64;
var lAND : Token_ = 34i64;
var lOR : Token_ = 35i64;
var aRROW : Token_ = 36i64;
var iNC : Token_ = 37i64;
var dEC : Token_ = 38i64;
var eQL : Token_ = 39i64;
var lSS : Token_ = 40i64;
var gTR : Token_ = 41i64;
var aSSIGN : Token_ = 42i64;
var nOT : Token_ = 43i64;
var nEQ : Token_ = 44i64;
var lEQ : Token_ = 45i64;
var gEQ : Token_ = 46i64;
var dEFINE : Token_ = 47i64;
var eLLIPSIS : Token_ = 48i64;
var lPAREN : Token_ = 49i64;
var lBRACK : Token_ = 50i64;
var lBRACE : Token_ = 51i64;
var cOMMA : Token_ = 52i64;
var pERIOD : Token_ = 53i64;
var rPAREN : Token_ = 54i64;
var rBRACK : Token_ = 55i64;
var rBRACE : Token_ = 56i64;
var sEMICOLON : Token_ = 57i64;
var cOLON : Token_ = 58i64;
var bREAK : Token_ = 61i64;
var cASE : Token_ = 62i64;
var cHAN : Token_ = 63i64;
var cONST : Token_ = 64i64;
var cONTINUE : Token_ = 65i64;
var dEFAULT : Token_ = 66i64;
var dEFER : Token_ = 67i64;
var eLSE : Token_ = 68i64;
var fALLTHROUGH : Token_ = 69i64;
var fOR : Token_ = 70i64;
var fUNC : Token_ = 71i64;
var gO : Token_ = 72i64;
var gOTO : Token_ = 73i64;
var iF : Token_ = 74i64;
var iMPORT : Token_ = 75i64;
var iNTERFACE : Token_ = 76i64;
var mAP : Token_ = 77i64;
var pACKAGE : Token_ = 78i64;
var rANGE : Token_ = 79i64;
var rETURN : Token_ = 80i64;
var sELECT : Token_ = 81i64;
var sTRUCT : Token_ = 82i64;
var sWITCH : Token_ = 83i64;
var tYPE : Token_ = 84i64;
var vAR : Token_ = 85i64;
var tILDE : Token_ = 88i64;
var lowestPrec : stdgo.GoUInt64 = 0i64;
var unaryPrec : stdgo.GoUInt64 = 6i64;
var highestPrec : stdgo.GoUInt64 = 7i64;
typedef Position = stdgo._internal.go.token.Token_position.Position;
typedef File = stdgo._internal.go.token.Token_file.File;
typedef FileSet = stdgo._internal.go.token.Token_fileset.FileSet;
typedef Pos = stdgo._internal.go.token.Token_pos.Pos;
typedef Token_ = stdgo._internal.go.token.Token_token.Token;
typedef PositionPointer = stdgo._internal.go.token.Token_positionpointer.PositionPointer;
typedef FilePointer = stdgo._internal.go.token.Token_filepointer.FilePointer;
typedef FileSetPointer = stdgo._internal.go.token.Token_filesetpointer.FileSetPointer;
typedef PosPointer = stdgo._internal.go.token.Token_pospointer.PosPointer;
typedef TokenPointer = stdgo._internal.go.token.Token_tokenpointer.TokenPointer;
/**
    * Package token defines constants representing the lexical tokens of the Go
    * programming language and basic operations on tokens (printing, predicates).
**/
class Token {
    /**
        * NewFileSet creates a new file set.
    **/
    static public inline function newFileSet():stdgo.Ref<stdgo._internal.go.token.Token_fileset.FileSet> return stdgo._internal.go.token.Token_newfileset.newFileSet();
    static public inline function benchmarkSearchInts(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void stdgo._internal.go.token.Token_benchmarksearchints.benchmarkSearchInts(_b);
    static public inline function testNoPos(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.go.token.Token_testnopos.testNoPos(_t);
    static public inline function testPositions(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.go.token.Token_testpositions.testPositions(_t);
    static public inline function testLineInfo(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.go.token.Token_testlineinfo.testLineInfo(_t);
    static public inline function testFiles(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.go.token.Token_testfiles.testFiles(_t);
    /**
        * FileSet.File should return nil if Pos is past the end of the FileSet.
    **/
    static public inline function testFileSetPastEnd(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.go.token.Token_testfilesetpastend.testFileSetPastEnd(_t);
    static public inline function testFileSetCacheUnlikely(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.go.token.Token_testfilesetcacheunlikely.testFileSetCacheUnlikely(_t);
    /**
        * issue 4345. Test that concurrent use of FileSet.Pos does not trigger a
        * race in the FileSet position cache.
    **/
    static public inline function testFileSetRace(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.go.token.Token_testfilesetrace.testFileSetRace(_t);
    /**
        * issue 16548. Test that concurrent use of File.AddLine and FileSet.PositionFor
        * does not trigger a race in the FileSet position cache.
    **/
    static public inline function testFileSetRace2(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.go.token.Token_testfilesetrace2.testFileSetRace2(_t);
    static public inline function testPositionFor(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.go.token.Token_testpositionfor.testPositionFor(_t);
    static public inline function testLineStart(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.go.token.Token_testlinestart.testLineStart(_t);
    static public inline function testRemoveFile(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.go.token.Token_testremovefile.testRemoveFile(_t);
    static public inline function testFileAddLineColumnInfo(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.go.token.Token_testfileaddlinecolumninfo.testFileAddLineColumnInfo(_t);
    static public inline function testSerialization(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.go.token.Token_testserialization.testSerialization(_t);
    /**
        * Lookup maps an identifier to its keyword token or IDENT (if not a keyword).
    **/
    static public inline function lookup(_ident:stdgo.GoString):stdgo._internal.go.token.Token_token.Token return stdgo._internal.go.token.Token_lookup.lookup(_ident);
    /**
        * IsExported reports whether name starts with an upper-case letter.
    **/
    static public inline function isExported(_name:stdgo.GoString):Bool return stdgo._internal.go.token.Token_isexported.isExported(_name);
    /**
        * IsKeyword reports whether name is a Go keyword, such as "func" or "return".
    **/
    static public inline function isKeyword(_name:stdgo.GoString):Bool return stdgo._internal.go.token.Token_iskeyword.isKeyword(_name);
    /**
        * IsIdentifier reports whether name is a Go identifier, that is, a non-empty
        * string made up of letters, digits, and underscores, where the first character
        * is not a digit. Keywords are not identifiers.
    **/
    static public inline function isIdentifier(_name:stdgo.GoString):Bool return stdgo._internal.go.token.Token_isidentifier.isIdentifier(_name);
    static public inline function testIsIdentifier(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.go.token.Token_testisidentifier.testIsIdentifier(_t);
}
