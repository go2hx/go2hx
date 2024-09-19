package stdgo._internal.log;
@:keep @:allow(stdgo._internal.log.Log.Logger_asInterface) class Logger_static_extension {
    @:keep
    static public function writer( _l:stdgo.Ref<stdgo._internal.log.Log_Logger.Logger>):stdgo._internal.io.Io_Writer.Writer {
        @:recv var _l:stdgo.Ref<stdgo._internal.log.Log_Logger.Logger> = _l;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            _l._outMu.lock();
            __deferstack__.unshift(() -> _l._outMu.unlock());
            {
                final __ret__:stdgo._internal.io.Io_Writer.Writer = _l._out;
                for (defer in __deferstack__) {
                    defer();
                };
                return __ret__;
            };
            {
                final __ret__:stdgo._internal.io.Io_Writer.Writer = (null : stdgo._internal.io.Io_Writer.Writer);
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
            final __ret__:stdgo._internal.io.Io_Writer.Writer = (null : stdgo._internal.io.Io_Writer.Writer);
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return __ret__;
        };
    }
    @:keep
    static public function setPrefix( _l:stdgo.Ref<stdgo._internal.log.Log_Logger.Logger>, _prefix:stdgo.GoString):Void {
        @:recv var _l:stdgo.Ref<stdgo._internal.log.Log_Logger.Logger> = _l;
    }
    @:keep
    static public function prefix( _l:stdgo.Ref<stdgo._internal.log.Log_Logger.Logger>):stdgo.GoString return "";
    @:keep
    static public function setFlags( _l:stdgo.Ref<stdgo._internal.log.Log_Logger.Logger>, _flag:stdgo.GoInt):Void {
        @:recv var _l:stdgo.Ref<stdgo._internal.log.Log_Logger.Logger> = _l;
        _l._flag.store((_flag : stdgo.GoInt32));
    }
    @:keep
    static public function flags( _l:stdgo.Ref<stdgo._internal.log.Log_Logger.Logger>):stdgo.GoInt {
        @:recv var _l:stdgo.Ref<stdgo._internal.log.Log_Logger.Logger> = _l;
        return (_l._flag.load() : stdgo.GoInt);
    }
    @:keep
    static public function panicln( _l:stdgo.Ref<stdgo._internal.log.Log_Logger.Logger>, _v:haxe.Rest<stdgo.AnyInterface>):Void {
        var _v = new stdgo.Slice<stdgo.AnyInterface>(_v.length, 0, ..._v);
        @:recv var _l:stdgo.Ref<stdgo._internal.log.Log_Logger.Logger> = _l;
        var _s = (stdgo._internal.fmt.Fmt_sprintln.sprintln(...(_v : Array<stdgo.AnyInterface>))?.__copy__() : stdgo.GoString);
        _l.output((2 : stdgo.GoInt), _s?.__copy__());
        throw stdgo.Go.toInterface(_s);
    }
    @:keep
    static public function panicf( _l:stdgo.Ref<stdgo._internal.log.Log_Logger.Logger>, _format:stdgo.GoString, _v:haxe.Rest<stdgo.AnyInterface>):Void {
        var _v = new stdgo.Slice<stdgo.AnyInterface>(_v.length, 0, ..._v);
        @:recv var _l:stdgo.Ref<stdgo._internal.log.Log_Logger.Logger> = _l;
        var _s = (stdgo._internal.fmt.Fmt_sprintf.sprintf(_format?.__copy__(), ...(_v : Array<stdgo.AnyInterface>))?.__copy__() : stdgo.GoString);
        _l.output((2 : stdgo.GoInt), _s?.__copy__());
        throw stdgo.Go.toInterface(_s);
    }
    @:keep
    static public function panic( _l:stdgo.Ref<stdgo._internal.log.Log_Logger.Logger>, _v:haxe.Rest<stdgo.AnyInterface>):Void {
        var _v = new stdgo.Slice<stdgo.AnyInterface>(_v.length, 0, ..._v);
        @:recv var _l:stdgo.Ref<stdgo._internal.log.Log_Logger.Logger> = _l;
        var _s = (stdgo._internal.fmt.Fmt_sprint.sprint(...(_v : Array<stdgo.AnyInterface>))?.__copy__() : stdgo.GoString);
        _l.output((2 : stdgo.GoInt), _s?.__copy__());
        throw stdgo.Go.toInterface(_s);
    }
    @:keep
    static public function fatalln( _l:stdgo.Ref<stdgo._internal.log.Log_Logger.Logger>, _v:haxe.Rest<stdgo.AnyInterface>):Void {
        var _v = new stdgo.Slice<stdgo.AnyInterface>(_v.length, 0, ..._v);
        @:recv var _l:stdgo.Ref<stdgo._internal.log.Log_Logger.Logger> = _l;
        _l.output((2 : stdgo.GoInt), stdgo._internal.fmt.Fmt_sprintln.sprintln(...(_v : Array<stdgo.AnyInterface>))?.__copy__());
        Sys.exit((1 : stdgo.GoInt));
    }
    @:keep
    static public function fatalf( _l:stdgo.Ref<stdgo._internal.log.Log_Logger.Logger>, _format:stdgo.GoString, _v:haxe.Rest<stdgo.AnyInterface>):Void {
        var _v = new stdgo.Slice<stdgo.AnyInterface>(_v.length, 0, ..._v);
        @:recv var _l:stdgo.Ref<stdgo._internal.log.Log_Logger.Logger> = _l;
        _l.output((2 : stdgo.GoInt), stdgo._internal.fmt.Fmt_sprintf.sprintf(_format?.__copy__(), ...(_v : Array<stdgo.AnyInterface>))?.__copy__());
        Sys.exit((1 : stdgo.GoInt));
    }
    @:keep
    static public function fatal( _l:stdgo.Ref<stdgo._internal.log.Log_Logger.Logger>, _v:haxe.Rest<stdgo.AnyInterface>):Void {
        var _v = new stdgo.Slice<stdgo.AnyInterface>(_v.length, 0, ..._v);
        @:recv var _l:stdgo.Ref<stdgo._internal.log.Log_Logger.Logger> = _l;
        _l.output((2 : stdgo.GoInt), stdgo._internal.fmt.Fmt_sprint.sprint(...(_v : Array<stdgo.AnyInterface>))?.__copy__());
        Sys.exit((1 : stdgo.GoInt));
    }
    @:keep
    static public function println( _l:stdgo.Ref<stdgo._internal.log.Log_Logger.Logger>, _v:haxe.Rest<stdgo.AnyInterface>):Void {
        var _v = new stdgo.Slice<stdgo.AnyInterface>(_v.length, 0, ..._v);
        @:recv var _l:stdgo.Ref<stdgo._internal.log.Log_Logger.Logger> = _l;
        _l._output((0 : stdgo.GoUIntptr), (2 : stdgo.GoInt), function(_b:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> {
            return stdgo._internal.fmt.Fmt_appendln.appendln(_b, ...(_v : Array<stdgo.AnyInterface>));
        });
    }
    @:keep
    static public function printf( _l:stdgo.Ref<stdgo._internal.log.Log_Logger.Logger>, _format:stdgo.GoString, _v:haxe.Rest<stdgo.AnyInterface>):Void {
        var _v = new stdgo.Slice<stdgo.AnyInterface>(_v.length, 0, ..._v);
        @:recv var _l:stdgo.Ref<stdgo._internal.log.Log_Logger.Logger> = _l;
        _l._output((0 : stdgo.GoUIntptr), (2 : stdgo.GoInt), function(_b:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> {
            return stdgo._internal.fmt.Fmt_appendf.appendf(_b, _format?.__copy__(), ...(_v : Array<stdgo.AnyInterface>));
        });
    }
    @:keep
    static public function print( _l:stdgo.Ref<stdgo._internal.log.Log_Logger.Logger>, _v:haxe.Rest<stdgo.AnyInterface>):Void {
        var _v = new stdgo.Slice<stdgo.AnyInterface>(_v.length, 0, ..._v);
        @:recv var _l:stdgo.Ref<stdgo._internal.log.Log_Logger.Logger> = _l;
        _l._output((0 : stdgo.GoUIntptr), (2 : stdgo.GoInt), function(_b:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> {
            return stdgo._internal.fmt.Fmt_append.append(_b, ...(_v : Array<stdgo.AnyInterface>));
        });
    }
    @:keep
    static public function _output( _l:stdgo.Ref<stdgo._internal.log.Log_Logger.Logger>, _pc:stdgo.GoUIntptr, _calldepth:stdgo.GoInt, _appendOutput:stdgo.Slice<stdgo.GoUInt8> -> stdgo.Slice<stdgo.GoUInt8>):stdgo.Error {
        @:recv var _l:stdgo.Ref<stdgo._internal.log.Log_Logger.Logger> = _l;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            if (_l._isDiscard.load()) {
                return (null : stdgo.Error);
            };
            var _now = (stdgo._internal.time.Time_now.now()?.__copy__() : stdgo._internal.time.Time_Time.Time);
            var _prefix = (_l.prefix()?.__copy__() : stdgo.GoString);
            var _flag = (_l.flags() : stdgo.GoInt);
            var _file:stdgo.GoString = ("" : stdgo.GoString);
            var _line:stdgo.GoInt = (0 : stdgo.GoInt);
            if ((_flag & (24 : stdgo.GoInt) : stdgo.GoInt) != ((0 : stdgo.GoInt))) {
                if (_pc == ((0 : stdgo.GoUIntptr))) {
                    var _ok:Bool = false;
                    {
                        var __tmp__ = stdgo._internal.runtime.Runtime_caller.caller(_calldepth);
                        _file = __tmp__._1?.__copy__();
                        _line = __tmp__._2;
                        _ok = __tmp__._3;
                    };
                    if (!_ok) {
                        _file = ("???" : stdgo.GoString);
                        _line = (0 : stdgo.GoInt);
                    };
                } else {
                    var _fs = stdgo._internal.runtime.Runtime_callersFrames.callersFrames((new stdgo.Slice<stdgo.GoUIntptr>(1, 1, ...[_pc]) : stdgo.Slice<stdgo.GoUIntptr>));
                    var __tmp__ = _fs.next(), _f:stdgo._internal.runtime.Runtime_Frame.Frame = __tmp__._0, __35:Bool = __tmp__._1;
                    _file = _f.file?.__copy__();
                    if (_file == (stdgo.Go.str())) {
                        _file = ("???" : stdgo.GoString);
                    };
                    _line = _f.line;
                };
            };
            var _buf = stdgo._internal.log.Log__getBuffer._getBuffer();
            {
                var _a0 = _buf;
                __deferstack__.unshift(() -> stdgo._internal.log.Log__putBuffer._putBuffer(_a0));
            };
            stdgo._internal.log.Log__formatHeader._formatHeader(_buf, _now?.__copy__(), _prefix?.__copy__(), _flag, _file?.__copy__(), _line);
            (_buf : stdgo.Slice<stdgo.GoUInt8>).__setData__(_appendOutput((_buf : stdgo.Slice<stdgo.GoUInt8>)));
            if ((((_buf : stdgo.Slice<stdgo.GoUInt8>).length == (0 : stdgo.GoInt)) || (((_buf : stdgo.Slice<stdgo.GoUInt8>))[(((_buf : stdgo.Slice<stdgo.GoUInt8>).length) - (1 : stdgo.GoInt) : stdgo.GoInt)] != (10 : stdgo.GoUInt8)) : Bool)) {
                (_buf : stdgo.Slice<stdgo.GoUInt8>).__setData__(((_buf : stdgo.Slice<stdgo.GoUInt8>).__append__((10 : stdgo.GoUInt8))));
            };
            _l._outMu.lock();
            __deferstack__.unshift(() -> _l._outMu.unlock());
            var __tmp__ = _l._out.write((_buf : stdgo.Slice<stdgo.GoUInt8>)), __59:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            {
                for (defer in __deferstack__) {
                    defer();
                };
                return _err;
            };
            {
                final __ret__:stdgo.Error = (null : stdgo.Error);
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
            final __ret__:stdgo.Error = (null : stdgo.Error);
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return __ret__;
        };
    }
    @:keep
    static public function output( _l:stdgo.Ref<stdgo._internal.log.Log_Logger.Logger>, _calldepth:stdgo.GoInt, _s:stdgo.GoString):stdgo.Error {
        @:recv var _l:stdgo.Ref<stdgo._internal.log.Log_Logger.Logger> = _l;
        _calldepth++;
        return _l._output((0 : stdgo.GoUIntptr), _calldepth, function(_b:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> {
            return (_b.__append__(...(_s : Array<stdgo.GoUInt8>)));
        });
    }
    @:keep
    static public function setOutput( _l:stdgo.Ref<stdgo._internal.log.Log_Logger.Logger>, _w:stdgo._internal.io.Io_Writer.Writer):Void {
        @:recv var _l:stdgo.Ref<stdgo._internal.log.Log_Logger.Logger> = _l;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            _l._outMu.lock();
            __deferstack__.unshift(() -> _l._outMu.unlock());
            _l._out = _w;
            _l._isDiscard.store(stdgo.Go.toInterface(_w) == (stdgo.Go.toInterface(stdgo._internal.io.Io_discard.discard)));
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return;
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
            return;
        };
    }
}