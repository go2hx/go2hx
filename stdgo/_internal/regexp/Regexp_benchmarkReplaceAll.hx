package stdgo._internal.regexp;
function benchmarkReplaceAll(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        var _x = ("abcdefghijklmnopqrstuvwxyz" : stdgo.GoString);
        @:check2r _b.stopTimer();
        var _re = stdgo._internal.regexp.Regexp_mustCompile.mustCompile(("[cjrw]" : stdgo.GoString));
        @:check2r _b.startTimer();
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (@:checkr _b ?? throw "null pointer dereference").n : Bool)) {
                @:check2r _re.replaceAllString(_x.__copy__(), stdgo.Go.str().__copy__());
                _i++;
            };
        };
    }
