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
function testGobEncodingNilRatInSlice(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _buf = (stdgo.Go.setRef(({} : stdgo._internal.bytes.Bytes_Buffer.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>);
        var _enc = stdgo._internal.encoding.gob.Gob_newEncoder.newEncoder(stdgo.Go.asInterface(_buf));
        var _dec = stdgo._internal.encoding.gob.Gob_newDecoder.newDecoder(stdgo.Go.asInterface(_buf));
        var _in = (new stdgo.Slice<stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat>>((1 : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat>>);
        var _err = (@:check2r _enc.encode(stdgo.Go.toInterface((stdgo.Go.setRef(_in) : stdgo.Ref<stdgo.Slice<stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat>>>))) : stdgo.Error);
        if (_err != null) {
            @:check2r _t.errorf(("gob encode failed: %q" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        var _out:stdgo.Slice<stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat>>);
        _err = @:check2r _dec.decode(stdgo.Go.toInterface((stdgo.Go.setRef(_out) : stdgo.Ref<stdgo.Slice<stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat>>>)));
        if (_err != null) {
            @:check2r _t.fatalf(("gob decode failed: %q" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        if ((_out.length) != ((1 : stdgo.GoInt))) {
            @:check2r _t.fatalf(("wrong len; want 1 got %d" : stdgo.GoString), stdgo.Go.toInterface((_out.length)));
        };
        var _zero:stdgo._internal.math.big.Big_Rat.Rat = ({} : stdgo._internal.math.big.Big_Rat.Rat);
        if (@:check2r _out[(0 : stdgo.GoInt)].cmp((stdgo.Go.setRef(_zero) : stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat>)) != ((0 : stdgo.GoInt))) {
            @:check2r _t.fatalf(("transmission of (*Int)(nil) failed: got %s want 0" : stdgo.GoString), stdgo.Go.toInterface(_out));
        };
    }
