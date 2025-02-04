package stdgo._internal.encoding.gob;
function testIgnoreDepthLimit(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            var _oldNestingDepth = (stdgo._internal.encoding.gob.Gob__maxignorenestingdepth._maxIgnoreNestingDepth : stdgo.GoInt);
            stdgo._internal.encoding.gob.Gob__maxignorenestingdepth._maxIgnoreNestingDepth = (100 : stdgo.GoInt);
            {
                __deferstack__.unshift({ ran : false, f : () -> ({
                    var a = function():Void {
                        stdgo._internal.encoding.gob.Gob__maxignorenestingdepth._maxIgnoreNestingDepth = _oldNestingDepth;
                    };
                    a();
                }) });
            };
            var _b = (stdgo.Go.setRef(({} : stdgo._internal.bytes.Bytes_buffer.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>);
            var _enc = stdgo._internal.encoding.gob.Gob_newencoder.newEncoder(stdgo.Go.asInterface(_b));
            var _typ = (stdgo._internal.reflect.Reflect_typeof.typeOf(stdgo.Go.toInterface((0 : stdgo.GoInt))) : stdgo._internal.reflect.Reflect_type_.Type_);
            var _nested = (stdgo._internal.reflect.Reflect_arrayof.arrayOf((1 : stdgo.GoInt), _typ) : stdgo._internal.reflect.Reflect_type_.Type_);
            {
                var _i = (0 : stdgo.GoInt);
                while ((_i < (100 : stdgo.GoInt) : Bool)) {
                    _nested = stdgo._internal.reflect.Reflect_arrayof.arrayOf((1 : stdgo.GoInt), _nested);
                    _i++;
                };
            };
            var _badStruct = (stdgo._internal.reflect.Reflect_new_.new_(stdgo._internal.reflect.Reflect_structof.structOf((new stdgo.Slice<stdgo._internal.reflect.Reflect_structfield.StructField>(1, 1, ...[({ name : ("F" : stdgo.GoString), type : _nested } : stdgo._internal.reflect.Reflect_structfield.StructField)].concat([for (i in 1 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.reflect.Reflect_structfield.StructField)])) : stdgo.Slice<stdgo._internal.reflect.Reflect_structfield.StructField>)))?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
            @:check2r _enc.encode(_badStruct.interface_());
            var _dec = stdgo._internal.encoding.gob.Gob_newdecoder.newDecoder(stdgo.Go.asInterface(_b));
            var _output:stdgo._internal.encoding.gob.Gob_t__struct_4.T__struct_4 = ({ hello : (0 : stdgo.GoInt) } : stdgo._internal.encoding.gob.Gob_t__struct_4.T__struct_4);
            var _expectedErr = (("invalid nesting depth" : stdgo.GoString) : stdgo.GoString);
            {
                var _err = (@:check2r _dec.decode(stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_output) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t__struct_4.T__struct_4>)))) : stdgo.Error);
                if (((_err == null) || (_err.error() != _expectedErr) : Bool)) {
                    @:check2r _t.errorf(("Decode didn\'t fail with depth limit of 100: want %q, got %q" : stdgo.GoString), stdgo.Go.toInterface(_expectedErr), stdgo.Go.toInterface(_err));
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
                return;
            };
        };
    }
