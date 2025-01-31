package stdgo._internal.debug.dwarf;
import stdgo._internal.errors.Errors;
import stdgo._internal.path.Path;
import stdgo._internal.strings.Strings;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.io.Io;
import stdgo._internal.sort.Sort;
function _zeroArray(_t:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Type_.Type_>):Void {
        var _at = (stdgo.Go.typeAssert((stdgo.Go.toInterface(((_t : stdgo._internal.debug.dwarf.Dwarf_Type_.Type_))) : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_ArrayType.ArrayType>)) : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_ArrayType.ArrayType>);
        if ((@:checkr _at ?? throw "null pointer dereference").type.size() == ((0i64 : stdgo.GoInt64))) {
            return;
        };
        var _tt = ((_at : stdgo._internal.debug.dwarf.Dwarf_ArrayType.ArrayType)?.__copy__() : stdgo._internal.debug.dwarf.Dwarf_ArrayType.ArrayType);
        _tt.count = (0i64 : stdgo.GoInt64);
        {
            var __tmp__ = stdgo.Go.asInterface((stdgo.Go.setRef(_tt) : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_ArrayType.ArrayType>));
            var x = (_t : stdgo._internal.debug.dwarf.Dwarf_Type_.Type_);
            x.common = __tmp__.common;
            x.size = __tmp__.size;
            x.string = __tmp__.string;
        };
    }
