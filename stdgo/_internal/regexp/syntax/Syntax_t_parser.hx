package stdgo._internal.regexp.syntax;
@:structInit @:using(stdgo._internal.regexp.syntax.Syntax_t_parser_static_extension.T_parser_static_extension) class T_parser {
    public var _flags : stdgo._internal.regexp.syntax.Syntax_flags.Flags = ((0 : stdgo.GoUInt16) : stdgo._internal.regexp.syntax.Syntax_flags.Flags);
    public var _stack : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>>);
    public var _free : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp> = (null : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>);
    public var _numCap : stdgo.GoInt = 0;
    public var _wholeRegexp : stdgo.GoString = "";
    public var _tmpClass : stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
    public var _numRegexp : stdgo.GoInt = 0;
    public var _numRunes : stdgo.GoInt = 0;
    public var _repeats : stdgo.GoInt64 = 0;
    public var _height : stdgo.GoMap<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>, stdgo.GoInt> = (null : stdgo.GoMap<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>, stdgo.GoInt>);
    public var _size : stdgo.GoMap<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>, stdgo.GoInt64> = (null : stdgo.GoMap<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>, stdgo.GoInt64>);
    public function new(?_flags:stdgo._internal.regexp.syntax.Syntax_flags.Flags, ?_stack:stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>>, ?_free:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>, ?_numCap:stdgo.GoInt, ?_wholeRegexp:stdgo.GoString, ?_tmpClass:stdgo.Slice<stdgo.GoInt32>, ?_numRegexp:stdgo.GoInt, ?_numRunes:stdgo.GoInt, ?_repeats:stdgo.GoInt64, ?_height:stdgo.GoMap<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>, stdgo.GoInt>, ?_size:stdgo.GoMap<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>, stdgo.GoInt64>) {
        if (_flags != null) this._flags = _flags;
        if (_stack != null) this._stack = _stack;
        if (_free != null) this._free = _free;
        if (_numCap != null) this._numCap = _numCap;
        if (_wholeRegexp != null) this._wholeRegexp = _wholeRegexp;
        if (_tmpClass != null) this._tmpClass = _tmpClass;
        if (_numRegexp != null) this._numRegexp = _numRegexp;
        if (_numRunes != null) this._numRunes = _numRunes;
        if (_repeats != null) this._repeats = _repeats;
        if (_height != null) this._height = _height;
        if (_size != null) this._size = _size;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_parser(
_flags,
_stack,
_free,
_numCap,
_wholeRegexp,
_tmpClass,
_numRegexp,
_numRunes,
_repeats,
_height,
_size);
    }
}
