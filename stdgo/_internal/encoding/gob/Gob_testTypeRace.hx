package stdgo._internal.encoding.gob;
function testTypeRace(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var _c = (new stdgo.Chan<Bool>(0, () -> false) : stdgo.Chan<Bool>);
            var _wg:stdgo._internal.sync.Sync_WaitGroup.WaitGroup = ({} : stdgo._internal.sync.Sync_WaitGroup.WaitGroup);
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < (2 : stdgo.GoInt) : Bool), _i++, {
                    _wg.add((1 : stdgo.GoInt));
                    stdgo.Go.routine(() -> {
                        var a = function(_i:stdgo.GoInt):Void {
                            var __deferstack__:Array<Void -> Void> = [];
                            try {
                                __deferstack__.unshift(() -> _wg.done());
                                var _buf:stdgo._internal.bytes.Bytes_Buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_Buffer.Buffer);
                                var _enc = stdgo._internal.encoding.gob.Gob_newEncoder.newEncoder(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>)));
                                var _dec = stdgo._internal.encoding.gob.Gob_newDecoder.newDecoder(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>)));
                                var _x:stdgo.AnyInterface = (null : stdgo.AnyInterface);
                                {
                                    final __value__ = _i;
                                    if (__value__ == ((0 : stdgo.GoInt))) {
                                        _x = stdgo.Go.toInterface((stdgo.Go.setRef((new stdgo._internal.encoding.gob.Gob_N1.N1() : stdgo._internal.encoding.gob.Gob_N1.N1)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_N1.N1>));
                                    } else if (__value__ == ((1 : stdgo.GoInt))) {
                                        _x = stdgo.Go.toInterface((stdgo.Go.setRef((new stdgo._internal.encoding.gob.Gob_N2.N2() : stdgo._internal.encoding.gob.Gob_N2.N2)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_N2.N2>));
                                    } else {
                                        _t.errorf(("bad i %d" : stdgo.GoString), stdgo.Go.toInterface(_i));
                                        {
                                            for (defer in __deferstack__) {
                                                defer();
                                            };
                                            return;
                                        };
                                    };
                                };
                                var _m = ({
                                    final x = new stdgo.GoMap.GoStringMap<stdgo.GoString>();
                                    x.__defaultValue__ = () -> ("" : stdgo.GoString);
                                    {};
                                    x;
                                } : stdgo.GoMap<stdgo.GoString, stdgo.GoString>);
                                _c.__get__();
                                {
                                    var _err = (_enc.encode(_x) : stdgo.Error);
                                    if (_err != null) {
                                        _t.error(stdgo.Go.toInterface(_err));
                                        {
                                            for (defer in __deferstack__) {
                                                defer();
                                            };
                                            return;
                                        };
                                    };
                                };
                                {
                                    var _err = (_enc.encode(_x) : stdgo.Error);
                                    if (_err != null) {
                                        _t.error(stdgo.Go.toInterface(_err));
                                        {
                                            for (defer in __deferstack__) {
                                                defer();
                                            };
                                            return;
                                        };
                                    };
                                };
                                {
                                    var _err = (_dec.decode(stdgo.Go.toInterface((stdgo.Go.setRef(_m) : stdgo.Ref<stdgo.GoMap<stdgo.GoString, stdgo.GoString>>))) : stdgo.Error);
                                    if (_err == null) {
                                        _t.error(stdgo.Go.toInterface(("decode unexpectedly succeeded" : stdgo.GoString)));
                                        {
                                            for (defer in __deferstack__) {
                                                defer();
                                            };
                                            return;
                                        };
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
                        a(_i);
                    });
                });
            };
            if (_c != null) _c.__close__();
            _wg.wait_();
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