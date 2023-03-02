package stdgo.go.token;
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
    // Package token defines constants representing the lexical tokens of the Go
    // programming language and basic operations on tokens (printing, predicates).
**/
private var __go2hxdoc__package : Bool;
/**
    
    
    
**/
private var _tokens = {
        var s:GoArray<GoString> = new GoArray<GoString>(...[for (i in 0 ... 89) ""]);
        s[0] = ("ILLEGAL" : GoString);
        s[1] = ("EOF" : GoString);
        s[2] = ("COMMENT" : GoString);
        s[4] = ("IDENT" : GoString);
        s[5] = ("INT" : GoString);
        s[6] = ("FLOAT" : GoString);
        s[7] = ("IMAG" : GoString);
        s[8] = ("CHAR" : GoString);
        s[9] = ("STRING" : GoString);
        s[12] = ("+" : GoString);
        s[13] = ("-" : GoString);
        s[14] = ("*" : GoString);
        s[15] = ("/" : GoString);
        s[16] = ("%" : GoString);
        s[17] = ("&" : GoString);
        s[18] = ("|" : GoString);
        s[19] = ("^" : GoString);
        s[20] = ("<<" : GoString);
        s[21] = (">>" : GoString);
        s[22] = ("&^" : GoString);
        s[23] = ("+=" : GoString);
        s[24] = ("-=" : GoString);
        s[25] = ("*=" : GoString);
        s[26] = ("/=" : GoString);
        s[27] = ("%=" : GoString);
        s[28] = ("&=" : GoString);
        s[29] = ("|=" : GoString);
        s[30] = ("^=" : GoString);
        s[31] = ("<<=" : GoString);
        s[32] = (">>=" : GoString);
        s[33] = ("&^=" : GoString);
        s[34] = ("&&" : GoString);
        s[35] = ("||" : GoString);
        s[36] = ("<-" : GoString);
        s[37] = ("++" : GoString);
        s[38] = ("--" : GoString);
        s[39] = ("==" : GoString);
        s[40] = ("<" : GoString);
        s[41] = (">" : GoString);
        s[42] = ("=" : GoString);
        s[43] = ("!" : GoString);
        s[44] = ("!=" : GoString);
        s[45] = ("<=" : GoString);
        s[46] = (">=" : GoString);
        s[47] = (":=" : GoString);
        s[48] = ("..." : GoString);
        s[49] = ("(" : GoString);
        s[50] = ("[" : GoString);
        s[51] = ("{" : GoString);
        s[52] = ("," : GoString);
        s[53] = ("." : GoString);
        s[54] = (")" : GoString);
        s[55] = ("]" : GoString);
        s[56] = ("}" : GoString);
        s[57] = (";" : GoString);
        s[58] = (":" : GoString);
        s[61] = ("break" : GoString);
        s[62] = ("case" : GoString);
        s[63] = ("chan" : GoString);
        s[64] = ("const" : GoString);
        s[65] = ("continue" : GoString);
        s[66] = ("default" : GoString);
        s[67] = ("defer" : GoString);
        s[68] = ("else" : GoString);
        s[69] = ("fallthrough" : GoString);
        s[70] = ("for" : GoString);
        s[71] = ("func" : GoString);
        s[72] = ("go" : GoString);
        s[73] = ("goto" : GoString);
        s[74] = ("if" : GoString);
        s[75] = ("import" : GoString);
        s[76] = ("interface" : GoString);
        s[77] = ("map" : GoString);
        s[78] = ("package" : GoString);
        s[79] = ("range" : GoString);
        s[80] = ("return" : GoString);
        s[81] = ("select" : GoString);
        s[82] = ("struct" : GoString);
        s[83] = ("switch" : GoString);
        s[84] = ("type" : GoString);
        s[85] = ("var" : GoString);
        s[88] = ("~" : GoString);
        s;
    };
