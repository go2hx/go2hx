package stdgo._internal.regexp;
import stdgo._internal.strings.Strings;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.regexp.syntax.Syntax;
import stdgo._internal.testing.Testing;
import stdgo._internal.os.Os;
import stdgo._internal.compress.bzip2.Bzip2;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.path.filepath.Filepath;
import stdgo._internal.io.Io;
import stdgo._internal.internal.testenv.Testenv;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.sort.Sort;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.bytes.Bytes;
@:structInit @:using(stdgo._internal.regexp.Regexp_Regexp_static_extension.Regexp_static_extension) class Regexp {
    public var _expr : stdgo.GoString = "";
    public var _prog : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Prog.Prog> = (null : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Prog.Prog>);
    public var _onepass : stdgo.Ref<stdgo._internal.regexp.Regexp_T_onePassProg.T_onePassProg> = (null : stdgo.Ref<stdgo._internal.regexp.Regexp_T_onePassProg.T_onePassProg>);
    public var _numSubexp : stdgo.GoInt = 0;
    public var _maxBitStateLen : stdgo.GoInt = 0;
    public var _subexpNames : stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
    public var _prefix : stdgo.GoString = "";
    public var _prefixBytes : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _prefixRune : stdgo.GoInt32 = 0;
    public var _prefixEnd : stdgo.GoUInt32 = 0;
    public var _mpool : stdgo.GoInt = 0;
    public var _matchcap : stdgo.GoInt = 0;
    public var _prefixComplete : Bool = false;
    public var _cond : stdgo._internal.regexp.syntax.Syntax_EmptyOp.EmptyOp = ((0 : stdgo.GoUInt8) : stdgo._internal.regexp.syntax.Syntax_EmptyOp.EmptyOp);
    public var _minInputLen : stdgo.GoInt = 0;
    public var _longest : Bool = false;
    public function new(?_expr:stdgo.GoString, ?_prog:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Prog.Prog>, ?_onepass:stdgo.Ref<stdgo._internal.regexp.Regexp_T_onePassProg.T_onePassProg>, ?_numSubexp:stdgo.GoInt, ?_maxBitStateLen:stdgo.GoInt, ?_subexpNames:stdgo.Slice<stdgo.GoString>, ?_prefix:stdgo.GoString, ?_prefixBytes:stdgo.Slice<stdgo.GoUInt8>, ?_prefixRune:stdgo.GoInt32, ?_prefixEnd:stdgo.GoUInt32, ?_mpool:stdgo.GoInt, ?_matchcap:stdgo.GoInt, ?_prefixComplete:Bool, ?_cond:stdgo._internal.regexp.syntax.Syntax_EmptyOp.EmptyOp, ?_minInputLen:stdgo.GoInt, ?_longest:Bool) {
        if (_expr != null) this._expr = _expr;
        if (_prog != null) this._prog = _prog;
        if (_onepass != null) this._onepass = _onepass;
        if (_numSubexp != null) this._numSubexp = _numSubexp;
        if (_maxBitStateLen != null) this._maxBitStateLen = _maxBitStateLen;
        if (_subexpNames != null) this._subexpNames = _subexpNames;
        if (_prefix != null) this._prefix = _prefix;
        if (_prefixBytes != null) this._prefixBytes = _prefixBytes;
        if (_prefixRune != null) this._prefixRune = _prefixRune;
        if (_prefixEnd != null) this._prefixEnd = _prefixEnd;
        if (_mpool != null) this._mpool = _mpool;
        if (_matchcap != null) this._matchcap = _matchcap;
        if (_prefixComplete != null) this._prefixComplete = _prefixComplete;
        if (_cond != null) this._cond = _cond;
        if (_minInputLen != null) this._minInputLen = _minInputLen;
        if (_longest != null) this._longest = _longest;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Regexp(
_expr,
_prog,
_onepass,
_numSubexp,
_maxBitStateLen,
_subexpNames,
_prefix,
_prefixBytes,
_prefixRune,
_prefixEnd,
_mpool,
_matchcap,
_prefixComplete,
_cond,
_minInputLen,
_longest);
    }
}
