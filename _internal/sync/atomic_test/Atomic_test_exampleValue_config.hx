package _internal.sync.atomic_test;
import stdgo._internal.sync.atomic_.Atomic_;
import stdgo._internal.sync.atomic_.Atomic_;
function exampleValue_config():Void {
        var _config:stdgo._internal.sync.atomic_.Atomic__Value.Value = ({} : stdgo._internal.sync.atomic_.Atomic__Value.Value);
        _config.store(stdgo.Go.toInterface(_internal.sync.atomic_test.Atomic_test__loadConfig._loadConfig()));
        stdgo.Go.routine(() -> {
            var a = function():Void {
                while (true) {
                    stdgo._internal.time.Time_sleep.sleep((10000000000i64 : stdgo._internal.time.Time_Duration.Duration));
                    _config.store(stdgo.Go.toInterface(_internal.sync.atomic_test.Atomic_test__loadConfig._loadConfig()));
                };
            };
            a();
        });
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (10 : stdgo.GoInt) : Bool), _i++, {
                stdgo.Go.routine(() -> {
                    var a = function():Void {
                        for (_r => _ in _internal.sync.atomic_test.Atomic_test__requests._requests()) {
                            var _c = (_config.load() : stdgo.AnyInterface);
                            {
                                var __blank__ = _r;
                                var __blank__ = _c;
                            };
                        };
                    };
                    a();
                });
            });
        };
    }
