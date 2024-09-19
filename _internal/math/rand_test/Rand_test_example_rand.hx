package _internal.math.rand_test;
import stdgo._internal.math.rand.Rand;
import stdgo._internal.math.rand.Rand;
import stdgo._internal.math.rand.Rand;
import stdgo._internal.math.rand.Rand;
import stdgo._internal.math.rand.Rand;
function example_rand():Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var _r = stdgo._internal.math.rand.Rand_new_.new_(stdgo._internal.math.rand.Rand_newSource.newSource((99i64 : stdgo.GoInt64)));
            var _w = stdgo._internal.text.tabwriter.Tabwriter_newWriter.newWriter(stdgo.Go.asInterface(stdgo._internal.os.Os_stdout.stdout), (1 : stdgo.GoInt), (1 : stdgo.GoInt), (1 : stdgo.GoInt), (32 : stdgo.GoUInt8), (0u32 : stdgo.GoUInt));
            __deferstack__.unshift(() -> _w.flush());
            var _show = (function(_name:stdgo.GoString, _v1:stdgo.AnyInterface, _v2:stdgo.AnyInterface, _v3:stdgo.AnyInterface):Void {
                var __deferstack__:Array<Void -> Void> = [];
                try {
                    stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface(_w), ("%s\t%v\t%v\t%v\n" : stdgo.GoString), stdgo.Go.toInterface(_name), _v1, _v2, _v3);
                    {
                        for (defer in __deferstack__) {
                            defer();
                        };
                        if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                        return;
                    };
                } catch(__exception__) {
                    var exe:Dynamic = __exception__.native;
                    if ((exe is haxe.ValueException)) exe = exe.value;
                    if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                        if (__exception__.message == "__return__") throw "__return__";
                        exe = stdgo.Go.toInterface(__exception__.message);
                    };
                    stdgo.Go.recover_exception = exe;
                    for (defer in __deferstack__) {
                        defer();
                    };
                    if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                    return;
                };
            } : (stdgo.GoString, stdgo.AnyInterface, stdgo.AnyInterface, stdgo.AnyInterface) -> Void);
            _show(("Float32" : stdgo.GoString), stdgo.Go.toInterface(_r.float32()), stdgo.Go.toInterface(_r.float32()), stdgo.Go.toInterface(_r.float32()));
            _show(("Float64" : stdgo.GoString), stdgo.Go.toInterface(_r.float64()), stdgo.Go.toInterface(_r.float64()), stdgo.Go.toInterface(_r.float64()));
            _show(("ExpFloat64" : stdgo.GoString), stdgo.Go.toInterface(_r.expFloat64()), stdgo.Go.toInterface(_r.expFloat64()), stdgo.Go.toInterface(_r.expFloat64()));
            _show(("NormFloat64" : stdgo.GoString), stdgo.Go.toInterface(_r.normFloat64()), stdgo.Go.toInterface(_r.normFloat64()), stdgo.Go.toInterface(_r.normFloat64()));
            _show(("Int31" : stdgo.GoString), stdgo.Go.toInterface(_r.int31()), stdgo.Go.toInterface(_r.int31()), stdgo.Go.toInterface(_r.int31()));
            _show(("Int63" : stdgo.GoString), stdgo.Go.toInterface(_r.int63()), stdgo.Go.toInterface(_r.int63()), stdgo.Go.toInterface(_r.int63()));
            _show(("Uint32" : stdgo.GoString), stdgo.Go.toInterface(_r.uint32()), stdgo.Go.toInterface(_r.uint32()), stdgo.Go.toInterface(_r.uint32()));
            _show(("Intn(10)" : stdgo.GoString), stdgo.Go.toInterface(_r.intn((10 : stdgo.GoInt))), stdgo.Go.toInterface(_r.intn((10 : stdgo.GoInt))), stdgo.Go.toInterface(_r.intn((10 : stdgo.GoInt))));
            _show(("Int31n(10)" : stdgo.GoString), stdgo.Go.toInterface(_r.int31n((10 : stdgo.GoInt32))), stdgo.Go.toInterface(_r.int31n((10 : stdgo.GoInt32))), stdgo.Go.toInterface(_r.int31n((10 : stdgo.GoInt32))));
            _show(("Int63n(10)" : stdgo.GoString), stdgo.Go.toInterface(_r.int63n((10i64 : stdgo.GoInt64))), stdgo.Go.toInterface(_r.int63n((10i64 : stdgo.GoInt64))), stdgo.Go.toInterface(_r.int63n((10i64 : stdgo.GoInt64))));
            _show(("Perm" : stdgo.GoString), stdgo.Go.toInterface(_r.perm((5 : stdgo.GoInt))), stdgo.Go.toInterface(_r.perm((5 : stdgo.GoInt))), stdgo.Go.toInterface(_r.perm((5 : stdgo.GoInt))));
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                if (__exception__.message == "__return__") throw "__return__";
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return;
        };
    }