/**
    
    
    
**/
private var _tests = (new Slice<T__struct_0>(0, 0, ({ _filename : ("a" : GoString), _source : (new Slice<GoUInt8>(0, 0) : Slice<GoUInt8>), _size : (0 : GoInt), _lines : (new Slice<GoInt>(0, 0) : Slice<GoInt>) } : T__struct_0), ({ _filename : ("b" : GoString), _source : (("01234" : GoString) : Slice<GoByte>), _size : (5 : GoInt), _lines : (new Slice<GoInt>(0, 0, (0 : GoInt)) : Slice<GoInt>) } : T__struct_0), ({ _filename : ("c" : GoString), _source : (("\n\n\n\n\n\n\n\n\n" : GoString) : Slice<GoByte>), _size : (9 : GoInt), _lines : (new Slice<GoInt>(
0,
0,
(0 : GoInt),
(1 : GoInt),
(2 : GoInt),
(3 : GoInt),
(4 : GoInt),
(5 : GoInt),
(6 : GoInt),
(7 : GoInt),
(8 : GoInt)) : Slice<GoInt>) } : T__struct_0), ({ _filename : ("d" : GoString), _source : (null : Slice<GoUInt8>), _size : (100 : GoInt), _lines : (new Slice<GoInt>(
0,
0,
(0 : GoInt),
(5 : GoInt),
(10 : GoInt),
(20 : GoInt),
(30 : GoInt),
(70 : GoInt),
(71 : GoInt),
(72 : GoInt),
(80 : GoInt),
(85 : GoInt),
(90 : GoInt),
(99 : GoInt)) : Slice<GoInt>) } : T__struct_0), ({ _filename : ("e" : GoString), _source : (null : Slice<GoUInt8>), _size : (777 : GoInt), _lines : (new Slice<GoInt>(
0,
0,
(0 : GoInt),
(80 : GoInt),
(100 : GoInt),
(120 : GoInt),
(130 : GoInt),
(180 : GoInt),
(267 : GoInt),
(455 : GoInt),
(500 : GoInt),
(567 : GoInt),
(620 : GoInt)) : Slice<GoInt>) } : T__struct_0), ({ _filename : ("f" : GoString), _source : (("package p\n\nimport \"fmt\"" : GoString) : Slice<GoByte>), _size : (23 : GoInt), _lines : (new Slice<GoInt>(0, 0, (0 : GoInt), (10 : GoInt), (11 : GoInt)) : Slice<GoInt>) } : T__struct_0), ({ _filename : ("g" : GoString), _source : (("package p\n\nimport \"fmt\"\n" : GoString) : Slice<GoByte>), _size : (24 : GoInt), _lines : (new Slice<GoInt>(0, 0, (0 : GoInt), (10 : GoInt), (11 : GoInt)) : Slice<GoInt>) } : T__struct_0), ({ _filename : ("h" : GoString), _source : (("package p\n\nimport \"fmt\"\n " : GoString) : Slice<GoByte>), _size : (25 : GoInt), _lines : (new Slice<GoInt>(0, 0, (0 : GoInt), (10 : GoInt), (11 : GoInt), (24 : GoInt)) : Slice<GoInt>) } : T__struct_0)) : Slice<T__struct_0>);
/**
    // The zero value for Pos is NoPos; there is no file and line information
    // associated with it, and NoPos.IsValid() is false. NoPos is always
    // smaller than any other Pos value. The corresponding Position value
    // for NoPos is the zero value for Position.
    
    
**/
final noPos : Pos = (0 : Pos);
/**
    // Special tokens
    
    
**/
final illegal : Token = (89 : Token);
/**
    // The list of tokens.
    
    
**/
final eof = (89 : Token);
/**
    // The list of tokens.
    
    
**/
final comment = (89 : Token);
/**
    // The list of tokens.
    
    
**/
private final _literal_beg = (89 : Token);
/**
    // Identifiers and basic type literals
    // (these tokens stand for classes of literals)
    
    // main
**/
final ident = (89 : Token);
/**
    // The list of tokens.
    
    // 12345
**/
final int_ = (89 : Token);
/**
    // The list of tokens.
    
    // 123.45
**/
final float_ = (89 : Token);
/**
    // The list of tokens.
    
    // 123.45i
**/
final imag = (89 : Token);
/**
    // The list of tokens.
    
    // 'a'
**/
final char = (89 : Token);
/**
    // The list of tokens.
    
    // "abc"
**/
final string = (89 : Token);
/**
    // The list of tokens.
    
    
**/
private final _literal_end = (89 : Token);
/**
    // The list of tokens.
    
    
**/
private final _operator_beg = (89 : Token);
/**
    // Operators and delimiters
    
    // +
**/
final add = (89 : Token);
/**
    // The list of tokens.
    
    // -
**/
final sub = (89 : Token);
/**
    // The list of tokens.
    
    // *
**/
final mul = (89 : Token);
/**
    // The list of tokens.
    
    // /
**/
final quo = (89 : Token);
/**
    // The list of tokens.
    
    // %
**/
final rem = (89 : Token);
/**
    // The list of tokens.
    
    // &
**/
final and = (89 : Token);
/**
    // The list of tokens.
    
    // |
**/
final or = (89 : Token);
/**
    // The list of tokens.
    
    // ^
**/
final xor = (89 : Token);
/**
    // The list of tokens.
    
    // <<
**/
final shl = (89 : Token);
/**
    // The list of tokens.
    
    // >>
**/
final shr = (89 : Token);
/**
    // The list of tokens.
    
    // &^
**/
final and_NOT = (89 : Token);
/**
    // The list of tokens.
    
    // +=
**/
final add_ASSIGN = (89 : Token);
/**
    // The list of tokens.
    
    // -=
**/
final sub_ASSIGN = (89 : Token);
/**
    // The list of tokens.
    
    // *=
**/
final mul_ASSIGN = (89 : Token);
/**
    // The list of tokens.
    
    // /=
**/
final quo_ASSIGN = (89 : Token);
/**
    // The list of tokens.
    
    // %=
**/
final rem_ASSIGN = (89 : Token);
/**
    // The list of tokens.
    
    // &=
**/
final and_ASSIGN = (89 : Token);
/**
    // The list of tokens.
    
    // |=
**/
final or_ASSIGN = (89 : Token);
/**
    // The list of tokens.
    
    // ^=
**/
final xor_ASSIGN = (89 : Token);
/**
    // The list of tokens.
    
    // <<=
**/
final shl_ASSIGN = (89 : Token);
/**
    // The list of tokens.
    
    // >>=
**/
final shr_ASSIGN = (89 : Token);
/**
    // The list of tokens.
    
    // &^=
**/
final and_NOT_ASSIGN = (89 : Token);
/**
    // The list of tokens.
    
    // &&
**/
final land = (89 : Token);
/**
    // The list of tokens.
    
    // ||
**/
final lor = (89 : Token);
/**
    // The list of tokens.
    
    // <-
**/
final arrow = (89 : Token);
/**
    // The list of tokens.
    
    // ++
**/
final inc = (89 : Token);
/**
    // The list of tokens.
    
    // --
**/
final dec = (89 : Token);
/**
    // The list of tokens.
    
    // ==
**/
final eql = (89 : Token);
/**
    // The list of tokens.
    
    // <
**/
final lss = (89 : Token);
/**
    // The list of tokens.
    
    // >
**/
final gtr = (89 : Token);
/**
    // The list of tokens.
    
    // =
**/
final assign = (89 : Token);
/**
    // The list of tokens.
    
    // !
**/
final not = (89 : Token);
/**
    // The list of tokens.
    
    // !=
**/
final neq = (89 : Token);
/**
    // The list of tokens.
    
    // <=
**/
final leq = (89 : Token);
/**
    // The list of tokens.
    
    // >=
**/
final geq = (89 : Token);
/**
    // The list of tokens.
    
    // :=
**/
final define = (89 : Token);
/**
    // The list of tokens.
    
    // ...
**/
final ellipsis = (89 : Token);
/**
    // The list of tokens.
    
    // (
**/
final lparen = (89 : Token);
/**
    // The list of tokens.
    
    // [
**/
final lbrack = (89 : Token);
/**
    // The list of tokens.
    
    // {
**/
final lbrace = (89 : Token);
/**
    // The list of tokens.
    
    // ,
**/
final comma = (89 : Token);
/**
    // The list of tokens.
    
    // .
**/
final period = (89 : Token);
/**
    // The list of tokens.
    
    // )
**/
final rparen = (89 : Token);
/**
    // The list of tokens.
    
    // ]
**/
final rbrack = (89 : Token);
/**
    // The list of tokens.
    
    // }
**/
final rbrace = (89 : Token);
/**
    // The list of tokens.
    
    // ;
**/
final semicolon = (89 : Token);
/**
    // The list of tokens.
    
    // :
**/
final colon = (89 : Token);
/**
    // The list of tokens.
    
    
**/
private final _operator_end = (89 : Token);
/**
    // The list of tokens.
    
    
**/
private final _keyword_beg = (89 : Token);
/**
    // Keywords
    
    
**/
final break_ = (89 : Token);
/**
    // The list of tokens.
    
    
**/
final case_ = (89 : Token);
/**
    // The list of tokens.
    
    
**/
final chan = (89 : Token);
/**
    // The list of tokens.
    
    
**/
final const = (89 : Token);
/**
    // The list of tokens.
    
    
**/
final continue_ = (89 : Token);
/**
    // The list of tokens.
    
    
**/
final default_ = (89 : Token);
/**
    // The list of tokens.
    
    
**/
final defer = (89 : Token);
/**
    // The list of tokens.
    
    
**/
final else_ = (89 : Token);
/**
    // The list of tokens.
    
    
**/
final fallthrough = (89 : Token);
/**
    // The list of tokens.
    
    
**/
final for_ = (89 : Token);
/**
    // The list of tokens.
    
    
**/
final func = (89 : Token);
/**
    // The list of tokens.
    
    
**/
final go = (89 : Token);
/**
    // The list of tokens.
    
    
**/
final goto = (89 : Token);
/**
    // The list of tokens.
    
    
**/
final if_ = (89 : Token);
/**
    // The list of tokens.
    
    
**/
final import_ = (89 : Token);
/**
    // The list of tokens.
    
    
**/
final interface_ = (89 : Token);
/**
    // The list of tokens.
    
    
**/
final map = (89 : Token);
/**
    // The list of tokens.
    
    
**/
final package_ = (89 : Token);
/**
    // The list of tokens.
    
    
**/
final range = (89 : Token);
/**
    // The list of tokens.
    
    
**/
final return_ = (89 : Token);
/**
    // The list of tokens.
    
    
**/
final select = (89 : Token);
/**
    // The list of tokens.
    
    
**/
final struct_ = (89 : Token);
/**
    // The list of tokens.
    
    
**/
final switch_ = (89 : Token);
/**
    // The list of tokens.
    
    
**/
final type = (89 : Token);
/**
    // The list of tokens.
    
    
**/
final var_ = (89 : Token);
/**
    // The list of tokens.
    
    
**/
private final _keyword_end = (89 : Token);
/**
    // The list of tokens.
    
    
**/
private final _additional_beg = (89 : Token);
/**
    // additional tokens, handled in an ad-hoc manner
    
    
**/
final tilde = (89 : Token);
/**
    // The list of tokens.
    
    
**/
private final _additional_end = (89 : Token);
/**
    // A set of constants for precedence-based expression parsing.
    // Non-operators have lowest precedence, followed by operators
    // starting with precedence 1 up to unary operators. The highest
    // precedence serves as "catch-all" precedence for selector,
    // indexing, and other operator and delimiter tokens.
    
    // non-operators
**/
final lowestPrec = ("0" : GoUInt64);
/**
    // A set of constants for precedence-based expression parsing.
    // Non-operators have lowest precedence, followed by operators
    // starting with precedence 1 up to unary operators. The highest
    // precedence serves as "catch-all" precedence for selector,
    // indexing, and other operator and delimiter tokens.
    
    
**/
final unaryPrec = ("6" : GoUInt64);
/**
    // A set of constants for precedence-based expression parsing.
    // Non-operators have lowest precedence, followed by operators
    // starting with precedence 1 up to unary operators. The highest
    // precedence serves as "catch-all" precedence for selector,
    // indexing, and other operator and delimiter tokens.
    
    
**/
final highestPrec = ("7" : GoUInt64);
/**
    
    
    
**/
private var _keywords : GoMap<GoString, Token> = (null : GoMap<GoString, Token>);
/**
    // Position describes an arbitrary source position
    // including the file, line, and column location.
    // A Position is valid if the line number is > 0.
    
    
**/
@:structInit @:using(stdgo.go.token.Token.Position_static_extension) class Position {
    public var filename : GoString = "";
    public var offset : GoInt = 0;
    public var line : GoInt = 0;
    public var column : GoInt = 0;
    public function new(?filename:GoString, ?offset:GoInt, ?line:GoInt, ?column:GoInt) {
        if (filename != null) this.filename = filename;
        if (offset != null) this.offset = offset;
        if (line != null) this.line = line;
        if (column != null) this.column = column;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new Position(filename, offset, line, column);
    }
}
/**
    // A File is a handle for a file belonging to a FileSet.
    // A File has a name, size, and line offset table.
    
    
**/
@:structInit @:using(stdgo.go.token.Token.File_static_extension) class File {
    public var _name : GoString = "";
    public var _base : GoInt = 0;
    public var _size : GoInt = 0;
    /**
        // lines and infos are protected by mutex
    **/
    public var _mutex : stdgo.sync.Sync.Mutex = ({} : stdgo.sync.Sync.Mutex);
    public var _lines : Slice<GoInt> = (null : Slice<GoInt>);
    public var _infos : Slice<T_lineInfo> = (null : Slice<T_lineInfo>);
    public function new(?_name:GoString, ?_base:GoInt, ?_size:GoInt, ?_mutex:stdgo.sync.Sync.Mutex, ?_lines:Slice<GoInt>, ?_infos:Slice<T_lineInfo>) {
        if (_name != null) this._name = _name;
        if (_base != null) this._base = _base;
        if (_size != null) this._size = _size;
        if (_mutex != null) this._mutex = _mutex;
        if (_lines != null) this._lines = _lines;
        if (_infos != null) this._infos = _infos;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new File(_name, _base, _size, _mutex, _lines, _infos);
    }
}
/**
    // A lineInfo object describes alternative file, line, and column
    // number information (such as provided via a //line directive)
    // for a given file offset.
    
    
**/
@:structInit @:private class T_lineInfo {
    /**
        // fields are exported to make them accessible to gob
    **/
    public var offset : GoInt = 0;
    public var filename : GoString = "";
    public var line : GoInt = 0;
    public var column : GoInt = 0;
    public function new(?offset:GoInt, ?filename:GoString, ?line:GoInt, ?column:GoInt) {
        if (offset != null) this.offset = offset;
        if (filename != null) this.filename = filename;
        if (line != null) this.line = line;
        if (column != null) this.column = column;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new T_lineInfo(offset, filename, line, column);
    }
}
/**
    // A FileSet represents a set of source files.
    // Methods of file sets are synchronized; multiple goroutines
    // may invoke them concurrently.
    //
    // The byte offsets for each file in a file set are mapped into
    // distinct (integer) intervals, one interval [base, base+size]
    // per file. Base represents the first byte in the file, and size
    // is the corresponding file size. A Pos value is a value in such
    // an interval. By determining the interval a Pos value belongs
    // to, the file, its file base, and thus the byte offset (position)
    // the Pos value is representing can be computed.
    //
    // When adding a new file, a file base must be provided. That can
    // be any integer value that is past the end of any interval of any
    // file already in the file set. For convenience, FileSet.Base provides
    // such a value, which is simply the end of the Pos interval of the most
    // recently added file, plus one. Unless there is a need to extend an
    // interval later, using the FileSet.Base should be used as argument
    // for FileSet.AddFile.
    //
    // A File may be removed from a FileSet when it is no longer needed.
    // This may reduce memory usage in a long-running application.
    
    
**/
@:structInit @:using(stdgo.go.token.Token.FileSet_static_extension) class FileSet {
    public var _mutex : stdgo.sync.Sync.RWMutex = ({} : stdgo.sync.Sync.RWMutex);
    public var _base : GoInt = 0;
    public var _files : Slice<Ref<File>> = (null : Slice<Ref<File>>);
    public var _last : stdgo.sync.atomic.Atomic.Pointer_<File> = ({} : stdgo.sync.atomic.Atomic.Pointer_<File>);
    public function new(?_mutex:stdgo.sync.Sync.RWMutex, ?_base:GoInt, ?_files:Slice<Ref<File>>, ?_last:stdgo.sync.atomic.Atomic.Pointer_<File>) {
        if (_mutex != null) this._mutex = _mutex;
        if (_base != null) this._base = _base;
        if (_files != null) this._files = _files;
        if (_last != null) this._last = _last;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new FileSet(_mutex, _base, _files, _last);
    }
}
/**
    
    
    
**/
@:structInit @:private class T_serializedFile {
    /**
        // fields correspond 1:1 to fields with same (lower-case) name in File
    **/
    public var name : GoString = "";
    public var base : GoInt = 0;
    public var size : GoInt = 0;
    public var lines : Slice<GoInt> = (null : Slice<GoInt>);
    public var infos : Slice<T_lineInfo> = (null : Slice<T_lineInfo>);
    public function new(?name:GoString, ?base:GoInt, ?size:GoInt, ?lines:Slice<GoInt>, ?infos:Slice<T_lineInfo>) {
        if (name != null) this.name = name;
        if (base != null) this.base = base;
        if (size != null) this.size = size;
        if (lines != null) this.lines = lines;
        if (infos != null) this.infos = infos;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new T_serializedFile(name, base, size, lines, infos);
    }
}
/**
    
    
    
**/
@:structInit @:private class T_serializedFileSet {
    public var base : GoInt = 0;
    public var files : Slice<T_serializedFile> = (null : Slice<T_serializedFile>);
    public function new(?base:GoInt, ?files:Slice<T_serializedFile>) {
        if (base != null) this.base = base;
        if (files != null) this.files = files;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new T_serializedFileSet(base, files);
    }
}
class T__struct_0_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<T__struct_0>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.go.token.Token.T__struct_0_asInterface) class T__struct_0_static_extension {

}
@:local @:using(stdgo.go.token.Token.T__struct_0_static_extension) private typedef T__struct_0 = {
    public var _filename : GoString;
    public var _source : Slice<GoUInt8>;
    public var _size : GoInt;
    public var _lines : Slice<GoInt>;
};
class T__struct_1_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<T__struct_1>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.go.token.Token.T__struct_1_asInterface) class T__struct_1_static_extension {

}
@:local @:using(stdgo.go.token.Token.T__struct_1_static_extension) private typedef T__struct_1 = {
    public var _name : GoString;
    public var _infos : Slice<T_lineInfo>;
    public var _want : Slice<T_lineInfo>;
};
class T__struct_2_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<T__struct_2>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.go.token.Token.T__struct_2_asInterface) class T__struct_2_static_extension {

}
@:local @:using(stdgo.go.token.Token.T__struct_2_static_extension) private typedef T__struct_2 = {
    public var _name : GoString;
    public var _in : GoString;
    public var _want : Bool;
};
/**
    // Pos is a compact encoding of a source position within a file set.
    // It can be converted into a Position for a more convenient, but much
    // larger, representation.
    //
    // The Pos value for a given file is a number in the range [base, base+size],
    // where base and size are specified when a file is added to the file set.
    // The difference between a Pos value and the corresponding file base
    // corresponds to the byte offset of that position (represented by the Pos value)
    // from the beginning of the file. Thus, the file base offset is the Pos value
    // representing the first byte in the file.
    //
    // To create the Pos value for a specific source offset (measured in bytes),
    // first add the respective file to the current file set using FileSet.AddFile
    // and then call File.Pos(offset) for that file. Given a Pos value p
    // for a specific file set fset, the corresponding Position value is
    // obtained by calling fset.Position(p).
    //
    // Pos values can be compared directly with the usual comparison operators:
    // If two Pos values p and q are in the same file, comparing p and q is
    // equivalent to comparing the respective source file offsets. If p and q
    // are in different files, p < q is true if the file implied by p was added
    // to the respective file set before the file implied by q.
**/
@:named @:using(stdgo.go.token.Token.Pos_static_extension) typedef Pos = GoInt;
/**
    // Token is the set of lexical tokens of the Go programming language.
**/
@:named @:using(stdgo.go.token.Token.Token_static_extension) typedef Token = GoInt;
private function _searchLineInfos(_a:Slice<T_lineInfo>, _x:GoInt):GoInt {
        return stdgo.sort.Sort.search((_a.length), function(_i:GoInt):Bool {
            return _a[(_i : GoInt)].offset > _x;
        }) - (1 : GoInt);
    }
