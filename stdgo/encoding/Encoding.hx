package stdgo.encoding;
import stdgo.StdGoTypes;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.Chan;
typedef BinaryMarshaler = StructType & {
    public function marshalBinary():{ var _0 : Slice<GoByte>; var _1 : Error; };
};
typedef BinaryUnmarshaler = StructType & {
    public function unmarshalBinary(_data:Slice<GoByte>):Error;
};
typedef TextMarshaler = StructType & {
    public function marshalText():{ var _0 : Slice<GoByte>; var _1 : Error; };
};
typedef TextUnmarshaler = StructType & {
    public function unmarshalText(_text:Slice<GoByte>):Error;
};
