package stdgo._internal.regexp;
function benchmarkReplaceAll(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        var _x = ("abcdefghijklmnopqrstuvwxyz" : stdgo.GoString);
        _b.stopTimer();
        var _re = stdgo._internal.regexp.Regexp_mustCompile.mustCompile(("[cjrw]" : stdgo.GoString));
        _b.startTimer();
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                _re.replaceAllString(_x?.__copy__(), stdgo.Go.str()?.__copy__());
            });
        };
    }
