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
function benchmarkScan(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        {};
        for (__8 => _base in (new stdgo.Slice<stdgo.GoInt>(4, 4, ...[(2 : stdgo.GoInt), (8 : stdgo.GoInt), (10 : stdgo.GoInt), (16 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>)) {
            for (__9 => _y in (new stdgo.Slice<stdgo._internal.math.big.Big_Word.Word>(5, 5, ...[(10u32 : stdgo._internal.math.big.Big_Word.Word), (100u32 : stdgo._internal.math.big.Big_Word.Word), (1000u32 : stdgo._internal.math.big.Big_Word.Word), (10000u32 : stdgo._internal.math.big.Big_Word.Word), (100000u32 : stdgo._internal.math.big.Big_Word.Word)]).__setNumber32__() : stdgo.Slice<stdgo._internal.math.big.Big_Word.Word>)) {
                if ((stdgo._internal.math.big.Big__isRaceBuilder._isRaceBuilder && (_y > (1000u32 : stdgo._internal.math.big.Big_Word.Word) : Bool) : Bool)) {
                    continue;
                };
                @:check2r _b.run(stdgo._internal.fmt.Fmt_sprintf.sprintf(("%d/Base%d" : stdgo.GoString), stdgo.Go.toInterface(_y), stdgo.Go.toInterface(_base))?.__copy__(), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
                    @:check2r _b.stopTimer();
                    var _z:stdgo._internal.math.big.Big_T_nat.T_nat = new stdgo._internal.math.big.Big_T_nat.T_nat(0, 0);
                    _z = _z._expWW((10u32 : stdgo._internal.math.big.Big_Word.Word), _y);
                    var _s = _z._utoa(_base);
                    {
                        var _t = stdgo._internal.math.big.Big__itoa._itoa(_z, _base);
                        if (!stdgo._internal.bytes.Bytes_equal.equal(_s, _t)) {
                            @:check2r _b.fatalf(("scanning: got %s; want %s" : stdgo.GoString), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_t));
                        };
                    };
                    @:check2r _b.startTimer();
                    {
                        var _i = (0 : stdgo.GoInt);
                        while ((_i < (@:checkr _b ?? throw "null pointer dereference").n : Bool)) {
                            _z._scan(stdgo.Go.asInterface(stdgo._internal.bytes.Bytes_newReader.newReader(_s)), _base, false);
                            _i++;
                        };
                    };
                });
            };
        };
    }
