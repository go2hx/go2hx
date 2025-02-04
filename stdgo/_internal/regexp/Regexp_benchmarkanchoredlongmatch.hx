package stdgo._internal.regexp;
function benchmarkAnchoredLongMatch(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
        @:check2r _b.stopTimer();
        var _x = ((("abcdefghijklmnopqrstuvwxyz" : stdgo.GoString) : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>);
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (15 : stdgo.GoInt) : Bool)) {
                _x = (_x.__append__(...(_x : Array<stdgo.GoUInt8>)));
                _i++;
            };
        };
        var _re = stdgo._internal.regexp.Regexp_mustcompile.mustCompile(("^.bc(d|e)" : stdgo.GoString));
        @:check2r _b.startTimer();
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (@:checkr _b ?? throw "null pointer dereference").n : Bool)) {
                @:check2r _re.match(_x);
                _i++;
            };
        };
    }