/**
    // NewFileSet creates a new file set.
**/
function newFileSet():Ref<FileSet> {
        return (Go.setRef(({ _base : (1 : GoInt) } : FileSet)) : Ref<FileSet>);
    }
private function _searchFiles(_a:Slice<Ref<File>>, _x:GoInt):GoInt {
        return stdgo.sort.Sort.search((_a.length), function(_i:GoInt):Bool {
            return _a[(_i : GoInt)]._base > _x;
        }) - (1 : GoInt);
    }
private function _searchInts(_a:Slice<GoInt>, _x:GoInt):GoInt {
        var _0:GoInt = (0 : GoInt), _1:GoInt = (_a.length), _j:GoInt = _1, _i:GoInt = _0;
        while (_i < _j) {
            var _h:GoInt = ((_i + _j : GoUInt) >> ("1" : GoUInt64) : GoInt);
            if (_a[(_h : GoInt)] <= _x) {
                _i = _h + (1 : GoInt);
            } else {
                _j = _h;
            };
        };
        return _i - (1 : GoInt);
    }
function benchmarkSearchInts(_b:Ref<stdgo.testing.Testing.B>):Void {
        var _data = new Slice<GoInt>((10000 : GoInt).toBasic(), 0, ...[for (i in 0 ... (10000 : GoInt).toBasic()) (0 : GoInt)]);
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i < (10000 : GoInt), _i++, {
                _data[(_i : GoInt)] = _i;
            });
        };
        {};
        {
            var _r:GoInt = _searchInts(_data, (8 : GoInt));
            if (_r != ((8 : GoInt))) {
                _b.errorf(("got index = %d; want %d" : GoString), Go.toInterface(_r), Go.toInterface((8 : GoInt)));
            };
        };
        _b.resetTimer();
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i < _b.n, _i++, {
                _searchInts(_data, (8 : GoInt));
            });
        };
    }
private function _checkPos(_t:Ref<stdgo.testing.Testing.T>, _msg:GoString, _got:Position, _want:Position):Void {
        if (_got.filename != (_want.filename)) {
            _t.errorf(("%s: got filename = %q; want %q" : GoString), Go.toInterface(_msg), Go.toInterface(_got.filename), Go.toInterface(_want.filename));
        };
        if (_got.offset != (_want.offset)) {
            _t.errorf(("%s: got offset = %d; want %d" : GoString), Go.toInterface(_msg), Go.toInterface(_got.offset), Go.toInterface(_want.offset));
        };
        if (_got.line != (_want.line)) {
            _t.errorf(("%s: got line = %d; want %d" : GoString), Go.toInterface(_msg), Go.toInterface(_got.line), Go.toInterface(_want.line));
        };
        if (_got.column != (_want.column)) {
            _t.errorf(("%s: got column = %d; want %d" : GoString), Go.toInterface(_msg), Go.toInterface(_got.column), Go.toInterface(_want.column));
        };
    }
function testNoPos(_t:Ref<stdgo.testing.Testing.T>):Void {
        if ((0 : Pos).isValid()) {
            _t.errorf(("NoPos should not be valid" : GoString));
        };
        var _fset:Ref<FileSet> = (null : Ref<FileSet>);
        _checkPos(_t, ("nil NoPos" : GoString), _fset.position((0 : Pos)).__copy__(), (new Position() : Position));
        _fset = newFileSet();
        _checkPos(_t, ("fset NoPos" : GoString), _fset.position((0 : Pos)).__copy__(), (new Position() : Position));
    }
private function _linecol(_lines:Slice<GoInt>, _offs:GoInt):{ var _0 : GoInt; var _1 : GoInt; } {
        var _prevLineOffs:GoInt = (0 : GoInt);
        for (_line => _lineOffs in _lines) {
            if (_offs < _lineOffs) {
                return { _0 : _line, _1 : (_offs - _prevLineOffs) + (1 : GoInt) };
            };
            _prevLineOffs = _lineOffs;
        };
        return { _0 : (_lines.length), _1 : (_offs - _prevLineOffs) + (1 : GoInt) };
    }
private function _verifyPositions(_t:Ref<stdgo.testing.Testing.T>, _fset:Ref<FileSet>, _f:Ref<File>, _lines:Slice<GoInt>):Void {
        {
            var _offs:GoInt = (0 : GoInt);
            Go.cfor(_offs < _f.size(), _offs++, {
                var _p:Pos = _f.pos(_offs);
                var _offs2:GoInt = _f.offset(_p);
                if (_offs2 != (_offs)) {
                    _t.errorf(("%s, Offset: got offset %d; want %d" : GoString), Go.toInterface(_f.name()), Go.toInterface(_offs2), Go.toInterface(_offs));
                };
                var __tmp__ = _linecol(_lines, _offs), _line:GoInt = __tmp__._0, _col:GoInt = __tmp__._1;
                var _msg:GoString = stdgo.fmt.Fmt.sprintf(("%s (offs = %d, p = %d)" : GoString), Go.toInterface(_f.name()), Go.toInterface(_offs), Go.toInterface(Go.asInterface(_p)));
                _checkPos(_t, _msg, _f.position(_f.pos(_offs)).__copy__(), (new Position(_f.name(), _offs, _line, _col) : Position));
                _checkPos(_t, _msg, _fset.position(_p).__copy__(), (new Position(_f.name(), _offs, _line, _col) : Position));
            });
        };
    }
private function _makeTestSource(_size:GoInt, _lines:Slice<GoInt>):Slice<GoByte> {
        var _src = new Slice<GoUInt8>((_size : GoInt).toBasic(), 0, ...[for (i in 0 ... (_size : GoInt).toBasic()) (0 : GoUInt8)]);
        for (_0 => _offs in _lines) {
            if (_offs > (0 : GoInt)) {
                _src[(_offs - (1 : GoInt) : GoInt)] = (10 : GoUInt8);
            };
        };
        return _src;
    }
function testPositions(_t:Ref<stdgo.testing.Testing.T>):Void {
        {};
        var _fset = newFileSet();
        for (_0 => _test in _tests) {
            if ((_test._source != null) && (_test._source.length != _test._size)) {
                _t.errorf(("%s: inconsistent test case: got file size %d; want %d" : GoString), Go.toInterface(_test._filename), Go.toInterface((_test._source.length)), Go.toInterface(_test._size));
            };
            var _f = _fset.addFile(_test._filename, _fset.base() + (7 : GoInt), _test._size);
            if (_f.name() != (_test._filename)) {
                _t.errorf(("got filename %q; want %q" : GoString), Go.toInterface(_f.name()), Go.toInterface(_test._filename));
            };
            if (_f.size() != (_test._size)) {
                _t.errorf(("%s: got file size %d; want %d" : GoString), Go.toInterface(_f.name()), Go.toInterface(_f.size()), Go.toInterface(_test._size));
            };
            if (_fset.file(_f.pos((0 : GoInt))) != (_f)) {
                _t.errorf(("%s: f.Pos(0) was not found in f" : GoString), Go.toInterface(_f.name()));
            };
            for (_i => _offset in _test._lines) {
                _f.addLine(_offset);
                if (_f.lineCount() != (_i + (1 : GoInt))) {
                    _t.errorf(("%s, AddLine: got line count %d; want %d" : GoString), Go.toInterface(_f.name()), Go.toInterface(_f.lineCount()), Go.toInterface(_i + (1 : GoInt)));
                };
                _f.addLine(_offset);
                if (_f.lineCount() != (_i + (1 : GoInt))) {
                    _t.errorf(("%s, AddLine: got unchanged line count %d; want %d" : GoString), Go.toInterface(_f.name()), Go.toInterface(_f.lineCount()), Go.toInterface(_i + (1 : GoInt)));
                };
                _verifyPositions(_t, _fset, _f, (_test._lines.__slice__((0 : GoInt), _i + (1 : GoInt)) : Slice<GoInt>));
            };
            {
                var _ok:Bool = _f.setLines(_test._lines);
                if (!_ok) {
                    _t.errorf(("%s: SetLines failed" : GoString), Go.toInterface(_f.name()));
                };
            };
            if (_f.lineCount() != ((_test._lines.length))) {
                _t.errorf(("%s, SetLines: got line count %d; want %d" : GoString), Go.toInterface(_f.name()), Go.toInterface(_f.lineCount()), Go.toInterface((_test._lines.length)));
            };
            _verifyPositions(_t, _fset, _f, _test._lines);
            var _src = _test._source;
            if (_src == null) {
                _src = _makeTestSource(_test._size, _test._lines);
            };
            _f.setLinesForContent(_src);
            if (_f.lineCount() != ((_test._lines.length))) {
                _t.errorf(("%s, SetLinesForContent: got line count %d; want %d" : GoString), Go.toInterface(_f.name()), Go.toInterface(_f.lineCount()), Go.toInterface((_test._lines.length)));
            };
            _verifyPositions(_t, _fset, _f, _test._lines);
        };
    }
function testLineInfo(_t:Ref<stdgo.testing.Testing.T>):Void {
        var _fset = newFileSet();
        var _f = _fset.addFile(("foo" : GoString), _fset.base(), (500 : GoInt));
        var _lines = (new Slice<GoInt>(
0,
0,
(0 : GoInt),
(42 : GoInt),
(77 : GoInt),
(100 : GoInt),
(210 : GoInt),
(220 : GoInt),
(277 : GoInt),
(300 : GoInt),
(333 : GoInt),
(401 : GoInt)) : Slice<GoInt>);
        for (_0 => _offs in _lines) {
            _f.addLine(_offs);
            _f.addLineInfo(_offs, ("bar" : GoString), (42 : GoInt));
        };
        {
            var _offs:GoInt = (0 : GoInt);
            Go.cfor(_offs <= _f.size(), _offs++, {
                var _p:Pos = _f.pos(_offs);
                var __tmp__ = _linecol(_lines, _offs), _1:GoInt = __tmp__._0, _col:GoInt = __tmp__._1;
                var _msg:GoString = stdgo.fmt.Fmt.sprintf(("%s (offs = %d, p = %d)" : GoString), Go.toInterface(_f.name()), Go.toInterface(_offs), Go.toInterface(Go.asInterface(_p)));
                _checkPos(_t, _msg, _f.position(_f.pos(_offs)).__copy__(), (new Position(("bar" : GoString), _offs, (42 : GoInt), _col) : Position));
                _checkPos(_t, _msg, _fset.position(_p).__copy__(), (new Position(("bar" : GoString), _offs, (42 : GoInt), _col) : Position));
            });
        };
    }
function testFiles(_t:Ref<stdgo.testing.Testing.T>):Void {
        var _fset = newFileSet();
        for (_i => _test in _tests) {
            var _base:GoInt = _fset.base();
            if (_i % (2 : GoInt) == ((1 : GoInt))) {
                _base = (-1 : GoInt);
            };
            _fset.addFile(_test._filename, _base, _test._size);
            var _j:GoInt = (0 : GoInt);
            _fset.iterate(function(_f:Ref<File>):Bool {
                if (_f.name() != (_tests[(_j : GoInt)]._filename)) {
                    _t.errorf(("got filename = %s; want %s" : GoString), Go.toInterface(_f.name()), Go.toInterface(_tests[(_j : GoInt)]._filename));
                };
                _j++;
                return true;
            });
            if (_j != (_i + (1 : GoInt))) {
                _t.errorf(("got %d files; want %d" : GoString), Go.toInterface(_j), Go.toInterface(_i + (1 : GoInt)));
            };
        };
    }
/**
    // FileSet.File should return nil if Pos is past the end of the FileSet.
**/
function testFileSetPastEnd(_t:Ref<stdgo.testing.Testing.T>):Void {
        var _fset = newFileSet();
        for (_0 => _test in _tests) {
            _fset.addFile(_test._filename, _fset.base(), _test._size);
        };
        {
            var _f = _fset.file((_fset.base() : Pos));
            if (_f != null && ((_f : Dynamic).__nil__ == null || !(_f : Dynamic).__nil__)) {
                _t.errorf(("got %v, want nil" : GoString), Go.toInterface(Go.asInterface(_f)));
            };
        };
    }
