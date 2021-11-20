package stdgo.hash;
import stdgo.StdGoTypes;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.Chan;
typedef Hash = StructType & {
    > stdgo.io.Io.Writer,
    public function sum(_b:Slice<GoByte>):Slice<GoByte>;
    public function reset():Void;
    public function size():GoInt;
    public function blockSize():GoInt;
};
typedef Hash32 = StructType & {
    > Hash,
    public function sum32():GoUInt32;
};
typedef Hash64 = StructType & {
    > Hash,
    public function sum64():GoUInt64;
};
