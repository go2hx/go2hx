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
function testFloatSetInt(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (__8 => _want in (new stdgo.Slice<stdgo.GoString>(6, 6, ...[("0" : stdgo.GoString), ("1" : stdgo.GoString), ("-1" : stdgo.GoString), ("1234567890" : stdgo.GoString), ("123456789012345678901234567890" : stdgo.GoString), ("123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>)) {
            var _x:stdgo._internal.math.big.Big_Int_.Int_ = ({} : stdgo._internal.math.big.Big_Int_.Int_);
            var __tmp__ = @:check2 _x.setString(_want?.__copy__(), (0 : stdgo.GoInt)), __9:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> = __tmp__._0, _ok:Bool = __tmp__._1;
            if (!_ok) {
                @:check2r _t.errorf(("invalid integer %s" : stdgo.GoString), stdgo.Go.toInterface(_want));
                continue;
            };
            var _n = (@:check2 _x.bitLen() : stdgo.GoInt);
            var _f:stdgo._internal.math.big.Big_Float_.Float_ = ({} : stdgo._internal.math.big.Big_Float_.Float_);
            @:check2 _f.setInt((stdgo.Go.setRef(_x) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>));
            if ((_n < (64 : stdgo.GoInt) : Bool)) {
                _n = (64 : stdgo.GoInt);
            };
            {
                var _prec = (@:check2 _f.prec() : stdgo.GoUInt);
                if (_prec != ((_n : stdgo.GoUInt))) {
                    @:check2r _t.errorf(("got prec = %d; want %d" : stdgo.GoString), stdgo.Go.toInterface(_prec), stdgo.Go.toInterface(_n));
                };
            };
            var _got = (@:check2 _f.text((103 : stdgo.GoUInt8), (100 : stdgo.GoInt))?.__copy__() : stdgo.GoString);
            if (_got != (_want)) {
                @:check2r _t.errorf(("got %s (%s); want %s" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(@:check2 _f.text((112 : stdgo.GoUInt8), (0 : stdgo.GoInt))), stdgo.Go.toInterface(_want));
            };
        };
    }
