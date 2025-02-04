package stdgo._internal.math.big;
function benchmarkParseFloatSmallExp(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (@:checkr _b ?? throw "null pointer dereference").n : Bool)) {
                for (__16 => _s in (new stdgo.Slice<stdgo.GoString>(17, 17, ...[
("1e0" : stdgo.GoString),
("1e-1" : stdgo.GoString),
("1e-2" : stdgo.GoString),
("1e-3" : stdgo.GoString),
("1e-4" : stdgo.GoString),
("1e-5" : stdgo.GoString),
("1e-10" : stdgo.GoString),
("1e-20" : stdgo.GoString),
("1e-50" : stdgo.GoString),
("1e1" : stdgo.GoString),
("1e2" : stdgo.GoString),
("1e3" : stdgo.GoString),
("1e4" : stdgo.GoString),
("1e5" : stdgo.GoString),
("1e10" : stdgo.GoString),
("1e20" : stdgo.GoString),
("1e50" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>)) {
                    var _x:stdgo._internal.math.big.Big_float_.Float_ = ({} : stdgo._internal.math.big.Big_float_.Float_);
                    var __tmp__ = @:check2 _x.parse(_s?.__copy__(), (0 : stdgo.GoInt)), __17:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_> = __tmp__._0, __18:stdgo.GoInt = __tmp__._1, _err:stdgo.Error = __tmp__._2;
                    if (_err != null) {
                        @:check2r _b.fatalf(("%s: %v" : stdgo.GoString), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_err));
                    };
                };
                _i++;
            };
        };
    }
