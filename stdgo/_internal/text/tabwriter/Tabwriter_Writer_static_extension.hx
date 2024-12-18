package stdgo._internal.text.tabwriter;
@:keep @:allow(stdgo._internal.text.tabwriter.Tabwriter.Writer_asInterface) class Writer_static_extension {
    @:keep
    static public function write( _b:stdgo.Ref<stdgo._internal.text.tabwriter.Tabwriter_Writer.Writer>, _buf:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _b:stdgo.Ref<stdgo._internal.text.tabwriter.Tabwriter_Writer.Writer> = _b;
        var __deferstack__:Array<Void -> Void> = [];
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        try {
            {
                var _a0 = (stdgo.Go.setRef(_err) : stdgo.Ref<stdgo.Error>);
                var _a1 = ("Write" : stdgo.GoString);
                final __f__ = _b._handlePanic;
                __deferstack__.unshift(() -> __f__(_a0, _a1?.__copy__()));
            };
            _n = (0 : stdgo.GoInt);
            for (_i => _ch in _buf) {
                if (_b._endChar == ((0 : stdgo.GoUInt8))) {
                    {
                        final __value__ = _ch;
                        if (__value__ == ((9 : stdgo.GoUInt8)) || __value__ == ((11 : stdgo.GoUInt8)) || __value__ == ((10 : stdgo.GoUInt8)) || __value__ == ((12 : stdgo.GoUInt8))) {
                            _b._append((_buf.__slice__(_n, _i) : stdgo.Slice<stdgo.GoUInt8>));
                            _b._updateWidth();
                            _n = (_i + (1 : stdgo.GoInt) : stdgo.GoInt);
                            var _ncells = (_b._terminateCell(_ch == ((9 : stdgo.GoUInt8))) : stdgo.GoInt);
                            if (((_ch == (10 : stdgo.GoUInt8)) || (_ch == (12 : stdgo.GoUInt8)) : Bool)) {
                                _b._addLine(_ch == ((12 : stdgo.GoUInt8)));
                                if (((_ch == (12 : stdgo.GoUInt8)) || (_ncells == (1 : stdgo.GoInt)) : Bool)) {
                                    _b._flushNoDefers();
                                    if (((_ch == (12 : stdgo.GoUInt8)) && ((_b._flags & (32u32 : stdgo.GoUInt) : stdgo.GoUInt) != (0u32 : stdgo.GoUInt)) : Bool)) {
                                        _b._write0(stdgo._internal.text.tabwriter.Tabwriter__hbar._hbar);
                                    };
                                };
                            };
                        } else if (__value__ == ((255 : stdgo.GoUInt8))) {
                            _b._append((_buf.__slice__(_n, _i) : stdgo.Slice<stdgo.GoUInt8>));
                            _b._updateWidth();
                            _n = _i;
                            if ((_b._flags & (2u32 : stdgo.GoUInt) : stdgo.GoUInt) != ((0u32 : stdgo.GoUInt))) {
                                _n++;
                            };
                            _b._startEscape((255 : stdgo.GoUInt8));
                        } else if (__value__ == ((60 : stdgo.GoUInt8)) || __value__ == ((38 : stdgo.GoUInt8))) {
                            if ((_b._flags & (1u32 : stdgo.GoUInt) : stdgo.GoUInt) != ((0u32 : stdgo.GoUInt))) {
                                _b._append((_buf.__slice__(_n, _i) : stdgo.Slice<stdgo.GoUInt8>));
                                _b._updateWidth();
                                _n = _i;
                                _b._startEscape(_ch);
                            };
                        };
                    };
                } else {
                    if (_ch == (_b._endChar)) {
                        var _j = (_i + (1 : stdgo.GoInt) : stdgo.GoInt);
                        if (((_ch == (255 : stdgo.GoUInt8)) && ((_b._flags & (2u32 : stdgo.GoUInt) : stdgo.GoUInt) != (0u32 : stdgo.GoUInt)) : Bool)) {
                            _j = _i;
                        };
                        _b._append((_buf.__slice__(_n, _j) : stdgo.Slice<stdgo.GoUInt8>));
                        _n = (_i + (1 : stdgo.GoInt) : stdgo.GoInt);
                        _b._endEscape();
                    };
                };
            };
            _b._append((_buf.__slice__(_n) : stdgo.Slice<stdgo.GoUInt8>));
            _n = (_buf.length);
            {
                final __ret__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : _n, _1 : _err };
                for (defer in __deferstack__) {
                    defer();
                };
                return __ret__;
            };
            {
                final __ret__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : _n, _1 : _err };
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return __ret__;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                if (__exception__.message == "__return__") throw "__return__";
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            final __ret__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : _n, _1 : _err };
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return __ret__;
        };
    }
    @:keep
    static public function _flushNoDefers( _b:stdgo.Ref<stdgo._internal.text.tabwriter.Tabwriter_Writer.Writer>):Void {
        @:recv var _b:stdgo.Ref<stdgo._internal.text.tabwriter.Tabwriter_Writer.Writer> = _b;
        if ((_b._cell._size > (0 : stdgo.GoInt) : Bool)) {
            if (_b._endChar != ((0 : stdgo.GoUInt8))) {
                _b._endEscape();
            };
            _b._terminateCell(false);
        };
        _b._format((0 : stdgo.GoInt), (0 : stdgo.GoInt), (_b._lines.length));
        _b._reset();
    }
    @:keep
    static public function _flush( _b:stdgo.Ref<stdgo._internal.text.tabwriter.Tabwriter_Writer.Writer>):stdgo.Error {
        @:recv var _b:stdgo.Ref<stdgo._internal.text.tabwriter.Tabwriter_Writer.Writer> = _b;
        var __deferstack__:Array<Void -> Void> = [];
        var _err = (null : stdgo.Error);
        try {
            {
                var _a0 = (stdgo.Go.setRef(_err) : stdgo.Ref<stdgo.Error>);
                var _a1 = ("Flush" : stdgo.GoString);
                final __f__ = _b._handlePanic;
                __deferstack__.unshift(() -> __f__(_a0, _a1?.__copy__()));
            };
            _b._flushNoDefers();
            {
                final __ret__:stdgo.Error = _err = (null : stdgo.Error);
                for (defer in __deferstack__) {
                    defer();
                };
                return __ret__;
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return _err;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                if (__exception__.message == "__return__") throw "__return__";
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return _err;
        };
    }
    @:keep
    static public function flush( _b:stdgo.Ref<stdgo._internal.text.tabwriter.Tabwriter_Writer.Writer>):stdgo.Error {
        @:recv var _b:stdgo.Ref<stdgo._internal.text.tabwriter.Tabwriter_Writer.Writer> = _b;
        return _b._flush();
    }
    @:keep
    static public function _handlePanic( _b:stdgo.Ref<stdgo._internal.text.tabwriter.Tabwriter_Writer.Writer>, _err:stdgo.Ref<stdgo.Error>, _op:stdgo.GoString):Void {
        @:recv var _b:stdgo.Ref<stdgo._internal.text.tabwriter.Tabwriter_Writer.Writer> = _b;
        {
            var _e = ({
                final r = stdgo.Go.recover_exception;
                stdgo.Go.recover_exception = null;
                r;
            } : stdgo.AnyInterface);
            if (_e != null) {
                if (_op == (("Flush" : stdgo.GoString))) {
                    _b._reset();
                };
                {
                    var __tmp__ = try {
                        { _0 : (stdgo.Go.typeAssert((_e : stdgo._internal.text.tabwriter.Tabwriter_T_osError.T_osError)) : stdgo._internal.text.tabwriter.Tabwriter_T_osError.T_osError), _1 : true };
                    } catch(_) {
                        { _0 : ({} : stdgo._internal.text.tabwriter.Tabwriter_T_osError.T_osError), _1 : false };
                    }, _nerr = __tmp__._0, _ok = __tmp__._1;
                    if (_ok) {
                        {
                            var __tmp__ = _nerr._err;
                            var x = (_err : stdgo.Error);
                            x.error = __tmp__.error;
                        };
                        return;
                    };
                };
                throw stdgo.Go.toInterface((("tabwriter: panic during " : stdgo.GoString) + _op?.__copy__() : stdgo.GoString));
            };
        };
    }
    @:keep
    static public function _terminateCell( _b:stdgo.Ref<stdgo._internal.text.tabwriter.Tabwriter_Writer.Writer>, _htab:Bool):stdgo.GoInt {
        @:recv var _b:stdgo.Ref<stdgo._internal.text.tabwriter.Tabwriter_Writer.Writer> = _b;
        _b._cell._htab = _htab;
        var _line = (stdgo.Go.setRef(_b._lines[((_b._lines.length) - (1 : stdgo.GoInt) : stdgo.GoInt)]) : stdgo.Ref<stdgo.Slice<stdgo._internal.text.tabwriter.Tabwriter_T_cell.T_cell>>);
        (_line : stdgo.Slice<stdgo._internal.text.tabwriter.Tabwriter_T_cell.T_cell>).__setData__(((_line : stdgo.Slice<stdgo._internal.text.tabwriter.Tabwriter_T_cell.T_cell>).__append__(_b._cell?.__copy__())));
        _b._cell = (new stdgo._internal.text.tabwriter.Tabwriter_T_cell.T_cell() : stdgo._internal.text.tabwriter.Tabwriter_T_cell.T_cell);
        return ((_line : stdgo.Slice<stdgo._internal.text.tabwriter.Tabwriter_T_cell.T_cell>).length);
    }
    @:keep
    static public function _endEscape( _b:stdgo.Ref<stdgo._internal.text.tabwriter.Tabwriter_Writer.Writer>):Void {
        @:recv var _b:stdgo.Ref<stdgo._internal.text.tabwriter.Tabwriter_Writer.Writer> = _b;
        {
            final __value__ = _b._endChar;
            if (__value__ == ((255 : stdgo.GoUInt8))) {
                _b._updateWidth();
                if ((_b._flags & (2u32 : stdgo.GoUInt) : stdgo.GoUInt) == ((0u32 : stdgo.GoUInt))) {
                    _b._cell._width = (_b._cell._width - ((2 : stdgo.GoInt)) : stdgo.GoInt);
                };
            } else if (__value__ == ((62 : stdgo.GoUInt8))) {} else if (__value__ == ((59 : stdgo.GoUInt8))) {
                _b._cell._width++;
            };
        };
        _b._pos = (_b._buf.length);
        _b._endChar = (0 : stdgo.GoUInt8);
    }
    @:keep
    static public function _startEscape( _b:stdgo.Ref<stdgo._internal.text.tabwriter.Tabwriter_Writer.Writer>, _ch:stdgo.GoUInt8):Void {
        @:recv var _b:stdgo.Ref<stdgo._internal.text.tabwriter.Tabwriter_Writer.Writer> = _b;
        {
            final __value__ = _ch;
            if (__value__ == ((255 : stdgo.GoUInt8))) {
                _b._endChar = (255 : stdgo.GoUInt8);
            } else if (__value__ == ((60 : stdgo.GoUInt8))) {
                _b._endChar = (62 : stdgo.GoUInt8);
            } else if (__value__ == ((38 : stdgo.GoUInt8))) {
                _b._endChar = (59 : stdgo.GoUInt8);
            };
        };
    }
    @:keep
    static public function _updateWidth( _b:stdgo.Ref<stdgo._internal.text.tabwriter.Tabwriter_Writer.Writer>):Void {
        @:recv var _b:stdgo.Ref<stdgo._internal.text.tabwriter.Tabwriter_Writer.Writer> = _b;
        _b._cell._width = (_b._cell._width + (stdgo._internal.unicode.utf8.Utf8_runeCount.runeCount((_b._buf.__slice__(_b._pos) : stdgo.Slice<stdgo.GoUInt8>))) : stdgo.GoInt);
        _b._pos = (_b._buf.length);
    }
    @:keep
    static public function _append( _b:stdgo.Ref<stdgo._internal.text.tabwriter.Tabwriter_Writer.Writer>, _text:stdgo.Slice<stdgo.GoUInt8>):Void {
        @:recv var _b:stdgo.Ref<stdgo._internal.text.tabwriter.Tabwriter_Writer.Writer> = _b;
        _b._buf = (_b._buf.__append__(...(_text : Array<stdgo.GoUInt8>)));
        _b._cell._size = (_b._cell._size + ((_text.length)) : stdgo.GoInt);
    }
    @:keep
    static public function _format( _b:stdgo.Ref<stdgo._internal.text.tabwriter.Tabwriter_Writer.Writer>, _pos0:stdgo.GoInt, _line0:stdgo.GoInt, _line1:stdgo.GoInt):stdgo.GoInt {
        @:recv var _b:stdgo.Ref<stdgo._internal.text.tabwriter.Tabwriter_Writer.Writer> = _b;
        var _pos = (0 : stdgo.GoInt);
        _pos = _pos0;
        var _column = (_b._widths.length : stdgo.GoInt);
        {
            var _this = (_line0 : stdgo.GoInt);
            while ((_this < _line1 : Bool)) {
                var _line = _b._lines[(_this : stdgo.GoInt)];
if ((_column >= ((_line.length) - (1 : stdgo.GoInt) : stdgo.GoInt) : Bool)) {
                    {
                        _this++;
                        continue;
                    };
                };
_pos = _b._writeLines(_pos, _line0, _this);
_line0 = _this;
var _width = (_b._minwidth : stdgo.GoInt);
var _discardable = (true : Bool);
while ((_this < _line1 : Bool)) {
                    _line = _b._lines[(_this : stdgo.GoInt)];
if ((_column >= ((_line.length) - (1 : stdgo.GoInt) : stdgo.GoInt) : Bool)) {
                        break;
                    };
var _c = (_line[(_column : stdgo.GoInt)] : stdgo._internal.text.tabwriter.Tabwriter_T_cell.T_cell);
{
                        var _w = (_c._width + _b._padding : stdgo.GoInt);
                        if ((_w > _width : Bool)) {
                            _width = _w;
                        };
                    };
if (((_c._width > (0 : stdgo.GoInt) : Bool) || _c._htab : Bool)) {
                        _discardable = false;
                    };
                    _this++;
                };
if ((_discardable && ((_b._flags & (8u32 : stdgo.GoUInt) : stdgo.GoUInt) != (0u32 : stdgo.GoUInt)) : Bool)) {
                    _width = (0 : stdgo.GoInt);
                };
_b._widths = (_b._widths.__append__(_width));
_pos = _b._format(_pos, _line0, _this);
_b._widths = (_b._widths.__slice__((0 : stdgo.GoInt), ((_b._widths.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>);
_line0 = _this;
                _this++;
            };
        };
        return _pos = _b._writeLines(_pos, _line0, _line1);
    }
    @:keep
    static public function _writeLines( _b:stdgo.Ref<stdgo._internal.text.tabwriter.Tabwriter_Writer.Writer>, _pos0:stdgo.GoInt, _line0:stdgo.GoInt, _line1:stdgo.GoInt):stdgo.GoInt {
        @:recv var _b:stdgo.Ref<stdgo._internal.text.tabwriter.Tabwriter_Writer.Writer> = _b;
        var _pos = (0 : stdgo.GoInt);
        _pos = _pos0;
        {
            var _i = (_line0 : stdgo.GoInt);
            while ((_i < _line1 : Bool)) {
                var _line = _b._lines[(_i : stdgo.GoInt)];
var _useTabs = ((_b._flags & (16u32 : stdgo.GoUInt) : stdgo.GoUInt) != ((0u32 : stdgo.GoUInt)) : Bool);
for (_j => _c in _line) {
                    if (((_j > (0 : stdgo.GoInt) : Bool) && ((_b._flags & (32u32 : stdgo.GoUInt) : stdgo.GoUInt) != (0u32 : stdgo.GoUInt)) : Bool)) {
                        _b._write0(stdgo._internal.text.tabwriter.Tabwriter__vbar._vbar);
                    };
                    if (_c._size == ((0 : stdgo.GoInt))) {
                        if ((_j < (_b._widths.length) : Bool)) {
                            _b._writePadding(_c._width, _b._widths[(_j : stdgo.GoInt)], _useTabs);
                        };
                    } else {
                        _useTabs = false;
                        if ((_b._flags & (4u32 : stdgo.GoUInt) : stdgo.GoUInt) == ((0u32 : stdgo.GoUInt))) {
                            _b._write0((_b._buf.__slice__(_pos, (_pos + _c._size : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
                            _pos = (_pos + (_c._size) : stdgo.GoInt);
                            if ((_j < (_b._widths.length) : Bool)) {
                                _b._writePadding(_c._width, _b._widths[(_j : stdgo.GoInt)], false);
                            };
                        } else {
                            if ((_j < (_b._widths.length) : Bool)) {
                                _b._writePadding(_c._width, _b._widths[(_j : stdgo.GoInt)], false);
                            };
                            _b._write0((_b._buf.__slice__(_pos, (_pos + _c._size : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
                            _pos = (_pos + (_c._size) : stdgo.GoInt);
                        };
                    };
                };
if ((_i + (1 : stdgo.GoInt) : stdgo.GoInt) == ((_b._lines.length))) {
                    _b._write0((_b._buf.__slice__(_pos, (_pos + _b._cell._size : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
                    _pos = (_pos + (_b._cell._size) : stdgo.GoInt);
                } else {
                    _b._write0(stdgo._internal.text.tabwriter.Tabwriter__newline._newline);
                };
                _i++;
            };
        };
        return _pos;
    }
    @:keep
    static public function _writePadding( _b:stdgo.Ref<stdgo._internal.text.tabwriter.Tabwriter_Writer.Writer>, _textw:stdgo.GoInt, _cellw:stdgo.GoInt, _useTabs:Bool):Void {
        @:recv var _b:stdgo.Ref<stdgo._internal.text.tabwriter.Tabwriter_Writer.Writer> = _b;
        if (((_b._padbytes[(0 : stdgo.GoInt)] == (9 : stdgo.GoUInt8)) || _useTabs : Bool)) {
            if (_b._tabwidth == ((0 : stdgo.GoInt))) {
                return;
            };
            _cellw = (((((_cellw + _b._tabwidth : stdgo.GoInt) - (1 : stdgo.GoInt) : stdgo.GoInt)) / _b._tabwidth : stdgo.GoInt) * _b._tabwidth : stdgo.GoInt);
            var _n = (_cellw - _textw : stdgo.GoInt);
            if ((_n < (0 : stdgo.GoInt) : Bool)) {
                throw stdgo.Go.toInterface(("internal error" : stdgo.GoString));
            };
            _b._writeN(stdgo._internal.text.tabwriter.Tabwriter__tabs._tabs, ((((_n + _b._tabwidth : stdgo.GoInt) - (1 : stdgo.GoInt) : stdgo.GoInt)) / _b._tabwidth : stdgo.GoInt));
            return;
        };
        _b._writeN((_b._padbytes.__slice__((0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), (_cellw - _textw : stdgo.GoInt));
    }
    @:keep
    static public function _writeN( _b:stdgo.Ref<stdgo._internal.text.tabwriter.Tabwriter_Writer.Writer>, _src:stdgo.Slice<stdgo.GoUInt8>, _n:stdgo.GoInt):Void {
        @:recv var _b:stdgo.Ref<stdgo._internal.text.tabwriter.Tabwriter_Writer.Writer> = _b;
        while ((_n > (_src.length) : Bool)) {
            _b._write0(_src);
            _n = (_n - ((_src.length)) : stdgo.GoInt);
        };
        _b._write0((_src.__slice__((0 : stdgo.GoInt), _n) : stdgo.Slice<stdgo.GoUInt8>));
    }
    @:keep
    static public function _write0( _b:stdgo.Ref<stdgo._internal.text.tabwriter.Tabwriter_Writer.Writer>, _buf:stdgo.Slice<stdgo.GoUInt8>):Void {
        @:recv var _b:stdgo.Ref<stdgo._internal.text.tabwriter.Tabwriter_Writer.Writer> = _b;
        var __tmp__ = _b._output.write(_buf), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (((_n != (_buf.length)) && (_err == null) : Bool)) {
            _err = stdgo._internal.io.Io_errShortWrite.errShortWrite;
        };
        if (_err != null) {
            throw stdgo.Go.toInterface((new stdgo._internal.text.tabwriter.Tabwriter_T_osError.T_osError(_err) : stdgo._internal.text.tabwriter.Tabwriter_T_osError.T_osError));
        };
    }
    @:keep
    static public function _dump( _b:stdgo.Ref<stdgo._internal.text.tabwriter.Tabwriter_Writer.Writer>):Void {
        @:recv var _b:stdgo.Ref<stdgo._internal.text.tabwriter.Tabwriter_Writer.Writer> = _b;
        var _pos = (0 : stdgo.GoInt);
        for (_i => _line in _b._lines) {
            stdgo.Go.print(("(" : stdgo.GoString), _i, (") " : stdgo.GoString));
            for (__0 => _c in _line) {
                stdgo.Go.print(("[" : stdgo.GoString), ((_b._buf.__slice__(_pos, (_pos + _c._size : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString), ("]" : stdgo.GoString));
                _pos = (_pos + (_c._size) : stdgo.GoInt);
            };
            stdgo.Go.print(("\n" : stdgo.GoString));
        };
        stdgo.Go.print(("\n" : stdgo.GoString));
    }
    @:keep
    static public function init( _b:stdgo.Ref<stdgo._internal.text.tabwriter.Tabwriter_Writer.Writer>, _output:stdgo._internal.io.Io_Writer.Writer, _minwidth:stdgo.GoInt, _tabwidth:stdgo.GoInt, _padding:stdgo.GoInt, _padchar:stdgo.GoUInt8, _flags:stdgo.GoUInt):stdgo.Ref<stdgo._internal.text.tabwriter.Tabwriter_Writer.Writer> {
        @:recv var _b:stdgo.Ref<stdgo._internal.text.tabwriter.Tabwriter_Writer.Writer> = _b;
        if ((((_minwidth < (0 : stdgo.GoInt) : Bool) || (_tabwidth < (0 : stdgo.GoInt) : Bool) : Bool) || (_padding < (0 : stdgo.GoInt) : Bool) : Bool)) {
            throw stdgo.Go.toInterface(("negative minwidth, tabwidth, or padding" : stdgo.GoString));
        };
        _b._output = _output;
        _b._minwidth = _minwidth;
        _b._tabwidth = _tabwidth;
        _b._padding = _padding;
        for (_i => _ in _b._padbytes) {
            _b._padbytes[(_i : stdgo.GoInt)] = _padchar;
        };
        if (_padchar == ((9 : stdgo.GoUInt8))) {
            _flags = (_flags & ((((4u32 : stdgo.GoUInt)) ^ (-1i32 : stdgo.GoInt) : stdgo.GoUInt)) : stdgo.GoUInt);
        };
        _b._flags = _flags;
        _b._reset();
        return _b;
    }
    @:keep
    static public function _reset( _b:stdgo.Ref<stdgo._internal.text.tabwriter.Tabwriter_Writer.Writer>):Void {
        @:recv var _b:stdgo.Ref<stdgo._internal.text.tabwriter.Tabwriter_Writer.Writer> = _b;
        _b._buf = (_b._buf.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        _b._pos = (0 : stdgo.GoInt);
        _b._cell = (new stdgo._internal.text.tabwriter.Tabwriter_T_cell.T_cell() : stdgo._internal.text.tabwriter.Tabwriter_T_cell.T_cell);
        _b._endChar = (0 : stdgo.GoUInt8);
        _b._lines = (_b._lines.__slice__((0 : stdgo.GoInt), (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.Slice<stdgo._internal.text.tabwriter.Tabwriter_T_cell.T_cell>>);
        _b._widths = (_b._widths.__slice__((0 : stdgo.GoInt), (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>);
        _b._addLine(true);
    }
    @:keep
    static public function _addLine( _b:stdgo.Ref<stdgo._internal.text.tabwriter.Tabwriter_Writer.Writer>, _flushed:Bool):Void {
        @:recv var _b:stdgo.Ref<stdgo._internal.text.tabwriter.Tabwriter_Writer.Writer> = _b;
        {
            var _n = ((_b._lines.length) + (1 : stdgo.GoInt) : stdgo.GoInt);
            if ((_n <= _b._lines.capacity : Bool)) {
                _b._lines = (_b._lines.__slice__(0, _n) : stdgo.Slice<stdgo.Slice<stdgo._internal.text.tabwriter.Tabwriter_T_cell.T_cell>>);
                _b._lines[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)] = (_b._lines[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)].__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo._internal.text.tabwriter.Tabwriter_T_cell.T_cell>);
            } else {
                _b._lines = (_b._lines.__append__((null : stdgo.Slice<stdgo._internal.text.tabwriter.Tabwriter_T_cell.T_cell>)));
            };
        };
        if (!_flushed) {
            {
                var _n = (_b._lines.length : stdgo.GoInt);
                if ((_n >= (2 : stdgo.GoInt) : Bool)) {
                    {
                        var _prev = (_b._lines[(_n - (2 : stdgo.GoInt) : stdgo.GoInt)].length : stdgo.GoInt);
                        if ((_prev > _b._lines[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)].capacity : Bool)) {
                            _b._lines[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)] = (new stdgo.Slice<stdgo._internal.text.tabwriter.Tabwriter_T_cell.T_cell>((0 : stdgo.GoInt).toBasic(), _prev, ...[for (i in 0 ... ((0 : stdgo.GoInt).toBasic() > _prev ? (0 : stdgo.GoInt).toBasic() : _prev : stdgo.GoInt).toBasic()) ({} : stdgo._internal.text.tabwriter.Tabwriter_T_cell.T_cell)]) : stdgo.Slice<stdgo._internal.text.tabwriter.Tabwriter_T_cell.T_cell>);
                        };
                    };
                };
            };
        };
    }
}
