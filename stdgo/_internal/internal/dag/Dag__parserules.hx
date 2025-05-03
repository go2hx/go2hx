package stdgo._internal.internal.dag;
function _parseRules(_rules:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo._internal.internal.dag.Dag_t_rule.T_rule>; var _1 : stdgo.Error; } {
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        var _out = (null : stdgo.Slice<stdgo._internal.internal.dag.Dag_t_rule.T_rule>), _err = (null : stdgo.Error);
        try {
            {
                __deferstack__.unshift({ ran : false, f : () -> ({
                    var a = function():Void {
                        var _e = ({
                            final r = stdgo.Go.recover_exception;
                            stdgo.Go.recover_exception = null;
                            r;
                        } : stdgo.AnyInterface);
                        //"file:///home/runner/.go/go1.21.3/src/internal/dag/parse.go#L195"
                        {
                            final __type__ = _e;
                            if (__type__ == null) {
                                var _e:stdgo.AnyInterface = __type__ == null ? (null : stdgo.AnyInterface) : __type__.__underlying__();
                                //"file:///home/runner/.go/go1.21.3/src/internal/dag/parse.go#L197"
                                return;
                            } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.internal.dag.Dag_t_syntaxerror.T_syntaxError))) {
                                var _e:stdgo._internal.internal.dag.Dag_t_syntaxerror.T_syntaxError = __type__ == null ? (("" : stdgo.GoString) : stdgo._internal.internal.dag.Dag_t_syntaxerror.T_syntaxError) : __type__.__underlying__() == null ? (("" : stdgo.GoString) : stdgo._internal.internal.dag.Dag_t_syntaxerror.T_syntaxError) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (("" : stdgo.GoString) : stdgo._internal.internal.dag.Dag_t_syntaxerror.T_syntaxError) : __type__.__underlying__().value);
                                _err = stdgo.Go.asInterface(_e);
                            } else {
                                var _e:stdgo.AnyInterface = __type__?.__underlying__();
                                //"file:///home/runner/.go/go1.21.3/src/internal/dag/parse.go#L201"
                                throw stdgo.Go.toInterface(_e);
                            };
                        };
                    };
                    a();
                }) });
            };
            var _p = (stdgo.Go.setRef(({ _lineno : (1 : stdgo.GoInt), _text : _rules?.__copy__() } : stdgo._internal.internal.dag.Dag_t_rulesparser.T_rulesParser)) : stdgo.Ref<stdgo._internal.internal.dag.Dag_t_rulesparser.T_rulesParser>);
            var _prev:stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
            var _op:stdgo.GoString = ("" : stdgo.GoString);
            //"file:///home/runner/.go/go1.21.3/src/internal/dag/parse.go#L208"
            while (true) {
                var __tmp__ = _p._nextList(), _list:stdgo.Slice<stdgo.GoString> = __tmp__._0, _tok:stdgo.GoString = __tmp__._1;
                //"file:///home/runner/.go/go1.21.3/src/internal/dag/parse.go#L210"
                if (_tok == ((stdgo.Go.str() : stdgo.GoString))) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/dag/parse.go#L211"
                    if (_prev == null) {
                        //"file:///home/runner/.go/go1.21.3/src/internal/dag/parse.go#L212"
                        break;
                    };
                    //"file:///home/runner/.go/go1.21.3/src/internal/dag/parse.go#L214"
                    _p._syntaxError(("unexpected EOF" : stdgo.GoString));
                };
                //"file:///home/runner/.go/go1.21.3/src/internal/dag/parse.go#L216"
                if (_prev != null) {
                    _out = (_out.__append__((new stdgo._internal.internal.dag.Dag_t_rule.T_rule(_prev, _op?.__copy__(), _list) : stdgo._internal.internal.dag.Dag_t_rule.T_rule)) : stdgo.Slice<stdgo._internal.internal.dag.Dag_t_rule.T_rule>);
                };
                _prev = _list;
                //"file:///home/runner/.go/go1.21.3/src/internal/dag/parse.go#L220"
                if (_tok == ((";" : stdgo.GoString))) {
                    _prev = (null : stdgo.Slice<stdgo.GoString>);
                    _op = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                    //"file:///home/runner/.go/go1.21.3/src/internal/dag/parse.go#L223"
                    continue;
                };
                //"file:///home/runner/.go/go1.21.3/src/internal/dag/parse.go#L225"
                if (((_tok != ("<" : stdgo.GoString)) && (_tok != ("!<" : stdgo.GoString)) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/dag/parse.go#L226"
                    _p._syntaxError(("missing <" : stdgo.GoString));
                };
                _op = _tok?.__copy__();
            };
            //"file:///home/runner/.go/go1.21.3/src/internal/dag/parse.go#L231"
            {
                final __ret__:{ var _0 : stdgo.Slice<stdgo._internal.internal.dag.Dag_t_rule.T_rule>; var _1 : stdgo.Error; } = {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Slice<stdgo._internal.internal.dag.Dag_t_rule.T_rule>; var _1 : stdgo.Error; } = { _0 : _out, _1 : _err };
                    _out = __tmp__._0;
                    _err = __tmp__._1;
                    __tmp__;
                };
                _out = __ret__._0;
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
                return { _0 : _out, _1 : _err };
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
                return { _0 : _out, _1 : _err };
            };
        };
    }
