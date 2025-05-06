package stdgo._internal.go.printer;
@:keep @:allow(stdgo._internal.go.printer.Printer.Config_asInterface) class Config_static_extension {
    @:keep
    @:tdfield
    static public function fprint( _cfg:stdgo.Ref<stdgo._internal.go.printer.Printer_config.Config>, _output:stdgo._internal.io.Io_writer.Writer, _fset:stdgo.Ref<stdgo._internal.go.token.Token_fileset.FileSet>, _node:stdgo.AnyInterface):stdgo.Error {
        @:recv var _cfg:stdgo.Ref<stdgo._internal.go.printer.Printer_config.Config> = _cfg;
        //"file:///home/runner/.go/go1.21.3/src/go/printer/printer.go#L1427"
        return _cfg._fprint(_output, _fset, _node, (({
            final x = new stdgo.GoMap.GoObjectMap<stdgo._internal.go.ast.Ast_node.Node, stdgo.GoInt>();
            x.t = new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.go.ast.Ast_node.Node", [], stdgo._internal.internal.reflect.Reflect.GoType.interfaceType(false, []), false, { get : () -> null }));
            x.__defaultValue__ = () -> (0 : stdgo.GoInt);
            {};
            cast x;
        } : stdgo.GoMap<stdgo._internal.go.ast.Ast_node.Node, stdgo.GoInt>) : stdgo.GoMap<stdgo._internal.go.ast.Ast_node.Node, stdgo.GoInt>));
    }
    @:keep
    @:tdfield
    static public function _fprint( _cfg:stdgo.Ref<stdgo._internal.go.printer.Printer_config.Config>, _output:stdgo._internal.io.Io_writer.Writer, _fset:stdgo.Ref<stdgo._internal.go.token.Token_fileset.FileSet>, _node:stdgo.AnyInterface, _nodeSizes:stdgo.GoMap<stdgo._internal.go.ast.Ast_node.Node, stdgo.GoInt>):stdgo.Error {
        @:recv var _cfg:stdgo.Ref<stdgo._internal.go.printer.Printer_config.Config> = _cfg;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        var _err = (null : stdgo.Error);
        try {
            var _p = stdgo._internal.go.printer.Printer__newprinter._newPrinter(_cfg, _fset, _nodeSizes);
            {
                final __f__ = _p._free;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            //"file:///home/runner/.go/go1.21.3/src/go/printer/printer.go#L1367"
            {
                _err = _p._printNode(_node);
                if (_err != null) {
                    //"file:///home/runner/.go/go1.21.3/src/go/printer/printer.go#L1368"
                    {
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return _err;
                    };
                };
            };
            (@:checkr _p ?? throw "null pointer dereference")._impliedSemi = false;
            //"file:///home/runner/.go/go1.21.3/src/go/printer/printer.go#L1372"
            _p._flush(({ offset : (1073741824 : stdgo.GoInt), line : (1073741824 : stdgo.GoInt) } : stdgo._internal.go.token.Token_position.Position), (1 : stdgo._internal.go.token.Token_token.Token));
            //"file:///home/runner/.go/go1.21.3/src/go/printer/printer.go#L1376"
            _p._fixGoBuildLines();
            _output = stdgo.Go.asInterface((stdgo.Go.setRef(({ _output : _output } : stdgo._internal.go.printer.Printer_t_trimmer.T_trimmer)) : stdgo.Ref<stdgo._internal.go.printer.Printer_t_trimmer.T_trimmer>));
            //"file:///home/runner/.go/go1.21.3/src/go/printer/printer.go#L1385"
            if (((@:checkr _cfg ?? throw "null pointer dereference").mode & (1u32 : stdgo._internal.go.printer.Printer_mode.Mode) : stdgo._internal.go.printer.Printer_mode.Mode) == ((0u32 : stdgo._internal.go.printer.Printer_mode.Mode))) {
                var _minwidth = ((@:checkr _cfg ?? throw "null pointer dereference").tabwidth : stdgo.GoInt);
                var _padchar = ((9 : stdgo.GoUInt8) : stdgo.GoUInt8);
                //"file:///home/runner/.go/go1.21.3/src/go/printer/printer.go#L1389"
                if (((@:checkr _cfg ?? throw "null pointer dereference").mode & (4u32 : stdgo._internal.go.printer.Printer_mode.Mode) : stdgo._internal.go.printer.Printer_mode.Mode) != ((0u32 : stdgo._internal.go.printer.Printer_mode.Mode))) {
                    _padchar = (32 : stdgo.GoUInt8);
                };
                var _twmode = (8u32 : stdgo.GoUInt);
                //"file:///home/runner/.go/go1.21.3/src/go/printer/printer.go#L1394"
                if (((@:checkr _cfg ?? throw "null pointer dereference").mode & (2u32 : stdgo._internal.go.printer.Printer_mode.Mode) : stdgo._internal.go.printer.Printer_mode.Mode) != ((0u32 : stdgo._internal.go.printer.Printer_mode.Mode))) {
                    _minwidth = (0 : stdgo.GoInt);
                    _twmode = (_twmode | ((16u32 : stdgo.GoUInt)) : stdgo.GoUInt);
                };
                _output = stdgo.Go.asInterface(stdgo._internal.text.tabwriter.Tabwriter_newwriter.newWriter(_output, _minwidth, (@:checkr _cfg ?? throw "null pointer dereference").tabwidth, (1 : stdgo.GoInt), _padchar, _twmode));
            };
            //"file:///home/runner/.go/go1.21.3/src/go/printer/printer.go#L1403"
            {
                {
                    var __tmp__ = _output.write((@:checkr _p ?? throw "null pointer dereference")._output);
                    _err = @:tmpset0 __tmp__._1;
                };
                if (_err != null) {
                    //"file:///home/runner/.go/go1.21.3/src/go/printer/printer.go#L1404"
                    {
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return _err;
                    };
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/go/printer/printer.go#L1408"
            {
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_output) : stdgo.Ref<stdgo._internal.text.tabwriter.Tabwriter_writer.Writer>)) : stdgo.Ref<stdgo._internal.text.tabwriter.Tabwriter_writer.Writer>), _1 : true };
                } catch(_) {
                    { _0 : (null : stdgo.Ref<stdgo._internal.text.tabwriter.Tabwriter_writer.Writer>), _1 : false };
                }, _tw = __tmp__._0, __48 = __tmp__._1;
                if (({
                    final value = _tw;
                    (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                })) {
                    _err = _tw.flush();
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/go/printer/printer.go#L1412"
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
}
