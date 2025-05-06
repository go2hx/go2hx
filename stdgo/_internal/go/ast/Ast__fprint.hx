package stdgo._internal.go.ast;
function _fprint(_w:stdgo._internal.io.Io_writer.Writer, _fset:stdgo.Ref<stdgo._internal.go.token.Token_fileset.FileSet>, _x:stdgo.AnyInterface, _f:stdgo._internal.go.ast.Ast_fieldfilter.FieldFilter):stdgo.Error {
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        var _err = (null : stdgo.Error);
        try {
            var _p = ({ _output : _w, _fset : _fset, _filter : _f, _ptrmap : ({
                final x = new stdgo.GoMap.GoAnyInterfaceMap<stdgo.GoInt>();
                x.__defaultValue__ = () -> (0 : stdgo.GoInt);
                {};
                cast x;
            } : stdgo.GoMap<stdgo.AnyInterface, stdgo.GoInt>), _last : (10 : stdgo.GoUInt8) } : stdgo._internal.go.ast.Ast_t_printer.T_printer);
            {
                __deferstack__.unshift({ ran : false, f : () -> ({
                    var a = function():Void {
                        //"file:///home/runner/.go/go1.21.3/src/go/ast/print.go#L55"
                        {
                            var _e = ({
                                final r = stdgo.Go.recover_exception;
                                stdgo.Go.recover_exception = null;
                                r;
                            } : stdgo.AnyInterface);
                            if (_e != null) {
                                _err = (stdgo.Go.typeAssert((_e : stdgo._internal.go.ast.Ast_t_localerror.T_localError)) : stdgo._internal.go.ast.Ast_t_localerror.T_localError)._err;
                            };
                        };
                    };
                    a();
                }) });
            };
            //"file:///home/runner/.go/go1.21.3/src/go/ast/print.go#L61"
            if (_x == null) {
                //"file:///home/runner/.go/go1.21.3/src/go/ast/print.go#L62"
                _p._printf(("nil\n" : stdgo.GoString));
                //"file:///home/runner/.go/go1.21.3/src/go/ast/print.go#L63"
                {
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return _err;
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/go/ast/print.go#L65"
            _p._print(stdgo._internal.reflect.Reflect_valueof.valueOf(_x)?.__copy__());
            //"file:///home/runner/.go/go1.21.3/src/go/ast/print.go#L66"
            _p._printf(("\n" : stdgo.GoString));
            //"file:///home/runner/.go/go1.21.3/src/go/ast/print.go#L68"
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
