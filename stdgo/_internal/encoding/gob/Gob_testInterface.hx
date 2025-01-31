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
function testInterface(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _iVal = ((3 : stdgo._internal.encoding.gob.Gob_Int_.Int_) : stdgo._internal.encoding.gob.Gob_Int_.Int_);
        var _fVal = ((5 : stdgo.GoFloat64) : stdgo._internal.encoding.gob.Gob_Float_.Float_);
        var _vVal = (new stdgo.Slice<stdgo.GoInt>(3, 3, ...[(1 : stdgo.GoInt), (2 : stdgo.GoInt), (3 : stdgo.GoInt)]).__setNumber32__() : stdgo._internal.encoding.gob.Gob_Vector.Vector);
        var _b = (stdgo.Go.setRef(({} : stdgo._internal.bytes.Bytes_Buffer.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>);
        var _item1 = (stdgo.Go.setRef((new stdgo._internal.encoding.gob.Gob_InterfaceItem.InterfaceItem((1 : stdgo.GoInt), stdgo.Go.asInterface(_iVal), stdgo.Go.asInterface(_fVal), stdgo.Go.asInterface(_vVal), (11.5 : stdgo.GoFloat64), (new stdgo.Slice<stdgo._internal.encoding.gob.Gob_Squarer.Squarer>(4, 4, ...[stdgo.Go.asInterface(_iVal), stdgo.Go.asInterface(_fVal), (null : stdgo._internal.encoding.gob.Gob_Squarer.Squarer), stdgo.Go.asInterface(_vVal)]) : stdgo.Slice<stdgo._internal.encoding.gob.Gob_Squarer.Squarer>)) : stdgo._internal.encoding.gob.Gob_InterfaceItem.InterfaceItem)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_InterfaceItem.InterfaceItem>);
        stdgo._internal.encoding.gob.Gob_register.register(stdgo.Go.toInterface(stdgo.Go.asInterface((0 : stdgo._internal.encoding.gob.Gob_Int_.Int_))));
        stdgo._internal.encoding.gob.Gob_register.register(stdgo.Go.toInterface(stdgo.Go.asInterface(((0 : stdgo.GoFloat64) : stdgo._internal.encoding.gob.Gob_Float_.Float_))));
        stdgo._internal.encoding.gob.Gob_register.register(stdgo.Go.toInterface(stdgo.Go.asInterface((new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo._internal.encoding.gob.Gob_Vector.Vector))));
        var _err = (@:check2r stdgo._internal.encoding.gob.Gob_newEncoder.newEncoder(stdgo.Go.asInterface(_b)).encode(stdgo.Go.toInterface(stdgo.Go.asInterface(_item1))) : stdgo.Error);
        if (_err != null) {
            @:check2r _t.error(stdgo.Go.toInterface(("expected no encode error; got" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        var _item2 = (new stdgo._internal.encoding.gob.Gob_InterfaceItem.InterfaceItem() : stdgo._internal.encoding.gob.Gob_InterfaceItem.InterfaceItem);
        _err = @:check2r stdgo._internal.encoding.gob.Gob_newDecoder.newDecoder(stdgo.Go.asInterface(_b)).decode(stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_item2) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_InterfaceItem.InterfaceItem>))));
        if (_err != null) {
            @:check2r _t.fatal(stdgo.Go.toInterface(("decode:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        if (_item2.i != ((@:checkr _item1 ?? throw "null pointer dereference").i)) {
            @:check2r _t.error(stdgo.Go.toInterface(("normal int did not decode correctly" : stdgo.GoString)));
        };
        if (((_item2.sq1 == null) || (_item2.sq1.square() != _iVal.square()) : Bool)) {
            @:check2r _t.error(stdgo.Go.toInterface(("Int did not decode correctly" : stdgo.GoString)));
        };
        if (((_item2.sq2 == null) || (_item2.sq2.square() != _fVal.square()) : Bool)) {
            @:check2r _t.error(stdgo.Go.toInterface(("Float did not decode correctly" : stdgo.GoString)));
        };
        if (((_item2.sq3 == null) || (_item2.sq3.square() != _vVal.square()) : Bool)) {
            @:check2r _t.error(stdgo.Go.toInterface(("Vector did not decode correctly" : stdgo.GoString)));
        };
        if (_item2.f != ((@:checkr _item1 ?? throw "null pointer dereference").f)) {
            @:check2r _t.error(stdgo.Go.toInterface(("normal float did not decode correctly" : stdgo.GoString)));
        };
        if (((@:checkr _item1 ?? throw "null pointer dereference").sq.length) != ((_item2.sq.length))) {
            @:check2r _t.fatalf(("[]Squarer length wrong: got %d; expected %d" : stdgo.GoString), stdgo.Go.toInterface((_item2.sq.length)), stdgo.Go.toInterface(((@:checkr _item1 ?? throw "null pointer dereference").sq.length)));
        };
        for (_i => _v1 in (@:checkr _item1 ?? throw "null pointer dereference").sq) {
            var _v2 = (_item2.sq[(_i : stdgo.GoInt)] : stdgo._internal.encoding.gob.Gob_Squarer.Squarer);
            if (((_v1 == null) || (_v2 == null) : Bool)) {
                if (((_v1 != null) || (_v2 != null) : Bool)) {
                    @:check2r _t.errorf(("item %d inconsistent nils" : stdgo.GoString), stdgo.Go.toInterface(_i));
                };
            } else if (_v1.square() != (_v2.square())) {
                @:check2r _t.errorf(("item %d inconsistent values: %v %v" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_v1), stdgo.Go.toInterface(_v2));
            };
        };
    }
