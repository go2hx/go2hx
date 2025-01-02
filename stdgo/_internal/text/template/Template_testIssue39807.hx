package stdgo._internal.text.template;
function testIssue39807(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _wg:stdgo._internal.sync.Sync_WaitGroup.WaitGroup = ({} : stdgo._internal.sync.Sync_WaitGroup.WaitGroup);
        var __tmp__ = @:check2r stdgo._internal.text.template.Template_new_.new_(("foo" : stdgo.GoString)).parse(("{{ template \"bar\" . }}" : stdgo.GoString)), _tplFoo:stdgo.Ref<stdgo._internal.text.template.Template_Template.Template> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            @:check2r _t.error(stdgo.Go.toInterface(_err));
        };
        var __tmp__ = @:check2r stdgo._internal.text.template.Template_new_.new_(("bar" : stdgo.GoString)).parse(("bar" : stdgo.GoString)), _tplBar:stdgo.Ref<stdgo._internal.text.template.Template_Template.Template> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            @:check2r _t.error(stdgo.Go.toInterface(_err));
        };
        var _gofuncs = (10 : stdgo.GoInt);
        var _numTemplates = (10 : stdgo.GoInt);
        {
            var _i = (1 : stdgo.GoInt);
            while ((_i <= _gofuncs : Bool)) {
                @:check2 _wg.add((1 : stdgo.GoInt));
stdgo.Go.routine(() -> ({
                    var a = function():Void {
                        var __deferstack__:Array<Void -> Void> = [];
                        try {
                            {
                                final __f__ = @:check2 _wg.done;
                                __deferstack__.unshift(() -> __f__());
                            };
                            {
                                var _j = (0 : stdgo.GoInt);
                                while ((_j < _numTemplates : Bool)) {
                                    var __tmp__ = @:check2r _tplFoo.addParseTree(@:check2r _tplBar.name().__copy__(), (@:checkr _tplBar ?? throw "null pointer dereference").tree), __56:stdgo.Ref<stdgo._internal.text.template.Template_Template.Template> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
if (_err != null) {
                                        @:check2r _t.error(stdgo.Go.toInterface(_err));
                                    };
_err = @:check2r _tplFoo.execute(stdgo._internal.io.Io_discard.discard, (null : stdgo.AnyInterface));
if (_err != null) {
                                        @:check2r _t.error(stdgo.Go.toInterface(_err));
                                    };
                                    _j++;
                                };
                            };
                            {
                                for (defer in __deferstack__) {
                                    __deferstack__.remove(defer);
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
                                __deferstack__.remove(defer);
                                defer();
                            };
                            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                            return;
                        };
                    };
                    a();
                }));
                _i++;
            };
        };
        @:check2 _wg.wait_();
    }
