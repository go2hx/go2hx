package stdgo._internal.testing;
@:keep @:allow(stdgo._internal.testing.Testing.M_asInterface) class M_static_extension {
    @:keep
    @:tdfield
    static public function _stopAlarm( _m:stdgo.Ref<stdgo._internal.testing.Testing_m.M>):Void throw "M:testing._stopAlarm is not yet implemented";
    @:keep
    @:tdfield
    static public function _startAlarm( _m:stdgo.Ref<stdgo._internal.testing.Testing_m.M>):stdgo._internal.time.Time_time.Time throw "M:testing._startAlarm is not yet implemented";
    @:keep
    @:tdfield
    static public function _writeProfiles( _m:stdgo.Ref<stdgo._internal.testing.Testing_m.M>):Void throw "M:testing._writeProfiles is not yet implemented";
    @:keep
    @:tdfield
    static public function _after( _m:stdgo.Ref<stdgo._internal.testing.Testing_m.M>):Void throw "M:testing._after is not yet implemented";
    @:keep
    @:tdfield
    static public function _before( _m:stdgo.Ref<stdgo._internal.testing.Testing_m.M>):Void throw "M:testing._before is not yet implemented";
    @:keep
    @:tdfield
    static public function run( _m:stdgo.Ref<stdgo._internal.testing.Testing_m.M>):stdgo.GoInt {
        @:recv var _m:stdgo.Ref<stdgo._internal.testing.Testing_m.M> = _m;
        final chatty = true;
        final chattyTimes = false;
        stdgo._internal.internal.reflect.Reflect.useHaxePath = false;
        _m._numRun++;
        for (test in _m._tests) {
            var error = false;
            var exit = false;
            final output = new StringBuf();
            var t = new stdgo._internal.testing.Testing_t_.T_(null, null, null, output);
            final stamp = #if (sys || hxnodejs) std.Sys.time() #else haxe.Timer.stamp() #end;
            stdgo.Go.println("=== RUN  " + test.name.toString());
            try {
                test.f(t);
            } catch(e) {
                stdgo.Go.println(e.details());
                if (e.message == "__fail__") {
                    exit = true;
                };
                if (e.message != "__skip__") {
                    error = true;
                };
            };
            for (f in t._common._cleanups) {
                f();
            };
            final dstr = (#if (sys || hxnodejs) std.Sys.time() #else haxe.Timer.stamp() #end) - stamp;
            if (t.failed() || error) {
                stdgo.Go.println('\n-- FAIL: ${test.name.toString()}' + (chattyTimes ? ' ($dstr)' : ''));
                _m._exitCode = 1;
                if (exit) {
                    #if (sys || hxnodejs) Sys.exit(1) #else null #end;
                    #if hxnodejs js.Node.process.exit(1) #else null #end;
                };
            } else if (chatty) {
                if (t.skipped()) {
                    stdgo.Go.println('\n-- SKIP: ${test.name.toString()}' + (chattyTimes ? ' ($dstr)' : ''));
                } else {
                    stdgo.Go.println('\n-- PASS: ${test.name.toString()}' + (chattyTimes ? ' ($dstr)' : ''));
                };
            };
            stdgo.Go.println(output.toString());
        };
        return _m._exitCode;
    }
}
