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
function testInterfacePointer(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _b = (stdgo.Go.setRef(({} : stdgo._internal.bytes.Bytes_Buffer.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>);
        var _str1 = ("howdy" : stdgo.GoString);
        var _str1__pointer__ = stdgo.Go.pointer(_str1);
        var _str1__pointer__ = stdgo.Go.pointer(_str1);
        var _str1__pointer__ = stdgo.Go.pointer(_str1);
        var _str1__pointer__ = stdgo.Go.pointer(_str1);
        var _str2 = ((("kiddo" : stdgo.GoString) : stdgo._internal.encoding.gob.Gob_String_.String_) : stdgo._internal.encoding.gob.Gob_String_.String_);
        var _str2__pointer__ = stdgo.Go.pointer(_str2);
        var _str2__pointer__ = stdgo.Go.pointer(_str2);
        var _str2__pointer__ = stdgo.Go.pointer(_str2);
        var _str2__pointer__ = stdgo.Go.pointer(_str2);
        var _item1 = (stdgo.Go.setRef((new stdgo._internal.encoding.gob.Gob_PtrInterfaceItem.PtrInterfaceItem(stdgo.Go.toInterface(_str1__pointer__), stdgo.Go.toInterface(_str2__pointer__)) : stdgo._internal.encoding.gob.Gob_PtrInterfaceItem.PtrInterfaceItem)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_PtrInterfaceItem.PtrInterfaceItem>);
        stdgo._internal.encoding.gob.Gob_register.register(stdgo.Go.toInterface(_str2));
        var _err = (@:check2r stdgo._internal.encoding.gob.Gob_newEncoder.newEncoder(stdgo.Go.asInterface(_b)).encode(stdgo.Go.toInterface(stdgo.Go.asInterface(_item1))) : stdgo.Error);
        if (_err != null) {
            @:check2r _t.error(stdgo.Go.toInterface(("expected no encode error; got" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        var _item2 = (stdgo.Go.setRef((new stdgo._internal.encoding.gob.Gob_PtrInterfaceItem.PtrInterfaceItem() : stdgo._internal.encoding.gob.Gob_PtrInterfaceItem.PtrInterfaceItem)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_PtrInterfaceItem.PtrInterfaceItem>);
        _err = @:check2r stdgo._internal.encoding.gob.Gob_newDecoder.newDecoder(stdgo.Go.asInterface(_b)).decode(stdgo.Go.toInterface((stdgo.Go.setRef(_item2) : stdgo.Ref<stdgo.Ref<stdgo._internal.encoding.gob.Gob_PtrInterfaceItem.PtrInterfaceItem>>)));
        if (_err != null) {
            @:check2r _t.fatal(stdgo.Go.toInterface(("decode:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert(((@:checkr _item2 ?? throw "null pointer dereference").str1 : stdgo.GoString)) : stdgo.GoString), _1 : true };
            } catch(_) {
                { _0 : ("" : stdgo.GoString), _1 : false };
            }, _v = __tmp__._0, _ok = __tmp__._1;
            if ((!_ok || (_v != _str1) : Bool)) {
                @:check2r _t.errorf(("basic string failed: %q should be %q" : stdgo.GoString), stdgo.Go.toInterface(_v), stdgo.Go.toInterface(_str1));
            };
        };
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert(((@:checkr _item2 ?? throw "null pointer dereference").str2 : stdgo._internal.encoding.gob.Gob_String_.String_)) : stdgo._internal.encoding.gob.Gob_String_.String_), _1 : true };
            } catch(_) {
                { _0 : (("" : stdgo.GoString) : stdgo._internal.encoding.gob.Gob_String_.String_), _1 : false };
            }, _v = __tmp__._0, _ok = __tmp__._1;
            if ((!_ok || (_v != _str2) : Bool)) {
                @:check2r _t.errorf(("derived type String failed: %q should be %q" : stdgo.GoString), stdgo.Go.toInterface(_v), stdgo.Go.toInterface(_str2));
            };
        };
    }
