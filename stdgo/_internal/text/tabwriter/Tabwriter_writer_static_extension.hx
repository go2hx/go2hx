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
                final __f__ = _b._handlePanic;
                __deferstack__.unshift({ ran : false, f : () -> __f__(_a0, _a1?.__copy__()) });
            };
            _n = (0 : stdgo.GoInt);
            //"file:///home/runner/.go/go1.21.3/src/text/tabwriter/tabwriter.go#L527"
            for (_i => _ch in _buf) {
                //"file:///home/runner/.go/go1.21.3/src/text/tabwriter/tabwriter.go#L528"
                if ((@:checkr _b ?? throw "null pointer dereference")._endChar == ((0 : stdgo.GoUInt8))) {
                    //"file:///home/runner/.go/go1.21.3/src/text/tabwriter/tabwriter.go#L530"
                    {
                        final __value__ = _ch;
                        if (__value__ == ((9 : stdgo.GoUInt8)) || __value__ == ((11 : stdgo.GoUInt8)) || __value__ == ((10 : stdgo.GoUInt8)) || __value__ == ((12 : stdgo.GoUInt8))) {
                            //"file:///home/runner/.go/go1.21.3/src/text/tabwriter/tabwriter.go#L533"
                            _b._append((_buf.__slice__(_n, _i) : stdgo.Slice<stdgo.GoUInt8>));
                            //"file:///home/runner/.go/go1.21.3/src/text/tabwriter/tabwriter.go#L534"
                            _b._updateWidth();
                            _n = (_i + (1 : stdgo.GoInt) : stdgo.GoInt);
                            var _ncells = (_b._terminateCell(_ch == ((9 : stdgo.GoUInt8))) : stdgo.GoInt);
                            //"file:///home/runner/.go/go1.21.3/src/text/tabwriter/tabwriter.go#L537"
                            if (((_ch == (10 : stdgo.GoUInt8)) || (_ch == (12 : stdgo.GoUInt8)) : Bool)) {
                                //"file:///home/runner/.go/go1.21.3/src/text/tabwriter/tabwriter.go#L539"
                                _b._addLine(_ch == ((12 : stdgo.GoUInt8)));
                                //"file:///home/runner/.go/go1.21.3/src/text/tabwriter/tabwriter.go#L540"
                                if (((_ch == (12 : stdgo.GoUInt8)) || (_ncells == (1 : stdgo.GoInt)) : Bool)) {
                                    //"file:///home/runner/.go/go1.21.3/src/text/tabwriter/tabwriter.go#L546"
                                    _b._flushNoDefers();
                                    //"file:///home/runner/.go/go1.21.3/src/text/tabwriter/tabwriter.go#L547"
                                    if (((_ch == (12 : stdgo.GoUInt8)) && (((@:checkr _b ?? throw "null pointer dereference")._flags & (32u32 : stdgo.GoUInt) : stdgo.GoUInt) != (0u32 : stdgo.GoUInt)) : Bool)) {
                                        //"file:///home/runner/.go/go1.21.3/src/text/tabwriter/tabwriter.go#L549"
                                        _b._write0(stdgo._internal.text.tabwriter.Tabwriter__hbar._hbar);
                                    };
                                };
                            };
                        } else if (__value__ == ((255 : stdgo.GoUInt8))) {
                            //"file:///home/runner/.go/go1.21.3/src/text/tabwriter/tabwriter.go#L556"
                            _b._append((_buf.__slice__(_n, _i) : stdgo.Slice<stdgo.GoUInt8>));
                            //"file:///home/runner/.go/go1.21.3/src/text/tabwriter/tabwriter.go#L557"
                            _b._updateWidth();
                            _n = _i;
                            //"file:///home/runner/.go/go1.21.3/src/text/tabwriter/tabwriter.go#L559"
                            if (((@:checkr _b ?? throw "null pointer dereference")._flags & (2u32 : stdgo.GoUInt) : stdgo.GoUInt) != ((0u32 : stdgo.GoUInt))) {
                                //"file:///home/runner/.go/go1.21.3/src/text/tabwriter/tabwriter.go#L560"
                                _n++;
                            };
                            //"file:///home/runner/.go/go1.21.3/src/text/tabwriter/tabwriter.go#L562"
                            _b._startEscape((255 : stdgo.GoUInt8));
                        } else if (__value__ == ((60 : stdgo.GoUInt8)) || __value__ == ((38 : stdgo.GoUInt8))) {
                            //"file:///home/runner/.go/go1.21.3/src/text/tabwriter/tabwriter.go#L566"
                            if (((@:checkr _b ?? throw "null pointer dereference")._flags & (1u32 : stdgo.GoUInt) : stdgo.GoUInt) != ((0u32 : stdgo.GoUInt))) {
                                //"file:///home/runner/.go/go1.21.3/src/text/tabwriter/tabwriter.go#L568"
                                _b._append((_buf.__slice__(_n, _i) : stdgo.Slice<stdgo.GoUInt8>));
                                //"file:///home/runner/.go/go1.21.3/src/text/tabwriter/tabwriter.go#L569"
                                _b._updateWidth();
                                _n = _i;
                                //"file:///home/runner/.go/go1.21.3/src/text/tabwriter/tabwriter.go#L571"
                                _b._startEscape(_ch);
                            };
                        };
                    };
                } else {
                    //"file:///home/runner/.go/go1.21.3/src/text/tabwriter/tabwriter.go#L577"
                    if (_ch == ((@:checkr _b ?? throw "null pointer dereference")._endChar)) {
                        var _j = (_i + (1 : stdgo.GoInt) : stdgo.GoInt);
                        //"file:///home/runner/.go/go1.21.3/src/text/tabwriter/tabwriter.go#L580"
                        if (((_ch == (255 : stdgo.GoUInt8)) && (((@:checkr _b ?? throw "null pointer dereference")._flags & (2u32 : stdgo.GoUInt) : stdgo.GoUInt) != (0u32 : stdgo.GoUInt)) : Bool)) {
                            _j = _i;
                        };
                        //"file:///home/runner/.go/go1.21.3/src/text/tabwriter/tabwriter.go#L583"
                        _b._append((_buf.__slice__(_n, _j) : stdgo.Slice<stdgo.GoUInt8>));
                        _n = (_i + (1 : stdgo.GoInt) : stdgo.GoInt);
                        //"file:///home/runner/.go/go1.21.3/src/text/tabwriter/tabwriter.go#L585"
                        _b._endEscape();
                    };
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/text/tabwriter/tabwriter.go#L591"
            _b._append((_buf.__slice__(_n) : stdgo.Slice<stdgo.GoUInt8>));
            _n = (_buf.length);
            //"file:///home/runner/.go/go1.21.3/src/text/tabwriter/tabwriter.go#L593"
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
                if ((exe is stdgo.AnyInterface.AnyInterfaceData) == false) {
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
        //"file:///home/runner/.go/go1.21.3/src/text/tabwriter/tabwriter.go#L504"
        if (((@:checkr _b ?? throw "null pointer dereference")._cell._size > (0 : stdgo.GoInt) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/text/tabwriter/tabwriter.go#L505"
            if ((@:checkr _b ?? throw "null pointer dereference")._endChar != ((0 : stdgo.GoUInt8))) {
                //"file:///home/runner/.go/go1.21.3/src/text/tabwriter/tabwriter.go#L507"
                _b._endEscape();
            };
            //"file:///home/runner/.go/go1.21.3/src/text/tabwriter/tabwriter.go#L509"
            _b._terminateCell(false);
        };
        //"file:///home/runner/.go/go1.21.3/src/text/tabwriter/tabwriter.go#L513"
        _b._format((0 : stdgo.GoInt), (0 : stdgo.GoInt), ((@:checkr _b ?? throw "null pointer dereference")._lines.length));
        //"file:///home/runner/.go/go1.21.3/src/text/tabwriter/tabwriter.go#L514"
        _b._reset();
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
                final __f__ = _b._handlePanic;
                __deferstack__.unshift({ ran : false, f : () -> __f__(_a0, _a1?.__copy__()) });
            };
            //"file:///home/runner/.go/go1.21.3/src/text/tabwriter/tabwriter.go#L495"
            _b._flushNoDefers();
            //"file:///home/runner/.go/go1.21.3/src/text/tabwriter/tabwriter.go#L496"
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
                if ((exe is stdgo.AnyInterface.AnyInterfaceData) == false) {
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
        //"file:///home/runner/.go/go1.21.3/src/text/tabwriter/tabwriter.go#L488"
        return _b._flush();
    }
    @:keep
    @:tdfield
    static public function _handlePanic( _b:stdgo.Ref<stdgo._internal.text.tabwriter.Tabwriter_writer.Writer>, _err:stdgo.Ref<stdgo.Error>, _op:stdgo.GoString):Void {
        @:recv var _b:stdgo.Ref<stdgo._internal.text.tabwriter.Tabwriter_writer.Writer> = _b;
        //"file:///home/runner/.go/go1.21.3/src/text/tabwriter/tabwriter.go#L470"
        {
            var _e = ({
                final r = stdgo.Go.recover_exception;
                stdgo.Go.recover_exception = null;
                r;
            } : stdgo.AnyInterface);
            if (_e != null) {
                //"file:///home/runner/.go/go1.21.3/src/text/tabwriter/tabwriter.go#L471"
                if (_op == (("Flush" : stdgo.GoString))) {
                    //"file:///home/runner/.go/go1.21.3/src/text/tabwriter/tabwriter.go#L473"
                    _b._reset();
                };
                //"file:///home/runner/.go/go1.21.3/src/text/tabwriter/tabwriter.go#L475"
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
                        //"file:///home/runner/.go/go1.21.3/src/text/tabwriter/tabwriter.go#L477"
                        return;
                    };
                };
                //"file:///home/runner/.go/go1.21.3/src/text/tabwriter/tabwriter.go#L479"
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
        (_line : stdgo.Slice<stdgo._internal.text.tabwriter.Tabwriter_t_cell.T_cell>).__setData__(((_line : stdgo.Slice<stdgo._internal.text.tabwriter.Tabwriter_t_cell.T_cell>).__append__((@:checkr _b ?? throw "null pointer dereference")._cell?.__copy__()) : stdgo.Slice<stdgo._internal.text.tabwriter.Tabwriter_t_cell.T_cell>));
        (@:checkr _b ?? throw "null pointer dereference")._cell = (new stdgo._internal.text.tabwriter.Tabwriter_t_cell.T_cell() : stdgo._internal.text.tabwriter.Tabwriter_t_cell.T_cell);
        //"file:///home/runner/.go/go1.21.3/src/text/tabwriter/tabwriter.go#L466"
        return ((_line : stdgo.Slice<stdgo._internal.text.tabwriter.Tabwriter_t_cell.T_cell>).length);
    }
    @:keep
    @:tdfield
    static public function _endEscape( _b:stdgo.Ref<stdgo._internal.text.tabwriter.Tabwriter_writer.Writer>):Void {
        @:recv var _b:stdgo.Ref<stdgo._internal.text.tabwriter.Tabwriter_writer.Writer> = _b;
        //"file:///home/runner/.go/go1.21.3/src/text/tabwriter/tabwriter.go#L445"
        {
            final __value__ = (@:checkr _b ?? throw "null pointer dereference")._endChar;
            if (__value__ == ((255 : stdgo.GoUInt8))) {
                //"file:///home/runner/.go/go1.21.3/src/text/tabwriter/tabwriter.go#L447"
                _b._updateWidth();
                //"file:///home/runner/.go/go1.21.3/src/text/tabwriter/tabwriter.go#L448"
                if (((@:checkr _b ?? throw "null pointer dereference")._flags & (2u32 : stdgo.GoUInt) : stdgo.GoUInt) == ((0u32 : stdgo.GoUInt))) {
                    (@:checkr _b ?? throw "null pointer dereference")._cell._width = ((@:checkr _b ?? throw "null pointer dereference")._cell._width - ((2 : stdgo.GoInt)) : stdgo.GoInt);
                };
            } else if (__value__ == ((62 : stdgo.GoUInt8))) {} else if (__value__ == ((59 : stdgo.GoUInt8))) {
                //"file:///home/runner/.go/go1.21.3/src/text/tabwriter/tabwriter.go#L453"
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
        //"file:///home/runner/.go/go1.21.3/src/text/tabwriter/tabwriter.go#L430"
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
        (@:checkr _b ?? throw "null pointer dereference")._buf = ((@:checkr _b ?? throw "null pointer dereference")._buf.__append__(...(_text : Array<stdgo.GoUInt8>)) : stdgo.Slice<stdgo.GoUInt8>);
        (@:checkr _b ?? throw "null pointer dereference")._cell._size = ((@:checkr _b ?? throw "null pointer dereference")._cell._size + ((_text.length)) : stdgo.GoInt);
    }
    @:keep
    @:tdfield
    static public function _format( _b:stdgo.Ref<stdgo._internal.text.tabwriter.Tabwriter_writer.Writer>, _pos0:stdgo.GoInt, _line0:stdgo.GoInt, _line1:stdgo.GoInt):stdgo.GoInt {
        @:recv var _b:stdgo.Ref<stdgo._internal.text.tabwriter.Tabwriter_writer.Writer> = _b;
        var _pos = (0 : stdgo.GoInt);
        _pos = _pos0;
        var _column = ((@:checkr _b ?? throw "null pointer dereference")._widths.length : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/text/tabwriter/tabwriter.go#L353"
        {
            var _this = (_line0 : stdgo.GoInt);
            while ((_this < _line1 : Bool)) {
                var _line = (@:checkr _b ?? throw "null pointer dereference")._lines[(_this : stdgo.GoInt)];
//"file:///home/runner/.go/go1.21.3/src/text/tabwriter/tabwriter.go#L356"
                if ((_column >= ((_line.length) - (1 : stdgo.GoInt) : stdgo.GoInt) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/text/tabwriter/tabwriter.go#L357"
                    {
                        _this++;
                        continue;
                    };
                };
_pos = _b._writeLines(_pos, _line0, _this);
_line0 = _this;
var _width = ((@:checkr _b ?? throw "null pointer dereference")._minwidth : stdgo.GoInt);
var _discardable = (true : Bool);
//"file:///home/runner/.go/go1.21.3/src/text/tabwriter/tabwriter.go#L373"
                while ((_this < _line1 : Bool)) {
                    _line = (@:checkr _b ?? throw "null pointer dereference")._lines[(_this : stdgo.GoInt)];
//"file:///home/runner/.go/go1.21.3/src/text/tabwriter/tabwriter.go#L375"
                    if ((_column >= ((_line.length) - (1 : stdgo.GoInt) : stdgo.GoInt) : Bool)) {
                        //"file:///home/runner/.go/go1.21.3/src/text/tabwriter/tabwriter.go#L376"
                        break;
                    };
var _c = (_line[(_column : stdgo.GoInt)] : stdgo._internal.text.tabwriter.Tabwriter_t_cell.T_cell);
//"file:///home/runner/.go/go1.21.3/src/text/tabwriter/tabwriter.go#L381"
                    {
                        var _w = (_c._width + (@:checkr _b ?? throw "null pointer dereference")._padding : stdgo.GoInt);
                        if ((_w > _width : Bool)) {
                            _width = _w;
                        };
                    };
//"file:///home/runner/.go/go1.21.3/src/text/tabwriter/tabwriter.go#L385"
                    if (((_c._width > (0 : stdgo.GoInt) : Bool) || _c._htab : Bool)) {
                        _discardable = false;
                    };
                    _this++;
                };
//"file:///home/runner/.go/go1.21.3/src/text/tabwriter/tabwriter.go#L392"
                if ((_discardable && (((@:checkr _b ?? throw "null pointer dereference")._flags & (8u32 : stdgo.GoUInt) : stdgo.GoUInt) != (0u32 : stdgo.GoUInt)) : Bool)) {
                    _width = (0 : stdgo.GoInt);
                };
(@:checkr _b ?? throw "null pointer dereference")._widths = ((@:checkr _b ?? throw "null pointer dereference")._widths.__append__(_width) : stdgo.Slice<stdgo.GoInt>);
_pos = _b._format(_pos, _line0, _this);
(@:checkr _b ?? throw "null pointer dereference")._widths = ((@:checkr _b ?? throw "null pointer dereference")._widths.__slice__((0 : stdgo.GoInt), (((@:checkr _b ?? throw "null pointer dereference")._widths.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>);
_line0 = _this;
                _this++;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/text/tabwriter/tabwriter.go#L405"
        return _pos = _b._writeLines(_pos, _line0, _line1);
    }
    @:keep
    @:tdfield
    static public function _writeLines( _b:stdgo.Ref<stdgo._internal.text.tabwriter.Tabwriter_writer.Writer>, _pos0:stdgo.GoInt, _line0:stdgo.GoInt, _line1:stdgo.GoInt):stdgo.GoInt {
        @:recv var _b:stdgo.Ref<stdgo._internal.text.tabwriter.Tabwriter_writer.Writer> = _b;
        var _pos = (0 : stdgo.GoInt);
        _pos = _pos0;
        //"file:///home/runner/.go/go1.21.3/src/text/tabwriter/tabwriter.go#L297"
        {
            var _i = (_line0 : stdgo.GoInt);
            while ((_i < _line1 : Bool)) {
                var _line = (@:checkr _b ?? throw "null pointer dereference")._lines[(_i : stdgo.GoInt)];
var _useTabs = (((@:checkr _b ?? throw "null pointer dereference")._flags & (16u32 : stdgo.GoUInt) : stdgo.GoUInt) != ((0u32 : stdgo.GoUInt)) : Bool);
//"file:///home/runner/.go/go1.21.3/src/text/tabwriter/tabwriter.go#L303"
                for (_j => _c in _line) {
                    //"file:///home/runner/.go/go1.21.3/src/text/tabwriter/tabwriter.go#L304"
                    if (((_j > (0 : stdgo.GoInt) : Bool) && (((@:checkr _b ?? throw "null pointer dereference")._flags & (32u32 : stdgo.GoUInt) : stdgo.GoUInt) != (0u32 : stdgo.GoUInt)) : Bool)) {
                        //"file:///home/runner/.go/go1.21.3/src/text/tabwriter/tabwriter.go#L306"
                        _b._write0(stdgo._internal.text.tabwriter.Tabwriter__vbar._vbar);
                    };
                    //"file:///home/runner/.go/go1.21.3/src/text/tabwriter/tabwriter.go#L309"
                    if (_c._size == ((0 : stdgo.GoInt))) {
                        //"file:///home/runner/.go/go1.21.3/src/text/tabwriter/tabwriter.go#L311"
                        if ((_j < ((@:checkr _b ?? throw "null pointer dereference")._widths.length) : Bool)) {
                            //"file:///home/runner/.go/go1.21.3/src/text/tabwriter/tabwriter.go#L312"
                            _b._writePadding(_c._width, (@:checkr _b ?? throw "null pointer dereference")._widths[(_j : stdgo.GoInt)], _useTabs);
                        };
                    } else {
                        _useTabs = false;
                        //"file:///home/runner/.go/go1.21.3/src/text/tabwriter/tabwriter.go#L317"
                        if (((@:checkr _b ?? throw "null pointer dereference")._flags & (4u32 : stdgo.GoUInt) : stdgo.GoUInt) == ((0u32 : stdgo.GoUInt))) {
                            //"file:///home/runner/.go/go1.21.3/src/text/tabwriter/tabwriter.go#L318"
                            _b._write0(((@:checkr _b ?? throw "null pointer dereference")._buf.__slice__(_pos, (_pos + _c._size : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
                            _pos = (_pos + (_c._size) : stdgo.GoInt);
                            //"file:///home/runner/.go/go1.21.3/src/text/tabwriter/tabwriter.go#L320"
                            if ((_j < ((@:checkr _b ?? throw "null pointer dereference")._widths.length) : Bool)) {
                                //"file:///home/runner/.go/go1.21.3/src/text/tabwriter/tabwriter.go#L321"
                                _b._writePadding(_c._width, (@:checkr _b ?? throw "null pointer dereference")._widths[(_j : stdgo.GoInt)], false);
                            };
                        } else {
                            //"file:///home/runner/.go/go1.21.3/src/text/tabwriter/tabwriter.go#L324"
                            if ((_j < ((@:checkr _b ?? throw "null pointer dereference")._widths.length) : Bool)) {
                                //"file:///home/runner/.go/go1.21.3/src/text/tabwriter/tabwriter.go#L325"
                                _b._writePadding(_c._width, (@:checkr _b ?? throw "null pointer dereference")._widths[(_j : stdgo.GoInt)], false);
                            };
                            //"file:///home/runner/.go/go1.21.3/src/text/tabwriter/tabwriter.go#L327"
                            _b._write0(((@:checkr _b ?? throw "null pointer dereference")._buf.__slice__(_pos, (_pos + _c._size : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
                            _pos = (_pos + (_c._size) : stdgo.GoInt);
                        };
                    };
                };
//"file:///home/runner/.go/go1.21.3/src/text/tabwriter/tabwriter.go#L333"
                if ((_i + (1 : stdgo.GoInt) : stdgo.GoInt) == (((@:checkr _b ?? throw "null pointer dereference")._lines.length))) {
                    //"file:///home/runner/.go/go1.21.3/src/text/tabwriter/tabwriter.go#L336"
                    _b._write0(((@:checkr _b ?? throw "null pointer dereference")._buf.__slice__(_pos, (_pos + (@:checkr _b ?? throw "null pointer dereference")._cell._size : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
                    _pos = (_pos + ((@:checkr _b ?? throw "null pointer dereference")._cell._size) : stdgo.GoInt);
                } else {
                    //"file:///home/runner/.go/go1.21.3/src/text/tabwriter/tabwriter.go#L340"
                    _b._write0(stdgo._internal.text.tabwriter.Tabwriter__newline._newline);
                };
                _i++;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/text/tabwriter/tabwriter.go#L343"
        return _pos;
    }
    @:keep
    @:tdfield
    static public function _writePadding( _b:stdgo.Ref<stdgo._internal.text.tabwriter.Tabwriter_writer.Writer>, _textw:stdgo.GoInt, _cellw:stdgo.GoInt, _useTabs:Bool):Void {
        @:recv var _b:stdgo.Ref<stdgo._internal.text.tabwriter.Tabwriter_writer.Writer> = _b;
        //"file:///home/runner/.go/go1.21.3/src/text/tabwriter/tabwriter.go#L274"
        if ((((@:checkr _b ?? throw "null pointer dereference")._padbytes[(0 : stdgo.GoInt)] == (9 : stdgo.GoUInt8)) || _useTabs : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/text/tabwriter/tabwriter.go#L276"
            if ((@:checkr _b ?? throw "null pointer dereference")._tabwidth == ((0 : stdgo.GoInt))) {
                //"file:///home/runner/.go/go1.21.3/src/text/tabwriter/tabwriter.go#L277"
                return;
            };
            _cellw = (((((_cellw + (@:checkr _b ?? throw "null pointer dereference")._tabwidth : stdgo.GoInt) - (1 : stdgo.GoInt) : stdgo.GoInt)) / (@:checkr _b ?? throw "null pointer dereference")._tabwidth : stdgo.GoInt) * (@:checkr _b ?? throw "null pointer dereference")._tabwidth : stdgo.GoInt);
            var _n = (_cellw - _textw : stdgo.GoInt);
            //"file:///home/runner/.go/go1.21.3/src/text/tabwriter/tabwriter.go#L282"
            if ((_n < (0 : stdgo.GoInt) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/text/tabwriter/tabwriter.go#L283"
                throw stdgo.Go.toInterface(("internal error" : stdgo.GoString));
            };
            //"file:///home/runner/.go/go1.21.3/src/text/tabwriter/tabwriter.go#L285"
            _b._writeN(stdgo._internal.text.tabwriter.Tabwriter__tabs._tabs, ((((_n + (@:checkr _b ?? throw "null pointer dereference")._tabwidth : stdgo.GoInt) - (1 : stdgo.GoInt) : stdgo.GoInt)) / (@:checkr _b ?? throw "null pointer dereference")._tabwidth : stdgo.GoInt));
            //"file:///home/runner/.go/go1.21.3/src/text/tabwriter/tabwriter.go#L286"
            return;
        };
        //"file:///home/runner/.go/go1.21.3/src/text/tabwriter/tabwriter.go#L290"
        _b._writeN(((@:checkr _b ?? throw "null pointer dereference")._padbytes.__slice__((0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), (_cellw - _textw : stdgo.GoInt));
    }
    @:keep
    @:tdfield
    static public function _writeN( _b:stdgo.Ref<stdgo._internal.text.tabwriter.Tabwriter_writer.Writer>, _src:stdgo.Slice<stdgo.GoUInt8>, _n:stdgo.GoInt):Void {
        @:recv var _b:stdgo.Ref<stdgo._internal.text.tabwriter.Tabwriter_writer.Writer> = _b;
        //"file:///home/runner/.go/go1.21.3/src/text/tabwriter/tabwriter.go#L261"
        while ((_n > (_src.length) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/text/tabwriter/tabwriter.go#L262"
            _b._write0(_src);
            _n = (_n - ((_src.length)) : stdgo.GoInt);
        };
        //"file:///home/runner/.go/go1.21.3/src/text/tabwriter/tabwriter.go#L265"
        _b._write0((_src.__slice__((0 : stdgo.GoInt), _n) : stdgo.Slice<stdgo.GoUInt8>));
    }
    @:keep
    @:tdfield
    static public function _write0( _b:stdgo.Ref<stdgo._internal.text.tabwriter.Tabwriter_writer.Writer>, _buf:stdgo.Slice<stdgo.GoUInt8>):Void {
        @:recv var _b:stdgo.Ref<stdgo._internal.text.tabwriter.Tabwriter_writer.Writer> = _b;
        var __tmp__ = (@:checkr _b ?? throw "null pointer dereference")._output.write(_buf), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/text/tabwriter/tabwriter.go#L252"
        if (((_n != (_buf.length)) && (_err == null) : Bool)) {
            _err = stdgo._internal.io.Io_errshortwrite.errShortWrite;
        };
        //"file:///home/runner/.go/go1.21.3/src/text/tabwriter/tabwriter.go#L255"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/text/tabwriter/tabwriter.go#L256"
            throw stdgo.Go.toInterface(stdgo.Go.asInterface((new stdgo._internal.text.tabwriter.Tabwriter_t_oserror.T_osError(_err) : stdgo._internal.text.tabwriter.Tabwriter_t_oserror.T_osError)));
        };
    }
    @:keep
    @:tdfield
    static public function _dump( _b:stdgo.Ref<stdgo._internal.text.tabwriter.Tabwriter_writer.Writer>):Void {
        @:recv var _b:stdgo.Ref<stdgo._internal.text.tabwriter.Tabwriter_writer.Writer> = _b;
        var _pos = (0 : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/text/tabwriter/tabwriter.go#L233"
        for (_i => _line in (@:checkr _b ?? throw "null pointer dereference")._lines) {
            //"file:///home/runner/.go/go1.21.3/src/text/tabwriter/tabwriter.go#L234"
            stdgo.Go.print(("(" : stdgo.GoString), _i, (") " : stdgo.GoString));
            //"file:///home/runner/.go/go1.21.3/src/text/tabwriter/tabwriter.go#L235"
            for (__0 => _c in _line) {
                //"file:///home/runner/.go/go1.21.3/src/text/tabwriter/tabwriter.go#L236"
                stdgo.Go.print(("[" : stdgo.GoString), (((@:checkr _b ?? throw "null pointer dereference")._buf.__slice__(_pos, (_pos + _c._size : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString), ("]" : stdgo.GoString));
                _pos = (_pos + (_c._size) : stdgo.GoInt);
            };
            //"file:///home/runner/.go/go1.21.3/src/text/tabwriter/tabwriter.go#L239"
            stdgo.Go.print(("\n" : stdgo.GoString));
        };
        //"file:///home/runner/.go/go1.21.3/src/text/tabwriter/tabwriter.go#L241"
        stdgo.Go.print(("\n" : stdgo.GoString));
    }
    @:keep
    @:tdfield
    static public function init( _b:stdgo.Ref<stdgo._internal.text.tabwriter.Tabwriter_writer.Writer>, _output:stdgo._internal.io.Io_writer.Writer, _minwidth:stdgo.GoInt, _tabwidth:stdgo.GoInt, _padding:stdgo.GoInt, _padchar:stdgo.GoUInt8, _flags:stdgo.GoUInt):stdgo.Ref<stdgo._internal.text.tabwriter.Tabwriter_writer.Writer> {
        @:recv var _b:stdgo.Ref<stdgo._internal.text.tabwriter.Tabwriter_writer.Writer> = _b;
        //"file:///home/runner/.go/go1.21.3/src/text/tabwriter/tabwriter.go#L209"
        if ((((_minwidth < (0 : stdgo.GoInt) : Bool) || (_tabwidth < (0 : stdgo.GoInt) : Bool) : Bool) || (_padding < (0 : stdgo.GoInt) : Bool) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/text/tabwriter/tabwriter.go#L210"
            throw stdgo.Go.toInterface(("negative minwidth, tabwidth, or padding" : stdgo.GoString));
        };
        (@:checkr _b ?? throw "null pointer dereference")._output = _output;
        (@:checkr _b ?? throw "null pointer dereference")._minwidth = _minwidth;
        (@:checkr _b ?? throw "null pointer dereference")._tabwidth = _tabwidth;
        (@:checkr _b ?? throw "null pointer dereference")._padding = _padding;
        //"file:///home/runner/.go/go1.21.3/src/text/tabwriter/tabwriter.go#L216"
        for (_i => _ in (@:checkr _b ?? throw "null pointer dereference")._padbytes.__copy__()) {
            (@:checkr _b ?? throw "null pointer dereference")._padbytes[(_i : stdgo.GoInt)] = _padchar;
        };
        //"file:///home/runner/.go/go1.21.3/src/text/tabwriter/tabwriter.go#L219"
        if (_padchar == ((9 : stdgo.GoUInt8))) {
            _flags = (_flags & ((((4u32 : stdgo.GoUInt)) ^ (-1i64 : stdgo.GoInt32) : stdgo.GoUInt)) : stdgo.GoUInt);
        };
        (@:checkr _b ?? throw "null pointer dereference")._flags = _flags;
        //"file:///home/runner/.go/go1.21.3/src/text/tabwriter/tabwriter.go#L225"
        _b._reset();
        //"file:///home/runner/.go/go1.21.3/src/text/tabwriter/tabwriter.go#L227"
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
        //"file:///home/runner/.go/go1.21.3/src/text/tabwriter/tabwriter.go#L142"
        _b._addLine(true);
    }
    @:keep
    @:tdfield
    static public function _addLine( _b:stdgo.Ref<stdgo._internal.text.tabwriter.Tabwriter_writer.Writer>, _flushed:Bool):Void {
        @:recv var _b:stdgo.Ref<stdgo._internal.text.tabwriter.Tabwriter_writer.Writer> = _b;
        //"file:///home/runner/.go/go1.21.3/src/text/tabwriter/tabwriter.go#L114"
        {
            var _n = (((@:checkr _b ?? throw "null pointer dereference")._lines.length) + (1 : stdgo.GoInt) : stdgo.GoInt);
            if ((_n <= (@:checkr _b ?? throw "null pointer dereference")._lines.capacity : Bool)) {
                (@:checkr _b ?? throw "null pointer dereference")._lines = ((@:checkr _b ?? throw "null pointer dereference")._lines.__slice__(0, _n) : stdgo.Slice<stdgo.Slice<stdgo._internal.text.tabwriter.Tabwriter_t_cell.T_cell>>);
                (@:checkr _b ?? throw "null pointer dereference")._lines[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)] = ((@:checkr _b ?? throw "null pointer dereference")._lines[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)].__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo._internal.text.tabwriter.Tabwriter_t_cell.T_cell>);
            } else {
                (@:checkr _b ?? throw "null pointer dereference")._lines = ((@:checkr _b ?? throw "null pointer dereference")._lines.__append__((null : stdgo.Slice<stdgo._internal.text.tabwriter.Tabwriter_t_cell.T_cell>)) : stdgo.Slice<stdgo.Slice<stdgo._internal.text.tabwriter.Tabwriter_t_cell.T_cell>>);
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/text/tabwriter/tabwriter.go#L121"
        if (!_flushed) {
            //"file:///home/runner/.go/go1.21.3/src/text/tabwriter/tabwriter.go#L126"
            {
                var _n = ((@:checkr _b ?? throw "null pointer dereference")._lines.length : stdgo.GoInt);
                if ((_n >= (2 : stdgo.GoInt) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/text/tabwriter/tabwriter.go#L127"
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
