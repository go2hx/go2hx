package stdgo._internal.net.internal.socktest;
@:keep @:allow(stdgo._internal.net.internal.socktest.Socktest.Switch_asInterface) class Switch_static_extension {
    @:keep
    @:tdfield
    static public function getsockoptInt( _sw:stdgo.Ref<stdgo._internal.net.internal.socktest.Socktest_switch.Switch>, _s:stdgo.GoInt, _level:stdgo.GoInt, _opt:stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _sw:stdgo.Ref<stdgo._internal.net.internal.socktest.Socktest_switch.Switch> = _sw;
        var _soerr = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        var _so = @:check2r _sw._sockso(_s);
        if ((_so == null || (_so : Dynamic).__nil__)) {
            return {
                final __tmp__ = stdgo._internal.syscall.Syscall_getsockoptint.getsockoptInt(_s, _level, _opt);
                _soerr = __tmp__._0;
                _err = __tmp__._1;
                { _0 : _soerr, _1 : _err };
            };
        };
        @:check2 (@:checkr _sw ?? throw "null pointer dereference")._fmu.rLock();
        var _f = ((@:checkr _sw ?? throw "null pointer dereference")._fltab[(4 : stdgo._internal.net.internal.socktest.Socktest_filtertype.FilterType)] ?? (null : stdgo._internal.net.internal.socktest.Socktest_filter.Filter) : stdgo._internal.net.internal.socktest.Socktest_filter.Filter);
        @:check2 (@:checkr _sw ?? throw "null pointer dereference")._fmu.rUnlock();
        var __tmp__ = _f._apply(_so), _af:stdgo._internal.net.internal.socktest.Socktest_afterfilter.AfterFilter = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return {
                final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (-1 : stdgo.GoInt), _1 : _err };
                _soerr = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        };
        {
            var __tmp__ = stdgo._internal.syscall.Syscall_getsockoptint.getsockoptInt(_s, _level, _opt);
            _soerr = @:tmpset0 __tmp__._0;
            (@:checkr _so ?? throw "null pointer dereference").err = @:tmpset0 __tmp__._1;
        };
        (@:checkr _so ?? throw "null pointer dereference").socketErr = stdgo.Go.asInterface((new stdgo.GoUIntptr(_soerr) : stdgo._internal.syscall.Syscall_errno.Errno));
        {
            _err = _af._apply(_so);
            if (_err != null) {
                return {
                    final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (-1 : stdgo.GoInt), _1 : _err };
                    _soerr = __tmp__._0;
                    _err = __tmp__._1;
                    __tmp__;
                };
            };
        };
        if ((@:checkr _so ?? throw "null pointer dereference").err != null) {
            return {
                final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (-1 : stdgo.GoInt), _1 : (@:checkr _so ?? throw "null pointer dereference").err };
                _soerr = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        };
        if (((_opt == (3 : stdgo.GoInt)) && (((stdgo.Go.toInterface((@:checkr _so ?? throw "null pointer dereference").socketErr) == stdgo.Go.toInterface(stdgo.Go.asInterface((new stdgo.GoUIntptr((new stdgo.GoUIntptr(0) : stdgo._internal.syscall.Syscall_errno.Errno)) : stdgo._internal.syscall.Syscall_errno.Errno)))) || (stdgo.Go.toInterface((@:checkr _so ?? throw "null pointer dereference").socketErr) == stdgo.Go.toInterface(stdgo.Go.asInterface((new stdgo.GoUIntptr(106) : stdgo._internal.syscall.Syscall_errno.Errno)))) : Bool)) : Bool)) {
            @:check2 (@:checkr _sw ?? throw "null pointer dereference")._smu.lock();
            (@:checkr _sw ?? throw "null pointer dereference")._stats._getLocked((@:checkr _so ?? throw "null pointer dereference").cookie).connected++;
            @:check2 (@:checkr _sw ?? throw "null pointer dereference")._smu.unlock();
        };
        return {
            final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : _soerr, _1 : (null : stdgo.Error) };
            _soerr = __tmp__._0;
            _err = __tmp__._1;
            __tmp__;
        };
    }
    @:keep
    @:tdfield
    static public function accept( _sw:stdgo.Ref<stdgo._internal.net.internal.socktest.Socktest_switch.Switch>, _s:stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : stdgo._internal.syscall.Syscall_sockaddr.Sockaddr; var _2 : stdgo.Error; } {
        @:recv var _sw:stdgo.Ref<stdgo._internal.net.internal.socktest.Socktest_switch.Switch> = _sw;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        var _ns = (0 : stdgo.GoInt), _sa = (null : stdgo._internal.syscall.Syscall_sockaddr.Sockaddr), _err = (null : stdgo.Error);
        try {
            var _so = @:check2r _sw._sockso(_s);
            if ((_so == null || (_so : Dynamic).__nil__)) {
                return {
                    final __tmp__ = stdgo._internal.syscall.Syscall_accept.accept(_s);
                    _ns = __tmp__._0;
                    _sa = __tmp__._1;
                    _err = __tmp__._2;
                    { _0 : _ns, _1 : _sa, _2 : _err };
                };
            };
            @:check2 (@:checkr _sw ?? throw "null pointer dereference")._fmu.rLock();
            var _f = ((@:checkr _sw ?? throw "null pointer dereference")._fltab[(3 : stdgo._internal.net.internal.socktest.Socktest_filtertype.FilterType)] ?? (null : stdgo._internal.net.internal.socktest.Socktest_filter.Filter) : stdgo._internal.net.internal.socktest.Socktest_filter.Filter);
            @:check2 (@:checkr _sw ?? throw "null pointer dereference")._fmu.rUnlock();
            var __tmp__ = _f._apply(_so), _af:stdgo._internal.net.internal.socktest.Socktest_afterfilter.AfterFilter = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return {
                    final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo._internal.syscall.Syscall_sockaddr.Sockaddr; var _2 : stdgo.Error; } = { _0 : (-1 : stdgo.GoInt), _1 : (null : stdgo._internal.syscall.Syscall_sockaddr.Sockaddr), _2 : _err };
                    _ns = __tmp__._0;
                    _sa = __tmp__._1;
                    _err = __tmp__._2;
                    __tmp__;
                };
            };
            {
                var __tmp__ = stdgo._internal.syscall.Syscall_accept.accept(_s);
                _ns = @:tmpset0 __tmp__._0;
                _sa = @:tmpset0 __tmp__._1;
                (@:checkr _so ?? throw "null pointer dereference").err = @:tmpset0 __tmp__._2;
            };
            {
                _err = _af._apply(_so);
                if (_err != null) {
                    if ((@:checkr _so ?? throw "null pointer dereference").err == null) {
                        stdgo._internal.syscall.Syscall_close.close(_ns);
                    };
                    return {
                        final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo._internal.syscall.Syscall_sockaddr.Sockaddr; var _2 : stdgo.Error; } = { _0 : (-1 : stdgo.GoInt), _1 : (null : stdgo._internal.syscall.Syscall_sockaddr.Sockaddr), _2 : _err };
                        _ns = __tmp__._0;
                        _sa = __tmp__._1;
                        _err = __tmp__._2;
                        __tmp__;
                    };
                };
            };
            @:check2 (@:checkr _sw ?? throw "null pointer dereference")._smu.lock();
            {
                final __f__ = @:check2 (@:checkr _sw ?? throw "null pointer dereference")._smu.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            if ((@:checkr _so ?? throw "null pointer dereference").err != null) {
                (@:checkr _sw ?? throw "null pointer dereference")._stats._getLocked((@:checkr _so ?? throw "null pointer dereference").cookie).acceptFailed++;
                {
                    final __ret__:{ var _0 : stdgo.GoInt; var _1 : stdgo._internal.syscall.Syscall_sockaddr.Sockaddr; var _2 : stdgo.Error; } = {
                        final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo._internal.syscall.Syscall_sockaddr.Sockaddr; var _2 : stdgo.Error; } = { _0 : (-1 : stdgo.GoInt), _1 : (null : stdgo._internal.syscall.Syscall_sockaddr.Sockaddr), _2 : (@:checkr _so ?? throw "null pointer dereference").err };
                        _ns = __tmp__._0;
                        _sa = __tmp__._1;
                        _err = __tmp__._2;
                        __tmp__;
                    };
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return __ret__;
                };
            };
            var _nso = @:check2r _sw._addLocked(_ns, (@:checkr _so ?? throw "null pointer dereference").cookie.family(), (@:checkr _so ?? throw "null pointer dereference").cookie.type(), (@:checkr _so ?? throw "null pointer dereference").cookie.protocol());
            (@:checkr _sw ?? throw "null pointer dereference")._stats._getLocked((@:checkr _nso ?? throw "null pointer dereference").cookie).accepted++;
            {
                final __ret__:{ var _0 : stdgo.GoInt; var _1 : stdgo._internal.syscall.Syscall_sockaddr.Sockaddr; var _2 : stdgo.Error; } = {
                    final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo._internal.syscall.Syscall_sockaddr.Sockaddr; var _2 : stdgo.Error; } = { _0 : _ns, _1 : _sa, _2 : (null : stdgo.Error) };
                    _ns = __tmp__._0;
                    _sa = __tmp__._1;
                    _err = __tmp__._2;
                    __tmp__;
                };
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
                return { _0 : _ns, _1 : _sa, _2 : _err };
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
                return { _0 : _ns, _1 : _sa, _2 : _err };
            };
        };
    }
    @:keep
    @:tdfield
    static public function listen( _sw:stdgo.Ref<stdgo._internal.net.internal.socktest.Socktest_switch.Switch>, _s:stdgo.GoInt, _backlog:stdgo.GoInt):stdgo.Error {
        @:recv var _sw:stdgo.Ref<stdgo._internal.net.internal.socktest.Socktest_switch.Switch> = _sw;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        var _err = (null : stdgo.Error);
        try {
            var _so = @:check2r _sw._sockso(_s);
            if ((_so == null || (_so : Dynamic).__nil__)) {
                return _err = stdgo._internal.syscall.Syscall_listen.listen(_s, _backlog);
            };
            @:check2 (@:checkr _sw ?? throw "null pointer dereference")._fmu.rLock();
            var _f = ((@:checkr _sw ?? throw "null pointer dereference")._fltab[(2 : stdgo._internal.net.internal.socktest.Socktest_filtertype.FilterType)] ?? (null : stdgo._internal.net.internal.socktest.Socktest_filter.Filter) : stdgo._internal.net.internal.socktest.Socktest_filter.Filter);
            @:check2 (@:checkr _sw ?? throw "null pointer dereference")._fmu.rUnlock();
            var __tmp__ = _f._apply(_so), _af:stdgo._internal.net.internal.socktest.Socktest_afterfilter.AfterFilter = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return _err;
            };
            (@:checkr _so ?? throw "null pointer dereference").err = stdgo._internal.syscall.Syscall_listen.listen(_s, _backlog);
            {
                _err = _af._apply(_so);
                if (_err != null) {
                    return _err;
                };
            };
            @:check2 (@:checkr _sw ?? throw "null pointer dereference")._smu.lock();
            {
                final __f__ = @:check2 (@:checkr _sw ?? throw "null pointer dereference")._smu.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            if ((@:checkr _so ?? throw "null pointer dereference").err != null) {
                (@:checkr _sw ?? throw "null pointer dereference")._stats._getLocked((@:checkr _so ?? throw "null pointer dereference").cookie).listenFailed++;
                {
                    final __ret__:stdgo.Error = _err = (@:checkr _so ?? throw "null pointer dereference").err;
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return __ret__;
                };
            };
            (@:checkr _sw ?? throw "null pointer dereference")._stats._getLocked((@:checkr _so ?? throw "null pointer dereference").cookie).listened++;
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
    static public function connect( _sw:stdgo.Ref<stdgo._internal.net.internal.socktest.Socktest_switch.Switch>, _s:stdgo.GoInt, _sa:stdgo._internal.syscall.Syscall_sockaddr.Sockaddr):stdgo.Error {
        @:recv var _sw:stdgo.Ref<stdgo._internal.net.internal.socktest.Socktest_switch.Switch> = _sw;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        var _err = (null : stdgo.Error);
        try {
            var _so = @:check2r _sw._sockso(_s);
            if ((_so == null || (_so : Dynamic).__nil__)) {
                return _err = stdgo._internal.syscall.Syscall_connect.connect(_s, _sa);
            };
            @:check2 (@:checkr _sw ?? throw "null pointer dereference")._fmu.rLock();
            var _f = ((@:checkr _sw ?? throw "null pointer dereference")._fltab[(1 : stdgo._internal.net.internal.socktest.Socktest_filtertype.FilterType)] ?? (null : stdgo._internal.net.internal.socktest.Socktest_filter.Filter) : stdgo._internal.net.internal.socktest.Socktest_filter.Filter);
            @:check2 (@:checkr _sw ?? throw "null pointer dereference")._fmu.rUnlock();
            var __tmp__ = _f._apply(_so), _af:stdgo._internal.net.internal.socktest.Socktest_afterfilter.AfterFilter = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return _err;
            };
            (@:checkr _so ?? throw "null pointer dereference").err = stdgo._internal.syscall.Syscall_connect.connect(_s, _sa);
            {
                _err = _af._apply(_so);
                if (_err != null) {
                    return _err;
                };
            };
            @:check2 (@:checkr _sw ?? throw "null pointer dereference")._smu.lock();
            {
                final __f__ = @:check2 (@:checkr _sw ?? throw "null pointer dereference")._smu.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            if ((@:checkr _so ?? throw "null pointer dereference").err != null) {
                (@:checkr _sw ?? throw "null pointer dereference")._stats._getLocked((@:checkr _so ?? throw "null pointer dereference").cookie).connectFailed++;
                {
                    final __ret__:stdgo.Error = _err = (@:checkr _so ?? throw "null pointer dereference").err;
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return __ret__;
                };
            };
            (@:checkr _sw ?? throw "null pointer dereference")._stats._getLocked((@:checkr _so ?? throw "null pointer dereference").cookie).connected++;
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
    static public function close( _sw:stdgo.Ref<stdgo._internal.net.internal.socktest.Socktest_switch.Switch>, _s:stdgo.GoInt):stdgo.Error {
        @:recv var _sw:stdgo.Ref<stdgo._internal.net.internal.socktest.Socktest_switch.Switch> = _sw;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        var _err = (null : stdgo.Error);
        try {
            var _so = @:check2r _sw._sockso(_s);
            if ((_so == null || (_so : Dynamic).__nil__)) {
                return _err = stdgo._internal.syscall.Syscall_close.close(_s);
            };
            @:check2 (@:checkr _sw ?? throw "null pointer dereference")._fmu.rLock();
            var _f = ((@:checkr _sw ?? throw "null pointer dereference")._fltab[(5 : stdgo._internal.net.internal.socktest.Socktest_filtertype.FilterType)] ?? (null : stdgo._internal.net.internal.socktest.Socktest_filter.Filter) : stdgo._internal.net.internal.socktest.Socktest_filter.Filter);
            @:check2 (@:checkr _sw ?? throw "null pointer dereference")._fmu.rUnlock();
            var __tmp__ = _f._apply(_so), _af:stdgo._internal.net.internal.socktest.Socktest_afterfilter.AfterFilter = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return _err;
            };
            (@:checkr _so ?? throw "null pointer dereference").err = stdgo._internal.syscall.Syscall_close.close(_s);
            {
                _err = _af._apply(_so);
                if (_err != null) {
                    return _err;
                };
            };
            @:check2 (@:checkr _sw ?? throw "null pointer dereference")._smu.lock();
            {
                final __f__ = @:check2 (@:checkr _sw ?? throw "null pointer dereference")._smu.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            if ((@:checkr _so ?? throw "null pointer dereference").err != null) {
                (@:checkr _sw ?? throw "null pointer dereference")._stats._getLocked((@:checkr _so ?? throw "null pointer dereference").cookie).closeFailed++;
                {
                    final __ret__:stdgo.Error = _err = (@:checkr _so ?? throw "null pointer dereference").err;
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return __ret__;
                };
            };
            if ((@:checkr _sw ?? throw "null pointer dereference")._sotab != null) (@:checkr _sw ?? throw "null pointer dereference")._sotab.__remove__(_s);
            (@:checkr _sw ?? throw "null pointer dereference")._stats._getLocked((@:checkr _so ?? throw "null pointer dereference").cookie).closed++;
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
    static public function socket( _sw:stdgo.Ref<stdgo._internal.net.internal.socktest.Socktest_switch.Switch>, _family:stdgo.GoInt, _sotype:stdgo.GoInt, _proto:stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _sw:stdgo.Ref<stdgo._internal.net.internal.socktest.Socktest_switch.Switch> = _sw;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        var _s = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        try {
            @:check2 (@:checkr _sw ?? throw "null pointer dereference")._once.do_(@:check2r _sw._init);
            var _so = (stdgo.Go.setRef(({ cookie : stdgo._internal.net.internal.socktest.Socktest__cookie._cookie(_family, _sotype, _proto) } : stdgo._internal.net.internal.socktest.Socktest_status.Status)) : stdgo.Ref<stdgo._internal.net.internal.socktest.Socktest_status.Status>);
            @:check2 (@:checkr _sw ?? throw "null pointer dereference")._fmu.rLock();
            var _f = ((@:checkr _sw ?? throw "null pointer dereference")._fltab[(0 : stdgo._internal.net.internal.socktest.Socktest_filtertype.FilterType)] ?? (null : stdgo._internal.net.internal.socktest.Socktest_filter.Filter) : stdgo._internal.net.internal.socktest.Socktest_filter.Filter);
            @:check2 (@:checkr _sw ?? throw "null pointer dereference")._fmu.rUnlock();
            var __tmp__ = _f._apply(_so), _af:stdgo._internal.net.internal.socktest.Socktest_afterfilter.AfterFilter = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return {
                    final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (-1 : stdgo.GoInt), _1 : _err };
                    _s = __tmp__._0;
                    _err = __tmp__._1;
                    __tmp__;
                };
            };
            {
                var __tmp__ = stdgo._internal.syscall.Syscall_socket.socket(_family, _sotype, _proto);
                _s = @:tmpset0 __tmp__._0;
                (@:checkr _so ?? throw "null pointer dereference").err = @:tmpset0 __tmp__._1;
            };
            {
                _err = _af._apply(_so);
                if (_err != null) {
                    if ((@:checkr _so ?? throw "null pointer dereference").err == null) {
                        stdgo._internal.syscall.Syscall_close.close(_s);
                    };
                    return {
                        final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (-1 : stdgo.GoInt), _1 : _err };
                        _s = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                };
            };
            @:check2 (@:checkr _sw ?? throw "null pointer dereference")._smu.lock();
            {
                final __f__ = @:check2 (@:checkr _sw ?? throw "null pointer dereference")._smu.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            if ((@:checkr _so ?? throw "null pointer dereference").err != null) {
                (@:checkr _sw ?? throw "null pointer dereference")._stats._getLocked((@:checkr _so ?? throw "null pointer dereference").cookie).openFailed++;
                {
                    final __ret__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = {
                        final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (-1 : stdgo.GoInt), _1 : (@:checkr _so ?? throw "null pointer dereference").err };
                        _s = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return __ret__;
                };
            };
            var _nso = @:check2r _sw._addLocked(_s, _family, _sotype, _proto);
            (@:checkr _sw ?? throw "null pointer dereference")._stats._getLocked((@:checkr _nso ?? throw "null pointer dereference").cookie).opened++;
            {
                final __ret__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = {
                    final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : _s, _1 : (null : stdgo.Error) };
                    _s = __tmp__._0;
                    _err = __tmp__._1;
                    __tmp__;
                };
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
                return { _0 : _s, _1 : _err };
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
                return { _0 : _s, _1 : _err };
            };
        };
    }
    @:keep
    @:tdfield
    static public function _addLocked( _sw:stdgo.Ref<stdgo._internal.net.internal.socktest.Socktest_switch.Switch>, _s:stdgo.GoInt, _family:stdgo.GoInt, _sotype:stdgo.GoInt, _proto:stdgo.GoInt):stdgo.Ref<stdgo._internal.net.internal.socktest.Socktest_status.Status> {
        @:recv var _sw:stdgo.Ref<stdgo._internal.net.internal.socktest.Socktest_switch.Switch> = _sw;
        @:check2 (@:checkr _sw ?? throw "null pointer dereference")._once.do_(@:check2r _sw._init);
        var _so = ({ cookie : stdgo._internal.net.internal.socktest.Socktest__cookie._cookie(_family, _sotype, _proto) } : stdgo._internal.net.internal.socktest.Socktest_status.Status);
        (@:checkr _sw ?? throw "null pointer dereference")._sotab[_s] = _so?.__copy__();
        return (stdgo.Go.setRef(_so) : stdgo.Ref<stdgo._internal.net.internal.socktest.Socktest_status.Status>);
    }
    @:keep
    @:tdfield
    static public function _sockso( _sw:stdgo.Ref<stdgo._internal.net.internal.socktest.Socktest_switch.Switch>, _s:stdgo.GoInt):stdgo.Ref<stdgo._internal.net.internal.socktest.Socktest_status.Status> {
        @:recv var _sw:stdgo.Ref<stdgo._internal.net.internal.socktest.Socktest_switch.Switch> = _sw;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            @:check2 (@:checkr _sw ?? throw "null pointer dereference")._smu.rLock();
            {
                final __f__ = @:check2 (@:checkr _sw ?? throw "null pointer dereference")._smu.rUnlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            var __tmp__ = ((@:checkr _sw ?? throw "null pointer dereference")._sotab != null && (@:checkr _sw ?? throw "null pointer dereference")._sotab.__exists__(_s) ? { _0 : (@:checkr _sw ?? throw "null pointer dereference")._sotab[_s], _1 : true } : { _0 : ({} : stdgo._internal.net.internal.socktest.Socktest_status.Status), _1 : false }), _so:stdgo._internal.net.internal.socktest.Socktest_status.Status = __tmp__._0, _ok:Bool = __tmp__._1;
            if (!_ok) {
                {
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return null;
                };
            };
            {
                final __ret__:stdgo.Ref<stdgo._internal.net.internal.socktest.Socktest_status.Status> = (stdgo.Go.setRef(_so) : stdgo.Ref<stdgo._internal.net.internal.socktest.Socktest_status.Status>);
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
                return (null : stdgo.Ref<stdgo._internal.net.internal.socktest.Socktest_status.Status>);
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
                return (null : stdgo.Ref<stdgo._internal.net.internal.socktest.Socktest_status.Status>);
            };
        };
    }
    @:keep
    @:tdfield
    static public function set( _sw:stdgo.Ref<stdgo._internal.net.internal.socktest.Socktest_switch.Switch>, _t:stdgo._internal.net.internal.socktest.Socktest_filtertype.FilterType, _f:stdgo._internal.net.internal.socktest.Socktest_filter.Filter):Void {
        @:recv var _sw:stdgo.Ref<stdgo._internal.net.internal.socktest.Socktest_switch.Switch> = _sw;
        @:check2 (@:checkr _sw ?? throw "null pointer dereference")._once.do_(@:check2r _sw._init);
        @:check2 (@:checkr _sw ?? throw "null pointer dereference")._fmu.lock();
        (@:checkr _sw ?? throw "null pointer dereference")._fltab[_t] = _f;
        @:check2 (@:checkr _sw ?? throw "null pointer dereference")._fmu.unlock();
    }
    @:keep
    @:tdfield
    static public function sockets( _sw:stdgo.Ref<stdgo._internal.net.internal.socktest.Socktest_switch.Switch>):stdgo._internal.net.internal.socktest.Socktest_sockets.Sockets {
        @:recv var _sw:stdgo.Ref<stdgo._internal.net.internal.socktest.Socktest_switch.Switch> = _sw;
        @:check2 (@:checkr _sw ?? throw "null pointer dereference")._smu.rLock();
        var _tab = ((({
            final x = new stdgo.GoMap.GoIntMap<stdgo._internal.net.internal.socktest.Socktest_status.Status>();
            x.__defaultValue__ = () -> ({} : stdgo._internal.net.internal.socktest.Socktest_status.Status);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoInt, stdgo._internal.net.internal.socktest.Socktest_status.Status>) : stdgo._internal.net.internal.socktest.Socktest_sockets.Sockets) : stdgo._internal.net.internal.socktest.Socktest_sockets.Sockets);
        for (_i => _s in (@:checkr _sw ?? throw "null pointer dereference")._sotab) {
            _tab[_i] = _s?.__copy__();
        };
        @:check2 (@:checkr _sw ?? throw "null pointer dereference")._smu.rUnlock();
        return _tab;
    }
    @:keep
    @:tdfield
    static public function stats( _sw:stdgo.Ref<stdgo._internal.net.internal.socktest.Socktest_switch.Switch>):stdgo.Slice<stdgo._internal.net.internal.socktest.Socktest_stat.Stat> {
        @:recv var _sw:stdgo.Ref<stdgo._internal.net.internal.socktest.Socktest_switch.Switch> = _sw;
        var _st:stdgo.Slice<stdgo._internal.net.internal.socktest.Socktest_stat.Stat> = (null : stdgo.Slice<stdgo._internal.net.internal.socktest.Socktest_stat.Stat>);
        @:check2 (@:checkr _sw ?? throw "null pointer dereference")._smu.rLock();
        for (__20 => _s in (@:checkr _sw ?? throw "null pointer dereference")._stats) {
            var _ns = ((_s : stdgo._internal.net.internal.socktest.Socktest_stat.Stat)?.__copy__() : stdgo._internal.net.internal.socktest.Socktest_stat.Stat);
            _st = (_st.__append__(_ns?.__copy__()));
        };
        @:check2 (@:checkr _sw ?? throw "null pointer dereference")._smu.rUnlock();
        return _st;
    }
    @:keep
    @:tdfield
    static public function _init( _sw:stdgo.Ref<stdgo._internal.net.internal.socktest.Socktest_switch.Switch>):Void {
        @:recv var _sw:stdgo.Ref<stdgo._internal.net.internal.socktest.Socktest_switch.Switch> = _sw;
        (@:checkr _sw ?? throw "null pointer dereference")._fltab = (({
            final x = new stdgo.GoMap.GoIntMap<stdgo._internal.net.internal.socktest.Socktest_filter.Filter>();
            x.__defaultValue__ = () -> (null : stdgo._internal.net.internal.socktest.Socktest_filter.Filter);
            {};
            x;
        } : stdgo.GoMap<stdgo._internal.net.internal.socktest.Socktest_filtertype.FilterType, stdgo._internal.net.internal.socktest.Socktest_filter.Filter>) : stdgo.GoMap<stdgo._internal.net.internal.socktest.Socktest_filtertype.FilterType, stdgo._internal.net.internal.socktest.Socktest_filter.Filter>);
        (@:checkr _sw ?? throw "null pointer dereference")._sotab = (({
            final x = new stdgo.GoMap.GoIntMap<stdgo._internal.net.internal.socktest.Socktest_status.Status>();
            x.__defaultValue__ = () -> ({} : stdgo._internal.net.internal.socktest.Socktest_status.Status);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoInt, stdgo._internal.net.internal.socktest.Socktest_status.Status>) : stdgo._internal.net.internal.socktest.Socktest_sockets.Sockets);
        (@:checkr _sw ?? throw "null pointer dereference")._stats = (({
            final x = new stdgo.GoMap.GoUInt64Map<stdgo.Ref<stdgo._internal.net.internal.socktest.Socktest_stat.Stat>>();
            x.__defaultValue__ = () -> (null : stdgo.Ref<stdgo._internal.net.internal.socktest.Socktest_stat.Stat>);
            {};
            x;
        } : stdgo.GoMap<stdgo._internal.net.internal.socktest.Socktest_cookie.Cookie, stdgo.Ref<stdgo._internal.net.internal.socktest.Socktest_stat.Stat>>) : stdgo._internal.net.internal.socktest.Socktest_t_stats.T_stats);
    }
}