function testFileSetCacheUnlikely(_t:Ref<stdgo.testing.Testing.T>):Void {
        var _fset = newFileSet();
        var _offsets = (new GoObjectMap<GoString, GoInt>(new stdgo.internal.reflect.Reflect._Type(stdgo.internal.reflect.Reflect.GoType.mapType({ get : () -> stdgo.internal.reflect.Reflect.GoType.basic(string_kind) }, { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(int_kind) }))) : GoMap<GoString, GoInt>);
        for (_0 => _test in _tests) {
            _offsets[_test._filename] = _fset.base();
            _fset.addFile(_test._filename, _fset.base(), _test._size);
        };
        for (_file => _pos in _offsets) {
            var _f = _fset.file((_pos : Pos));
            if (_f.name() != (_file)) {
                _t.errorf(("got %q at position %d, want %q" : GoString), Go.toInterface(_f.name()), Go.toInterface(_pos), Go.toInterface(_file));
            };
        };
    }
/**
    // issue 4345. Test that concurrent use of FileSet.Pos does not trigger a
    // race in the FileSet position cache.
**/
function testFileSetRace(_t:Ref<stdgo.testing.Testing.T>):Void {
        var _fset = newFileSet();
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i < (100 : GoInt), _i++, {
                _fset.addFile(stdgo.fmt.Fmt.sprintf(("file-%d" : GoString), Go.toInterface(_i)), _fset.base(), (1031 : GoInt));
            });
        };
        var _max:GoInt32 = (_fset.base() : GoInt32);
        var _stop:stdgo.sync.Sync.WaitGroup = ({} : stdgo.sync.Sync.WaitGroup);
        var _r = stdgo.math.rand.Rand.new_(stdgo.math.rand.Rand.newSource(("7" : GoInt64)));
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i < (2 : GoInt), _i++, {
                var _r = stdgo.math.rand.Rand.new_(stdgo.math.rand.Rand.newSource(_r.int63()));
                _stop.add((1 : GoInt));
                Go.routine(() -> {
                    var a = function():Void {
                        {
                            var _i:GoInt = (0 : GoInt);
                            Go.cfor(_i < (1000 : GoInt), _i++, {
                                _fset.position((_r.int31n(_max) : Pos));
                            });
                        };
                        _stop.done();
                    };
                    a();
                });
            });
        };
        _stop.wait_();
    }
/**
    // issue 16548. Test that concurrent use of File.AddLine and FileSet.PositionFor
    // does not trigger a race in the FileSet position cache.
**/
function testFileSetRace2(_t:Ref<stdgo.testing.Testing.T>):Void {
        {};
        var _0:Ref<FileSet> = newFileSet(), _1:Ref<File> = _fset.addFile(Go.str(), (-1 : GoInt), (1000 : GoInt)), _2:Chan<GoInt> = new Chan<GoInt>((2 : GoInt).toBasic(), () -> (0 : GoInt)), _ch:Chan<GoInt> = _2, _file:Ref<File> = _1, _fset:Ref<FileSet> = _0;
        Go.routine(() -> {
            var a = function():Void {
                {
                    var _i:GoInt = (0 : GoInt);
                    Go.cfor(_i < (1000 : GoInt), _i++, {
                        _file.addLine(_i);
                    });
                };
                _ch.__send__((1 : GoInt));
            };
            a();
        });
        Go.routine(() -> {
            var a = function():Void {
                var _pos:Pos = _file.pos((0 : GoInt));
                {
                    var _i:GoInt = (0 : GoInt);
                    Go.cfor(_i < (1000 : GoInt), _i++, {
                        _fset.positionFor(_pos, false);
                    });
                };
                _ch.__send__((1 : GoInt));
            };
            a();
        });
        _ch.__get__();
        _ch.__get__();
    }
function testPositionFor(_t:Ref<stdgo.testing.Testing.T>):Void {
        var _src = (("\nfoo\nb\nar\n//line :100\nfoobar\n//line bar:3\ndone\n" : GoString) : Slice<GoByte>);
        {};
        var _fset = newFileSet();
        var _f = _fset.addFile(("foo" : GoString), _fset.base(), (_src.length));
        _f.setLinesForContent(_src);
        for (_i => _offs in _f._lines) {
            var _got1:Position = _f.positionFor(_f.pos(_offs), false).__copy__();
            var _got2:Position = _f.positionFor(_f.pos(_offs), true).__copy__();
            var _got3:Position = _f.position(_f.pos(_offs)).__copy__();
            var _want:Position = (new Position(("foo" : GoString), _offs, _i + (1 : GoInt), (1 : GoInt)) : Position);
            _checkPos(_t, ("1. PositionFor unadjusted" : GoString), _got1.__copy__(), _want.__copy__());
            _checkPos(_t, ("1. PositionFor adjusted" : GoString), _got2.__copy__(), _want.__copy__());
            _checkPos(_t, ("1. Position" : GoString), _got3.__copy__(), _want.__copy__());
        };
        {};
        _f.addLineInfo(_f._lines[(4 : GoInt)], Go.str(), (100 : GoInt));
        _f.addLineInfo(_f._lines[(6 : GoInt)], ("bar" : GoString), (3 : GoInt));
        for (_i => _offs in _f._lines) {
            var _got1:Position = _f.positionFor(_f.pos(_offs), false).__copy__();
            var _want:Position = (new Position(("foo" : GoString), _offs, _i + (1 : GoInt), (1 : GoInt)) : Position);
            _checkPos(_t, ("2. PositionFor unadjusted" : GoString), _got1.__copy__(), _want.__copy__());
        };
        for (_i => _offs in _f._lines) {
            var _got2:Position = _f.positionFor(_f.pos(_offs), true).__copy__();
            var _got3:Position = _f.position(_f.pos(_offs)).__copy__();
            var _want:Position = (new Position(("foo" : GoString), _offs, _i + (1 : GoInt), (1 : GoInt)) : Position);
            var _line:GoInt = _want.line;
            if ((_i + (1 : GoInt)) >= (5 : GoInt)) {
                _want.filename = Go.str();
                _want.line = (_line - (5 : GoInt)) + (100 : GoInt);
            };
            if ((_i + (1 : GoInt)) >= (7 : GoInt)) {
                _want.filename = ("bar" : GoString);
                _want.line = (_line - (7 : GoInt)) + (3 : GoInt);
            };
            _checkPos(_t, ("3. PositionFor adjusted" : GoString), _got2.__copy__(), _want.__copy__());
            _checkPos(_t, ("3. Position" : GoString), _got3.__copy__(), _want.__copy__());
        };
    }
function testLineStart(_t:Ref<stdgo.testing.Testing.T>):Void {
        {};
        var _fset = newFileSet();
        var _f = _fset.addFile(("input" : GoString), (-1 : GoInt), (("one\ntwo\nthree\n" : GoString).length));
        _f.setLinesForContent((("one\ntwo\nthree\n" : GoString) : Slice<GoByte>));
        {
            var _line:GoInt = (1 : GoInt);
            Go.cfor(_line <= (3 : GoInt), _line++, {
                var _pos:Pos = _f.lineStart(_line);
                var _position:Position = _fset.position(_pos).__copy__();
                if ((_position.line != _line) || (_position.column != (1 : GoInt))) {
                    _t.errorf(("LineStart(%d) returned wrong pos %d: %s" : GoString), Go.toInterface(_line), Go.toInterface(Go.asInterface(_pos)), Go.toInterface(Go.asInterface(_position)));
                };
            });
        };
    }
function testRemoveFile(_t:Ref<stdgo.testing.Testing.T>):Void {
        var _contentA = (("this\nis\nfileA" : GoString) : Slice<GoByte>);
        var _contentB = (("this\nis\nfileB" : GoString) : Slice<GoByte>);
        var _fset = newFileSet();
        var _a = _fset.addFile(("fileA" : GoString), (-1 : GoInt), (_contentA.length));
        _a.setLinesForContent(_contentA);
        var _b = _fset.addFile(("fileB" : GoString), (-1 : GoInt), (_contentB.length));
        _b.setLinesForContent(_contentB);
        var _checkPos:(Pos, GoString) -> Void = function(_pos:Pos, _want:GoString):Void {
            {
                var _got:GoString = (_fset.position(_pos).string() : GoString);
                if (_got != (_want)) {
                    _t.errorf(("Position(%d) = %s, want %s" : GoString), Go.toInterface(Go.asInterface(_pos)), Go.toInterface(_got), Go.toInterface(_want));
                };
            };
        };
        var _checkNumFiles:GoInt -> Void = function(_want:GoInt):Void {
            var _got:GoInt = (0 : GoInt);
            _fset.iterate(function(_0:Ref<File>):Bool {
                _got++;
                return true;
            });
            if (_got != (_want)) {
                _t.errorf(("Iterate called %d times, want %d" : GoString), Go.toInterface(_got), Go.toInterface(_want));
            };
        };
        var _apos3:Pos = _a.pos((3 : GoInt));
        var _bpos3:Pos = _b.pos((3 : GoInt));
        _checkPos(_apos3, ("fileA:1:4" : GoString));
        _checkPos(_bpos3, ("fileB:1:4" : GoString));
        _checkNumFiles((2 : GoInt));
        _fset.removeFile(_a);
        _checkPos(_apos3, ("-" : GoString));
        _checkPos(_bpos3, ("fileB:1:4" : GoString));
        _checkNumFiles((1 : GoInt));
        _fset.removeFile(_a);
        _checkPos(_apos3, ("-" : GoString));
        _checkPos(_bpos3, ("fileB:1:4" : GoString));
        _checkNumFiles((1 : GoInt));
    }
function testFileAddLineColumnInfo(_t:Ref<stdgo.testing.Testing.T>):Void {
        {};
        var _tests = (new Slice<T__struct_1>(0, 0, ({ _name : ("normal" : GoString), _infos : (new Slice<T_lineInfo>(0, 0, ({ offset : (10 : GoInt), filename : ("test.go" : GoString), line : (2 : GoInt), column : (1 : GoInt) } : T_lineInfo), ({ offset : (50 : GoInt), filename : ("test.go" : GoString), line : (3 : GoInt), column : (1 : GoInt) } : T_lineInfo), ({ offset : (80 : GoInt), filename : ("test.go" : GoString), line : (4 : GoInt), column : (2 : GoInt) } : T_lineInfo)) : Slice<T_lineInfo>), _want : (new Slice<T_lineInfo>(0, 0, ({ offset : (10 : GoInt), filename : ("test.go" : GoString), line : (2 : GoInt), column : (1 : GoInt) } : T_lineInfo), ({ offset : (50 : GoInt), filename : ("test.go" : GoString), line : (3 : GoInt), column : (1 : GoInt) } : T_lineInfo), ({ offset : (80 : GoInt), filename : ("test.go" : GoString), line : (4 : GoInt), column : (2 : GoInt) } : T_lineInfo)) : Slice<T_lineInfo>) } : T__struct_1), ({ _name : ("offset1 == file size" : GoString), _infos : (new Slice<T_lineInfo>(0, 0, ({ offset : (100 : GoInt), filename : ("test.go" : GoString), line : (2 : GoInt), column : (1 : GoInt) } : T_lineInfo)) : Slice<T_lineInfo>), _want : (null : Slice<T_lineInfo>) } : T__struct_1), ({ _name : ("offset1 > file size" : GoString), _infos : (new Slice<T_lineInfo>(0, 0, ({ offset : (101 : GoInt), filename : ("test.go" : GoString), line : (2 : GoInt), column : (1 : GoInt) } : T_lineInfo)) : Slice<T_lineInfo>), _want : (null : Slice<T_lineInfo>) } : T__struct_1), ({ _name : ("offset2 == file size" : GoString), _infos : (new Slice<T_lineInfo>(0, 0, ({ offset : (10 : GoInt), filename : ("test.go" : GoString), line : (2 : GoInt), column : (1 : GoInt) } : T_lineInfo), ({ offset : (100 : GoInt), filename : ("test.go" : GoString), line : (3 : GoInt), column : (1 : GoInt) } : T_lineInfo)) : Slice<T_lineInfo>), _want : (new Slice<T_lineInfo>(0, 0, ({ offset : (10 : GoInt), filename : ("test.go" : GoString), line : (2 : GoInt), column : (1 : GoInt) } : T_lineInfo)) : Slice<T_lineInfo>) } : T__struct_1), ({ _name : ("offset2 > file size" : GoString), _infos : (new Slice<T_lineInfo>(0, 0, ({ offset : (10 : GoInt), filename : ("test.go" : GoString), line : (2 : GoInt), column : (1 : GoInt) } : T_lineInfo), ({ offset : (101 : GoInt), filename : ("test.go" : GoString), line : (3 : GoInt), column : (1 : GoInt) } : T_lineInfo)) : Slice<T_lineInfo>), _want : (new Slice<T_lineInfo>(0, 0, ({ offset : (10 : GoInt), filename : ("test.go" : GoString), line : (2 : GoInt), column : (1 : GoInt) } : T_lineInfo)) : Slice<T_lineInfo>) } : T__struct_1), ({ _name : ("offset2 == offset1" : GoString), _infos : (new Slice<T_lineInfo>(0, 0, ({ offset : (10 : GoInt), filename : ("test.go" : GoString), line : (2 : GoInt), column : (1 : GoInt) } : T_lineInfo), ({ offset : (10 : GoInt), filename : ("test.go" : GoString), line : (3 : GoInt), column : (1 : GoInt) } : T_lineInfo)) : Slice<T_lineInfo>), _want : (new Slice<T_lineInfo>(0, 0, ({ offset : (10 : GoInt), filename : ("test.go" : GoString), line : (2 : GoInt), column : (1 : GoInt) } : T_lineInfo)) : Slice<T_lineInfo>) } : T__struct_1), ({ _name : ("offset2 < offset1" : GoString), _infos : (new Slice<T_lineInfo>(0, 0, ({ offset : (10 : GoInt), filename : ("test.go" : GoString), line : (2 : GoInt), column : (1 : GoInt) } : T_lineInfo), ({ offset : (9 : GoInt), filename : ("test.go" : GoString), line : (3 : GoInt), column : (1 : GoInt) } : T_lineInfo)) : Slice<T_lineInfo>), _want : (new Slice<T_lineInfo>(0, 0, ({ offset : (10 : GoInt), filename : ("test.go" : GoString), line : (2 : GoInt), column : (1 : GoInt) } : T_lineInfo)) : Slice<T_lineInfo>) } : T__struct_1)) : Slice<T__struct_1>);
        for (_0 => _test in _tests) {
            _t.run(_test._name, function(_t:Ref<stdgo.testing.Testing.T>):Void {
                var _fs = newFileSet();
                var _f = _fs.addFile(("test.go" : GoString), (-1 : GoInt), (100 : GoInt));
                for (_0 => _info in _test._infos) {
                    _f.addLineColumnInfo(_info.offset, _info.filename, _info.line, _info.column);
                };
                if (!stdgo.reflect.Reflect.deepEqual(Go.toInterface(_f._infos), Go.toInterface(_test._want))) {
                    _t.errorf(("\ngot %+v, \nwant %+v" : GoString), Go.toInterface(_f._infos), Go.toInterface(_test._want));
                };
            });
        };
    }
