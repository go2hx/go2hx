package stdgo._internal.encoding.binary;
function _testReadInvalidDestination(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>, _order:stdgo._internal.encoding.binary.Binary_byteorder.ByteOrder):Void {
        var _destinations = (new stdgo.Slice<stdgo.AnyInterface>(9, 9, ...[stdgo.Go.toInterface((0 : stdgo.GoInt8)), stdgo.Go.toInterface((0 : stdgo.GoInt16)), stdgo.Go.toInterface((0 : stdgo.GoInt32)), stdgo.Go.toInterface((0i64 : stdgo.GoInt64)), stdgo.Go.toInterface((0 : stdgo.GoUInt8)), stdgo.Go.toInterface((0 : stdgo.GoUInt16)), stdgo.Go.toInterface((0u32 : stdgo.GoUInt32)), stdgo.Go.toInterface((0i64 : stdgo.GoUInt64)), stdgo.Go.toInterface((false : Bool))]) : stdgo.Slice<stdgo.AnyInterface>);
        for (__8 => _dst in _destinations) {
            var _err = (stdgo._internal.encoding.binary.Binary_read.read(stdgo.Go.asInterface(stdgo._internal.bytes.Bytes_newreader.newReader((new stdgo.Slice<stdgo.GoUInt8>(8, 8, ...[(1 : stdgo.GoUInt8), (2 : stdgo.GoUInt8), (3 : stdgo.GoUInt8), (4 : stdgo.GoUInt8), (5 : stdgo.GoUInt8), (6 : stdgo.GoUInt8), (7 : stdgo.GoUInt8), (8 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>))), _order, _dst) : stdgo.Error);
            var _want = (stdgo._internal.fmt.Fmt_sprintf.sprintf(("binary.Read: invalid type %T" : stdgo.GoString), _dst)?.__copy__() : stdgo.GoString);
            if (((_err == null) || (_err.error() != _want) : Bool)) {
                @:check2r _t.fatalf(("for type %T: got %q; want %q" : stdgo.GoString), _dst, stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_want));
            };
        };
    }
