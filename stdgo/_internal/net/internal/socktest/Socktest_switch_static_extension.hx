package stdgo._internal.net.internal.socktest;
@:keep @:allow(stdgo._internal.net.internal.socktest.Socktest.Switch_asInterface) class Switch_static_extension {
    @:keep
    @:tdfield
    static public function getsockoptInt( _sw:stdgo.Ref<stdgo._internal.net.internal.socktest.Socktest_switch.Switch>, _s:stdgo.GoInt, _level:stdgo.GoInt, _opt:stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _sw:stdgo.Ref<stdgo._internal.net.internal.socktest.Socktest_switch.Switch> = _sw;
        var _soerr = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        var _so = _sw._sockso(_s);
        //"file:///home/runner/.go/go1.21.3/src/net/internal/socktest/sys_unix.go#L167"
        if (({
            final value = _so;
            (value == null || (value : Dynamic).__nil__);
        })) {
            //"file:///home/runner/.go/go1.21.3/src/net/internal/socktest/sys_unix.go#L168"
            return stdgo._internal.syscall.Syscall_getsockoptint.getsockoptInt(_s, _level, _opt);
        };
        //"file:///home/runner/.go/go1.21.3/src/net/internal/socktest/sys_unix.go#L170"
        (@:checkr _sw ?? throw "null pointer dereference")._fmu.rLock();
        var _f = ((@:checkr _sw ?? throw "null pointer dereference")._fltab[(4 : stdgo._internal.net.internal.socktest.Socktest_filtertype.FilterType)] ?? (null : stdgo._internal.net.internal.socktest.Socktest_filter.Filter) : stdgo._internal.net.internal.socktest.Socktest_filter.Filter);
        //"file:///home/runner/.go/go1.21.3/src/net/internal/socktest/sys_unix.go#L172"
        (@:checkr _sw ?? throw "null pointer dereference")._fmu.rUnlock();
        var __tmp__ = _f._apply(_so), _af:stdgo._internal.net.internal.socktest.Socktest_afterfilter.AfterFilter = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/net/internal/socktest/sys_unix.go#L175"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/net/internal/socktest/sys_unix.go#L176"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (-1 : stdgo.GoInt), _1 : _err };
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
        //"file:///home/runner/.go/go1.21.3/src/net/internal/socktest/sys_unix.go#L180"
        {
            _err = _af._apply(_so);
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/net/internal/socktest/sys_unix.go#L181"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (-1 : stdgo.GoInt), _1 : _err };
                    _soerr = __tmp__._0;
                    _err = __tmp__._1;
                    __tmp__;
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/net/internal/socktest/sys_unix.go#L184"
        if ((@:checkr _so ?? throw "null pointer dereference").err != null) {
            //"file:///home/runner/.go/go1.21.3/src/net/internal/socktest/sys_unix.go#L185"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (-1 : stdgo.GoInt), _1 : (@:checkr _so ?? throw "null pointer dereference").err };
                _soerr = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/net/internal/socktest/sys_unix.go#L187"
        if (((_opt == (3 : stdgo.GoInt)) && (((stdgo.Go.toInterface((@:checkr _so ?? throw "null pointer dereference").socketErr) == stdgo.Go.toInterface(stdgo.Go.asInterface((new stdgo.GoUIntptr((new stdgo.GoUIntptr(0) : stdgo._internal.syscall.Syscall_errno.Errno)) : stdgo._internal.syscall.Syscall_errno.Errno)))) || (stdgo.Go.toInterface((@:checkr _so ?? throw "null pointer dereference").socketErr) == stdgo.Go.toInterface(stdgo.Go.asInterface((new stdgo.GoUIntptr(106) : stdgo._internal.syscall.Syscall_errno.Errno)))) : Bool)) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/net/internal/socktest/sys_unix.go#L188"
            (@:checkr _sw ?? throw "null pointer dereference")._smu.lock();
            //"file:///home/runner/.go/go1.21.3/src/net/internal/socktest/sys_unix.go#L189"
            (@:checkr _sw ?? throw "null pointer dereference")._stats._getLocked((@:checkr _so ?? throw "null pointer dereference").cookie).connected++;
            //"file:///home/runner/.go/go1.21.3/src/net/internal/socktest/sys_unix.go#L190"
            (@:checkr _sw ?? throw "null pointer dereference")._smu.unlock();
        };
        //"file:///home/runner/.go/go1.21.3/src/net/internal/socktest/sys_unix.go#L192"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : _soerr, _1 : (null : stdgo.Error) };
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
            var _so = _sw._sockso(_s);
            //"file:///home/runner/.go/go1.21.3/src/net/internal/socktest/sys_unix.go#L134"
            if (({
                final value = _so;
                (value == null || (value : Dynamic).__nil__);
            })) {
                //"file:///home/runner/.go/go1.21.3/src/net/internal/socktest/sys_unix.go#L135"
                return stdgo._internal.syscall.Syscall_accept.accept(_s);
            };
            //"file:///home/runner/.go/go1.21.3/src/net/internal/socktest/sys_unix.go#L137"
            (@:checkr _sw ?? throw "null pointer dereference")._fmu.rLock();
            var _f = ((@:checkr _sw ?? throw "null pointer dereference")._fltab[(3 : stdgo._internal.net.internal.socktest.Socktest_filtertype.FilterType)] ?? (null : stdgo._internal.net.internal.socktest.Socktest_filter.Filter) : stdgo._internal.net.internal.socktest.Socktest_filter.Filter);
            //"file:///home/runner/.go/go1.21.3/src/net/internal/socktest/sys_unix.go#L139"
            (@:checkr _sw ?? throw "null pointer dereference")._fmu.rUnlock();
            var __tmp__ = _f._apply(_so), _af:stdgo._internal.net.internal.socktest.Socktest_afterfilter.AfterFilter = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///home/runner/.go/go1.21.3/src/net/internal/socktest/sys_unix.go#L142"
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/net/internal/socktest/sys_unix.go#L143"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo._internal.syscall.Syscall_sockaddr.Sockaddr; var _2 : stdgo.Error; } = { _0 : (-1 : stdgo.GoInt), _1 : (null : stdgo._internal.syscall.Syscall_sockaddr.Sockaddr), _2 : _err };
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
            //"file:///home/runner/.go/go1.21.3/src/net/internal/socktest/sys_unix.go#L146"
            {
                _err = _af._apply(_so);
                if (_err != null) {
                    //"file:///home/runner/.go/go1.21.3/src/net/internal/socktest/sys_unix.go#L147"
                    if ((@:checkr _so ?? throw "null pointer dereference").err == null) {
                        //"file:///home/runner/.go/go1.21.3/src/net/internal/socktest/sys_unix.go#L148"
                        stdgo._internal.syscall.Syscall_close.close(_ns);
                    };
                    //"file:///home/runner/.go/go1.21.3/src/net/internal/socktest/sys_unix.go#L150"
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo._internal.syscall.Syscall_sockaddr.Sockaddr; var _2 : stdgo.Error; } = { _0 : (-1 : stdgo.GoInt), _1 : (null : stdgo._internal.syscall.Syscall_sockaddr.Sockaddr), _2 : _err };
                        _ns = __tmp__._0;
                        _sa = __tmp__._1;
                        _err = __tmp__._2;
                        __tmp__;
                    };
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/net/internal/socktest/sys_unix.go#L153"
            (@:checkr _sw ?? throw "null pointer dereference")._smu.lock();
            {
                final __f__ = (@:checkr _sw ?? throw "null pointer dereference")._smu.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            //"file:///home/runner/.go/go1.21.3/src/net/internal/socktest/sys_unix.go#L155"
            if ((@:checkr _so ?? throw "null pointer dereference").err != null) {
                //"file:///home/runner/.go/go1.21.3/src/net/internal/socktest/sys_unix.go#L156"
                (@:checkr _sw ?? throw "null pointer dereference")._stats._getLocked((@:checkr _so ?? throw "null pointer dereference").cookie).acceptFailed++;
                //"file:///home/runner/.go/go1.21.3/src/net/internal/socktest/sys_unix.go#L157"
                {
                    final __ret__:{ var _0 : stdgo.GoInt; var _1 : stdgo._internal.syscall.Syscall_sockaddr.Sockaddr; var _2 : stdgo.Error; } = {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo._internal.syscall.Syscall_sockaddr.Sockaddr; var _2 : stdgo.Error; } = { _0 : (-1 : stdgo.GoInt), _1 : (null : stdgo._internal.syscall.Syscall_sockaddr.Sockaddr), _2 : (@:checkr _so ?? throw "null pointer dereference").err };
                        _ns = __tmp__._0;
                        _sa = __tmp__._1;
                        _err = __tmp__._2;
                        __tmp__;
                    };
                    _ns = __ret__._0;
                    _sa = __ret__._1;
                    _err = __ret__._2;
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return __ret__;
                };
            };
            var _nso = _sw._addLocked(_ns, (@:checkr _so ?? throw "null pointer dereference").cookie.family(), (@:checkr _so ?? throw "null pointer dereference").cookie.type(), (@:checkr _so ?? throw "null pointer dereference").cookie.protocol());
            //"file:///home/runner/.go/go1.21.3/src/net/internal/socktest/sys_unix.go#L160"
            (@:checkr _sw ?? throw "null pointer dereference")._stats._getLocked((@:checkr _nso ?? throw "null pointer dereference").cookie).accepted++;
            //"file:///home/runner/.go/go1.21.3/src/net/internal/socktest/sys_unix.go#L161"
            {
                final __ret__:{ var _0 : stdgo.GoInt; var _1 : stdgo._internal.syscall.Syscall_sockaddr.Sockaddr; var _2 : stdgo.Error; } = {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo._internal.syscall.Syscall_sockaddr.Sockaddr; var _2 : stdgo.Error; } = { _0 : _ns, _1 : _sa, _2 : (null : stdgo.Error) };
                    _ns = __tmp__._0;
                    _sa = __tmp__._1;
                    _err = __tmp__._2;
                    __tmp__;
                };
                _ns = __ret__._0;
                _sa = __ret__._1;
                _err = __ret__._2;
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
            var _so = _sw._sockso(_s);
            //"file:///home/runner/.go/go1.21.3/src/net/internal/socktest/sys_unix.go#L105"
            if (({
                final value = _so;
                (value == null || (value : Dynamic).__nil__);
            })) {
                //"file:///home/runner/.go/go1.21.3/src/net/internal/socktest/sys_unix.go#L106"
                return _err = stdgo._internal.syscall.Syscall_listen.listen(_s, _backlog);
            };
            //"file:///home/runner/.go/go1.21.3/src/net/internal/socktest/sys_unix.go#L108"
            (@:checkr _sw ?? throw "null pointer dereference")._fmu.rLock();
            var _f = ((@:checkr _sw ?? throw "null pointer dereference")._fltab[(2 : stdgo._internal.net.internal.socktest.Socktest_filtertype.FilterType)] ?? (null : stdgo._internal.net.internal.socktest.Socktest_filter.Filter) : stdgo._internal.net.internal.socktest.Socktest_filter.Filter);
            //"file:///home/runner/.go/go1.21.3/src/net/internal/socktest/sys_unix.go#L110"
            (@:checkr _sw ?? throw "null pointer dereference")._fmu.rUnlock();
            var __tmp__ = _f._apply(_so), _af:stdgo._internal.net.internal.socktest.Socktest_afterfilter.AfterFilter = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///home/runner/.go/go1.21.3/src/net/internal/socktest/sys_unix.go#L113"
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/net/internal/socktest/sys_unix.go#L114"
                return _err;
            };
            (@:checkr _so ?? throw "null pointer dereference").err = stdgo._internal.syscall.Syscall_listen.listen(_s, _backlog);
            //"file:///home/runner/.go/go1.21.3/src/net/internal/socktest/sys_unix.go#L117"
            {
                _err = _af._apply(_so);
                if (_err != null) {
                    //"file:///home/runner/.go/go1.21.3/src/net/internal/socktest/sys_unix.go#L118"
                    return _err;
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/net/internal/socktest/sys_unix.go#L121"
            (@:checkr _sw ?? throw "null pointer dereference")._smu.lock();
            {
                final __f__ = (@:checkr _sw ?? throw "null pointer dereference")._smu.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            //"file:///home/runner/.go/go1.21.3/src/net/internal/socktest/sys_unix.go#L123"
            if ((@:checkr _so ?? throw "null pointer dereference").err != null) {
                //"file:///home/runner/.go/go1.21.3/src/net/internal/socktest/sys_unix.go#L124"
                (@:checkr _sw ?? throw "null pointer dereference")._stats._getLocked((@:checkr _so ?? throw "null pointer dereference").cookie).listenFailed++;
                //"file:///home/runner/.go/go1.21.3/src/net/internal/socktest/sys_unix.go#L125"
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
            //"file:///home/runner/.go/go1.21.3/src/net/internal/socktest/sys_unix.go#L127"
            (@:checkr _sw ?? throw "null pointer dereference")._stats._getLocked((@:checkr _so ?? throw "null pointer dereference").cookie).listened++;
            //"file:///home/runner/.go/go1.21.3/src/net/internal/socktest/sys_unix.go#L128"
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
    static public function connect( _sw:stdgo.Ref<stdgo._internal.net.internal.socktest.Socktest_switch.Switch>, _s:stdgo.GoInt, _sa:stdgo._internal.syscall.Syscall_sockaddr.Sockaddr):stdgo.Error {
        @:recv var _sw:stdgo.Ref<stdgo._internal.net.internal.socktest.Socktest_switch.Switch> = _sw;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        var _err = (null : stdgo.Error);
        try {
            var _so = _sw._sockso(_s);
            //"file:///home/runner/.go/go1.21.3/src/net/internal/socktest/sys_unix.go#L76"
            if (({
                final value = _so;
                (value == null || (value : Dynamic).__nil__);
            })) {
                //"file:///home/runner/.go/go1.21.3/src/net/internal/socktest/sys_unix.go#L77"
                return _err = stdgo._internal.syscall.Syscall_connect.connect(_s, _sa);
            };
            //"file:///home/runner/.go/go1.21.3/src/net/internal/socktest/sys_unix.go#L79"
            (@:checkr _sw ?? throw "null pointer dereference")._fmu.rLock();
            var _f = ((@:checkr _sw ?? throw "null pointer dereference")._fltab[(1 : stdgo._internal.net.internal.socktest.Socktest_filtertype.FilterType)] ?? (null : stdgo._internal.net.internal.socktest.Socktest_filter.Filter) : stdgo._internal.net.internal.socktest.Socktest_filter.Filter);
            //"file:///home/runner/.go/go1.21.3/src/net/internal/socktest/sys_unix.go#L81"
            (@:checkr _sw ?? throw "null pointer dereference")._fmu.rUnlock();
            var __tmp__ = _f._apply(_so), _af:stdgo._internal.net.internal.socktest.Socktest_afterfilter.AfterFilter = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///home/runner/.go/go1.21.3/src/net/internal/socktest/sys_unix.go#L84"
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/net/internal/socktest/sys_unix.go#L85"
                return _err;
            };
            (@:checkr _so ?? throw "null pointer dereference").err = stdgo._internal.syscall.Syscall_connect.connect(_s, _sa);
            //"file:///home/runner/.go/go1.21.3/src/net/internal/socktest/sys_unix.go#L88"
            {
                _err = _af._apply(_so);
                if (_err != null) {
                    //"file:///home/runner/.go/go1.21.3/src/net/internal/socktest/sys_unix.go#L89"
                    return _err;
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/net/internal/socktest/sys_unix.go#L92"
            (@:checkr _sw ?? throw "null pointer dereference")._smu.lock();
            {
                final __f__ = (@:checkr _sw ?? throw "null pointer dereference")._smu.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            //"file:///home/runner/.go/go1.21.3/src/net/internal/socktest/sys_unix.go#L94"
            if ((@:checkr _so ?? throw "null pointer dereference").err != null) {
                //"file:///home/runner/.go/go1.21.3/src/net/internal/socktest/sys_unix.go#L95"
                (@:checkr _sw ?? throw "null pointer dereference")._stats._getLocked((@:checkr _so ?? throw "null pointer dereference").cookie).connectFailed++;
                //"file:///home/runner/.go/go1.21.3/src/net/internal/socktest/sys_unix.go#L96"
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
            //"file:///home/runner/.go/go1.21.3/src/net/internal/socktest/sys_unix.go#L98"
            (@:checkr _sw ?? throw "null pointer dereference")._stats._getLocked((@:checkr _so ?? throw "null pointer dereference").cookie).connected++;
            //"file:///home/runner/.go/go1.21.3/src/net/internal/socktest/sys_unix.go#L99"
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
    static public function close( _sw:stdgo.Ref<stdgo._internal.net.internal.socktest.Socktest_switch.Switch>, _s:stdgo.GoInt):stdgo.Error {
        @:recv var _sw:stdgo.Ref<stdgo._internal.net.internal.socktest.Socktest_switch.Switch> = _sw;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        var _err = (null : stdgo.Error);
        try {
            var _so = _sw._sockso(_s);
            //"file:///home/runner/.go/go1.21.3/src/net/internal/socktest/sys_unix.go#L46"
            if (({
                final value = _so;
                (value == null || (value : Dynamic).__nil__);
            })) {
                //"file:///home/runner/.go/go1.21.3/src/net/internal/socktest/sys_unix.go#L47"
                return _err = stdgo._internal.syscall.Syscall_close.close(_s);
            };
            //"file:///home/runner/.go/go1.21.3/src/net/internal/socktest/sys_unix.go#L49"
            (@:checkr _sw ?? throw "null pointer dereference")._fmu.rLock();
            var _f = ((@:checkr _sw ?? throw "null pointer dereference")._fltab[(5 : stdgo._internal.net.internal.socktest.Socktest_filtertype.FilterType)] ?? (null : stdgo._internal.net.internal.socktest.Socktest_filter.Filter) : stdgo._internal.net.internal.socktest.Socktest_filter.Filter);
            //"file:///home/runner/.go/go1.21.3/src/net/internal/socktest/sys_unix.go#L51"
            (@:checkr _sw ?? throw "null pointer dereference")._fmu.rUnlock();
            var __tmp__ = _f._apply(_so), _af:stdgo._internal.net.internal.socktest.Socktest_afterfilter.AfterFilter = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///home/runner/.go/go1.21.3/src/net/internal/socktest/sys_unix.go#L54"
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/net/internal/socktest/sys_unix.go#L55"
                return _err;
            };
            (@:checkr _so ?? throw "null pointer dereference").err = stdgo._internal.syscall.Syscall_close.close(_s);
            //"file:///home/runner/.go/go1.21.3/src/net/internal/socktest/sys_unix.go#L58"
            {
                _err = _af._apply(_so);
                if (_err != null) {
                    //"file:///home/runner/.go/go1.21.3/src/net/internal/socktest/sys_unix.go#L59"
                    return _err;
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/net/internal/socktest/sys_unix.go#L62"
            (@:checkr _sw ?? throw "null pointer dereference")._smu.lock();
            {
                final __f__ = (@:checkr _sw ?? throw "null pointer dereference")._smu.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            //"file:///home/runner/.go/go1.21.3/src/net/internal/socktest/sys_unix.go#L64"
            if ((@:checkr _so ?? throw "null pointer dereference").err != null) {
                //"file:///home/runner/.go/go1.21.3/src/net/internal/socktest/sys_unix.go#L65"
                (@:checkr _sw ?? throw "null pointer dereference")._stats._getLocked((@:checkr _so ?? throw "null pointer dereference").cookie).closeFailed++;
                //"file:///home/runner/.go/go1.21.3/src/net/internal/socktest/sys_unix.go#L66"
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
            //"file:///home/runner/.go/go1.21.3/src/net/internal/socktest/sys_unix.go#L68"
            if ((@:checkr _sw ?? throw "null pointer dereference")._sotab != null) (@:checkr _sw ?? throw "null pointer dereference")._sotab.__remove__(_s);
            //"file:///home/runner/.go/go1.21.3/src/net/internal/socktest/sys_unix.go#L69"
            (@:checkr _sw ?? throw "null pointer dereference")._stats._getLocked((@:checkr _so ?? throw "null pointer dereference").cookie).closed++;
            //"file:///home/runner/.go/go1.21.3/src/net/internal/socktest/sys_unix.go#L70"
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
    static public function socket( _sw:stdgo.Ref<stdgo._internal.net.internal.socktest.Socktest_switch.Switch>, _family:stdgo.GoInt, _sotype:stdgo.GoInt, _proto:stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _sw:stdgo.Ref<stdgo._internal.net.internal.socktest.Socktest_switch.Switch> = _sw;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        var _s = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        try {
            //"file:///home/runner/.go/go1.21.3/src/net/internal/socktest/sys_unix.go#L13"
            (@:checkr _sw ?? throw "null pointer dereference")._once.do_(_sw._init);
            var _so = (stdgo.Go.setRef(({ cookie : stdgo._internal.net.internal.socktest.Socktest__cookie._cookie(_family, _sotype, _proto) } : stdgo._internal.net.internal.socktest.Socktest_status.Status)) : stdgo.Ref<stdgo._internal.net.internal.socktest.Socktest_status.Status>);
            //"file:///home/runner/.go/go1.21.3/src/net/internal/socktest/sys_unix.go#L16"
            (@:checkr _sw ?? throw "null pointer dereference")._fmu.rLock();
            var _f = ((@:checkr _sw ?? throw "null pointer dereference")._fltab[(0 : stdgo._internal.net.internal.socktest.Socktest_filtertype.FilterType)] ?? (null : stdgo._internal.net.internal.socktest.Socktest_filter.Filter) : stdgo._internal.net.internal.socktest.Socktest_filter.Filter);
            //"file:///home/runner/.go/go1.21.3/src/net/internal/socktest/sys_unix.go#L18"
            (@:checkr _sw ?? throw "null pointer dereference")._fmu.rUnlock();
            var __tmp__ = _f._apply(_so), _af:stdgo._internal.net.internal.socktest.Socktest_afterfilter.AfterFilter = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///home/runner/.go/go1.21.3/src/net/internal/socktest/sys_unix.go#L21"
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/net/internal/socktest/sys_unix.go#L22"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (-1 : stdgo.GoInt), _1 : _err };
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
            //"file:///home/runner/.go/go1.21.3/src/net/internal/socktest/sys_unix.go#L25"
            {
                _err = _af._apply(_so);
                if (_err != null) {
                    //"file:///home/runner/.go/go1.21.3/src/net/internal/socktest/sys_unix.go#L26"
                    if ((@:checkr _so ?? throw "null pointer dereference").err == null) {
                        //"file:///home/runner/.go/go1.21.3/src/net/internal/socktest/sys_unix.go#L27"
                        stdgo._internal.syscall.Syscall_close.close(_s);
                    };
                    //"file:///home/runner/.go/go1.21.3/src/net/internal/socktest/sys_unix.go#L29"
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (-1 : stdgo.GoInt), _1 : _err };
                        _s = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/net/internal/socktest/sys_unix.go#L32"
            (@:checkr _sw ?? throw "null pointer dereference")._smu.lock();
            {
                final __f__ = (@:checkr _sw ?? throw "null pointer dereference")._smu.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            //"file:///home/runner/.go/go1.21.3/src/net/internal/socktest/sys_unix.go#L34"
            if ((@:checkr _so ?? throw "null pointer dereference").err != null) {
                //"file:///home/runner/.go/go1.21.3/src/net/internal/socktest/sys_unix.go#L35"
                (@:checkr _sw ?? throw "null pointer dereference")._stats._getLocked((@:checkr _so ?? throw "null pointer dereference").cookie).openFailed++;
                //"file:///home/runner/.go/go1.21.3/src/net/internal/socktest/sys_unix.go#L36"
                {
                    final __ret__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (-1 : stdgo.GoInt), _1 : (@:checkr _so ?? throw "null pointer dereference").err };
                        _s = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _s = __ret__._0;
                    _err = __ret__._1;
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return __ret__;
                };
            };
            var _nso = _sw._addLocked(_s, _family, _sotype, _proto);
            //"file:///home/runner/.go/go1.21.3/src/net/internal/socktest/sys_unix.go#L39"
            (@:checkr _sw ?? throw "null pointer dereference")._stats._getLocked((@:checkr _nso ?? throw "null pointer dereference").cookie).opened++;
            //"file:///home/runner/.go/go1.21.3/src/net/internal/socktest/sys_unix.go#L40"
            {
                final __ret__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : _s, _1 : (null : stdgo.Error) };
                    _s = __tmp__._0;
                    _err = __tmp__._1;
                    __tmp__;
                };
                _s = __ret__._0;
                _err = __ret__._1;
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
                return { _0 : _s, _1 : _err };
            };
        };
    }
    @:keep
    @:tdfield
    static public function _addLocked( _sw:stdgo.Ref<stdgo._internal.net.internal.socktest.Socktest_switch.Switch>, _s:stdgo.GoInt, _family:stdgo.GoInt, _sotype:stdgo.GoInt, _proto:stdgo.GoInt):stdgo.Ref<stdgo._internal.net.internal.socktest.Socktest_status.Status> {
        @:recv var _sw:stdgo.Ref<stdgo._internal.net.internal.socktest.Socktest_switch.Switch> = _sw;
        //"file:///home/runner/.go/go1.21.3/src/net/internal/socktest/switch_unix.go#L25"
        (@:checkr _sw ?? throw "null pointer dereference")._once.do_(_sw._init);
        var _so = ({ cookie : stdgo._internal.net.internal.socktest.Socktest__cookie._cookie(_family, _sotype, _proto) } : stdgo._internal.net.internal.socktest.Socktest_status.Status);
        (@:checkr _sw ?? throw "null pointer dereference")._sotab[_s] = _so?.__copy__();
        //"file:///home/runner/.go/go1.21.3/src/net/internal/socktest/switch_unix.go#L28"
        return (stdgo.Go.setRef(_so) : stdgo.Ref<stdgo._internal.net.internal.socktest.Socktest_status.Status>);
    }
    @:keep
    @:tdfield
    static public function _sockso( _sw:stdgo.Ref<stdgo._internal.net.internal.socktest.Socktest_switch.Switch>, _s:stdgo.GoInt):stdgo.Ref<stdgo._internal.net.internal.socktest.Socktest_status.Status> {
        @:recv var _sw:stdgo.Ref<stdgo._internal.net.internal.socktest.Socktest_switch.Switch> = _sw;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            //"file:///home/runner/.go/go1.21.3/src/net/internal/socktest/switch_unix.go#L13"
            (@:checkr _sw ?? throw "null pointer dereference")._smu.rLock();
            {
                final __f__ = (@:checkr _sw ?? throw "null pointer dereference")._smu.rUnlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            var __tmp__ = ((@:checkr _sw ?? throw "null pointer dereference")._sotab != null && (@:checkr _sw ?? throw "null pointer dereference")._sotab.__exists__(_s) ? { _0 : (@:checkr _sw ?? throw "null pointer dereference")._sotab[_s], _1 : true } : { _0 : ({} : stdgo._internal.net.internal.socktest.Socktest_status.Status), _1 : false }), _so:stdgo._internal.net.internal.socktest.Socktest_status.Status = __tmp__._0, _ok:Bool = __tmp__._1;
            //"file:///home/runner/.go/go1.21.3/src/net/internal/socktest/switch_unix.go#L16"
            if (!_ok) {
                //"file:///home/runner/.go/go1.21.3/src/net/internal/socktest/switch_unix.go#L17"
                {
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return null;
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/net/internal/socktest/switch_unix.go#L19"
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
                return (null : stdgo.Ref<stdgo._internal.net.internal.socktest.Socktest_status.Status>);
            };
        };
    }
    @:keep
    @:tdfield
    static public function set( _sw:stdgo.Ref<stdgo._internal.net.internal.socktest.Socktest_switch.Switch>, _t:stdgo._internal.net.internal.socktest.Socktest_filtertype.FilterType, _f:stdgo._internal.net.internal.socktest.Socktest_filter.Filter):Void {
        @:recv var _sw:stdgo.Ref<stdgo._internal.net.internal.socktest.Socktest_switch.Switch> = _sw;
        //"file:///home/runner/.go/go1.21.3/src/net/internal/socktest/switch.go#L165"
        (@:checkr _sw ?? throw "null pointer dereference")._once.do_(_sw._init);
        //"file:///home/runner/.go/go1.21.3/src/net/internal/socktest/switch.go#L166"
        (@:checkr _sw ?? throw "null pointer dereference")._fmu.lock();
        (@:checkr _sw ?? throw "null pointer dereference")._fltab[_t] = _f;
        //"file:///home/runner/.go/go1.21.3/src/net/internal/socktest/switch.go#L168"
        (@:checkr _sw ?? throw "null pointer dereference")._fmu.unlock();
    }
    @:keep
    @:tdfield
    static public function sockets( _sw:stdgo.Ref<stdgo._internal.net.internal.socktest.Socktest_switch.Switch>):stdgo._internal.net.internal.socktest.Socktest_sockets.Sockets {
        @:recv var _sw:stdgo.Ref<stdgo._internal.net.internal.socktest.Socktest_switch.Switch> = _sw;
        //"file:///home/runner/.go/go1.21.3/src/net/internal/socktest/switch.go#L46"
        (@:checkr _sw ?? throw "null pointer dereference")._smu.rLock();
        var _tab = ((({
            final x = new stdgo.GoMap.GoIntMap<stdgo._internal.net.internal.socktest.Socktest_status.Status>();
            x.__defaultValue__ = () -> ({} : stdgo._internal.net.internal.socktest.Socktest_status.Status);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoInt, stdgo._internal.net.internal.socktest.Socktest_status.Status>) : stdgo._internal.net.internal.socktest.Socktest_sockets.Sockets) : stdgo._internal.net.internal.socktest.Socktest_sockets.Sockets);
        //"file:///home/runner/.go/go1.21.3/src/net/internal/socktest/switch.go#L48"
        for (_i => _s in (@:checkr _sw ?? throw "null pointer dereference")._sotab) {
            _tab[_i] = _s?.__copy__();
        };
        //"file:///home/runner/.go/go1.21.3/src/net/internal/socktest/switch.go#L51"
        (@:checkr _sw ?? throw "null pointer dereference")._smu.rUnlock();
        //"file:///home/runner/.go/go1.21.3/src/net/internal/socktest/switch.go#L52"
        return _tab;
    }
    @:keep
    @:tdfield
    static public function stats( _sw:stdgo.Ref<stdgo._internal.net.internal.socktest.Socktest_switch.Switch>):stdgo.Slice<stdgo._internal.net.internal.socktest.Socktest_stat.Stat> {
        @:recv var _sw:stdgo.Ref<stdgo._internal.net.internal.socktest.Socktest_switch.Switch> = _sw;
        var _st:stdgo.Slice<stdgo._internal.net.internal.socktest.Socktest_stat.Stat> = (null : stdgo.Slice<stdgo._internal.net.internal.socktest.Socktest_stat.Stat>);
        //"file:///home/runner/.go/go1.21.3/src/net/internal/socktest/switch.go#L35"
        (@:checkr _sw ?? throw "null pointer dereference")._smu.rLock();
        //"file:///home/runner/.go/go1.21.3/src/net/internal/socktest/switch.go#L36"
        for (__20 => _s in (@:checkr _sw ?? throw "null pointer dereference")._stats) {
            var _ns = ((_s : stdgo._internal.net.internal.socktest.Socktest_stat.Stat)?.__copy__() : stdgo._internal.net.internal.socktest.Socktest_stat.Stat);
            _st = (_st.__append__(_ns?.__copy__()) : stdgo.Slice<stdgo._internal.net.internal.socktest.Socktest_stat.Stat>);
        };
        //"file:///home/runner/.go/go1.21.3/src/net/internal/socktest/switch.go#L40"
        (@:checkr _sw ?? throw "null pointer dereference")._smu.rUnlock();
        //"file:///home/runner/.go/go1.21.3/src/net/internal/socktest/switch.go#L41"
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
