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
function testIgnoreInterface(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _iVal = ((3 : stdgo._internal.encoding.gob.Gob_Int_.Int_) : stdgo._internal.encoding.gob.Gob_Int_.Int_);
        var _fVal = ((5 : stdgo.GoFloat64) : stdgo._internal.encoding.gob.Gob_Float_.Float_);
        var _pVal = (new stdgo._internal.encoding.gob.Gob_Point.Point((2 : stdgo.GoInt), (3 : stdgo.GoInt)) : stdgo._internal.encoding.gob.Gob_Point.Point);
        var _b = (stdgo.Go.setRef(({} : stdgo._internal.bytes.Bytes_Buffer.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>);
        var _item1 = (stdgo.Go.setRef((new stdgo._internal.encoding.gob.Gob_InterfaceItem.InterfaceItem((1 : stdgo.GoInt), stdgo.Go.asInterface(_iVal), stdgo.Go.asInterface(_fVal), stdgo.Go.asInterface(_pVal), (11.5 : stdgo.GoFloat64), (null : stdgo.Slice<stdgo._internal.encoding.gob.Gob_Squarer.Squarer>)) : stdgo._internal.encoding.gob.Gob_InterfaceItem.InterfaceItem)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_InterfaceItem.InterfaceItem>);
        stdgo._internal.encoding.gob.Gob_register.register(stdgo.Go.toInterface(stdgo.Go.asInterface((0 : stdgo._internal.encoding.gob.Gob_Int_.Int_))));
        stdgo._internal.encoding.gob.Gob_register.register(stdgo.Go.toInterface(stdgo.Go.asInterface(((0 : stdgo.GoFloat64) : stdgo._internal.encoding.gob.Gob_Float_.Float_))));
        stdgo._internal.encoding.gob.Gob_register.register(stdgo.Go.toInterface(stdgo.Go.asInterface((new stdgo._internal.encoding.gob.Gob_Point.Point() : stdgo._internal.encoding.gob.Gob_Point.Point))));
        var _err = (@:check2r stdgo._internal.encoding.gob.Gob_newEncoder.newEncoder(stdgo.Go.asInterface(_b)).encode(stdgo.Go.toInterface(stdgo.Go.asInterface(_item1))) : stdgo.Error);
        if (_err != null) {
            @:check2r _t.error(stdgo.Go.toInterface(("expected no encode error; got" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        var _item2 = (new stdgo._internal.encoding.gob.Gob_NoInterfaceItem.NoInterfaceItem() : stdgo._internal.encoding.gob.Gob_NoInterfaceItem.NoInterfaceItem);
        _err = @:check2r stdgo._internal.encoding.gob.Gob_newDecoder.newDecoder(stdgo.Go.asInterface(_b)).decode(stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_item2) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_NoInterfaceItem.NoInterfaceItem>))));
        if (_err != null) {
            @:check2r _t.fatal(stdgo.Go.toInterface(("decode:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        if (_item2.i != ((@:checkr _item1 ?? throw "null pointer dereference").i)) {
            @:check2r _t.error(stdgo.Go.toInterface(("normal int did not decode correctly" : stdgo.GoString)));
        };
        if (_item2.f != ((@:checkr _item1 ?? throw "null pointer dereference").f)) {
            @:check2r _t.error(stdgo.Go.toInterface(("normal float did not decode correctly" : stdgo.GoString)));
        };
    }
