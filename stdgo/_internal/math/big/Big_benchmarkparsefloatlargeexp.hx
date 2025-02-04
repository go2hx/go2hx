package stdgo._internal.math.big;
function benchmarkParseFloatLargeExp(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (@:checkr _b ?? throw "null pointer dereference").n : Bool)) {
                for (__16 => _s in (new stdgo.Slice<stdgo.GoString>(21, 21, ...[
("1e0" : stdgo.GoString),
("1e-10" : stdgo.GoString),
("1e-20" : stdgo.GoString),
("1e-30" : stdgo.GoString),
("1e-40" : stdgo.GoString),
("1e-50" : stdgo.GoString),
("1e-100" : stdgo.GoString),
("1e-500" : stdgo.GoString),
("1e-1000" : stdgo.GoString),
("1e-5000" : stdgo.GoString),
("1e-10000" : stdgo.GoString),
("1e10" : stdgo.GoString),
("1e20" : stdgo.GoString),
("1e30" : stdgo.GoString),
("1e40" : stdgo.GoString),
("1e50" : stdgo.GoString),
("1e100" : stdgo.GoString),
("1e500" : stdgo.GoString),
("1e1000" : stdgo.GoString),
("1e5000" : stdgo.GoString),
("1e10000" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>)) {
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