/**
    // equal returns nil if p and q describe the same file set;
    // otherwise it returns an error describing the discrepancy.
**/
private function _equal(_p:Ref<FileSet>, _q:Ref<FileSet>):Error {
        var __deferstack__:Array<Void -> Void> = [];
        if (_p == (_q)) {
            return (null : Error);
        };
        try {
            _p._mutex.lock();
            _q._mutex.lock();
            __deferstack__.unshift(() -> _q._mutex.unlock());
            __deferstack__.unshift(() -> _p._mutex.unlock());
            if (_p._base != (_q._base)) {
                {
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return stdgo.fmt.Fmt.errorf(("different bases: %d != %d" : GoString), Go.toInterface(_p._base), Go.toInterface(_q._base));
                };
            };
            if ((_p._files.length) != ((_q._files.length))) {
                {
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return stdgo.fmt.Fmt.errorf(("different number of files: %d != %d" : GoString), Go.toInterface((_p._files.length)), Go.toInterface((_q._files.length)));
                };
            };
            for (_i => _f in _p._files) {
                var _g = _q._files[(_i : GoInt)];
                if (_f._name != (_g._name)) {
                    {
                        for (defer in __deferstack__) {
                            defer();
                        };
                        return stdgo.fmt.Fmt.errorf(("different filenames: %q != %q" : GoString), Go.toInterface(_f._name), Go.toInterface(_g._name));
                    };
                };
                if (_f._base != (_g._base)) {
                    {
                        for (defer in __deferstack__) {
                            defer();
                        };
                        return stdgo.fmt.Fmt.errorf(("different base for %q: %d != %d" : GoString), Go.toInterface(_f._name), Go.toInterface(_f._base), Go.toInterface(_g._base));
                    };
                };
                if (_f._size != (_g._size)) {
                    {
                        for (defer in __deferstack__) {
                            defer();
                        };
                        return stdgo.fmt.Fmt.errorf(("different size for %q: %d != %d" : GoString), Go.toInterface(_f._name), Go.toInterface(_f._size), Go.toInterface(_g._size));
                    };
                };
                for (_j => _l in _f._lines) {
                    var _m:GoInt = _g._lines[(_j : GoInt)];
                    if (_l != (_m)) {
                        {
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return stdgo.fmt.Fmt.errorf(("different offsets for %q" : GoString), Go.toInterface(_f._name));
                        };
                    };
                };
                for (_j => _l in _f._infos) {
                    var _m:T_lineInfo = _g._infos[(_j : GoInt)].__copy__();
                    if (((_l.offset != _m.offset) || (_l.filename != _m.filename)) || (_l.line != _m.line)) {
                        {
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return stdgo.fmt.Fmt.errorf(("different infos for %q" : GoString), Go.toInterface(_f._name));
                        };
                    };
                };
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                return (null : Error);
            };
            for (defer in __deferstack__) {
                defer();
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (Go.recover_exception != null) throw Go.recover_exception;
                return (null : Error);
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is AnyInterfaceData)) {
                exe = Go.toInterface(__exception__.message);
            };
            Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (Go.recover_exception != null) throw Go.recover_exception;
            return (null : Error);
        };
    }
private function _checkSerialize(_t:Ref<stdgo.testing.Testing.T>, _p:Ref<FileSet>):Void {
        var _buf:stdgo.bytes.Bytes.Buffer = ({} : stdgo.bytes.Bytes.Buffer);
        var _encode:AnyInterface -> Error = function(_x:AnyInterface):Error {
            return stdgo.encoding.gob.Gob.newEncoder(Go.asInterface((Go.setRef(_buf) : Ref<stdgo.bytes.Bytes.Buffer>))).encode(_x);
        };
        {
            var _err:Error = _p.write(_encode);
            if (_err != null) {
                _t.errorf(("writing fileset failed: %s" : GoString), Go.toInterface(_err));
                return;
            };
        };
        var _q = newFileSet();
        var _decode:AnyInterface -> Error = function(_x:AnyInterface):Error {
            return stdgo.encoding.gob.Gob.newDecoder(Go.asInterface((Go.setRef(_buf) : Ref<stdgo.bytes.Bytes.Buffer>))).decode(_x);
        };
        {
            var _err:Error = _q.read(_decode);
            if (_err != null) {
                _t.errorf(("reading fileset failed: %s" : GoString), Go.toInterface(_err));
                return;
            };
        };
        {
            var _err:Error = _equal(_p, _q);
            if (_err != null) {
                _t.errorf(("filesets not identical: %s" : GoString), Go.toInterface(_err));
            };
        };
    }
function testSerialization(_t:Ref<stdgo.testing.Testing.T>):Void {
        var _p = newFileSet();
        _checkSerialize(_t, _p);
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i < (10 : GoInt), _i++, {
                var _f = _p.addFile(stdgo.fmt.Fmt.sprintf(("file%d" : GoString), Go.toInterface(_i)), _p.base() + _i, _i * (100 : GoInt));
                _checkSerialize(_t, _p);
                var _line:GoInt = (1000 : GoInt);
                {
                    var _offs:GoInt = (0 : GoInt);
                    Go.cfor(_offs < _f.size(), _offs = _offs + ((40 : GoInt) + _i), {
                        _f.addLine(_offs);
                        if (_offs % (7 : GoInt) == ((0 : GoInt))) {
                            _f.addLineInfo(_offs, stdgo.fmt.Fmt.sprintf(("file%d" : GoString), Go.toInterface(_offs)), _line);
                            _line = _line + ((33 : GoInt));
                        };
                    });
                };
                _checkSerialize(_t, _p);
            });
        };
    }
/**
    // Lookup maps an identifier to its keyword token or IDENT (if not a keyword).
**/
function lookup(_ident:GoString):Token {
        {
            var __tmp__ = (_keywords != null && _keywords.__exists__(_ident) ? { value : _keywords[_ident], ok : true } : { value : ((0 : GoInt) : Token), ok : false }), _tok:Token = __tmp__.value, _is_keyword:Bool = __tmp__.ok;
            if (_is_keyword) {
                return _tok;
            };
        };
        return (4 : Token);
    }
/**
    // IsExported reports whether name starts with an upper-case letter.
**/
function isExported(_name:GoString):Bool {
        var __tmp__ = stdgo.unicode.utf8.Utf8.decodeRuneInString(_name), _ch:GoInt32 = __tmp__._0, _0:GoInt = __tmp__._1;
        return stdgo.unicode.Unicode.isUpper(_ch);
    }
/**
    // IsKeyword reports whether name is a Go keyword, such as "func" or "return".
**/
function isKeyword(_name:GoString):Bool {
        var __tmp__ = (_keywords != null && _keywords.__exists__(_name) ? { value : _keywords[_name], ok : true } : { value : ((0 : GoInt) : Token), ok : false }), _0:Token = __tmp__.value, _ok:Bool = __tmp__.ok;
        return _ok;
    }
/**
    // IsIdentifier reports whether name is a Go identifier, that is, a non-empty
    // string made up of letters, digits, and underscores, where the first character
    // is not a digit. Keywords are not identifiers.
**/
function isIdentifier(_name:GoString):Bool {
        if ((_name == Go.str()) || isKeyword(_name)) {
            return false;
        };
        for (_i => _c in _name) {
            if ((!stdgo.unicode.Unicode.isLetter(_c) && (_c != (95 : GoInt32))) && ((_i == (0 : GoInt)) || !stdgo.unicode.Unicode.isDigit(_c))) {
                return false;
            };
        };
        return true;
    }
function testIsIdentifier(_t:Ref<stdgo.testing.Testing.T>):Void {
        var _tests = (new Slice<T__struct_2>(
0,
0,
({ _name : ("Empty" : GoString), _in : Go.str(), _want : false } : T__struct_2),
({ _name : ("Space" : GoString), _in : (" " : GoString), _want : false } : T__struct_2),
({ _name : ("SpaceSuffix" : GoString), _in : ("foo " : GoString), _want : false } : T__struct_2),
({ _name : ("Number" : GoString), _in : ("123" : GoString), _want : false } : T__struct_2),
({ _name : ("Keyword" : GoString), _in : ("func" : GoString), _want : false } : T__struct_2),
({ _name : ("LettersASCII" : GoString), _in : ("foo" : GoString), _want : true } : T__struct_2),
({ _name : ("MixedASCII" : GoString), _in : ("_bar123" : GoString), _want : true } : T__struct_2),
({ _name : ("UppercaseKeyword" : GoString), _in : ("Func" : GoString), _want : true } : T__struct_2),
({ _name : ("LettersUnicode" : GoString), _in : ("fóö" : GoString), _want : true } : T__struct_2)) : Slice<T__struct_2>);
        for (_0 => _test in _tests) {
            _t.run(_test._name, function(_t:Ref<stdgo.testing.Testing.T>):Void {
                {
                    var _got:Bool = isIdentifier(_test._in);
                    if (_got != (_test._want)) {
                        _t.fatalf(("IsIdentifier(%q) = %t, want %v" : GoString), Go.toInterface(_test._in), Go.toInterface(_got), Go.toInterface(_test._want));
                    };
                };
            });
        };
    }
