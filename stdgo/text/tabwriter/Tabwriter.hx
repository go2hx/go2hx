package stdgo.text.tabwriter;
import stdgo.StdGoTypes;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.Chan;
@:structInit class T_cell {
    public var _size : GoInt = ((0 : GoInt));
    public var _width : GoInt = ((0 : GoInt));
    public var _htab : Bool = false;
    public function new(?_size:GoInt, ?_width:GoInt, ?_htab:Bool) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(_size) + " " + Go.string(_width) + " " + Go.string(_htab) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_cell(_size, _width, _htab);
    }
    public function __set__(__tmp__) {
        this._size = __tmp__._size;
        this._width = __tmp__._width;
        this._htab = __tmp__._htab;
        return this;
    }
}
@:structInit class Writer {
    public function write(_buf:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        var _b = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var recover_exception:Error = null;
        var deferstack:Array<Void -> Void> = [];
        var _n:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
        {
            var a0 = Go.pointer(_err);
            var a1 = "Write";
            deferstack.unshift(() -> _b.value._handlePanic(a0, a1));
        };
        try {
            _n = ((0 : GoInt));
            {
                var _i;
                var _ch;
                for (_obj in _buf.keyValueIterator()) {
                    _i = _obj.key;
                    _ch = _obj.value;
                    if (_b.value._endChar == ((0 : GoUInt8))) {
                        if (_ch == (("\t".code : GoRune)) || _ch == (("".code : GoRune)) || _ch == (("\n".code : GoRune)) || _ch == (("".code : GoRune))) {
                            _b.value._append(_buf.__slice__(_n, _i));
                            _b.value._updateWidth();
                            _n = _i + ((1 : GoInt));
                            var _ncells:GoInt = _b.value._terminateCell(_ch == (("\t".code : GoRune)));
                            if (_ch == (("\n".code : GoRune)) || _ch == (("".code : GoRune))) {
                                _b.value._addLine(_ch == (("".code : GoRune)));
                                if (_ch == (("".code : GoRune)) || _ncells == ((1 : GoInt))) {
                                    _b.value._flushNoDefers();
                                    if (_ch == (("".code : GoRune)) && _b.value._flags & debug != ((0 : GoUInt))) {
                                        _b.value._write0(_hbar);
                                    };
                                };
                            };
                        } else if (_ch == escape) {
                            _b.value._append(_buf.__slice__(_n, _i));
                            _b.value._updateWidth();
                            _n = _i;
                            if (_b.value._flags & stripEscape != ((0 : GoUInt))) {
                                _n++;
                            };
                            _b.value._startEscape(escape);
                        } else if (_ch == (("<".code : GoRune)) || _ch == (("&".code : GoRune))) {
                            if (_b.value._flags & filterHTML != ((0 : GoUInt))) {
                                _b.value._append(_buf.__slice__(_n, _i));
                                _b.value._updateWidth();
                                _n = _i;
                                _b.value._startEscape(_ch);
                            };
                        };
                    } else {
                        if (_ch == _b.value._endChar) {
                            var _j:GoInt = _i + ((1 : GoInt));
                            if (_ch == escape && _b.value._flags & stripEscape != ((0 : GoUInt))) {
                                _j = _i;
                            };
                            _b.value._append(_buf.__slice__(_n, _j));
                            _n = _i + ((1 : GoInt));
                            _b.value._endEscape();
                        };
                    };
                };
            };
            _b.value._append(_buf.__slice__(_n));
            _n = _buf.length;
            {
                for (defer in deferstack) {
                    defer();
                };
                return { _0 : _n, _1 : _err };
            };
            for (defer in deferstack) {
                defer();
            };
        } catch(e) {
            recover_exception = stdgo.runtime.Runtime.newRuntime(e.message);
            {
                for (defer in deferstack) {
                    defer();
                };
                if (recover_exception != null) throw recover_exception;
                return { _0 : _n, _1 : _err };
            };
        };
    }
    public function _flushNoDefers():Void {
        var _b = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_b.value._cell._size > ((0 : GoInt))) {
            if (_b.value._endChar != ((0 : GoUInt8))) {
                _b.value._endEscape();
            };
            _b.value._terminateCell(false);
        };
        _b.value._format(((0 : GoInt)), ((0 : GoInt)), _b.value._lines.length);
        _b.value._reset();
    }
    public function _flush():Error {
        var _b = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var recover_exception:Error = null;
        var deferstack:Array<Void -> Void> = [];
        var _err:Error = ((null : stdgo.Error));
        try {
            {
                var a0 = Go.pointer(_err);
                var a1 = "Flush";
                deferstack.unshift(() -> _b.value._handlePanic(a0, a1));
            };
            _b.value._flushNoDefers();
            {
                for (defer in deferstack) {
                    defer();
                };
                return ((null : stdgo.Error));
            };
            for (defer in deferstack) {
                defer();
            };
        } catch(e) {
            recover_exception = stdgo.runtime.Runtime.newRuntime(e.message);
            {
                for (defer in deferstack) {
                    defer();
                };
                if (recover_exception != null) throw recover_exception;
                return _err;
            };
        };
    }
    public function flush():Error {
        var _b = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return _b.value._flush();
    }
    public function _handlePanic(_err:Pointer<Error>, _op:GoString):Void {
        var _b = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var recover_exception:Error = null;
        {
            var _e:AnyInterface = Go.toInterface(Go.recover());
            if (_e != null) {
                if (_op == (("Flush" : GoString))) {
                    _b.value._reset();
                };
                {
                    var __tmp__ = try {
                        { value : ((_e.value : T_osError)), ok : true };
                    } catch(_) {
                        { value : new T_osError(), ok : false };
                    }, _nerr = __tmp__.value, _ok = __tmp__.ok;
                    if (_ok) {
                        _err.value = _nerr._err;
                        return;
                    };
                };
                throw (("tabwriter: panic during " : GoString)) + _op;
            };
        };
    }
    public function _terminateCell(_htab:Bool):GoInt {
        var _b = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        _b.value._cell._htab = _htab;
        var _line:Pointer<Slice<T_cell>> = Go.pointer(_b.value._lines[_b.value._lines.length - ((1 : GoInt))]);
        _line.value = _line.value.__append__(_b.value._cell.__copy__());
        _b.value._cell = new T_cell().__copy__();
        return _line.value.length;
    }
    public function _endEscape():Void {
        var _b = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_b.value._endChar == escape) {
            _b.value._updateWidth();
            if (_b.value._flags & stripEscape == ((0 : GoUInt))) {
                _b.value._cell._width = _b.value._cell._width - (((2 : GoInt)));
            };
        } else if (_b.value._endChar == ((">".code : GoRune))) {} else if (_b.value._endChar == ((";".code : GoRune))) {
            _b.value._cell._width++;
        };
        _b.value._pos = _b.value._buf.length;
        _b.value._endChar = ((0 : GoUInt8));
    }
    public function _startEscape(_ch:GoByte):Void {
        var _b = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_ch == escape) {
            _b.value._endChar = escape;
        } else if (_ch == (("<".code : GoRune))) {
            _b.value._endChar = ((">".code : GoRune));
        } else if (_ch == (("&".code : GoRune))) {
            _b.value._endChar = ((";".code : GoRune));
        };
    }
    public function _updateWidth():Void {
        var _b = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        _b.value._cell._width = _b.value._cell._width + (stdgo.unicode.utf8.Utf8.runeCount(_b.value._buf.__slice__(_b.value._pos)));
        _b.value._pos = _b.value._buf.length;
    }
    public function _append(_text:Slice<GoByte>):Void {
        var _b = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        _b.value._buf = _b.value._buf.__append__(..._text.toArray());
        _b.value._cell._size = _b.value._cell._size + (_text.length);
    }
    public function _format(_pos0:GoInt, _line0:GoInt, _line1:GoInt):GoInt {
        var _b = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _pos:GoInt = ((0 : GoInt));
        _pos = _pos0;
        var _column:GoInt = _b.value._widths.length;
        {
            var _this:GoInt = _line0;
            Go.cfor(_this < _line1, _this++, {
                var _line:Slice<T_cell> = _b.value._lines[_this];
                if (_column >= _line.length - ((1 : GoInt))) {
                    continue;
                };
                _pos = _b.value._writeLines(_pos, _line0, _this);
                _line0 = _this;
                var _width:GoInt = _b.value._minwidth;
                var _discardable:Bool = true;
                Go.cfor(_this < _line1, _this++, {
                    _line = _b.value._lines[_this];
                    if (_column >= _line.length - ((1 : GoInt))) {
                        break;
                    };
                    var _c:T_cell = _line[_column].__copy__();
                    {
                        var _w:GoInt = _c._width + _b.value._padding;
                        if (_w > _width) {
                            _width = _w;
                        };
                    };
                    if (_c._width > ((0 : GoInt)) || _c._htab) {
                        _discardable = false;
                    };
                });
                if (_discardable && _b.value._flags & discardEmptyColumns != ((0 : GoUInt))) {
                    _width = ((0 : GoInt));
                };
                _b.value._widths = _b.value._widths.__append__(_width);
                _pos = _b.value._format(_pos, _line0, _this);
                _b.value._widths = _b.value._widths.__slice__(((0 : GoInt)), _b.value._widths.length - ((1 : GoInt)));
                _line0 = _this;
            });
        };
        return _b.value._writeLines(_pos, _line0, _line1);
    }
    public function _writeLines(_pos0:GoInt, _line0:GoInt, _line1:GoInt):GoInt {
        var _b = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _pos:GoInt = ((0 : GoInt));
        _pos = _pos0;
        {
            var _i:GoInt = _line0;
            Go.cfor(_i < _line1, _i++, {
                var _line:Slice<T_cell> = _b.value._lines[_i];
                var _useTabs:Bool = _b.value._flags & tabIndent != ((0 : GoUInt));
                {
                    var _j;
                    var _c;
                    for (_obj in _line.keyValueIterator()) {
                        _j = _obj.key;
                        _c = _obj.value;
                        if (_j > ((0 : GoInt)) && _b.value._flags & debug != ((0 : GoUInt))) {
                            _b.value._write0(_vbar);
                        };
                        if (_c._size == ((0 : GoInt))) {
                            if (_j < _b.value._widths.length) {
                                _b.value._writePadding(_c._width, _b.value._widths[_j], _useTabs);
                            };
                        } else {
                            _useTabs = false;
                            if (_b.value._flags & alignRight == ((0 : GoUInt))) {
                                _b.value._write0(_b.value._buf.__slice__(_pos, _pos + _c._size));
                                _pos = _pos + (_c._size);
                                if (_j < _b.value._widths.length) {
                                    _b.value._writePadding(_c._width, _b.value._widths[_j], false);
                                };
                            } else {
                                if (_j < _b.value._widths.length) {
                                    _b.value._writePadding(_c._width, _b.value._widths[_j], false);
                                };
                                _b.value._write0(_b.value._buf.__slice__(_pos, _pos + _c._size));
                                _pos = _pos + (_c._size);
                            };
                        };
                    };
                };
                if (_i + ((1 : GoInt)) == _b.value._lines.length) {
                    _b.value._write0(_b.value._buf.__slice__(_pos, _pos + _b.value._cell._size));
                    _pos = _pos + (_b.value._cell._size);
                } else {
                    _b.value._write0(_newline);
                };
            });
        };
        return _pos;
    }
    public function _writePadding(_textw:GoInt, _cellw:GoInt, _useTabs:Bool):Void {
        var _b = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_b.value._padbytes[((0 : GoInt))] == (("\t".code : GoRune)) || _useTabs) {
            if (_b.value._tabwidth == ((0 : GoInt))) {
                return;
            };
            _cellw = (_cellw + _b.value._tabwidth - ((1 : GoInt))) / _b.value._tabwidth * _b.value._tabwidth;
            var _n:GoInt = _cellw - _textw;
            if (_n < ((0 : GoInt))) {
                throw "internal error";
            };
            _b.value._writeN(_tabs, (_n + _b.value._tabwidth - ((1 : GoInt))) / _b.value._tabwidth);
            return;
        };
        _b.value._writeN(_b.value._padbytes.__slice__(((0 : GoInt))), _cellw - _textw);
    }
    public function _writeN(_src:Slice<GoByte>, _n:GoInt):Void {
        var _b = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        while (_n > _src.length) {
            _b.value._write0(_src);
            _n = _n - (_src.length);
        };
        _b.value._write0(_src.__slice__(((0 : GoInt)), _n));
    }
    public function _write0(_buf:Slice<GoByte>):Void {
        var _b = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var __tmp__ = _b.value._output.write(_buf), _n:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_n != _buf.length && _err == null) {
            _err = stdgo.io.Io.errShortWrite;
        };
        if (_err != null) {
            throw new T_osError(_err);
        };
    }
    public function _dump():Void {
        var _b = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _pos:GoInt = ((0 : GoInt));
        {
            var _i;
            var _line;
            for (_obj in _b.value._lines.keyValueIterator()) {
                _i = _obj.key;
                _line = _obj.value;
                stdgo.fmt.Fmt.print("(", _i, ") ");
                for (_c in _line) {
                    stdgo.fmt.Fmt.print("[", ((_b.value._buf.__slice__(_pos, _pos + _c._size) : GoString)), "]");
                    _pos = _pos + (_c._size);
                };
                stdgo.fmt.Fmt.print("\n");
            };
        };
        stdgo.fmt.Fmt.print("\n");
    }
    public function init(_output:stdgo.io.Io.Writer, _minwidth:GoInt, _tabwidth:GoInt, _padding:GoInt, _padchar:GoByte, _flags:GoUInt):Pointer<Writer> {
        var _b = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_minwidth < ((0 : GoInt)) || _tabwidth < ((0 : GoInt)) || _padding < ((0 : GoInt))) {
            throw "negative minwidth, tabwidth, or padding";
        };
        _b.value._output = _output;
        _b.value._minwidth = _minwidth;
        _b.value._tabwidth = _tabwidth;
        _b.value._padding = _padding;
        {
            var _i;
            for (_obj in _b.value._padbytes.keyValueIterator()) {
                _i = _obj.key;
                _b.value._padbytes[_i] = _padchar;
            };
        };
        if (_padchar == (("\t".code : GoRune))) {
            _flags = (_flags & (alignRight)) ^ ((-1 : GoUnTypedInt));
        };
        _b.value._flags = _flags;
        _b.value._reset();
        return _b;
    }
    public function _reset():Void {
        var _b = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        _b.value._buf = _b.value._buf.__slice__(0, ((0 : GoInt)));
        _b.value._pos = ((0 : GoInt));
        _b.value._cell = new T_cell().__copy__();
        _b.value._endChar = ((0 : GoUInt8));
        _b.value._lines = _b.value._lines.__slice__(((0 : GoInt)), ((0 : GoInt)));
        _b.value._widths = _b.value._widths.__slice__(((0 : GoInt)), ((0 : GoInt)));
        _b.value._addLine(true);
    }
    public function _addLine(_flushed:Bool):Void {
        var _b = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        {
            var _n:GoInt = _b.value._lines.length + ((1 : GoInt));
            if (_n <= _b.value._lines.cap()) {
                _b.value._lines = _b.value._lines.__slice__(0, _n);
                _b.value._lines[_n - ((1 : GoInt))] = _b.value._lines[_n - ((1 : GoInt))].__slice__(0, ((0 : GoInt)));
            } else {
                _b.value._lines = _b.value._lines.__append__(new Slice<T_cell>().nil());
            };
        };
        if (!_flushed) {
            {
                var _n:GoInt = _b.value._lines.length;
                if (_n >= ((2 : GoInt))) {
                    {
                        var _prev:GoInt = _b.value._lines[_n - ((2 : GoInt))].length;
                        if (_prev > _b.value._lines[_n - ((1 : GoInt))].cap()) {
                            _b.value._lines[_n - ((1 : GoInt))] = new Slice<T_cell>(...[for (i in 0 ... ((((0 : GoInt)) : GoInt)).toBasic()) new T_cell()]).setCap(((_prev : GoInt)).toBasic());
                        };
                    };
                };
            };
        };
    }
    public var _output : stdgo.io.Io.Writer = ((null : stdgo.io.Io.Writer));
    public var _minwidth : GoInt = ((0 : GoInt));
    public var _tabwidth : GoInt = ((0 : GoInt));
    public var _padding : GoInt = ((0 : GoInt));
    public var _padbytes : GoArray<GoUInt8> = new GoArray<GoUInt8>(...[for (i in 0 ... 8) ((0 : GoUInt8))]);
    public var _flags : GoUInt = ((0 : GoUInt));
    public var _buf : Slice<GoUInt8> = new Slice<GoUInt8>().nil();
    public var _pos : GoInt = ((0 : GoInt));
    public var _cell : T_cell = new T_cell();
    public var _endChar : GoUInt8 = ((0 : GoUInt8));
    public var _lines : Slice<Slice<T_cell>> = new Slice<Slice<T_cell>>().nil();
    public var _widths : Slice<GoInt> = new Slice<GoInt>().nil();
    public function new(?_output:stdgo.io.Io.Writer, ?_minwidth:GoInt, ?_tabwidth:GoInt, ?_padding:GoInt, ?_padbytes:GoArray<GoUInt8>, ?_flags:GoUInt, ?_buf:Slice<GoUInt8>, ?_pos:GoInt, ?_cell:T_cell, ?_endChar:GoUInt8, ?_lines:Slice<Slice<T_cell>>, ?_widths:Slice<GoInt>) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(_output) + " " + Go.string(_minwidth) + " " + Go.string(_tabwidth) + " " + Go.string(_padding) + " " + Go.string(_padbytes) + " " + Go.string(_flags) + " " + Go.string(_buf) + " " + Go.string(_pos) + " " + Go.string(_cell) + " " + Go.string(_endChar) + " " + Go.string(_lines) + " " + Go.string(_widths) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new Writer(
_output,
_minwidth,
_tabwidth,
_padding,
_padbytes,
_flags,
_buf,
_pos,
_cell,
_endChar,
_lines,
_widths);
    }
    public function __set__(__tmp__) {
        this._output = __tmp__._output;
        this._minwidth = __tmp__._minwidth;
        this._tabwidth = __tmp__._tabwidth;
        this._padding = __tmp__._padding;
        this._padbytes = __tmp__._padbytes;
        this._flags = __tmp__._flags;
        this._buf = __tmp__._buf;
        this._pos = __tmp__._pos;
        this._cell = __tmp__._cell;
        this._endChar = __tmp__._endChar;
        this._lines = __tmp__._lines;
        this._widths = __tmp__._widths;
        return this;
    }
}
@:structInit class T_osError {
    public var _err : stdgo.Error = ((null : stdgo.Error));
    public function new(?_err:stdgo.Error) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(_err) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_osError(_err);
    }
    public function __set__(__tmp__) {
        this._err = __tmp__._err;
        return this;
    }
}
final filterHTML : GoUInt = (((1 : GoUnTypedInt)) << (0 : GoUnTypedInt));
var _hbar : Slice<GoUInt8> = (("---\n" : Slice<GoByte>));
final tabIndent : GoUInt = (((1 : GoUnTypedInt)) << (4 : GoUnTypedInt));
final discardEmptyColumns : GoUInt = (((1 : GoUnTypedInt)) << (3 : GoUnTypedInt));
final stripEscape : GoUInt = (((1 : GoUnTypedInt)) << (1 : GoUnTypedInt));
final escape : GoInt32 = (("\u{00ff}".code : GoRune));
var _vbar : Slice<GoUInt8> = new Slice<GoUInt8>((("|".code : GoRune)));
final alignRight : GoUInt = (((1 : GoUnTypedInt)) << (2 : GoUnTypedInt));
var _tabs : Slice<GoUInt8> = (("\t\t\t\t\t\t\t\t" : Slice<GoByte>));
var _newline : Slice<GoUInt8> = new Slice<GoUInt8>((("\n".code : GoRune)));
final debug : GoUInt = (((1 : GoUnTypedInt)) << (5 : GoUnTypedInt));
/**
    // NewWriter allocates and initializes a new tabwriter.Writer.
    // The parameters are the same as for the Init function.
    //
**/
function newWriter(_output:stdgo.io.Io.Writer, _minwidth:GoInt, _tabwidth:GoInt, _padding:GoInt, _padchar:GoByte, _flags:GoUInt):Pointer<Writer> {
        return Go.pointer(new Writer()).value.init(_output, _minwidth, _tabwidth, _padding, _padchar, _flags);
    }
