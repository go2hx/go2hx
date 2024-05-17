package stdgo._internal.crypto.internal.randutil;
private var __go2hxdoc__package : Bool;
var _closedChanOnce : stdgo._internal.sync.Sync.Once = ({} : stdgo._internal.sync.Sync.Once);
var _closedChan : stdgo.Chan<T__struct_0> = (null : stdgo.Chan<T__struct_0>);
class T__struct_0_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_0>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.crypto.internal.randutil.Randutil.T__struct_0_asInterface) class T__struct_0_static_extension {

}
@:local @:using(stdgo._internal.crypto.internal.randutil.Randutil.T__struct_0_static_extension) typedef T__struct_0 = {};
function maybeReadByte(_r:stdgo._internal.io.Io.Reader):Void {
        _closedChanOnce.do_(function():Void {
            _closedChan = (new stdgo.Chan<T__struct_0>(0, () -> ({  } : T__struct_0)) : stdgo.Chan<T__struct_0>);
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
                            var _buf:stdgo.GoArray<stdgo.GoByte> = new stdgo.GoArray<stdgo.GoUInt8>(1, 1, ...[for (i in 0 ... 1) (0 : stdgo.GoUInt8)]);
                            _r.read((_buf.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>));
                        };
                    };
                };
                #if !js Sys.sleep(0.01) #else null #end;
                stdgo._internal.internal.Async.tick();
            };
        };
    }
