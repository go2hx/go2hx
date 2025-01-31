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
function testFloatSetInt64(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (__8 => _want in (new stdgo.Slice<stdgo.GoInt64>(8, 8, ...[(0i64 : stdgo.GoInt64), (1i64 : stdgo.GoInt64), (2i64 : stdgo.GoInt64), (10i64 : stdgo.GoInt64), (100i64 : stdgo.GoInt64), (4294967295i64 : stdgo.GoInt64), (4294967296i64 : stdgo.GoInt64), (9223372036854775807i64 : stdgo.GoInt64)]).__setNumber64__() : stdgo.Slice<stdgo.GoInt64>)) {
            for (_i => _ in (new stdgo.GoArray<stdgo.GoInt>(2, 2, ...[]).__setNumber32__() : stdgo.GoArray<stdgo.GoInt>)) {
                if ((_i & (1 : stdgo.GoInt) : stdgo.GoInt) != ((0 : stdgo.GoInt))) {
                    _want = -_want;
                };
                var _f:stdgo._internal.math.big.Big_Float_.Float_ = ({} : stdgo._internal.math.big.Big_Float_.Float_);
                @:check2 _f.setInt64(_want);
                {
                    var _got = (@:check2 _f._int64() : stdgo.GoInt64);
                    if (_got != (_want)) {
                        @:check2r _t.errorf(("got %#x (%s); want %#x" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(@:check2 _f.text((112 : stdgo.GoUInt8), (0 : stdgo.GoInt))), stdgo.Go.toInterface(_want));
                    };
                };
            };
        };
        {};
        {
            var _prec = ((1u32 : stdgo.GoUInt) : stdgo.GoUInt);
            while ((_prec <= (63u32 : stdgo.GoUInt) : Bool)) {
                var _f = @:check2r @:check2r @:check2r (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Float_.Float_)) : stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>).setPrec(_prec).setMode((2 : stdgo._internal.math.big.Big_RoundingMode.RoundingMode)).setInt64((8526495040805286416i64 : stdgo.GoInt64));
var _got = (@:check2r _f._int64() : stdgo.GoInt64);
var _want = ((8526495040805286416i64 : stdgo.GoInt64) & ((((((1i64 : stdgo.GoInt64) << (((63u32 : stdgo.GoUInt) - _prec : stdgo.GoUInt)) : stdgo.GoInt64) - (1i64 : stdgo.GoInt64) : stdgo.GoInt64)) ^ (-1i32 : stdgo.GoInt) : stdgo.GoInt64)) : stdgo.GoInt64);
if (_got != (_want)) {
                    @:check2r _t.errorf(("got %#x (%s); want %#x" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(@:check2r _f.text((112 : stdgo.GoUInt8), (0 : stdgo.GoInt))), stdgo.Go.toInterface(_want));
                };
                _prec++;
            };
        };
    }
