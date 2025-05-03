package stdgo._internal.text.template;
function testIssue39807(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _wg:stdgo._internal.sync.Sync_waitgroup.WaitGroup = ({} : stdgo._internal.sync.Sync_waitgroup.WaitGroup);
        var __tmp__ = stdgo._internal.text.template.Template_new_.new_(("foo" : stdgo.GoString)).parse(("{{ template \"bar\" . }}" : stdgo.GoString)), _tplFoo:stdgo.Ref<stdgo._internal.text.template.Template_template.Template> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/text/template/exec_test.go#L1768"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/text/template/exec_test.go#L1769"
            _t.error(stdgo.Go.toInterface(_err));
        };
        var __tmp__ = stdgo._internal.text.template.Template_new_.new_(("bar" : stdgo.GoString)).parse(("bar" : stdgo.GoString)), _tplBar:stdgo.Ref<stdgo._internal.text.template.Template_template.Template> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/text/template/exec_test.go#L1773"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/text/template/exec_test.go#L1774"
            _t.error(stdgo.Go.toInterface(_err));
        };
        var _gofuncs = (10 : stdgo.GoInt);
        var _numTemplates = (10 : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/text/template/exec_test.go#L1780"
        {
            var _i = (1 : stdgo.GoInt);
            while ((_i <= _gofuncs : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/text/template/exec_test.go#L1781"
                _wg.add((1 : stdgo.GoInt));
//"file:///home/runner/.go/go1.21.3/src/text/template/exec_test.go#L1782"
                stdgo.Go.routine(() -> ({
                    var a = function():Void {
                        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
                        try {
                            {
                                final __f__ = _wg.done;
                                __deferstack__.unshift({ ran : false, f : () -> __f__() });
                            };
                            //"file:///home/runner/.go/go1.21.3/src/text/template/exec_test.go#L1784"
                            {
                                var _j = (0 : stdgo.GoInt);
                                while ((_j < _numTemplates : Bool)) {
                                    var __tmp__ = _tplFoo.addParseTree(_tplBar.name().__copy__(), (@:checkr _tplBar ?? throw "null pointer dereference").tree), __56:stdgo.Ref<stdgo._internal.text.template.Template_template.Template> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
//"file:///home/runner/.go/go1.21.3/src/text/template/exec_test.go#L1786"
                                    if (_err != null) {
                                        //"file:///home/runner/.go/go1.21.3/src/text/template/exec_test.go#L1787"
                                        _t.error(stdgo.Go.toInterface(_err));
                                    };
_err = _tplFoo.execute(stdgo._internal.io.Io_discard.discard, (null : stdgo.AnyInterface));
//"file:///home/runner/.go/go1.21.3/src/text/template/exec_test.go#L1790"
                                    if (_err != null) {
                                        //"file:///home/runner/.go/go1.21.3/src/text/template/exec_test.go#L1791"
                                        _t.error(stdgo.Go.toInterface(_err));
                                    };
                                    _j++;
                                };
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
                    };
                    a();
                }));
                _i++;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/text/template/exec_test.go#L1797"
        _wg.wait_();
    }
