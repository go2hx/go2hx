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
@:structInit @:local class T__struct_0 {
    public function new() stdgo.internal.Macro.initLocals();
    public function toString() {
        return "{}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T__struct_0();
    }
    public function __set__(__tmp__) {
        return this;
    }
}
var _closedChan : Chan<T__struct_0> = new Chan<T__struct_0>(0, () -> new T__struct_0(), true);
var _closedChanOnce : stdgo.sync.Sync.Once = new stdgo.sync.Sync.Once();
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
            _closedChan = new Chan<T__struct_0>(0, () -> new T__struct_0());
            _closedChan.close();
        });
        {
            {
                _closedChan.get();
                return;
            };
            {
                _closedChan.get();
                var _buf:GoArray<GoByte> = new GoArray<GoUInt8>(...[for (i in 0 ... 1) ((0 : GoUInt8))]);
                _r.read(_buf.__slice__(0));
            };
        };
    }
