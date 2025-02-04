package stdgo._internal.text.tabwriter;
@:keep @:allow(stdgo._internal.text.tabwriter.Tabwriter.Writer_asInterface) class Writer_static_extension {
    @:keep
    @:tdfield
    static public function write( _b:stdgo.Ref<stdgo._internal.text.tabwriter.Tabwriter_writer.Writer>, _buf:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _b:stdgo.Ref<stdgo._internal.text.tabwriter.Tabwriter_writer.Writer> = _b;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        try {
            {
                var _a0 = (stdgo.Go.setRef(_err) : stdgo.Ref<stdgo.Error>);
                var _a1 = ("Write" : stdgo.GoString);
                final __f__ = @:check2r _b._handlePanic;
                __deferstack__.unshift({ ran : false, f : () -> __f__(_a0, _a1?.__copy__()) });
            };
            _n = (0 : stdgo.GoInt);
            for (_i => _ch in _buf) {
                if ((@:checkr _b ?? throw "null pointer dereference")._endChar == ((0 : stdgo.GoUInt8))) {
                    {
                        final __value__ = _ch;
                        if (__value__ == ((9 : stdgo.GoUInt8)) || __value__ == ((11 : stdgo.GoUInt8)) || __value__ == ((10 : stdgo.GoUInt8)) || __value__ == ((12 : stdgo.GoUInt8))) {
                            @:check2r _b._append((_buf.__slice__(_n, _i) : stdgo.Slice<stdgo.GoUInt8>));
                            @:check2r _b._updateWidth();
                            _n = (_i + (1 : stdgo.GoInt) : stdgo.GoInt);
                            var _ncells = (@:check2r _b._terminateCell(_ch == ((9 : stdgo.GoUInt8))) : stdgo.GoInt);
                            if (((_ch == (10 : stdgo.GoUInt8)) || (_ch == (12 : stdgo.GoUInt8)) : Bool)) {
                                @:check2r _b._addLine(_ch == ((12 : stdgo.GoUInt8)));
                                if (((_ch == (12 : stdgo.GoUInt8)) || (_ncells == (1 : stdgo.GoInt)) : Bool)) {
                                    @:check2r _b._flushNoDefers();
                                    if (((_ch == (12 : stdgo.GoUInt8)) && (((@:checkr _b ?? throw "null pointer dereference")._flags & (32u32 : stdgo.GoUInt) : stdgo.GoUInt) != (0u32 : stdgo.GoUInt)) : Bool)) {
                                        @:check2r _b._write0(stdgo._internal.text.tabwriter.Tabwriter__hbar._hbar);
                                    };
                                };
                            };
                        } else if (__value__ == ((255 : stdgo.GoUInt8))) {
                            @:check2r _b._append((_buf.__slice__(_n, _i) : stdgo.Slice<stdgo.GoUInt8>));
                            @:check2r _b._updateWidth();
                            _n = _i;
                            if (((@:checkr _b ?? throw "null pointer dereference")._flags & (2u32 : stdgo.GoUInt) : stdgo.GoUInt) != ((0u32 : stdgo.GoUInt))) {
                                _n++;
                            };
                            @:check2r _b._startEscape((255 : stdgo.GoUInt8));
                        } else if (__value__ == ((60 : stdgo.GoUInt8)) || __value__ == ((38 : stdgo.GoUInt8))) {
                            if (((@:checkr _b ?? throw "null pointer dereference")._flags & (1u32 : stdgo.GoUInt) : stdgo.GoUInt) != ((0u32 : stdgo.GoUInt))) {
                                @:check2r _b._append((_buf.__slice__(_n, _i) : stdgo.Slice<stdgo.GoUInt8>));
                                @:check2r _b._updateWidth();
                                _n = _i;
                                @:check2r _b._startEscape(_ch);
                            };
                        };
                    };
                } else {
                    if (_ch == ((@:checkr _b ?? throw "null pointer dereference")._endChar)) {
                        var _j = (_i + (1 : stdgo.GoInt) : stdgo.GoInt);
                        if (((_ch == (255 : stdgo.GoUInt8)) && (((@:checkr _b ?? throw "null pointer dereference")._flags & (2u32 : stdgo.GoUInt) : stdgo.GoUInt) != (0u32 : stdgo.GoUInt)) : Bool)) {
                            _j = _i;
                        };
                        @:check2r _b._append((_buf.__slice__(_n, _j) : stdgo.Slice<stdgo.GoUInt8>));
                        _n = (_i + (1 : stdgo.GoInt) : stdgo.GoInt);
                        @:check2r _b._endEscape();
                    };
                };
            };
            @:check2r _b._append((_buf.__slice__(_n) : stdgo.Slice<stdgo.GoUInt8>));
            _n = (_buf.length);
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                return { _0 : _n, _1 : _err };
            };
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    throw e;
                };
                return { _0 : _n, _1 : _err };
            };
        } catch(__exception__) {
            {
                var exe:Dynamic = __exception__.native;
                if ((exe is haxe.ValueException)) exe = exe.value;
                if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                    if (__exception__.message == "__return__") throw "__return__";
                    exe = stdgo.Go.toInterface(__exception__.message);
                };
                stdgo.Go.recover_exception = exe;
                {
                    function f() {
                        try {
                            {
                                for (defer in __deferstack__) {
                                    if (defer.ran) continue;
                                    defer.ran = true;
                                    defer.f();
                                };
                            };
                        } catch(__exception__2) {
                            var exe:Dynamic = __exception__2.native;
                            if ((exe is haxe.ValueException)) exe = exe.value;
                            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                                if (__exception__.message == "__return__") throw "__return__";
                                exe = stdgo.Go.toInterface(__exception__.message);
                            };
                            stdgo.Go.recover_exception = exe;
                            f();
                        };
                    };
                    f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    throw e;
                };
                return { _0 : _n, _1 : _err };
            };
        };
    }
    @:keep
    @:tdfield
    static public function _flushNoDefers( _b:stdgo.Ref<stdgo._internal.text.tabwriter.Tabwriter_writer.Writer>):Void {
        @:recv var _b:stdgo.Ref<stdgo._internal.text.tabwriter.Tabwriter_writer.Writer> = _b;
        if (((@:checkr _b ?? throw "null pointer dereference")._cell._size > (0 : stdgo.GoInt) : Bool)) {
            if ((@:checkr _b ?? throw "null pointer dereference")._endChar != ((0 : stdgo.GoUInt8))) {
                @:check2r _b._endEscape();
            };
            @:check2r _b._terminateCell(false);
        };
        @:check2r _b._format((0 : stdgo.GoInt), (0 : stdgo.GoInt), ((@:checkr _b ?? throw "null pointer dereference")._lines.length));
        @:check2r _b._reset();
    }
    @:keep
    @:tdfield
    static public function _flush( _b:stdgo.Ref<stdgo._internal.text.tabwriter.Tabwriter_writer.Writer>):stdgo.Error {
        @:recv var _b:stdgo.Ref<stdgo._internal.text.tabwriter.Tabwriter_writer.Writer> = _b;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        var _err = (null : stdgo.Error);
        try {
            {
                var _a0 = (stdgo.Go.setRef(_err) : stdgo.Ref<stdgo.Error>);
                var _a1 = ("Flush" : stdgo.GoString);
                final __f__ = @:check2r _b._handlePanic;
                __deferstack__.unshift({ ran : false, f : () -> __f__(_a0, _a1?.__copy__()) });
            };
            @:check2r _b._flushNoDefers();
            {
                final __ret__:stdgo.Error = _err = (null : stdgo.Error);
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                return __ret__;
            };
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    throw e;
                };
                return _err;
            };
        } catch(__exception__) {
            {
                var exe:Dynamic = __exception__.native;
                if ((exe is haxe.ValueException)) exe = exe.value;
                if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                    if (__exception__.message == "__return__") throw "__return__";
                    exe = stdgo.Go.toInterface(__exception__.message);
                };
                stdgo.Go.recover_exception = exe;
                {
                    function f() {
                        try {
                            {
                                for (defer in __deferstack__) {
                                    if (defer.ran) continue;
                                    defer.ran = true;
                                    defer.f();
                                };
                            };
                        } catch(__exception__2) {
                            var exe:Dynamic = __exception__2.native;
                            if ((exe is haxe.ValueException)) exe = exe.value;
                            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                                if (__exception__.message == "__return__") throw "__return__";
                                exe = stdgo.Go.toInterface(__exception__.message);
                            };
                            stdgo.Go.recover_exception = exe;
                            f();
                        };
                    };
                    f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    throw e;
                };
                return _err;
            };
        };
    }
    @:keep
    @:tdfield
    static public function flush( _b:stdgo.Ref<stdgo._internal.text.tabwriter.Tabwriter_writer.Writer>):stdgo.Error {
        @:recv var _b:stdgo.Ref<stdgo._internal.text.tabwriter.Tabwriter_writer.Writer> = _b;
        return @:check2r _b._flush();
    }
    @:keep
    @:tdfield
    static public function _handlePanic( _b:stdgo.Ref<stdgo._internal.text.tabwriter.Tabwriter_writer.Writer>, _err:stdgo.Ref<stdgo.Error>, _op:stdgo.GoString):Void {
        @:recv var _b:stdgo.Ref<stdgo._internal.text.tabwriter.Tabwriter_writer.Writer> = _b;
        {
            var _e = ({
                final r = stdgo.Go.recover_exception;
                stdgo.Go.recover_exception = null;
                r;
            } : stdgo.AnyInterface);
            if (_e != null) {
                if (_op == (("Flush" : stdgo.GoString))) {
                    @:check2r _b._reset();
                };
                {
                    var __tmp__ = try {
                        { _0 : (stdgo.Go.typeAssert((_e : stdgo._internal.text.tabwriter.Tabwriter_t_oserror.T_osError)) : stdgo._internal.text.tabwriter.Tabwriter_t_oserror.T_osError), _1 : true };
                    } catch(_) {
                        { _0 : ({} : stdgo._internal.text.tabwriter.Tabwriter_t_oserror.T_osError), _1 : false };
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
    @:tdfield
    static public function _terminateCell( _b:stdgo.Ref<stdgo._internal.text.tabwriter.Tabwriter_writer.Writer>, _htab:Bool):stdgo.GoInt {
        @:recv var _b:stdgo.Ref<stdgo._internal.text.tabwriter.Tabwriter_writer.Writer> = _b;
        (@:checkr _b ?? throw "null pointer dereference")._cell._htab = _htab;
        var _line = (stdgo.Go.setRef((@:checkr _b ?? throw "null pointer dereference")._lines[(((@:checkr _b ?? throw "null pointer dereference")._lines.length) - (1 : stdgo.GoInt) : stdgo.GoInt)]) : stdgo.Ref<stdgo.Slice<stdgo._internal.text.tabwriter.Tabwriter_t_cell.T_cell>>);
        (_line : stdgo.Slice<stdgo._internal.text.tabwriter.Tabwriter_t_cell.T_cell>).__setData__(((_line : stdgo.Slice<stdgo._internal.text.tabwriter.Tabwriter_t_cell.T_cell>).__append__((@:checkr _b ?? throw "null pointer dereference")._cell?.__copy__())));
        (@:checkr _b ?? throw "null pointer dereference")._cell = (new stdgo._internal.text.tabwriter.Tabwriter_t_cell.T_cell() : stdgo._internal.text.tabwriter.Tabwriter_t_cell.T_cell);
        return ((_line : stdgo.Slice<stdgo._internal.text.tabwriter.Tabwriter_t_cell.T_cell>).length);
    }
    @:keep
    @:tdfield
    static public function _endEscape( _b:stdgo.Ref<stdgo._internal.text.tabwriter.Tabwriter_writer.Writer>):Void {
        @:recv var _b:stdgo.Ref<stdgo._internal.text.tabwriter.Tabwriter_writer.Writer> = _b;
        {
            final __value__ = (@:checkr _b ?? throw "null pointer dereference")._endChar;
            if (__value__ == ((255 : stdgo.GoUInt8))) {
                @:check2r _b._updateWidth();
                if (((@:checkr _b ?? throw "null pointer dereference")._flags & (2u32 : stdgo.GoUInt) : stdgo.GoUInt) == ((0u32 : stdgo.GoUInt))) {
                    (@:checkr _b ?? throw "null pointer dereference")._cell._width = ((@:checkr _b ?? throw "null pointer dereference")._cell._width - ((2 : stdgo.GoInt)) : stdgo.GoInt);
                };
            } else if (__value__ == ((62 : stdgo.GoUInt8))) {} else if (__value__ == ((59 : stdgo.GoUInt8))) {
                (@:checkr _b ?? throw "null pointer dereference")._cell._width++;
            };
        };
        (@:checkr _b ?? throw "null pointer dereference")._pos = ((@:checkr _b ?? throw "null pointer dereference")._buf.length);
        (@:checkr _b ?? throw "null pointer dereference")._endChar = (0 : stdgo.GoUInt8);
    }
    @:keep
    @:tdfield
    static public function _startEscape( _b:stdgo.Ref<stdgo._internal.text.tabwriter.Tabwriter_writer.Writer>, _ch:stdgo.GoUInt8):Void {
        @:recv var _b:stdgo.Ref<stdgo._internal.text.tabwriter.Tabwriter_writer.Writer> = _b;
        {
            final __value__ = _ch;
            if (__value__ == ((255 : stdgo.GoUInt8))) {
                (@:checkr _b ?? throw "null pointer dereference")._endChar = (255 : stdgo.GoUInt8);
            } else if (__value__ == ((60 : stdgo.GoUInt8))) {
                (@:checkr _b ?? throw "null pointer dereference")._endChar = (62 : stdgo.GoUInt8);
            } else if (__value__ == ((38 : stdgo.GoUInt8))) {
                (@:checkr _b ?? throw "null pointer dereference")._endChar = (59 : stdgo.GoUInt8);
            };
        };
    }
    @:keep
    @:tdfield
    static public function _updateWidth( _b:stdgo.Ref<stdgo._internal.text.tabwriter.Tabwriter_writer.Writer>):Void {
        @:recv var _b:stdgo.Ref<stdgo._internal.text.tabwriter.Tabwriter_writer.Writer> = _b;
        (@:checkr _b ?? throw "null pointer dereference")._cell._width = ((@:checkr _b ?? throw "null pointer dereference")._cell._width + (stdgo._internal.unicode.utf8.Utf8_runecount.runeCount(((@:checkr _b ?? throw "null pointer dereference")._buf.__slice__((@:checkr _b ?? throw "null pointer dereference")._pos) : stdgo.Slice<stdgo.GoUInt8>))) : stdgo.GoInt);
        (@:checkr _b ?? throw "null pointer dereference")._pos = ((@:checkr _b ?? throw "null pointer dereference")._buf.length);
    }
    @:keep
    @:tdfield
    static public function _append( _b:stdgo.Ref<stdgo._internal.text.tabwriter.Tabwriter_writer.Writer>, _text:stdgo.Slice<stdgo.GoUInt8>):Void {
        @:recv var _b:stdgo.Ref<stdgo._internal.text.tabwriter.Tabwriter_writer.Writer> = _b;
        (@:checkr _b ?? throw "null pointer dereference")._buf = ((@:checkr _b ?? throw "null pointer dereference")._buf.__append__(...(_text : Array<stdgo.GoUInt8>)));
        (@:checkr _b ?? throw "null pointer dereference")._cell._size = ((@:checkr _b ?? throw "null pointer dereference")._cell._size + ((_text.length)) : stdgo.GoInt);
    }
    @:keep
    @:tdfield
    static public function _format( _b:stdgo.Ref<stdgo._internal.text.tabwriter.Tabwriter_writer.Writer>, _pos0:stdgo.GoInt, _line0:stdgo.GoInt, _line1:stdgo.GoInt):stdgo.GoInt {
        @:recv var _b:stdgo.Ref<stdgo._internal.text.tabwriter.Tabwriter_writer.Writer> = _b;
        var _pos = (0 : stdgo.GoInt);
        _pos = _pos0;
        var _column = ((@:checkr _b ?? throw "null pointer dereference")._widths.length : stdgo.GoInt);
        {
            var _this = (_line0 : stdgo.GoInt);
            while ((_this < _line1 : Bool)) {
                var _line = (@:checkr _b ?? throw "null pointer dereference")._lines[(_this : stdgo.GoInt)];
if ((_column >= ((_line.length) - (1 : stdgo.GoInt) : stdgo.GoInt) : Bool)) {
                    {
                        _this++;
                        continue;
                    };
                };
_pos = @:check2r _b._writeLines(_pos, _line0, _this);
_line0 = _this;
var _width = ((@:checkr _b ?? throw "null pointer dereference")._minwidth : stdgo.GoInt);
var _discardable = (true : Bool);
while ((_this < _line1 : Bool)) {
                    _line = (@:checkr _b ?? throw "null pointer dereference")._lines[(_this : stdgo.GoInt)];
if ((_column >= ((_line.length) - (1 : stdgo.GoInt) : stdgo.GoInt) : Bool)) {
                        break;
                    };
var _c = (_line[(_column : stdgo.GoInt)] : stdgo._internal.text.tabwriter.Tabwriter_t_cell.T_cell);
{
                        var _w = (_c._width + (@:checkr _b ?? throw "null pointer dereference")._padding : stdgo.GoInt);
                        if ((_w > _width : Bool)) {
                            _width = _w;
                        };
                    };
if (((_c._width > (0 : stdgo.GoInt) : Bool) || _c._htab : Bool)) {
                        _discardable = false;
                    };
                    _this++;
                };
if ((_discardable && (((@:checkr _b ?? throw "null pointer dereference")._flags & (8u32 : stdgo.GoUInt) : stdgo.GoUInt) != (0u32 : stdgo.GoUInt)) : Bool)) {
                    _width = (0 : stdgo.GoInt);
                };
(@:checkr _b ?? throw "null pointer dereference")._widths = ((@:checkr _b ?? throw "null pointer dereference")._widths.__append__(_width));
_pos = @:check2r _b._format(_pos, _line0, _this);
(@:checkr _b ?? throw "null pointer dereference")._widths = ((@:checkr _b ?? throw "null pointer dereference")._widths.__slice__((0 : stdgo.GoInt), (((@:checkr _b ?? throw "null pointer dereference")._widths.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>);
_line0 = _this;
                _this++;
            };
        };
        return _pos = @:check2r _b._writeLines(_pos, _line0, _line1);
    }
    @:keep
    @:tdfield
    static public function _writeLines( _b:stdgo.Ref<stdgo._internal.text.tabwriter.Tabwriter_writer.Writer>, _pos0:stdgo.GoInt, _line0:stdgo.GoInt, _line1:stdgo.GoInt):stdgo.GoInt {
        @:recv var _b:stdgo.Ref<stdgo._internal.text.tabwriter.Tabwriter_writer.Writer> = _b;
        var _pos = (0 : stdgo.GoInt);
        _pos = _pos0;
        {
            var _i = (_line0 : stdgo.GoInt);
            while ((_i < _line1 : Bool)) {
                var _line = (@:checkr _b ?? throw "null pointer dereference")._lines[(_i : stdgo.GoInt)];
var _useTabs = (((@:checkr _b ?? throw "null pointer dereference")._flags & (16u32 : stdgo.GoUInt) : stdgo.GoUInt) != ((0u32 : stdgo.GoUInt)) : Bool);
for (_j => _c in _line) {
                    if (((_j > (0 : stdgo.GoInt) : Bool) && (((@:checkr _b ?? throw "null pointer dereference")._flags & (32u32 : stdgo.GoUInt) : stdgo.GoUInt) != (0u32 : stdgo.GoUInt)) : Bool)) {
                        @:check2r _b._write0(stdgo._internal.text.tabwriter.Tabwriter__vbar._vbar);
                    };
                    if (_c._size == ((0 : stdgo.GoInt))) {
                        if ((_j < ((@:checkr _b ?? throw "null pointer dereference")._widths.length) : Bool)) {
                            @:check2r _b._writePadding(_c._width, (@:checkr _b ?? throw "null pointer dereference")._widths[(_j : stdgo.GoInt)], _useTabs);
                        };
                    } else {
                        _useTabs = false;
                        if (((@:checkr _b ?? throw "null pointer dereference")._flags & (4u32 : stdgo.GoUInt) : stdgo.GoUInt) == ((0u32 : stdgo.GoUInt))) {
                            @:check2r _b._write0(((@:checkr _b ?? throw "null pointer dereference")._buf.__slice__(_pos, (_pos + _c._size : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
                            _pos = (_pos + (_c._size) : stdgo.GoInt);
                            if ((_j < ((@:checkr _b ?? throw "null pointer dereference")._widths.length) : Bool)) {
                                @:check2r _b._writePadding(_c._width, (@:checkr _b ?? throw "null pointer dereference")._widths[(_j : stdgo.GoInt)], false);
                            };
                        } else {
                            if ((_j < ((@:checkr _b ?? throw "null pointer dereference")._widths.length) : Bool)) {
                                @:check2r _b._writePadding(_c._width, (@:checkr _b ?? throw "null pointer dereference")._widths[(_j : stdgo.GoInt)], false);
                            };
                            @:check2r _b._write0(((@:checkr _b ?? throw "null pointer dereference")._buf.__slice__(_pos, (_pos + _c._size : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
                            _pos = (_pos + (_c._size) : stdgo.GoInt);
                        };
                    };
                };
if ((_i + (1 : stdgo.GoInt) : stdgo.GoInt) == (((@:checkr _b ?? throw "null pointer dereference")._lines.length))) {
                    @:check2r _b._write0(((@:checkr _b ?? throw "null pointer dereference")._buf.__slice__(_pos, (_pos + (@:checkr _b ?? throw "null pointer dereference")._cell._size : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
                    _pos = (_pos + ((@:checkr _b ?? throw "null pointer dereference")._cell._size) : stdgo.GoInt);
                } else {
                    @:check2r _b._write0(stdgo._internal.text.tabwriter.Tabwriter__newline._newline);
                };
                _i++;
            };
        };
        return _pos;
    }
    @:keep
    @:tdfield
    static public function _writePadding( _b:stdgo.Ref<stdgo._internal.text.tabwriter.Tabwriter_writer.Writer>, _textw:stdgo.GoInt, _cellw:stdgo.GoInt, _useTabs:Bool):Void {
        @:recv var _b:stdgo.Ref<stdgo._internal.text.tabwriter.Tabwriter_writer.Writer> = _b;
        if ((((@:checkr _b ?? throw "null pointer dereference")._padbytes[(0 : stdgo.GoInt)] == (9 : stdgo.GoUInt8)) || _useTabs : Bool)) {
            if ((@:checkr _b ?? throw "null pointer dereference")._tabwidth == ((0 : stdgo.GoInt))) {
                return;
            };
            _cellw = (((((_cellw + (@:checkr _b ?? throw "null pointer dereference")._tabwidth : stdgo.GoInt) - (1 : stdgo.GoInt) : stdgo.GoInt)) / (@:checkr _b ?? throw "null pointer dereference")._tabwidth : stdgo.GoInt) * (@:checkr _b ?? throw "null pointer dereference")._tabwidth : stdgo.GoInt);
            var _n = (_cellw - _textw : stdgo.GoInt);
            if ((_n < (0 : stdgo.GoInt) : Bool)) {
                throw stdgo.Go.toInterface(("internal error" : stdgo.GoString));
            };
            @:check2r _b._writeN(stdgo._internal.text.tabwriter.Tabwriter__tabs._tabs, ((((_n + (@:checkr _b ?? throw "null pointer dereference")._tabwidth : stdgo.GoInt) - (1 : stdgo.GoInt) : stdgo.GoInt)) / (@:checkr _b ?? throw "null pointer dereference")._tabwidth : stdgo.GoInt));
            return;
        };
        @:check2r _b._writeN(((@:checkr _b ?? throw "null pointer dereference")._padbytes.__slice__((0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), (_cellw - _textw : stdgo.GoInt));
    }
    @:keep
    @:tdfield
    static public function _writeN( _b:stdgo.Ref<stdgo._internal.text.tabwriter.Tabwriter_writer.Writer>, _src:stdgo.Slice<stdgo.GoUInt8>, _n:stdgo.GoInt):Void {
        @:recv var _b:stdgo.Ref<stdgo._internal.text.tabwriter.Tabwriter_writer.Writer> = _b;
        while ((_n > (_src.length) : Bool)) {
            @:check2r _b._write0(_src);
            _n = (_n - ((_src.length)) : stdgo.GoInt);
        };
        @:check2r _b._write0((_src.__slice__((0 : stdgo.GoInt), _n) : stdgo.Slice<stdgo.GoUInt8>));
    }
    @:keep
    @:tdfield
    static public function _write0( _b:stdgo.Ref<stdgo._internal.text.tabwriter.Tabwriter_writer.Writer>, _buf:stdgo.Slice<stdgo.GoUInt8>):Void {
        @:recv var _b:stdgo.Ref<stdgo._internal.text.tabwriter.Tabwriter_writer.Writer> = _b;
        var __tmp__ = (@:checkr _b ?? throw "null pointer dereference")._output.write(_buf), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (((_n != (_buf.length)) && (_err == null) : Bool)) {
            _err = stdgo._internal.io.Io_errshortwrite.errShortWrite;
        };
        if (_err != null) {
            throw stdgo.Go.toInterface(stdgo.Go.asInterface((new stdgo._internal.text.tabwriter.Tabwriter_t_oserror.T_osError(_err) : stdgo._internal.text.tabwriter.Tabwriter_t_oserror.T_osError)));
        };
    }
    @:keep
    @:tdfield
    static public function _dump( _b:stdgo.Ref<stdgo._internal.text.tabwriter.Tabwriter_writer.Writer>):Void {
        @:recv var _b:stdgo.Ref<stdgo._internal.text.tabwriter.Tabwriter_writer.Writer> = _b;
        var _pos = (0 : stdgo.GoInt);
        for (_i => _line in (@:checkr _b ?? throw "null pointer dereference")._lines) {
            stdgo.Go.print(("(" : stdgo.GoString), _i, (") " : stdgo.GoString));
            for (__0 => _c in _line) {
                stdgo.Go.print(("[" : stdgo.GoString), (((@:checkr _b ?? throw "null pointer dereference")._buf.__slice__(_pos, (_pos + _c._size : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString), ("]" : stdgo.GoString));
                _pos = (_pos + (_c._size) : stdgo.GoInt);
            };
            stdgo.Go.print(("\n" : stdgo.GoString));
        };
        stdgo.Go.print(("\n" : stdgo.GoString));
    }
    @:keep
    @:tdfield
    static public function init( _b:stdgo.Ref<stdgo._internal.text.tabwriter.Tabwriter_writer.Writer>, _output:stdgo._internal.io.Io_writer.Writer, _minwidth:stdgo.GoInt, _tabwidth:stdgo.GoInt, _padding:stdgo.GoInt, _padchar:stdgo.GoUInt8, _flags:stdgo.GoUInt):stdgo.Ref<stdgo._internal.text.tabwriter.Tabwriter_writer.Writer> {
        @:recv var _b:stdgo.Ref<stdgo._internal.text.tabwriter.Tabwriter_writer.Writer> = _b;
        if ((((_minwidth < (0 : stdgo.GoInt) : Bool) || (_tabwidth < (0 : stdgo.GoInt) : Bool) : Bool) || (_padding < (0 : stdgo.GoInt) : Bool) : Bool)) {
            throw stdgo.Go.toInterface(("negative minwidth, tabwidth, or padding" : stdgo.GoString));
        };
        (@:checkr _b ?? throw "null pointer dereference")._output = _output;
        (@:checkr _b ?? throw "null pointer dereference")._minwidth = _minwidth;
        (@:checkr _b ?? throw "null pointer dereference")._tabwidth = _tabwidth;
        (@:checkr _b ?? throw "null pointer dereference")._padding = _padding;
        for (_i => _ in (@:checkr _b ?? throw "null pointer dereference")._padbytes) {
            (@:checkr _b ?? throw "null pointer dereference")._padbytes[(_i : stdgo.GoInt)] = _padchar;
        };
        if (_padchar == ((9 : stdgo.GoUInt8))) {
            _flags = (_flags & ((((4u32 : stdgo.GoUInt)) ^ (-1i32 : stdgo.GoInt32) : stdgo.GoUInt)) : stdgo.GoUInt);
        };
        (@:checkr _b ?? throw "null pointer dereference")._flags = _flags;
        @:check2r _b._reset();
        return _b;
    }
    @:keep
    @:tdfield
    static public function _reset( _b:stdgo.Ref<stdgo._internal.text.tabwriter.Tabwriter_writer.Writer>):Void {
        @:recv var _b:stdgo.Ref<stdgo._internal.text.tabwriter.Tabwriter_writer.Writer> = _b;
        (@:checkr _b ?? throw "null pointer dereference")._buf = ((@:checkr _b ?? throw "null pointer dereference")._buf.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        (@:checkr _b ?? throw "null pointer dereference")._pos = (0 : stdgo.GoInt);
        (@:checkr _b ?? throw "null pointer dereference")._cell = (new stdgo._internal.text.tabwriter.Tabwriter_t_cell.T_cell() : stdgo._internal.text.tabwriter.Tabwriter_t_cell.T_cell);
        (@:checkr _b ?? throw "null pointer dereference")._endChar = (0 : stdgo.GoUInt8);
        (@:checkr _b ?? throw "null pointer dereference")._lines = ((@:checkr _b ?? throw "null pointer dereference")._lines.__slice__((0 : stdgo.GoInt), (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.Slice<stdgo._internal.text.tabwriter.Tabwriter_t_cell.T_cell>>);
        (@:checkr _b ?? throw "null pointer dereference")._widths = ((@:checkr _b ?? throw "null pointer dereference")._widths.__slice__((0 : stdgo.GoInt), (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>);
        @:check2r _b._addLine(true);
    }
    @:keep
    @:tdfield
    static public function _addLine( _b:stdgo.Ref<stdgo._internal.text.tabwriter.Tabwriter_writer.Writer>, _flushed:Bool):Void {
        @:recv var _b:stdgo.Ref<stdgo._internal.text.tabwriter.Tabwriter_writer.Writer> = _b;
        {
            var _n = (((@:checkr _b ?? throw "null pointer dereference")._lines.length) + (1 : stdgo.GoInt) : stdgo.GoInt);
            if ((_n <= (@:checkr _b ?? throw "null pointer dereference")._lines.capacity : Bool)) {
                (@:checkr _b ?? throw "null pointer dereference")._lines = ((@:checkr _b ?? throw "null pointer dereference")._lines.__slice__(0, _n) : stdgo.Slice<stdgo.Slice<stdgo._internal.text.tabwriter.Tabwriter_t_cell.T_cell>>);
                (@:checkr _b ?? throw "null pointer dereference")._lines[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)] = ((@:checkr _b ?? throw "null pointer dereference")._lines[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)].__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo._internal.text.tabwriter.Tabwriter_t_cell.T_cell>);
            } else {
                (@:checkr _b ?? throw "null pointer dereference")._lines = ((@:checkr _b ?? throw "null pointer dereference")._lines.__append__((null : stdgo.Slice<stdgo._internal.text.tabwriter.Tabwriter_t_cell.T_cell>)));
            };
        };
        if (!_flushed) {
            {
                var _n = ((@:checkr _b ?? throw "null pointer dereference")._lines.length : stdgo.GoInt);
                if ((_n >= (2 : stdgo.GoInt) : Bool)) {
                    {
                        var _prev = ((@:checkr _b ?? throw "null pointer dereference")._lines[(_n - (2 : stdgo.GoInt) : stdgo.GoInt)].length : stdgo.GoInt);
                        if ((_prev > (@:checkr _b ?? throw "null pointer dereference")._lines[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)].capacity : Bool)) {
                            (@:checkr _b ?? throw "null pointer dereference")._lines[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)] = (new stdgo.Slice<stdgo._internal.text.tabwriter.Tabwriter_t_cell.T_cell>((0 : stdgo.GoInt).toBasic(), _prev, ...[for (i in 0 ... ((0 : stdgo.GoInt).toBasic() > _prev ? (0 : stdgo.GoInt).toBasic() : _prev : stdgo.GoInt).toBasic()) ({} : stdgo._internal.text.tabwriter.Tabwriter_t_cell.T_cell)]) : stdgo.Slice<stdgo._internal.text.tabwriter.Tabwriter_t_cell.T_cell>);
                        };
                    };
                };
            };
        };
    }
}
