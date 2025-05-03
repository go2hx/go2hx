package stdgo._internal.log;
@:keep @:allow(stdgo._internal.log.Log.Logger_asInterface) class Logger_static_extension {
    @:keep
    @:tdfield
    static public function writer( _l:stdgo.Ref<stdgo._internal.log.Log_logger.Logger>):stdgo._internal.io.Io_writer.Writer {
        @:recv var _l:stdgo.Ref<stdgo._internal.log.Log_logger.Logger> = _l;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            //"file:///home/runner/.go/go1.21.3/src/log/log.go#L347"
            (@:checkr _l ?? throw "null pointer dereference")._outMu.lock();
            {
                final __f__ = (@:checkr _l ?? throw "null pointer dereference")._outMu.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            //"file:///home/runner/.go/go1.21.3/src/log/log.go#L349"
            {
                final __ret__:stdgo._internal.io.Io_writer.Writer = (@:checkr _l ?? throw "null pointer dereference")._out;
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
                return (null : stdgo._internal.io.Io_writer.Writer);
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
                return (null : stdgo._internal.io.Io_writer.Writer);
            };
        };
    }
    @:keep
    @:tdfield
    static public function setPrefix( _l:stdgo.Ref<stdgo._internal.log.Log_logger.Logger>, _prefix:stdgo.GoString):Void {
        @:recv var _l:stdgo.Ref<stdgo._internal.log.Log_logger.Logger> = _l;
    }
    @:keep
    @:tdfield
    static public function prefix( _l:stdgo.Ref<stdgo._internal.log.Log_logger.Logger>):stdgo.GoString return "";
    @:keep
    @:tdfield
    static public function setFlags( _l:stdgo.Ref<stdgo._internal.log.Log_logger.Logger>, _flag:stdgo.GoInt):Void {
        @:recv var _l:stdgo.Ref<stdgo._internal.log.Log_logger.Logger> = _l;
        //"file:///home/runner/.go/go1.21.3/src/log/log.go#L329"
        (@:checkr _l ?? throw "null pointer dereference")._flag.store((_flag : stdgo.GoInt32));
    }
    @:keep
    @:tdfield
    static public function flags( _l:stdgo.Ref<stdgo._internal.log.Log_logger.Logger>):stdgo.GoInt {
        @:recv var _l:stdgo.Ref<stdgo._internal.log.Log_logger.Logger> = _l;
        //"file:///home/runner/.go/go1.21.3/src/log/log.go#L323"
        return ((@:checkr _l ?? throw "null pointer dereference")._flag.load() : stdgo.GoInt);
    }
    @:keep
    @:tdfield
    static public function panicln( _l:stdgo.Ref<stdgo._internal.log.Log_logger.Logger>, _v:haxe.Rest<stdgo.AnyInterface>):Void {
        var _v = new stdgo.Slice<stdgo.AnyInterface>(_v.length, 0, ..._v);
        @:recv var _l:stdgo.Ref<stdgo._internal.log.Log_logger.Logger> = _l;
        var _s = (stdgo._internal.fmt.Fmt_sprintln.sprintln(...(_v : Array<stdgo.AnyInterface>))?.__copy__() : stdgo.GoString);
        //"file:///home/runner/.go/go1.21.3/src/log/log.go#L316"
        _l.output((2 : stdgo.GoInt), _s?.__copy__());
        //"file:///home/runner/.go/go1.21.3/src/log/log.go#L317"
        throw stdgo.Go.toInterface(_s);
    }
    @:keep
    @:tdfield
    static public function panicf( _l:stdgo.Ref<stdgo._internal.log.Log_logger.Logger>, _format:stdgo.GoString, _v:haxe.Rest<stdgo.AnyInterface>):Void {
        var _v = new stdgo.Slice<stdgo.AnyInterface>(_v.length, 0, ..._v);
        @:recv var _l:stdgo.Ref<stdgo._internal.log.Log_logger.Logger> = _l;
        var _s = (stdgo._internal.fmt.Fmt_sprintf.sprintf(_format?.__copy__(), ...(_v : Array<stdgo.AnyInterface>))?.__copy__() : stdgo.GoString);
        //"file:///home/runner/.go/go1.21.3/src/log/log.go#L309"
        _l.output((2 : stdgo.GoInt), _s?.__copy__());
        //"file:///home/runner/.go/go1.21.3/src/log/log.go#L310"
        throw stdgo.Go.toInterface(_s);
    }
    @:keep
    @:tdfield
    static public function panic( _l:stdgo.Ref<stdgo._internal.log.Log_logger.Logger>, _v:haxe.Rest<stdgo.AnyInterface>):Void {
        var _v = new stdgo.Slice<stdgo.AnyInterface>(_v.length, 0, ..._v);
        @:recv var _l:stdgo.Ref<stdgo._internal.log.Log_logger.Logger> = _l;
        var _s = (stdgo._internal.fmt.Fmt_sprint.sprint(...(_v : Array<stdgo.AnyInterface>))?.__copy__() : stdgo.GoString);
        //"file:///home/runner/.go/go1.21.3/src/log/log.go#L302"
        _l.output((2 : stdgo.GoInt), _s?.__copy__());
        //"file:///home/runner/.go/go1.21.3/src/log/log.go#L303"
        throw stdgo.Go.toInterface(_s);
    }
    @:keep
    @:tdfield
    static public function fatalln( _l:stdgo.Ref<stdgo._internal.log.Log_logger.Logger>, _v:haxe.Rest<stdgo.AnyInterface>):Void {
        var _v = new stdgo.Slice<stdgo.AnyInterface>(_v.length, 0, ..._v);
        @:recv var _l:stdgo.Ref<stdgo._internal.log.Log_logger.Logger> = _l;
        //"file:///home/runner/.go/go1.21.3/src/log/log.go#L295"
        _l.output((2 : stdgo.GoInt), stdgo._internal.fmt.Fmt_sprintln.sprintln(...(_v : Array<stdgo.AnyInterface>))?.__copy__());
        //"file:///home/runner/.go/go1.21.3/src/log/log.go#L296"
        #if (sys || hxnodejs) Sys.exit((1 : stdgo.GoInt)) #else null #end;
    }
    @:keep
    @:tdfield
    static public function fatalf( _l:stdgo.Ref<stdgo._internal.log.Log_logger.Logger>, _format:stdgo.GoString, _v:haxe.Rest<stdgo.AnyInterface>):Void {
        var _v = new stdgo.Slice<stdgo.AnyInterface>(_v.length, 0, ..._v);
        @:recv var _l:stdgo.Ref<stdgo._internal.log.Log_logger.Logger> = _l;
        //"file:///home/runner/.go/go1.21.3/src/log/log.go#L289"
        _l.output((2 : stdgo.GoInt), stdgo._internal.fmt.Fmt_sprintf.sprintf(_format?.__copy__(), ...(_v : Array<stdgo.AnyInterface>))?.__copy__());
        //"file:///home/runner/.go/go1.21.3/src/log/log.go#L290"
        #if (sys || hxnodejs) Sys.exit((1 : stdgo.GoInt)) #else null #end;
    }
    @:keep
    @:tdfield
    static public function fatal( _l:stdgo.Ref<stdgo._internal.log.Log_logger.Logger>, _v:haxe.Rest<stdgo.AnyInterface>):Void {
        var _v = new stdgo.Slice<stdgo.AnyInterface>(_v.length, 0, ..._v);
        @:recv var _l:stdgo.Ref<stdgo._internal.log.Log_logger.Logger> = _l;
        //"file:///home/runner/.go/go1.21.3/src/log/log.go#L283"
        _l.output((2 : stdgo.GoInt), stdgo._internal.fmt.Fmt_sprint.sprint(...(_v : Array<stdgo.AnyInterface>))?.__copy__());
        //"file:///home/runner/.go/go1.21.3/src/log/log.go#L284"
        #if (sys || hxnodejs) Sys.exit((1 : stdgo.GoInt)) #else null #end;
    }
    @:keep
    @:tdfield
    static public function println( _l:stdgo.Ref<stdgo._internal.log.Log_logger.Logger>, _v:haxe.Rest<stdgo.AnyInterface>):Void {
        var _v = new stdgo.Slice<stdgo.AnyInterface>(_v.length, 0, ..._v);
        @:recv var _l:stdgo.Ref<stdgo._internal.log.Log_logger.Logger> = _l;
        //"file:///home/runner/.go/go1.21.3/src/log/log.go#L276"
        _l._output((new stdgo.GoUIntptr(0) : stdgo.GoUIntptr), (2 : stdgo.GoInt), function(_b:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> {
            //"file:///home/runner/.go/go1.21.3/src/log/log.go#L277"
            return stdgo._internal.fmt.Fmt_appendln.appendln(_b, ...(_v : Array<stdgo.AnyInterface>));
        });
    }
    @:keep
    @:tdfield
    static public function printf( _l:stdgo.Ref<stdgo._internal.log.Log_logger.Logger>, _format:stdgo.GoString, _v:haxe.Rest<stdgo.AnyInterface>):Void {
        var _v = new stdgo.Slice<stdgo.AnyInterface>(_v.length, 0, ..._v);
        @:recv var _l:stdgo.Ref<stdgo._internal.log.Log_logger.Logger> = _l;
        //"file:///home/runner/.go/go1.21.3/src/log/log.go#L268"
        _l._output((new stdgo.GoUIntptr(0) : stdgo.GoUIntptr), (2 : stdgo.GoInt), function(_b:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> {
            //"file:///home/runner/.go/go1.21.3/src/log/log.go#L269"
            return stdgo._internal.fmt.Fmt_appendf.appendf(_b, _format?.__copy__(), ...(_v : Array<stdgo.AnyInterface>));
        });
    }
    @:keep
    @:tdfield
    static public function print( _l:stdgo.Ref<stdgo._internal.log.Log_logger.Logger>, _v:haxe.Rest<stdgo.AnyInterface>):Void {
        var _v = new stdgo.Slice<stdgo.AnyInterface>(_v.length, 0, ..._v);
        @:recv var _l:stdgo.Ref<stdgo._internal.log.Log_logger.Logger> = _l;
        //"file:///home/runner/.go/go1.21.3/src/log/log.go#L260"
        _l._output((new stdgo.GoUIntptr(0) : stdgo.GoUIntptr), (2 : stdgo.GoInt), function(_b:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> {
            //"file:///home/runner/.go/go1.21.3/src/log/log.go#L261"
            return stdgo._internal.fmt.Fmt_append.append(_b, ...(_v : Array<stdgo.AnyInterface>));
        });
    }
    @:keep
    @:tdfield
    static public function _output( _l:stdgo.Ref<stdgo._internal.log.Log_logger.Logger>, _pc:stdgo.GoUIntptr, _calldepth:stdgo.GoInt, _appendOutput:stdgo.Slice<stdgo.GoUInt8> -> stdgo.Slice<stdgo.GoUInt8>):stdgo.Error {
        @:recv var _l:stdgo.Ref<stdgo._internal.log.Log_logger.Logger> = _l;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            //"file:///home/runner/.go/go1.21.3/src/log/log.go#L203"
            if ((@:checkr _l ?? throw "null pointer dereference")._isDiscard.load()) {
                //"file:///home/runner/.go/go1.21.3/src/log/log.go#L204"
                return (null : stdgo.Error);
            };
            var _now = (stdgo._internal.time.Time_now.now()?.__copy__() : stdgo._internal.time.Time_time.Time);
            var _prefix = (_l.prefix()?.__copy__() : stdgo.GoString);
            var _flag = (_l.flags() : stdgo.GoInt);
            var _file:stdgo.GoString = ("" : stdgo.GoString);
            var _line:stdgo.GoInt = (0 : stdgo.GoInt);
            //"file:///home/runner/.go/go1.21.3/src/log/log.go#L216"
            if ((_flag & (24 : stdgo.GoInt) : stdgo.GoInt) != ((0 : stdgo.GoInt))) {
                //"file:///home/runner/.go/go1.21.3/src/log/log.go#L217"
                if (_pc == ((new stdgo.GoUIntptr(0) : stdgo.GoUIntptr))) {
                    var _ok:Bool = false;
                    {
                        var __tmp__ = stdgo._internal.runtime.Runtime_caller.caller(_calldepth);
                        _file = @:tmpset0 __tmp__._1?.__copy__();
                        _line = @:tmpset0 __tmp__._2;
                        _ok = @:tmpset0 __tmp__._3;
                    };
                    //"file:///home/runner/.go/go1.21.3/src/log/log.go#L220"
                    if (!_ok) {
                        _file = ("???" : stdgo.GoString);
                        _line = (0 : stdgo.GoInt);
                    };
                } else {
                    var _fs = stdgo._internal.runtime.Runtime_callersframes.callersFrames((new stdgo.Slice<stdgo.GoUIntptr>(1, 1, ...[_pc]) : stdgo.Slice<stdgo.GoUIntptr>));
                    var __tmp__ = _fs.next(), _f:stdgo._internal.runtime.Runtime_frame.Frame = __tmp__._0, __35:Bool = __tmp__._1;
                    _file = _f.file?.__copy__();
                    //"file:///home/runner/.go/go1.21.3/src/log/log.go#L228"
                    if (_file == ((stdgo.Go.str() : stdgo.GoString))) {
                        _file = ("???" : stdgo.GoString);
                    };
                    _line = _f.line;
                };
            };
            var _buf = stdgo._internal.log.Log__getbuffer._getBuffer();
            {
                var _a0 = _buf;
                final __f__ = stdgo._internal.log.Log__putbuffer._putBuffer;
                __deferstack__.unshift({ ran : false, f : () -> __f__(_a0) });
            };
            //"file:///home/runner/.go/go1.21.3/src/log/log.go#L237"
            stdgo._internal.log.Log__formatheader._formatHeader(_buf, _now?.__copy__(), _prefix?.__copy__(), _flag, _file?.__copy__(), _line);
            (_buf : stdgo.Slice<stdgo.GoUInt8>).__setData__(_appendOutput((_buf : stdgo.Slice<stdgo.GoUInt8>)));
            //"file:///home/runner/.go/go1.21.3/src/log/log.go#L239"
            if ((((_buf : stdgo.Slice<stdgo.GoUInt8>).length == (0 : stdgo.GoInt)) || (((_buf : stdgo.Slice<stdgo.GoUInt8>))[(((_buf : stdgo.Slice<stdgo.GoUInt8>).length) - (1 : stdgo.GoInt) : stdgo.GoInt)] != (10 : stdgo.GoUInt8)) : Bool)) {
                (_buf : stdgo.Slice<stdgo.GoUInt8>).__setData__(((_buf : stdgo.Slice<stdgo.GoUInt8>).__append__((10 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>));
            };
            //"file:///home/runner/.go/go1.21.3/src/log/log.go#L243"
            (@:checkr _l ?? throw "null pointer dereference")._outMu.lock();
            {
                final __f__ = (@:checkr _l ?? throw "null pointer dereference")._outMu.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            var __tmp__ = (@:checkr _l ?? throw "null pointer dereference")._out.write((_buf : stdgo.Slice<stdgo.GoUInt8>)), __59:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///home/runner/.go/go1.21.3/src/log/log.go#L246"
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                return _err;
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
                return (null : stdgo.Error);
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
                return (null : stdgo.Error);
            };
        };
    }
    @:keep
    @:tdfield
    static public function output( _l:stdgo.Ref<stdgo._internal.log.Log_logger.Logger>, _calldepth:stdgo.GoInt, _s:stdgo.GoString):stdgo.Error {
        @:recv var _l:stdgo.Ref<stdgo._internal.log.Log_logger.Logger> = _l;
        //"file:///home/runner/.go/go1.21.3/src/log/log.go#L194"
        _calldepth++;
        //"file:///home/runner/.go/go1.21.3/src/log/log.go#L195"
        return _l._output((new stdgo.GoUIntptr(0) : stdgo.GoUIntptr), _calldepth, function(_b:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> {
            //"file:///home/runner/.go/go1.21.3/src/log/log.go#L196"
            return (_b.__append__(...(_s : Array<stdgo.GoUInt8>)) : stdgo.Slice<stdgo.GoUInt8>);
        });
    }
    @:keep
    @:tdfield
    static public function setOutput( _l:stdgo.Ref<stdgo._internal.log.Log_logger.Logger>, _w:stdgo._internal.io.Io_writer.Writer):Void {
        @:recv var _l:stdgo.Ref<stdgo._internal.log.Log_logger.Logger> = _l;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            //"file:///home/runner/.go/go1.21.3/src/log/log.go#L81"
            (@:checkr _l ?? throw "null pointer dereference")._outMu.lock();
            {
                final __f__ = (@:checkr _l ?? throw "null pointer dereference")._outMu.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            (@:checkr _l ?? throw "null pointer dereference")._out = _w;
            //"file:///home/runner/.go/go1.21.3/src/log/log.go#L84"
            (@:checkr _l ?? throw "null pointer dereference")._isDiscard.store(stdgo.Go.toInterface(_w) == (stdgo.Go.toInterface(stdgo._internal.io.Io_discard.discard)));
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
                return;
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
                return;
            };
        };
    }
}
