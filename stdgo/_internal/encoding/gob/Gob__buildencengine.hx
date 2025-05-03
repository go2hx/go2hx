package stdgo._internal.encoding.gob;
function _buildEncEngine(_info:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_typeinfo.T_typeInfo>, _ut:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_usertypeinfo.T_userTypeInfo>, _building:stdgo.GoMap<stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_typeinfo.T_typeInfo>, Bool>):stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_encengine.T_encEngine> {
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encode.go#L638"
            if (((_building != null) && (_building[_info] ?? false) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encode.go#L639"
                return null;
            };
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encode.go#L641"
            (@:checkr _info ?? throw "null pointer dereference")._encInit.lock();
            {
                final __f__ = (@:checkr _info ?? throw "null pointer dereference")._encInit.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            var _enc = (@:checkr _info ?? throw "null pointer dereference")._encoder.load();
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encode.go#L644"
            if (({
                final value = _enc;
                (value == null || (value : Dynamic).__nil__);
            })) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encode.go#L645"
                if (_building == null) {
                    _building = ({
                        final x = new stdgo.GoMap.GoRefMap<stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_typeinfo.T_typeInfo>, Bool>();
                        {};
                        cast x;
                    } : stdgo.GoMap<stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_typeinfo.T_typeInfo>, Bool>);
                };
                _building[_info] = true;
                _enc = stdgo._internal.encoding.gob.Gob__compileenc._compileEnc(_ut, _building);
                //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encode.go#L650"
                (@:checkr _info ?? throw "null pointer dereference")._encoder.store(_enc);
            };
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encode.go#L652"
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                return _enc;
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
                return (null : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_encengine.T_encEngine>);
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
                return (null : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_encengine.T_encEngine>);
            };
        };
    }
