package stdgo._internal.math.big;
import stdgo._internal.strings.Strings;
import stdgo._internal.internal.testenv.Testenv;
import stdgo._internal.math.rand.Rand;
import stdgo._internal.flag.Flag;
import stdgo._internal.errors.Errors;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.testing.Testing;
import stdgo._internal.math.Math;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.encoding.gob.Gob;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.io.Io;
import stdgo._internal.encoding.json.Json;
import stdgo._internal.testing.quick.Quick;
import stdgo._internal.encoding.hex.Hex;
import stdgo._internal.encoding.xml.Xml;
import stdgo._internal.path.filepath.Filepath;
import stdgo._internal.os.Os;
import stdgo._internal.os.exec.Exec;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.sort.Sort;
function benchmarkFloatAdd(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        var _x = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Float_.Float_)) : stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>);
        var _y = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Float_.Float_)) : stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>);
        var _z = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Float_.Float_)) : stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>);
        for (__8 => _prec in (new stdgo.Slice<stdgo.GoUInt>(5, 5, ...[(10u32 : stdgo.GoUInt), (100u32 : stdgo.GoUInt), (1000u32 : stdgo.GoUInt), (10000u32 : stdgo.GoUInt), (100000u32 : stdgo.GoUInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt>)) {
            @:check2r @:check2r _x.setPrec(_prec).setRat(stdgo._internal.math.big.Big_newRat.newRat((1i64 : stdgo.GoInt64), (3i64 : stdgo.GoInt64)));
            @:check2r @:check2r _y.setPrec(_prec).setRat(stdgo._internal.math.big.Big_newRat.newRat((1i64 : stdgo.GoInt64), (6i64 : stdgo.GoInt64)));
            @:check2r _z.setPrec(_prec);
            @:check2r _b.run(stdgo._internal.fmt.Fmt_sprintf.sprintf(("%v" : stdgo.GoString), stdgo.Go.toInterface(_prec))?.__copy__(), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
                @:check2r _b.reportAllocs();
                {
                    var _i = (0 : stdgo.GoInt);
                    while ((_i < (@:checkr _b ?? throw "null pointer dereference").n : Bool)) {
                        @:check2r _z.add(_x, _y);
                        _i++;
                    };
                };
            });
        };
    }
