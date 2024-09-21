package _internal.io_test;
import stdgo._internal.io.Io;
import stdgo._internal.io.Io;
import stdgo._internal.io.Io;
function _sortBytesInGroups(_b:stdgo.Slice<stdgo.GoUInt8>, _n:stdgo.GoInt):stdgo.Slice<stdgo.GoUInt8> {
        var _groups:stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>> = (null : stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>);
        while (((_b.length) > (0 : stdgo.GoInt) : Bool)) {
            _groups = (_groups.__append__((_b.__slice__(0, _n) : stdgo.Slice<stdgo.GoUInt8>)));
            _b = (_b.__slice__(_n) : stdgo.Slice<stdgo.GoUInt8>);
        };
        stdgo._internal.sort.Sort_slice.slice(stdgo.Go.toInterface(_groups), function(_i:stdgo.GoInt, _j:stdgo.GoInt):Bool {
            return (stdgo._internal.bytes.Bytes_compare.compare(_groups[(_i : stdgo.GoInt)], _groups[(_j : stdgo.GoInt)]) < (0 : stdgo.GoInt) : Bool);
        });
        return stdgo._internal.bytes.Bytes_join.join(_groups, (null : stdgo.Slice<stdgo.GoUInt8>));
    }
