package stdgo._internal.encoding.binary;
function _intDataSize(_data:stdgo.AnyInterface):stdgo.GoInt {
        {
            final __type__ = _data;
            if (stdgo.Go.typeEquals((__type__ : Bool)) || stdgo.Go.typeEquals((__type__ : stdgo.GoInt8)) || stdgo.Go.typeEquals((__type__ : stdgo.GoUInt8)) || stdgo.Go.typeEquals((__type__ : stdgo.Pointer<Bool>)) || stdgo.Go.typeEquals((__type__ : stdgo.Pointer<stdgo.GoInt8>)) || stdgo.Go.typeEquals((__type__ : stdgo.Pointer<stdgo.GoUInt8>))) {
                var _data:stdgo.AnyInterface = __type__?.__underlying__();
                return (1 : stdgo.GoInt);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Slice<Bool>))) {
                var _data:stdgo.Slice<Bool> = __type__ == null ? (null : stdgo.Slice<Bool>) : __type__.__underlying__() == null ? (null : stdgo.Slice<Bool>) : __type__ == null ? (null : stdgo.Slice<Bool>) : __type__.__underlying__().value;
                return (_data.length);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Slice<stdgo.GoInt8>))) {
                var _data:stdgo.Slice<stdgo.GoInt8> = __type__ == null ? (null : stdgo.Slice<stdgo.GoInt8>) : __type__.__underlying__() == null ? (null : stdgo.Slice<stdgo.GoInt8>) : __type__ == null ? (null : stdgo.Slice<stdgo.GoInt8>) : __type__.__underlying__().value;
                return (_data.length);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Slice<stdgo.GoUInt8>))) {
                var _data:stdgo.Slice<stdgo.GoUInt8> = __type__ == null ? (null : stdgo.Slice<stdgo.GoUInt8>) : __type__.__underlying__() == null ? (null : stdgo.Slice<stdgo.GoUInt8>) : __type__ == null ? (null : stdgo.Slice<stdgo.GoUInt8>) : __type__.__underlying__().value;
                return (_data.length);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.GoInt16)) || stdgo.Go.typeEquals((__type__ : stdgo.GoUInt16)) || stdgo.Go.typeEquals((__type__ : stdgo.Pointer<stdgo.GoInt16>)) || stdgo.Go.typeEquals((__type__ : stdgo.Pointer<stdgo.GoUInt16>))) {
                var _data:stdgo.AnyInterface = __type__?.__underlying__();
                return (2 : stdgo.GoInt);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Slice<stdgo.GoInt16>))) {
                var _data:stdgo.Slice<stdgo.GoInt16> = __type__ == null ? (null : stdgo.Slice<stdgo.GoInt16>) : __type__.__underlying__() == null ? (null : stdgo.Slice<stdgo.GoInt16>) : __type__ == null ? (null : stdgo.Slice<stdgo.GoInt16>) : __type__.__underlying__().value;
                return ((2 : stdgo.GoInt) * (_data.length) : stdgo.GoInt);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Slice<stdgo.GoUInt16>))) {
                var _data:stdgo.Slice<stdgo.GoUInt16> = __type__ == null ? (null : stdgo.Slice<stdgo.GoUInt16>) : __type__.__underlying__() == null ? (null : stdgo.Slice<stdgo.GoUInt16>) : __type__ == null ? (null : stdgo.Slice<stdgo.GoUInt16>) : __type__.__underlying__().value;
                return ((2 : stdgo.GoInt) * (_data.length) : stdgo.GoInt);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.GoInt32)) || stdgo.Go.typeEquals((__type__ : stdgo.GoUInt32)) || stdgo.Go.typeEquals((__type__ : stdgo.Pointer<stdgo.GoInt32>)) || stdgo.Go.typeEquals((__type__ : stdgo.Pointer<stdgo.GoUInt32>))) {
                var _data:stdgo.AnyInterface = __type__?.__underlying__();
                return (4 : stdgo.GoInt);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Slice<stdgo.GoInt32>))) {
                var _data:stdgo.Slice<stdgo.GoInt32> = __type__ == null ? (null : stdgo.Slice<stdgo.GoInt32>) : __type__.__underlying__() == null ? (null : stdgo.Slice<stdgo.GoInt32>) : __type__ == null ? (null : stdgo.Slice<stdgo.GoInt32>) : __type__.__underlying__().value;
                return ((4 : stdgo.GoInt) * (_data.length) : stdgo.GoInt);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Slice<stdgo.GoUInt32>))) {
                var _data:stdgo.Slice<stdgo.GoUInt32> = __type__ == null ? (null : stdgo.Slice<stdgo.GoUInt32>) : __type__.__underlying__() == null ? (null : stdgo.Slice<stdgo.GoUInt32>) : __type__ == null ? (null : stdgo.Slice<stdgo.GoUInt32>) : __type__.__underlying__().value;
                return ((4 : stdgo.GoInt) * (_data.length) : stdgo.GoInt);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.GoInt64)) || stdgo.Go.typeEquals((__type__ : stdgo.GoUInt64)) || stdgo.Go.typeEquals((__type__ : stdgo.Pointer<stdgo.GoInt64>)) || stdgo.Go.typeEquals((__type__ : stdgo.Pointer<stdgo.GoUInt64>))) {
                var _data:stdgo.AnyInterface = __type__?.__underlying__();
                return (8 : stdgo.GoInt);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Slice<stdgo.GoInt64>))) {
                var _data:stdgo.Slice<stdgo.GoInt64> = __type__ == null ? (null : stdgo.Slice<stdgo.GoInt64>) : __type__.__underlying__() == null ? (null : stdgo.Slice<stdgo.GoInt64>) : __type__ == null ? (null : stdgo.Slice<stdgo.GoInt64>) : __type__.__underlying__().value;
                return ((8 : stdgo.GoInt) * (_data.length) : stdgo.GoInt);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Slice<stdgo.GoUInt64>))) {
                var _data:stdgo.Slice<stdgo.GoUInt64> = __type__ == null ? (null : stdgo.Slice<stdgo.GoUInt64>) : __type__.__underlying__() == null ? (null : stdgo.Slice<stdgo.GoUInt64>) : __type__ == null ? (null : stdgo.Slice<stdgo.GoUInt64>) : __type__.__underlying__().value;
                return ((8 : stdgo.GoInt) * (_data.length) : stdgo.GoInt);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.GoFloat32)) || stdgo.Go.typeEquals((__type__ : stdgo.Pointer<stdgo.GoFloat32>))) {
                var _data:stdgo.AnyInterface = __type__?.__underlying__();
                return (4 : stdgo.GoInt);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.GoFloat64)) || stdgo.Go.typeEquals((__type__ : stdgo.Pointer<stdgo.GoFloat64>))) {
                var _data:stdgo.AnyInterface = __type__?.__underlying__();
                return (8 : stdgo.GoInt);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Slice<stdgo.GoFloat32>))) {
                var _data:stdgo.Slice<stdgo.GoFloat32> = __type__ == null ? (null : stdgo.Slice<stdgo.GoFloat32>) : __type__.__underlying__() == null ? (null : stdgo.Slice<stdgo.GoFloat32>) : __type__ == null ? (null : stdgo.Slice<stdgo.GoFloat32>) : __type__.__underlying__().value;
                return ((4 : stdgo.GoInt) * (_data.length) : stdgo.GoInt);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Slice<stdgo.GoFloat64>))) {
                var _data:stdgo.Slice<stdgo.GoFloat64> = __type__ == null ? (null : stdgo.Slice<stdgo.GoFloat64>) : __type__.__underlying__() == null ? (null : stdgo.Slice<stdgo.GoFloat64>) : __type__ == null ? (null : stdgo.Slice<stdgo.GoFloat64>) : __type__.__underlying__().value;
                return ((8 : stdgo.GoInt) * (_data.length) : stdgo.GoInt);
            };
        };
        return (0 : stdgo.GoInt);
    }
