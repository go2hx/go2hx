package stdgo._internal.encoding.gob;
import stdgo._internal.flag.Flag;
import stdgo._internal.errors.Errors;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.strings.Strings;
import stdgo._internal.time.Time;
import stdgo._internal.math.rand.Rand;
import stdgo._internal.testing.Testing;
import stdgo._internal.io.Io;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.math.Math;
import stdgo._internal.internal.saferio.Saferio;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.encoding.hex.Hex;
import stdgo._internal.sort.Sort;
import stdgo._internal.os.Os;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.encoding.binary.Binary;
function testInterfaceIndirect(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        stdgo._internal.encoding.gob.Gob_register.register(stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.encoding.gob.Gob_T_interfaceIndirectTestT.T_interfaceIndirectTestT() : stdgo._internal.encoding.gob.Gob_T_interfaceIndirectTestT.T_interfaceIndirectTestT)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_interfaceIndirectTestT.T_interfaceIndirectTestT>))));
        var _b = (stdgo.Go.setRef(({} : stdgo._internal.bytes.Bytes_Buffer.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>);
        var _w = (new stdgo.Slice<stdgo._internal.encoding.gob.Gob_T_interfaceIndirectTestI.T_interfaceIndirectTestI>(1, 1, ...[stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.encoding.gob.Gob_T_interfaceIndirectTestT.T_interfaceIndirectTestT() : stdgo._internal.encoding.gob.Gob_T_interfaceIndirectTestT.T_interfaceIndirectTestT)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_interfaceIndirectTestT.T_interfaceIndirectTestT>))]) : stdgo.Slice<stdgo._internal.encoding.gob.Gob_T_interfaceIndirectTestI.T_interfaceIndirectTestI>);
        var _err = (@:check2r stdgo._internal.encoding.gob.Gob_newEncoder.newEncoder(stdgo.Go.asInterface(_b)).encode(stdgo.Go.toInterface(_w)) : stdgo.Error);
        if (_err != null) {
            @:check2r _t.fatal(stdgo.Go.toInterface(("encode error:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        var _r:stdgo.Slice<stdgo._internal.encoding.gob.Gob_T_interfaceIndirectTestI.T_interfaceIndirectTestI> = (null : stdgo.Slice<stdgo._internal.encoding.gob.Gob_T_interfaceIndirectTestI.T_interfaceIndirectTestI>);
        _err = @:check2r stdgo._internal.encoding.gob.Gob_newDecoder.newDecoder(stdgo.Go.asInterface(_b)).decode(stdgo.Go.toInterface((stdgo.Go.setRef(_r) : stdgo.Ref<stdgo.Slice<stdgo._internal.encoding.gob.Gob_T_interfaceIndirectTestI.T_interfaceIndirectTestI>>)));
        if (_err != null) {
            @:check2r _t.fatal(stdgo.Go.toInterface(("decode error:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
    }
