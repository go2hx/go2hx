package _internal.bufio_test;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.bufio.Bufio;
function testDontLoopForever(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var _s = stdgo._internal.bufio.Bufio_newScanner.newScanner(stdgo.Go.asInterface(stdgo._internal.strings.Strings_newReader.newReader(("abc" : stdgo.GoString))));
            _s.split(_internal.bufio_test.Bufio_test__loopAtEOFSplit._loopAtEOFSplit);
            __deferstack__.unshift(() -> {
                var a = function():Void {
                    var __deferstack__:Array<Void -> Void> = [];
                    try {
                        var _err = ({
                            final r = stdgo.Go.recover_exception;
                            stdgo.Go.recover_exception = null;
                            r;
                        } : stdgo.AnyInterface);
                        if (_err == null) {
                            _t.fatal(stdgo.Go.toInterface(("should have panicked" : stdgo.GoString)));
                        };
                        {
                            var __tmp__ = try {
                                { _0 : (stdgo.Go.typeAssert((_err : stdgo.GoString)) : stdgo.GoString), _1 : true };
                            } catch(_) {
                                { _0 : ("" : stdgo.GoString), _1 : false };
                            }, _msg = __tmp__._0, _ok = __tmp__._1;
                            if ((!_ok || !stdgo._internal.strings.Strings_contains.contains(_msg?.__copy__(), ("empty tokens" : stdgo.GoString)) : Bool)) {
                                throw stdgo.Go.toInterface(_err);
                            };
                        };
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
                };
                a();
            });
            {
                var _count = (0 : stdgo.GoInt);
                stdgo.Go.cfor(_s.scan(), _count++, {
                    if ((_count > (1000 : stdgo.GoInt) : Bool)) {
                        _t.fatal(stdgo.Go.toInterface(("looping" : stdgo.GoString)));
                    };
                });
            };
            if (_s.err() != null) {
                _t.fatal(stdgo.Go.toInterface(("after scan:" : stdgo.GoString)), stdgo.Go.toInterface(_s.err()));
            };
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
