package stdgo._internal.log;
function testDiscard(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _l = stdgo._internal.log.Log_new_.new_(stdgo._internal.io.Io_discard.discard, stdgo.Go.str()?.__copy__(), (0 : stdgo.GoInt));
        var _s = (stdgo._internal.strings.Strings_repeat.repeat(("a" : stdgo.GoString), (102400 : stdgo.GoInt))?.__copy__() : stdgo.GoString);
        var _c = (stdgo._internal.testing.Testing_allocsPerRun.allocsPerRun((100 : stdgo.GoInt), function():Void {
            _l.printf(("%s" : stdgo.GoString), stdgo.Go.toInterface(_s));
        }) : stdgo.GoFloat64);
        if ((_c > (1 : stdgo.GoFloat64) : Bool)) {
            _t.errorf(("got %v allocs, want at most 1" : stdgo.GoString), stdgo.Go.toInterface(_c));
        };
    }