package stdgo._internal.encoding.binary;
function testUnexportedRead(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            var _buf:stdgo._internal.bytes.Bytes_Buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_Buffer.Buffer);
            var _u1 = ({ _a : (1 : stdgo.GoInt32) } : stdgo._internal.encoding.binary.Binary_Unexported.Unexported);
            {
                var _err = (stdgo._internal.encoding.binary.Binary_write.write(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>)), stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_littleEndian.littleEndian), stdgo.Go.toInterface((stdgo.Go.setRef(_u1) : stdgo.Ref<stdgo._internal.encoding.binary.Binary_Unexported.Unexported>))) : stdgo.Error);
                if (_err != null) {
                    @:check2r _t.fatal(stdgo.Go.toInterface(_err));
                };
            };
            {
                __deferstack__.unshift({ ran : false, f : () -> ({
                    var a = function():Void {
                        if (({
                            final r = stdgo.Go.recover_exception;
                            stdgo.Go.recover_exception = null;
                            r;
                        }) == null) {
                            @:check2r _t.fatal(stdgo.Go.toInterface(("did not panic" : stdgo.GoString)));
                        };
                    };
                    a();
                }) });
            };
            var _u2:stdgo._internal.encoding.binary.Binary_Unexported.Unexported = ({} : stdgo._internal.encoding.binary.Binary_Unexported.Unexported);
            stdgo._internal.encoding.binary.Binary_read.read(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>)), stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_littleEndian.littleEndian), stdgo.Go.toInterface((stdgo.Go.setRef(_u2) : stdgo.Ref<stdgo._internal.encoding.binary.Binary_Unexported.Unexported>)));
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
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
                if (defer.ran) continue;
                defer.ran = true;
                defer.f();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return;
        };
    }
