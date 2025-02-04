package stdgo._internal.regexp;
function benchmarkReplaceAll(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
        var _x = (("abcdefghijklmnopqrstuvwxyz" : stdgo.GoString) : stdgo.GoString);
        @:check2r _b.stopTimer();
        var _re = stdgo._internal.regexp.Regexp_mustcompile.mustCompile(("[cjrw]" : stdgo.GoString));
        @:check2r _b.startTimer();
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (@:checkr _b ?? throw "null pointer dereference").n : Bool)) {
                @:check2r _re.replaceAllString(_x.__copy__(), (stdgo.Go.str() : stdgo.GoString).__copy__());
                _i++;
            };
        };
    }
