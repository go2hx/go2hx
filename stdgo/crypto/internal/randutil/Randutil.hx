package stdgo.crypto.internal.randutil;
/**
    // Package randutil contains internal randomness utilities for various
    // crypto packages.
**/
private var __go2hxdoc__package : Bool;
/**
    
    
    
**/
var _closedChanOnce : stdgo.sync.Sync.Once = ({} : stdgo.sync.Sync.Once);
/**
    
    
    
**/
var _closedChan : stdgo.Chan<T__struct_0> = (null : stdgo.Chan<T__struct_0>);
class T__struct_0_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_0>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.crypto.internal.randutil.Randutil.T__struct_0_asInterface) class T__struct_0_static_extension {

}
@:local @:using(stdgo.crypto.internal.randutil.Randutil.T__struct_0_static_extension) typedef T__struct_0 = {};
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
            _closedChan = new stdgo.Chan<T__struct_0>(0, () -> ({  } : T__struct_0));
            if (_closedChan != null) _closedChan.__close__();
        });
        {
            var __select__ = true;
            while (__select__) {
                if (_closedChan != null && _closedChan.__isGet__()) {
                    __select__ = false;
                    {
                        _closedChan.__get__();
                        {
                            return;
                        };
                    };
                } else if (_closedChan != null && _closedChan.__isGet__()) {
                    __select__ = false;
                    {
                        _closedChan.__get__();
                        {
                            var _buf:stdgo.GoArray<stdgo.GoByte> = new stdgo.GoArray<stdgo.GoUInt8>(...[for (i in 0 ... 1) (0 : stdgo.GoUInt8)]);
                            _r.read((_buf.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>));
                        };
                    };
                };
                #if !js Sys.sleep(0.01) #else null #end;
                stdgo.internal.Async.tick();
            };
        };
    }
