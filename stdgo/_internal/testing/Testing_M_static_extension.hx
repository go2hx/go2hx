package stdgo._internal.testing;
@:keep @:allow(stdgo._internal.testing.Testing.M_asInterface) class M_static_extension {
    @:keep
    @:tdfield
    static public function _stopAlarm( _m:stdgo.Ref<stdgo._internal.testing.Testing_M.M>):Void throw "M:testing._stopAlarm is not yet implemented";
    @:keep
    @:tdfield
    static public function _startAlarm( _m:stdgo.Ref<stdgo._internal.testing.Testing_M.M>):stdgo._internal.time.Time_Time.Time throw "M:testing._startAlarm is not yet implemented";
    @:keep
    @:tdfield
    static public function _writeProfiles( _m:stdgo.Ref<stdgo._internal.testing.Testing_M.M>):Void throw "M:testing._writeProfiles is not yet implemented";
    @:keep
    @:tdfield
    static public function _after( _m:stdgo.Ref<stdgo._internal.testing.Testing_M.M>):Void throw "M:testing._after is not yet implemented";
    @:keep
    @:tdfield
    static public function _before( _m:stdgo.Ref<stdgo._internal.testing.Testing_M.M>):Void throw "M:testing._before is not yet implemented";
    @:keep
    @:tdfield
    static public function run( _m:stdgo.Ref<stdgo._internal.testing.Testing_M.M>):stdgo.GoInt {
        @:recv var _m:stdgo.Ref<stdgo._internal.testing.Testing_M.M> = _m;
        final chatty = true;
        stdgo._internal.internal.reflect.Reflect.useHaxePath = false;
        _m._numRun++;
        for (test in _m._tests) {
            var error = false;
            final output = new StringBuf();
            var t = new stdgo._internal.testing.Testing_T_.T_(null, null, null, output);
            final stamp = Sys.time();
            Sys.println("=== RUN  " + test.name.toString());
            try {
                test.f(t);
            } catch(e) {
                if (e.message != "__fail__") {
                    Sys.println(e.details());
                };
                Sys.exit(1);
                error = true;
            };
            final dstr = Sys.time() - stamp;
            final format = "--- %s: %s (%s)\n";
            if (t.failed() || error) {
                Sys.println('-- FAIL: ${test.name.toString()} ($dstr)');
                _m._exitCode = 1;
            } else if (chatty) {
                if (t.skipped()) {
                    Sys.println('-- SKIP: ${test.name.toString()} ($dstr)');
                } else {
                    Sys.println('-- PASS: ${test.name.toString()} ($dstr)');
                };
            };
            Sys.println(output.toString());
        };
        return _m._exitCode;
    }
}
