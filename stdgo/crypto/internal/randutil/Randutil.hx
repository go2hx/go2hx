package stdgo.crypto.internal.randutil;
import stdgo.StdGoTypes;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.Chan;
var _closedChanOnce : stdgo.sync.Sync.Once = new stdgo.sync.Sync.Once();
var _closedChan : Chan<T__struct_0> = ((null : Chan<T__struct_0>));
@:structInit @:local class T__struct_0 {
    public function toString():String return "{" + "}";
    public function new(?toString) {}
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T__struct_0();
    }
}
/**
    // MaybeReadByte reads a single byte from r with ~50% probability. This is used
    // to ensure that callers do not depend on non-guaranteed behaviour, e.g.
    // assuming that rsa.GenerateKey is deterministic w.r.t. a given random stream.
    //
    // This does not affect tests that pass a stream of fixed bytes as the random
    // source (e.g. a zeroReader).
**/
function maybeReadByte(_r:stdgo.io.Io.Reader):Void {
        _closedChanOnce.do_(function():Void {
            _closedChan = new Chan<{ }>(0, () -> null);
            if (_closedChan != null) _closedChan.__close__();
        });
        Go.select([_closedChan.__get__() => {
            var _buf:GoArray<GoByte> = new GoArray<GoUInt8>(...[for (i in 0 ... 1) ((0 : GoUInt8))]);
            _r.read(((_buf.__slice__(0) : Slice<GoUInt8>)));
        }, _closedChan.__get__() => {
            return;
        }]);
    }
