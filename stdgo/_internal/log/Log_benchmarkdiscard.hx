package stdgo._internal.log;
function benchmarkDiscard(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
        var _l = stdgo._internal.log.Log_new_.new_(stdgo._internal.io.Io_discard.discard, (stdgo.Go.str() : stdgo.GoString)?.__copy__(), (19 : stdgo.GoInt));
        @:check2r _b.reportAllocs();
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (@:checkr _b ?? throw "null pointer dereference").n : Bool)) {
                @:check2r _l.printf(("processing %d objects from bucket %q" : stdgo.GoString), stdgo.Go.toInterface((1234 : stdgo.GoInt)), stdgo.Go.toInterface(("fizzbuzz" : stdgo.GoString)));
                _i++;
            };
        };
    }
