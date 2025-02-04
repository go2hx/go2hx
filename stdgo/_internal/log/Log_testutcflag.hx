package stdgo._internal.log;
function testUTCFlag(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _b:stdgo._internal.strings.Strings_builder.Builder = ({} : stdgo._internal.strings.Strings_builder.Builder);
        var _l = stdgo._internal.log.Log_new_.new_(stdgo.Go.asInterface((stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.strings.Strings_builder.Builder>)), ("Test:" : stdgo.GoString), (3 : stdgo.GoInt));
        @:check2r _l.setFlags((35 : stdgo.GoInt));
        var _now = (stdgo._internal.time.Time_now.now().uTC()?.__copy__() : stdgo._internal.time.Time_time.Time);
        @:check2r _l.print(stdgo.Go.toInterface(("hello" : stdgo.GoString)));
        var _want = (stdgo._internal.fmt.Fmt_sprintf.sprintf(("Test:%d/%.2d/%.2d %.2d:%.2d:%.2d hello\n" : stdgo.GoString), stdgo.Go.toInterface(_now.year()), stdgo.Go.toInterface(stdgo.Go.asInterface(_now.month())), stdgo.Go.toInterface(_now.day()), stdgo.Go.toInterface(_now.hour()), stdgo.Go.toInterface(_now.minute()), stdgo.Go.toInterface(_now.second()))?.__copy__() : stdgo.GoString);
        var _got = ((@:check2 _b.string() : stdgo.GoString)?.__copy__() : stdgo.GoString);
        if (_got == (_want)) {
            return;
        };
        _now = _now.add((1000000000i64 : stdgo._internal.time.Time_duration.Duration))?.__copy__();
        _want = stdgo._internal.fmt.Fmt_sprintf.sprintf(("Test:%d/%.2d/%.2d %.2d:%.2d:%.2d hello\n" : stdgo.GoString), stdgo.Go.toInterface(_now.year()), stdgo.Go.toInterface(stdgo.Go.asInterface(_now.month())), stdgo.Go.toInterface(_now.day()), stdgo.Go.toInterface(_now.hour()), stdgo.Go.toInterface(_now.minute()), stdgo.Go.toInterface(_now.second()))?.__copy__();
        if (_got == (_want)) {
            return;
        };
        @:check2r _t.errorf(("got %q; want %q" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
    }