@:keep var _ = {
        try {
            _keywords = (new GoObjectMap<GoString, Token>(new stdgo.internal.reflect.Reflect._Type(stdgo.internal.reflect.Reflect.GoType.mapType({ get : () -> @:implicitReturn throw "__return__" }, { get : () -> @:implicitReturn throw "__return__" }))) : GoMap<GoString, Token>);
            {
                var _i:Token = (61 : Token);
                Go.cfor(_i < (86 : Token), _i++, {
                    _keywords[_tokens[(_i : GoInt)]] = _i;
                });
            };
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };
class Position_asInterface {
    /**
        // String returns a string in one of several forms:
        //
        //	file:line:column    valid position with file name
        //	file:line           valid position with file name but no column (column == 0)
        //	line:column         valid position without file name
        //	line                valid position without file name and no column (column == 0)
        //	file                invalid position with file name
        //	-                   invalid position without file name
    **/
    @:keep
    public dynamic function string():GoString return __self__.value.string();
    /**
        // IsValid reports whether the position is valid.
    **/
    @:keep
    public dynamic function isValid():Bool return __self__.value.isValid();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<Position>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.go.token.Token.Position_asInterface) class Position_static_extension {
    /**
        // String returns a string in one of several forms:
        //
        //	file:line:column    valid position with file name
        //	file:line           valid position with file name but no column (column == 0)
        //	line:column         valid position without file name
        //	line                valid position without file name and no column (column == 0)
        //	file                invalid position with file name
        //	-                   invalid position without file name
    **/
    @:keep
    static public function string( _pos:Position):GoString {
        var _s:GoString = _pos.filename;
        if (_pos.isValid()) {
            if (_s != (Go.str())) {
                _s = _s + ((":" : GoString));
            };
            _s = _s + (stdgo.fmt.Fmt.sprintf(("%d" : GoString), Go.toInterface(_pos.line)));
            if (_pos.column != ((0 : GoInt))) {
                _s = _s + (stdgo.fmt.Fmt.sprintf((":%d" : GoString), Go.toInterface(_pos.column)));
            };
        };
        if (_s == (Go.str())) {
            _s = ("-" : GoString);
        };
        return _s;
    }
    /**
        // IsValid reports whether the position is valid.
    **/
    @:keep
    static public function isValid( _pos:Ref<Position>):Bool {
        return _pos.line > (0 : GoInt);
    }
}
class File_asInterface {
    /**
        // Position returns the Position value for the given file position p.
        // Calling f.Position(p) is equivalent to calling f.PositionFor(p, true).
    **/
    @:keep
    public dynamic function position(_p:Pos):Position return __self__.value.position(_p);
    /**
        // PositionFor returns the Position value for the given file position p.
        // If adjusted is set, the position may be adjusted by position-altering
        // //line comments; otherwise those comments are ignored.
        // p must be a Pos value in f or NoPos.
    **/
    @:keep
    public dynamic function positionFor(_p:Pos, _adjusted:Bool):Position return __self__.value.positionFor(_p, _adjusted);
    @:keep
    public dynamic function _position(_p:Pos, _adjusted:Bool):Position return __self__.value._position(_p, _adjusted);
    /**
        // unpack returns the filename and line and column number for a file offset.
        // If adjusted is set, unpack will return the filename and line information
        // possibly adjusted by //line comments; otherwise those comments are ignored.
    **/
    @:keep
    public dynamic function _unpack(_offset:GoInt, _adjusted:Bool):{ var _0 : GoString; var _1 : GoInt; var _2 : GoInt; } return __self__.value._unpack(_offset, _adjusted);
    /**
        // Line returns the line number for the given file position p;
        // p must be a Pos value in that file or NoPos.
    **/
    @:keep
    public dynamic function line(_p:Pos):GoInt return __self__.value.line(_p);
    /**
        // Offset returns the offset for the given file position p;
        // p must be a valid Pos value in that file.
        // f.Offset(f.Pos(offset)) == offset.
    **/
    @:keep
    public dynamic function offset(_p:Pos):GoInt return __self__.value.offset(_p);
    /**
        // Pos returns the Pos value for the given file offset;
        // the offset must be <= f.Size().
        // f.Pos(f.Offset(p)) == p.
    **/
    @:keep
    public dynamic function pos(_offset:GoInt):Pos return __self__.value.pos(_offset);
    /**
        // AddLineColumnInfo adds alternative file, line, and column number
        // information for a given file offset. The offset must be larger
        // than the offset for the previously added alternative line info
        // and smaller than the file size; otherwise the information is
        // ignored.
        //
        // AddLineColumnInfo is typically used to register alternative position
        // information for line directives such as //line filename:line:column.
    **/
    @:keep
    public dynamic function addLineColumnInfo(_offset:GoInt, _filename:GoString, _line:GoInt, _column:GoInt):Void __self__.value.addLineColumnInfo(_offset, _filename, _line, _column);
    /**
        // AddLineInfo is like AddLineColumnInfo with a column = 1 argument.
        // It is here for backward-compatibility for code prior to Go 1.11.
    **/
    @:keep
    public dynamic function addLineInfo(_offset:GoInt, _filename:GoString, _line:GoInt):Void __self__.value.addLineInfo(_offset, _filename, _line);
    /**
        // LineStart returns the Pos value of the start of the specified line.
        // It ignores any alternative positions set using AddLineColumnInfo.
        // LineStart panics if the 1-based line number is invalid.
    **/
    @:keep
    public dynamic function lineStart(_line:GoInt):Pos return __self__.value.lineStart(_line);
    /**
        // SetLinesForContent sets the line offsets for the given file content.
        // It ignores position-altering //line comments.
    **/
    @:keep
    public dynamic function setLinesForContent(_content:Slice<GoByte>):Void __self__.value.setLinesForContent(_content);
    /**
        // SetLines sets the line offsets for a file and reports whether it succeeded.
        // The line offsets are the offsets of the first character of each line;
        // for instance for the content "ab\nc\n" the line offsets are {0, 3}.
        // An empty file has an empty line offset table.
        // Each line offset must be larger than the offset for the previous line
        // and smaller than the file size; otherwise SetLines fails and returns
        // false.
        // Callers must not mutate the provided slice after SetLines returns.
    **/
    @:keep
    public dynamic function setLines(_lines:Slice<GoInt>):Bool return __self__.value.setLines(_lines);
    /**
        // MergeLine merges a line with the following line. It is akin to replacing
        // the newline character at the end of the line with a space (to not change the
        // remaining offsets). To obtain the line number, consult e.g. Position.Line.
        // MergeLine will panic if given an invalid line number.
    **/
    @:keep
    public dynamic function mergeLine(_line:GoInt):Void __self__.value.mergeLine(_line);
    /**
        // AddLine adds the line offset for a new line.
        // The line offset must be larger than the offset for the previous line
        // and smaller than the file size; otherwise the line offset is ignored.
    **/
    @:keep
    public dynamic function addLine(_offset:GoInt):Void __self__.value.addLine(_offset);
    /**
        // LineCount returns the number of lines in file f.
    **/
    @:keep
    public dynamic function lineCount():GoInt return __self__.value.lineCount();
    /**
        // Size returns the size of file f as registered with AddFile.
    **/
    @:keep
    public dynamic function size():GoInt return __self__.value.size();
    /**
        // Base returns the base offset of file f as registered with AddFile.
    **/
    @:keep
    public dynamic function base():GoInt return __self__.value.base();
    /**
        // Name returns the file name of file f as registered with AddFile.
    **/
    @:keep
    public dynamic function name():GoString return __self__.value.name();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<File>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.go.token.Token.File_asInterface) class File_static_extension {
    /**
        // Position returns the Position value for the given file position p.
        // Calling f.Position(p) is equivalent to calling f.PositionFor(p, true).
    **/
    @:keep
    static public function position( _f:Ref<File>, _p:Pos):Position {
        var _pos:Position = ({} : Position);
        return _f.positionFor(_p, true).__copy__();
    }
    /**
        // PositionFor returns the Position value for the given file position p.
        // If adjusted is set, the position may be adjusted by position-altering
        // //line comments; otherwise those comments are ignored.
        // p must be a Pos value in f or NoPos.
    **/
    @:keep
    static public function positionFor( _f:Ref<File>, _p:Pos, _adjusted:Bool):Position {
        var _pos:Position = ({} : Position);
        if (_p != ((0 : Pos))) {
            if (((_p : GoInt) < _f._base) || ((_p : GoInt) > (_f._base + _f._size))) {
                throw Go.toInterface(stdgo.fmt.Fmt.sprintf(("invalid Pos value %d (should be in [%d, %d])" : GoString), Go.toInterface(Go.asInterface(_p)), Go.toInterface(_f._base), Go.toInterface(_f._base + _f._size)));
            };
            _pos = _f._position(_p, _adjusted).__copy__();
        };
        return _pos;
    }
    @:keep
    static public function _position( _f:Ref<File>, _p:Pos, _adjusted:Bool):Position {
        var _pos:Position = ({} : Position);
        var _offset:GoInt = (_p : GoInt) - _f._base;
        _pos.offset = _offset;
        {
            var __tmp__ = _f._unpack(_offset, _adjusted);
            _pos.filename = __tmp__._0;
            _pos.line = __tmp__._1;
            _pos.column = __tmp__._2;
        };
        return _pos;
    }
    /**
        // unpack returns the filename and line and column number for a file offset.
        // If adjusted is set, unpack will return the filename and line information
        // possibly adjusted by //line comments; otherwise those comments are ignored.
    **/
    @:keep
    static public function _unpack( _f:Ref<File>, _offset:GoInt, _adjusted:Bool):{ var _0 : GoString; var _1 : GoInt; var _2 : GoInt; } {
        var _filename:GoString = ("" : GoString), _line:GoInt = (0 : GoInt), _column:GoInt = (0 : GoInt);
        _f._mutex.lock();
        _filename = _f._name;
        {
            var _i:GoInt = _searchInts(_f._lines, _offset);
            if (_i >= (0 : GoInt)) {
                {
                    final __tmp__0 = _i + (1 : GoInt);
                    final __tmp__1 = (_offset - _f._lines[(_i : GoInt)]) + (1 : GoInt);
                    _line = __tmp__0;
                    _column = __tmp__1;
                };
            };
        };
        if (_adjusted && (_f._infos.length > (0 : GoInt))) {
            {
                var _i:GoInt = _searchLineInfos(_f._infos, _offset);
                if (_i >= (0 : GoInt)) {
                    var _alt = (Go.setRef(_f._infos[(_i : GoInt)]) : Ref<T_lineInfo>);
                    _filename = _alt.filename;
                    {
                        var _i:GoInt = _searchInts(_f._lines, _alt.offset);
                        if (_i >= (0 : GoInt)) {
                            var _d:GoInt = _line - (_i + (1 : GoInt));
                            _line = _alt.line + _d;
                            if (_alt.column == ((0 : GoInt))) {
                                _column = (0 : GoInt);
                            } else if (_d == ((0 : GoInt))) {
                                _column = _alt.column + (_offset - _alt.offset);
                            };
                        };
                    };
                };
            };
        };
        _f._mutex.unlock();
        return { _0 : _filename, _1 : _line, _2 : _column };
    }
    /**
        // Line returns the line number for the given file position p;
        // p must be a Pos value in that file or NoPos.
    **/
    @:keep
    static public function line( _f:Ref<File>, _p:Pos):GoInt {
        return _f.position(_p).line;
    }
    /**
        // Offset returns the offset for the given file position p;
        // p must be a valid Pos value in that file.
        // f.Offset(f.Pos(offset)) == offset.
    **/
    @:keep
    static public function offset( _f:Ref<File>, _p:Pos):GoInt {
        if (((_p : GoInt) < _f._base) || ((_p : GoInt) > (_f._base + _f._size))) {
            throw Go.toInterface(stdgo.fmt.Fmt.sprintf(("invalid Pos value %d (should be in [%d, %d])" : GoString), Go.toInterface(Go.asInterface(_p)), Go.toInterface(_f._base), Go.toInterface(_f._base + _f._size)));
        };
        return (_p : GoInt) - _f._base;
    }
    /**
        // Pos returns the Pos value for the given file offset;
        // the offset must be <= f.Size().
        // f.Pos(f.Offset(p)) == p.
    **/
    @:keep
    static public function pos( _f:Ref<File>, _offset:GoInt):Pos {
        if (_offset > _f._size) {
            throw Go.toInterface(stdgo.fmt.Fmt.sprintf(("invalid file offset %d (should be <= %d)" : GoString), Go.toInterface(_offset), Go.toInterface(_f._size)));
        };
        return (_f._base + _offset : Pos);
    }
    /**
        // AddLineColumnInfo adds alternative file, line, and column number
        // information for a given file offset. The offset must be larger
        // than the offset for the previously added alternative line info
        // and smaller than the file size; otherwise the information is
        // ignored.
        //
        // AddLineColumnInfo is typically used to register alternative position
        // information for line directives such as //line filename:line:column.
    **/
    @:keep
    static public function addLineColumnInfo( _f:Ref<File>, _offset:GoInt, _filename:GoString, _line:GoInt, _column:GoInt):Void {
        _f._mutex.lock();
        {
            var _i:GoInt = (_f._infos.length);
            if (((_i == (0 : GoInt)) || (_f._infos[(_i - (1 : GoInt) : GoInt)].offset < _offset)) && (_offset < _f._size)) {
                _f._infos = _f._infos.__appendref__((new T_lineInfo(_offset, _filename, _line, _column) : T_lineInfo));
            };
        };
        _f._mutex.unlock();
    }
    /**
        // AddLineInfo is like AddLineColumnInfo with a column = 1 argument.
        // It is here for backward-compatibility for code prior to Go 1.11.
    **/
    @:keep
    static public function addLineInfo( _f:Ref<File>, _offset:GoInt, _filename:GoString, _line:GoInt):Void {
        _f.addLineColumnInfo(_offset, _filename, _line, (1 : GoInt));
    }
    /**
        // LineStart returns the Pos value of the start of the specified line.
        // It ignores any alternative positions set using AddLineColumnInfo.
        // LineStart panics if the 1-based line number is invalid.
    **/
    @:keep
    static public function lineStart( _f:Ref<File>, _line:GoInt):Pos {
        var __deferstack__:Array<Void -> Void> = [];
        if (_line < (1 : GoInt)) {
            throw Go.toInterface(stdgo.fmt.Fmt.sprintf(("invalid line number %d (should be >= 1)" : GoString), Go.toInterface(_line)));
        };
        try {
            _f._mutex.lock();
            __deferstack__.unshift(() -> _f._mutex.unlock());
            if (_line > (_f._lines.length)) {
                throw Go.toInterface(stdgo.fmt.Fmt.sprintf(("invalid line number %d (should be < %d)" : GoString), Go.toInterface(_line), Go.toInterface((_f._lines.length))));
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                return (_f._base + _f._lines[(_line - (1 : GoInt) : GoInt)] : Pos);
            };
            for (defer in __deferstack__) {
                defer();
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (Go.recover_exception != null) throw Go.recover_exception;
                return ((0 : GoInt) : Pos);
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is AnyInterfaceData)) {
                exe = Go.toInterface(__exception__.message);
            };
            Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (Go.recover_exception != null) throw Go.recover_exception;
            return ((0 : GoInt) : Pos);
        };
    }
    /**
        // SetLinesForContent sets the line offsets for the given file content.
        // It ignores position-altering //line comments.
    **/
    @:keep
    static public function setLinesForContent( _f:Ref<File>, _content:Slice<GoByte>):Void {
        var _lines:Slice<GoInt> = (null : Slice<GoInt>);
        var _line:GoInt = (0 : GoInt);
        for (_offset => _b in _content) {
            if (_line >= (0 : GoInt)) {
                _lines = _lines.__appendref__(_line);
            };
            _line = (-1 : GoInt);
            if (_b == ((10 : GoUInt8))) {
                _line = _offset + (1 : GoInt);
            };
        };
        _f._mutex.lock();
        _f._lines = _lines;
        _f._mutex.unlock();
    }
    /**
        // SetLines sets the line offsets for a file and reports whether it succeeded.
        // The line offsets are the offsets of the first character of each line;
        // for instance for the content "ab\nc\n" the line offsets are {0, 3}.
        // An empty file has an empty line offset table.
        // Each line offset must be larger than the offset for the previous line
        // and smaller than the file size; otherwise SetLines fails and returns
        // false.
        // Callers must not mutate the provided slice after SetLines returns.
    **/
    @:keep
    static public function setLines( _f:Ref<File>, _lines:Slice<GoInt>):Bool {
        var _size:GoInt = _f._size;
        for (_i => _offset in _lines) {
            if (((_i > (0 : GoInt)) && (_offset <= _lines[(_i - (1 : GoInt) : GoInt)])) || (_size <= _offset)) {
                return false;
            };
        };
        _f._mutex.lock();
        _f._lines = _lines;
        _f._mutex.unlock();
        return true;
    }
    /**
        // MergeLine merges a line with the following line. It is akin to replacing
        // the newline character at the end of the line with a space (to not change the
        // remaining offsets). To obtain the line number, consult e.g. Position.Line.
        // MergeLine will panic if given an invalid line number.
    **/
    @:keep
    static public function mergeLine( _f:Ref<File>, _line:GoInt):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            if (_line < (1 : GoInt)) {
                throw Go.toInterface(stdgo.fmt.Fmt.sprintf(("invalid line number %d (should be >= 1)" : GoString), Go.toInterface(_line)));
            };
            _f._mutex.lock();
            __deferstack__.unshift(() -> _f._mutex.unlock());
            if (_line >= (_f._lines.length)) {
                throw Go.toInterface(stdgo.fmt.Fmt.sprintf(("invalid line number %d (should be < %d)" : GoString), Go.toInterface(_line), Go.toInterface((_f._lines.length))));
            };
            Go.copySlice((_f._lines.__slice__(_line) : Slice<GoInt>), (_f._lines.__slice__(_line + (1 : GoInt)) : Slice<GoInt>));
            _f._lines = (_f._lines.__slice__(0, (_f._lines.length) - (1 : GoInt)) : Slice<GoInt>);
            for (defer in __deferstack__) {
                defer();
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (Go.recover_exception != null) throw Go.recover_exception;
                return;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is AnyInterfaceData)) {
                exe = Go.toInterface(__exception__.message);
            };
            Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (Go.recover_exception != null) throw Go.recover_exception;
            return;
        };
    }
    /**
        // AddLine adds the line offset for a new line.
        // The line offset must be larger than the offset for the previous line
        // and smaller than the file size; otherwise the line offset is ignored.
    **/
    @:keep
    static public function addLine( _f:Ref<File>, _offset:GoInt):Void {
        _f._mutex.lock();
        {
            var _i:GoInt = (_f._lines.length);
            if (((_i == (0 : GoInt)) || (_f._lines[(_i - (1 : GoInt) : GoInt)] < _offset)) && (_offset < _f._size)) {
                _f._lines = _f._lines.__appendref__(_offset);
            };
        };
        _f._mutex.unlock();
    }
    /**
        // LineCount returns the number of lines in file f.
    **/
    @:keep
    static public function lineCount( _f:Ref<File>):GoInt {
        _f._mutex.lock();
        var _n:GoInt = (_f._lines.length);
        _f._mutex.unlock();
        return _n;
    }
    /**
        // Size returns the size of file f as registered with AddFile.
    **/
    @:keep
    static public function size( _f:Ref<File>):GoInt {
        return _f._size;
    }
    /**
        // Base returns the base offset of file f as registered with AddFile.
    **/
    @:keep
    static public function base( _f:Ref<File>):GoInt {
        return _f._base;
    }
    /**
        // Name returns the file name of file f as registered with AddFile.
    **/
    @:keep
    static public function name( _f:Ref<File>):GoString {
        return _f._name;
    }
}
class FileSet_asInterface {
    /**
        // Write calls encode to serialize the file set s.
    **/
    @:keep
    public dynamic function write(_encode:AnyInterface -> Error):Error return __self__.value.write(_encode);
    /**
        // Read calls decode to deserialize a file set into s; s must not be nil.
    **/
    @:keep
    public dynamic function read(_decode:AnyInterface -> Error):Error return __self__.value.read(_decode);
    /**
        // Position converts a Pos p in the fileset into a Position value.
        // Calling s.Position(p) is equivalent to calling s.PositionFor(p, true).
    **/
    @:keep
    public dynamic function position(_p:Pos):Position return __self__.value.position(_p);
    /**
        // PositionFor converts a Pos p in the fileset into a Position value.
        // If adjusted is set, the position may be adjusted by position-altering
        // //line comments; otherwise those comments are ignored.
        // p must be a Pos value in s or NoPos.
    **/
    @:keep
    public dynamic function positionFor(_p:Pos, _adjusted:Bool):Position return __self__.value.positionFor(_p, _adjusted);
    /**
        // File returns the file that contains the position p.
        // If no such file is found (for instance for p == NoPos),
        // the result is nil.
    **/
    @:keep
    public dynamic function file(_p:Pos):Ref<File> return __self__.value.file(_p);
    @:keep
    public dynamic function _file(_p:Pos):Ref<File> return __self__.value._file(_p);
    /**
        // Iterate calls f for the files in the file set in the order they were added
        // until f returns false.
    **/
    @:keep
    public dynamic function iterate(_f:Ref<File> -> Bool):Void __self__.value.iterate(_f);
    /**
        // RemoveFile removes a file from the FileSet so that subsequent
        // queries for its Pos interval yield a negative result.
        // This reduces the memory usage of a long-lived FileSet that
        // encounters an unbounded stream of files.
        //
        // Removing a file that does not belong to the set has no effect.
    **/
    @:keep
    public dynamic function removeFile(_file:Ref<File>):Void __self__.value.removeFile(_file);
    /**
        // AddFile adds a new file with a given filename, base offset, and file size
        // to the file set s and returns the file. Multiple files may have the same
        // name. The base offset must not be smaller than the FileSet's Base(), and
        // size must not be negative. As a special case, if a negative base is provided,
        // the current value of the FileSet's Base() is used instead.
        //
        // Adding the file will set the file set's Base() value to base + size + 1
        // as the minimum base value for the next file. The following relationship
        // exists between a Pos value p for a given file offset offs:
        //
        //	int(p) = base + offs
        //
        // with offs in the range [0, size] and thus p in the range [base, base+size].
        // For convenience, File.Pos may be used to create file-specific position
        // values from a file offset.
    **/
    @:keep
    public dynamic function addFile(_filename:GoString, _base:GoInt, _size:GoInt):Ref<File> return __self__.value.addFile(_filename, _base, _size);
    /**
        // Base returns the minimum base offset that must be provided to
        // AddFile when adding the next file.
    **/
    @:keep
    public dynamic function base():GoInt return __self__.value.base();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<FileSet>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.go.token.Token.FileSet_asInterface) class FileSet_static_extension {
    /**
        // Write calls encode to serialize the file set s.
    **/
    @:keep
    static public function write( _s:Ref<FileSet>, _encode:AnyInterface -> Error):Error {
        var _ss:T_serializedFileSet = ({} : T_serializedFileSet);
        _s._mutex.lock();
        _ss.base = _s._base;
        var _files = new Slice<T_serializedFile>((_s._files.length : GoInt).toBasic(), 0, ...[for (i in 0 ... (_s._files.length : GoInt).toBasic()) ({} : T_serializedFile)]);
        for (_i => _f in _s._files) {
            _f._mutex.lock();
            _files[(_i : GoInt)] = ({ name : _f._name, base : _f._base, size : _f._size, lines : ((null : Slice<GoInt>).__append__(..._f._lines.__toArray__())), infos : ((null : Slice<T_lineInfo>).__append__(..._f._infos.__toArray__())) } : T_serializedFile);
            _f._mutex.unlock();
        };
        _ss.files = _files;
        _s._mutex.unlock();
        return _encode(Go.toInterface(_ss));
    }
    /**
        // Read calls decode to deserialize a file set into s; s must not be nil.
    **/
    @:keep
    static public function read( _s:Ref<FileSet>, _decode:AnyInterface -> Error):Error {
        var _ss:T_serializedFileSet = ({} : T_serializedFileSet);
        {
            var _err:Error = _decode(Go.toInterface((Go.setRef(_ss) : Ref<T_serializedFileSet>)));
            if (_err != null) {
                return _err;
            };
        };
        _s._mutex.lock();
        _s._base = _ss.base;
        var _files = new Slice<Ref<File>>((_ss.files.length : GoInt).toBasic(), 0, ...[for (i in 0 ... (_ss.files.length : GoInt).toBasic()) (null : Ref<File>)]);
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i < (_ss.files.length), _i++, {
                var _f = (Go.setRef(_ss.files[(_i : GoInt)]) : Ref<T_serializedFile>);
                _files[(_i : GoInt)] = (Go.setRef(({ _name : _f.name, _base : _f.base, _size : _f.size, _lines : _f.lines, _infos : _f.infos } : File)) : Ref<File>);
            });
        };
        _s._files = _files;
        _s._last.store(null);
        _s._mutex.unlock();
        return (null : Error);
    }
    /**
        // Position converts a Pos p in the fileset into a Position value.
        // Calling s.Position(p) is equivalent to calling s.PositionFor(p, true).
    **/
    @:keep
    static public function position( _s:Ref<FileSet>, _p:Pos):Position {
        var _pos:Position = ({} : Position);
        return _s.positionFor(_p, true).__copy__();
    }
    /**
        // PositionFor converts a Pos p in the fileset into a Position value.
        // If adjusted is set, the position may be adjusted by position-altering
        // //line comments; otherwise those comments are ignored.
        // p must be a Pos value in s or NoPos.
    **/
    @:keep
    static public function positionFor( _s:Ref<FileSet>, _p:Pos, _adjusted:Bool):Position {
        var _pos:Position = ({} : Position);
        if (_p != ((0 : Pos))) {
            {
                var _f = _s._file(_p);
                if (_f != null && ((_f : Dynamic).__nil__ == null || !(_f : Dynamic).__nil__)) {
                    return _f._position(_p, _adjusted).__copy__();
                };
            };
        };
        return _pos;
    }
    /**
        // File returns the file that contains the position p.
        // If no such file is found (for instance for p == NoPos),
        // the result is nil.
    **/
    @:keep
    static public function file( _s:Ref<FileSet>, _p:Pos):Ref<File> {
        var _f:Ref<File> = (null : Ref<File>);
        if (_p != ((0 : Pos))) {
            _f = _s._file(_p);
        };
        return _f;
    }
    @:keep
    static public function _file( _s:Ref<FileSet>, _p:Pos):Ref<File> {
        var __deferstack__:Array<Void -> Void> = [];
        {
            var _f = _s._last.load();
            if ((((_f != null) && ((_f : Dynamic).__nil__ == null || !(_f : Dynamic).__nil__)) && (_f._base <= (_p : GoInt))) && ((_p : GoInt) <= (_f._base + _f._size))) {
                return _f;
            };
        };
        try {
            _s._mutex.rlock();
            __deferstack__.unshift(() -> _s._mutex.runlock());
            {
                var _i:GoInt = _searchFiles(_s._files, (_p : GoInt));
                if (_i >= (0 : GoInt)) {
                    var _f = _s._files[(_i : GoInt)];
                    if ((_p : GoInt) <= (_f._base + _f._size)) {
                        _s._last.store(_f);
                        {
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return _f;
                        };
                    };
                };
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                return null;
            };
            for (defer in __deferstack__) {
                defer();
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (Go.recover_exception != null) throw Go.recover_exception;
                return (null : Ref<File>);
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is AnyInterfaceData)) {
                exe = Go.toInterface(__exception__.message);
            };
            Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (Go.recover_exception != null) throw Go.recover_exception;
            return (null : Ref<File>);
        };
    }
    /**
        // Iterate calls f for the files in the file set in the order they were added
        // until f returns false.
    **/
    @:keep
    static public function iterate( _s:Ref<FileSet>, _f:Ref<File> -> Bool):Void {
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(true, _i++, {
                var _file:Ref<File> = (null : Ref<File>);
                _s._mutex.rlock();
                if (_i < (_s._files.length)) {
                    _file = _s._files[(_i : GoInt)];
                };
                _s._mutex.runlock();
                if (((_file == null) || (_file : Dynamic).__nil__) || !_f(_file)) {
                    break;
                };
            });
        };
    }
    /**
        // RemoveFile removes a file from the FileSet so that subsequent
        // queries for its Pos interval yield a negative result.
        // This reduces the memory usage of a long-lived FileSet that
        // encounters an unbounded stream of files.
        //
        // Removing a file that does not belong to the set has no effect.
    **/
    @:keep
    static public function removeFile( _s:Ref<FileSet>, _file:Ref<File>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            _s._last.compareAndSwap(_file, null);
            _s._mutex.lock();
            __deferstack__.unshift(() -> _s._mutex.unlock());
            {
                var _i:GoInt = _searchFiles(_s._files, _file._base);
                if ((_i >= (0 : GoInt)) && (_s._files[(_i : GoInt)] == _file)) {
                    var _last = (Go.setRef(_s._files[((_s._files.length) - (1 : GoInt) : GoInt)]) : Ref<Ref<File>>);
                    _s._files = ((_s._files.__slice__(0, _i) : Slice<Ref<File>>).__append__(...(_s._files.__slice__(_i + (1 : GoInt)) : Slice<Ref<File>>).__toArray__()));
                    _last = null;
                };
            };
            for (defer in __deferstack__) {
                defer();
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (Go.recover_exception != null) throw Go.recover_exception;
                return;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is AnyInterfaceData)) {
                exe = Go.toInterface(__exception__.message);
            };
            Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (Go.recover_exception != null) throw Go.recover_exception;
            return;
        };
    }
    /**
        // AddFile adds a new file with a given filename, base offset, and file size
        // to the file set s and returns the file. Multiple files may have the same
        // name. The base offset must not be smaller than the FileSet's Base(), and
        // size must not be negative. As a special case, if a negative base is provided,
        // the current value of the FileSet's Base() is used instead.
        //
        // Adding the file will set the file set's Base() value to base + size + 1
        // as the minimum base value for the next file. The following relationship
        // exists between a Pos value p for a given file offset offs:
        //
        //	int(p) = base + offs
        //
        // with offs in the range [0, size] and thus p in the range [base, base+size].
        // For convenience, File.Pos may be used to create file-specific position
        // values from a file offset.
    **/
    @:keep
    static public function addFile( _s:Ref<FileSet>, _filename:GoString, _base:GoInt, _size:GoInt):Ref<File> {
        var __deferstack__:Array<Void -> Void> = [];
        var _f = (Go.setRef(({ _name : _filename, _size : _size, _lines : (new Slice<GoInt>(0, 0, (0 : GoInt)) : Slice<GoInt>) } : File)) : Ref<File>);
        try {
            _s._mutex.lock();
            __deferstack__.unshift(() -> _s._mutex.unlock());
            if (_base < (0 : GoInt)) {
                _base = _s._base;
            };
            if (_base < _s._base) {
                throw Go.toInterface(stdgo.fmt.Fmt.sprintf(("invalid base %d (should be >= %d)" : GoString), Go.toInterface(_base), Go.toInterface(_s._base)));
            };
            _f._base = _base;
            if (_size < (0 : GoInt)) {
                throw Go.toInterface(stdgo.fmt.Fmt.sprintf(("invalid size %d (should be >= 0)" : GoString), Go.toInterface(_size)));
            };
            _base = _base + (_size + (1 : GoInt));
            if (_base < (0 : GoInt)) {
                throw Go.toInterface(("token.Pos offset overflow (> 2G of source code in file set)" : GoString));
            };
            _s._base = _base;
            _s._files = _s._files.__appendref__(_f);
            _s._last.store(_f);
            {
                for (defer in __deferstack__) {
                    defer();
                };
                return _f;
            };
            for (defer in __deferstack__) {
                defer();
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (Go.recover_exception != null) throw Go.recover_exception;
                return (null : Ref<File>);
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is AnyInterfaceData)) {
                exe = Go.toInterface(__exception__.message);
            };
            Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (Go.recover_exception != null) throw Go.recover_exception;
            return (null : Ref<File>);
        };
    }
    /**
        // Base returns the minimum base offset that must be provided to
        // AddFile when adding the next file.
    **/
    @:keep
    static public function base( _s:Ref<FileSet>):GoInt {
        _s._mutex.rlock();
        var _b:GoInt = _s._base;
        _s._mutex.runlock();
        return _b;
    }
}
class Pos_asInterface {
    /**
        // IsValid reports whether the position is valid.
    **/
    @:keep
    public dynamic function isValid():Bool return __self__.value.isValid();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<Pos>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.go.token.Token.Pos_asInterface) class Pos_static_extension {
    /**
        // IsValid reports whether the position is valid.
    **/
    @:keep
    static public function isValid( _p:Pos):Bool {
        return _p != ((0 : Pos));
    }
}
class Token_asInterface {
    /**
        // IsKeyword returns true for tokens corresponding to keywords;
        // it returns false otherwise.
    **/
    @:keep
    public dynamic function isKeyword():Bool return __self__.value.isKeyword();
    /**
        // IsOperator returns true for tokens corresponding to operators and
        // delimiters; it returns false otherwise.
    **/
    @:keep
    public dynamic function isOperator():Bool return __self__.value.isOperator();
    /**
        // IsLiteral returns true for tokens corresponding to identifiers
        // and basic type literals; it returns false otherwise.
    **/
    @:keep
    public dynamic function isLiteral():Bool return __self__.value.isLiteral();
    /**
        // Precedence returns the operator precedence of the binary
        // operator op. If op is not a binary operator, the result
        // is LowestPrecedence.
    **/
    @:keep
    public dynamic function precedence():GoInt return __self__.value.precedence();
    /**
        // String returns the string corresponding to the token tok.
        // For operators, delimiters, and keywords the string is the actual
        // token character sequence (e.g., for the token ADD, the string is
        // "+"). For all other tokens the string corresponds to the token
        // constant name (e.g. for the token IDENT, the string is "IDENT").
    **/
    @:keep
    public dynamic function string():GoString return __self__.value.string();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<Token>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.go.token.Token.Token_asInterface) class Token_static_extension {
    /**
        // IsKeyword returns true for tokens corresponding to keywords;
        // it returns false otherwise.
    **/
    @:keep
    static public function isKeyword( _tok:Token):Bool {
        return ((60 : Token) < _tok) && (_tok < (86 : Token));
    }
    /**
        // IsOperator returns true for tokens corresponding to operators and
        // delimiters; it returns false otherwise.
    **/
    @:keep
    static public function isOperator( _tok:Token):Bool {
        return (((11 : Token) < _tok) && (_tok < (59 : Token))) || (_tok == (88 : Token));
    }
    /**
        // IsLiteral returns true for tokens corresponding to identifiers
        // and basic type literals; it returns false otherwise.
    **/
    @:keep
    static public function isLiteral( _tok:Token):Bool {
        return ((3 : Token) < _tok) && (_tok < (10 : Token));
    }
    /**
        // Precedence returns the operator precedence of the binary
        // operator op. If op is not a binary operator, the result
        // is LowestPrecedence.
    **/
    @:keep
    static public function precedence( _op:Token):GoInt {
        {
            final __value__ = _op;
            if (__value__ == ((35 : Token))) {
                return (1 : GoInt);
            } else if (__value__ == ((34 : Token))) {
                return (2 : GoInt);
            } else if (__value__ == ((39 : Token)) || __value__ == ((44 : Token)) || __value__ == ((40 : Token)) || __value__ == ((45 : Token)) || __value__ == ((41 : Token)) || __value__ == ((46 : Token))) {
                return (3 : GoInt);
            } else if (__value__ == ((12 : Token)) || __value__ == ((13 : Token)) || __value__ == ((18 : Token)) || __value__ == ((19 : Token))) {
                return (4 : GoInt);
            } else if (__value__ == ((14 : Token)) || __value__ == ((15 : Token)) || __value__ == ((16 : Token)) || __value__ == ((20 : Token)) || __value__ == ((21 : Token)) || __value__ == ((17 : Token)) || __value__ == ((22 : Token))) {
                return (5 : GoInt);
            };
        };
        return (0 : GoInt);
    }
    /**
        // String returns the string corresponding to the token tok.
        // For operators, delimiters, and keywords the string is the actual
        // token character sequence (e.g., for the token ADD, the string is
        // "+"). For all other tokens the string corresponds to the token
        // constant name (e.g. for the token IDENT, the string is "IDENT").
    **/
    @:keep
    static public function string( _tok:Token):GoString {
        var _s:GoString = Go.str();
        if (((0 : Token) <= _tok) && (_tok < (_tokens.length : Token))) {
            _s = _tokens[(_tok : GoInt)];
        };
        if (_s == (Go.str())) {
            _s = (("token(" : GoString) + stdgo.strconv.Strconv.itoa((_tok : GoInt))) + (")" : GoString);
        };
        return _s;
    }
}