class Writer_extension_fields {
    public function _addLine(__tmp__, _flushed:Bool):Void __tmp__._addLine(_flushed);
    public function _reset(__tmp__):Void __tmp__._reset();
    public function init(__tmp__, _output:stdgo.io.Io.Writer, _minwidth:GoInt, _tabwidth:GoInt, _padding:GoInt, _padchar:GoByte, _flags:GoUInt):Pointer<Writer> return __tmp__.init(_output, _minwidth, _tabwidth, _padding, _padchar, _flags);
    public function _dump(__tmp__):Void __tmp__._dump();
    public function _write0(__tmp__, _buf:Slice<GoByte>):Void __tmp__._write0(_buf);
    public function _writeN(__tmp__, _src:Slice<GoByte>, _n:GoInt):Void __tmp__._writeN(_src, _n);
    public function _writePadding(__tmp__, _textw:GoInt, _cellw:GoInt, _useTabs:Bool):Void __tmp__._writePadding(_textw, _cellw, _useTabs);
    public function _writeLines(__tmp__, _pos0:GoInt, _line0:GoInt, _line1:GoInt):GoInt return __tmp__._writeLines(_pos0, _line0, _line1);
    public function _format(__tmp__, _pos0:GoInt, _line0:GoInt, _line1:GoInt):GoInt return __tmp__._format(_pos0, _line0, _line1);
    public function _append(__tmp__, _text:Slice<GoByte>):Void __tmp__._append(_text);
    public function _updateWidth(__tmp__):Void __tmp__._updateWidth();
    public function _startEscape(__tmp__, _ch:GoByte):Void __tmp__._startEscape(_ch);
    public function _endEscape(__tmp__):Void __tmp__._endEscape();
    public function _terminateCell(__tmp__, _htab:Bool):GoInt return __tmp__._terminateCell(_htab);
    public function _handlePanic(__tmp__, _err:Pointer<Error>, _op:GoString):Void __tmp__._handlePanic(_err, _op);
    public function flush(__tmp__):Error return __tmp__.flush();
    public function _flush(__tmp__):Error return __tmp__._flush();
    public function _flushNoDefers(__tmp__):Void __tmp__._flushNoDefers();
    public function write(__tmp__, _buf:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } return __tmp__.write(_buf);
}
