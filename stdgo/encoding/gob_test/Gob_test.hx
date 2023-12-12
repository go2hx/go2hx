package stdgo.encoding.gob_test;
import stdgo.encoding.gob.Gob;
/**
    
    
    
**/
typedef Pythagoras = stdgo.StdGoTypes.StructType & {
    /**
        
        
        
    **/
    public dynamic function hypotenuse():stdgo.StdGoTypes.GoFloat64;
};
/**
    // The Vector type has unexported fields, which the package cannot access.
    // We therefore write a BinaryMarshal/BinaryUnmarshal method pair to allow us
    // to send and receive the type with the gob package. These interfaces are
    // defined in the "encoding" package.
    // We could equivalently use the locally defined GobEncode/GobDecoder
    // interfaces.
    
    
**/
@:structInit @:using(stdgo.encoding.gob_test.Gob_test.Vector_static_extension) class Vector {
    public var _x : stdgo.StdGoTypes.GoInt = 0;
    public var _y : stdgo.StdGoTypes.GoInt = 0;
    public var _z : stdgo.StdGoTypes.GoInt = 0;
    public function new(?_x:stdgo.StdGoTypes.GoInt, ?_y:stdgo.StdGoTypes.GoInt, ?_z:stdgo.StdGoTypes.GoInt) {
        if (_x != null) this._x = _x;
        if (_y != null) this._y = _y;
        if (_z != null) this._z = _z;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Vector(_x, _y, _z);
    }
}
/**
    
    
    
**/
@:structInit @:using(stdgo.encoding.gob_test.Gob_test.Point_static_extension) class Point {
    public var x : stdgo.StdGoTypes.GoInt = 0;
    public var y : stdgo.StdGoTypes.GoInt = 0;
    public function new(?x:stdgo.StdGoTypes.GoInt, ?y:stdgo.StdGoTypes.GoInt) {
        if (x != null) this.x = x;
        if (y != null) this.y = y;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Point(x, y);
    }
}
/**
    
    
    
**/
@:structInit class P {
    public var x : stdgo.StdGoTypes.GoInt = 0;
    public var y : stdgo.StdGoTypes.GoInt = 0;
    public var z : stdgo.StdGoTypes.GoInt = 0;
    public var name : stdgo.GoString = "";
    public function new(?x:stdgo.StdGoTypes.GoInt, ?y:stdgo.StdGoTypes.GoInt, ?z:stdgo.StdGoTypes.GoInt, ?name:stdgo.GoString) {
        if (x != null) this.x = x;
        if (y != null) this.y = y;
        if (z != null) this.z = z;
        if (name != null) this.name = name;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new P(x, y, z, name);
    }
}
/**
    
    
    
**/
@:structInit class Q {
    public var x : stdgo.Pointer<stdgo.StdGoTypes.GoInt32> = (null : stdgo.Pointer<stdgo.StdGoTypes.GoInt32>);
    public var y : stdgo.Pointer<stdgo.StdGoTypes.GoInt32> = (null : stdgo.Pointer<stdgo.StdGoTypes.GoInt32>);
    public var name : stdgo.GoString = "";
    public function new(?x:stdgo.Pointer<stdgo.StdGoTypes.GoInt32>, ?y:stdgo.Pointer<stdgo.StdGoTypes.GoInt32>, ?name:stdgo.GoString) {
        if (x != null) this.x = x;
        if (y != null) this.y = y;
        if (name != null) this.name = name;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Q(x, y, name);
    }
}
/**
    // This example transmits a value that implements the custom encoding and decoding methods.
**/
function example_encodeDecode():Void {
        var _network:stdgo.bytes.Bytes.Buffer = ({} : stdgo.bytes.Bytes.Buffer);
        var _enc = stdgo.encoding.gob.Gob.newEncoder(stdgo.Go.asInterface((stdgo.Go.setRef(_network) : stdgo.StdGoTypes.Ref<stdgo.bytes.Bytes.Buffer>)));
        var _err:stdgo.Error = _enc.encode(stdgo.Go.toInterface(stdgo.Go.asInterface((new stdgo.encoding.gob_test.Gob_test.Vector((3 : stdgo.StdGoTypes.GoInt), (4 : stdgo.StdGoTypes.GoInt), (5 : stdgo.StdGoTypes.GoInt)) : stdgo.encoding.gob_test.Gob_test.Vector))));
        if (_err != null) {
            stdgo.log.Log.fatal(stdgo.Go.toInterface(("encode:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        var _dec = stdgo.encoding.gob.Gob.newDecoder(stdgo.Go.asInterface((stdgo.Go.setRef(_network) : stdgo.StdGoTypes.Ref<stdgo.bytes.Bytes.Buffer>)));
        var _v:Vector = ({} : stdgo.encoding.gob_test.Gob_test.Vector);
        _err = _dec.decode(stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_v) : stdgo.StdGoTypes.Ref<stdgo.encoding.gob_test.Gob_test.Vector>))));
        if (_err != null) {
            stdgo.log.Log.fatal(stdgo.Go.toInterface(("decode:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.Go.asInterface(_v)));
    }
/**
    // This example shows how to encode an interface value. The key
    // distinction from regular types is to register the concrete type that
    // implements the interface.
**/
function example_interface():Void {
        var _network:stdgo.bytes.Bytes.Buffer = ({} : stdgo.bytes.Bytes.Buffer);
        stdgo.encoding.gob.Gob.register(stdgo.Go.toInterface(stdgo.Go.asInterface((new stdgo.encoding.gob_test.Gob_test.Point() : stdgo.encoding.gob_test.Gob_test.Point))));
        var _enc = stdgo.encoding.gob.Gob.newEncoder(stdgo.Go.asInterface((stdgo.Go.setRef(_network) : stdgo.StdGoTypes.Ref<stdgo.bytes.Bytes.Buffer>)));
        {
            var _i:stdgo.StdGoTypes.GoInt = (1 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i <= (3 : stdgo.StdGoTypes.GoInt), _i++, {
                _interfaceEncode(_enc, stdgo.Go.asInterface((new stdgo.encoding.gob_test.Gob_test.Point((3 : stdgo.StdGoTypes.GoInt) * _i, (4 : stdgo.StdGoTypes.GoInt) * _i) : stdgo.encoding.gob_test.Gob_test.Point)));
            });
        };
        var _dec = stdgo.encoding.gob.Gob.newDecoder(stdgo.Go.asInterface((stdgo.Go.setRef(_network) : stdgo.StdGoTypes.Ref<stdgo.bytes.Bytes.Buffer>)));
        {
            var _i:stdgo.StdGoTypes.GoInt = (1 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i <= (3 : stdgo.StdGoTypes.GoInt), _i++, {
                var _result:stdgo.encoding.gob_test.Gob_test.Pythagoras = _interfaceDecode(_dec);
                stdgo.fmt.Fmt.println(stdgo.Go.toInterface(_result.hypotenuse()));
            });
        };
    }
/**
    // interfaceEncode encodes the interface value into the encoder.
**/
function _interfaceEncode(_enc:stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.Encoder>, _p:Pythagoras):Void {
        var _err:stdgo.Error = _enc.encode(stdgo.Go.toInterface((stdgo.Go.setRef(_p) : stdgo.StdGoTypes.Ref<stdgo.encoding.gob_test.Gob_test.Pythagoras>)));
        if (_err != null) {
            stdgo.log.Log.fatal(stdgo.Go.toInterface(("encode:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
    }
/**
    // interfaceDecode decodes the next interface value from the stream and returns it.
**/
function _interfaceDecode(_dec:stdgo.StdGoTypes.Ref<stdgo.encoding.gob.Gob.Decoder>):Pythagoras {
        var _p:Pythagoras = (null : stdgo.encoding.gob_test.Gob_test.Pythagoras);
        var _err:stdgo.Error = _dec.decode(stdgo.Go.toInterface((stdgo.Go.setRef(_p) : stdgo.StdGoTypes.Ref<stdgo.encoding.gob_test.Gob_test.Pythagoras>)));
        if (_err != null) {
            stdgo.log.Log.fatal(stdgo.Go.toInterface(("decode:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        return _p;
    }
/**
    // This example shows the basic usage of the package: Create an encoder,
    // transmit some values, receive them with a decoder.
**/
function example_basic():Void {
        var _network:stdgo.bytes.Bytes.Buffer = ({} : stdgo.bytes.Bytes.Buffer);
        var _enc = stdgo.encoding.gob.Gob.newEncoder(stdgo.Go.asInterface((stdgo.Go.setRef(_network) : stdgo.StdGoTypes.Ref<stdgo.bytes.Bytes.Buffer>)));
        var _dec = stdgo.encoding.gob.Gob.newDecoder(stdgo.Go.asInterface((stdgo.Go.setRef(_network) : stdgo.StdGoTypes.Ref<stdgo.bytes.Bytes.Buffer>)));
        var _err:stdgo.Error = _enc.encode(stdgo.Go.toInterface((new stdgo.encoding.gob_test.Gob_test.P((3 : stdgo.StdGoTypes.GoInt), (4 : stdgo.StdGoTypes.GoInt), (5 : stdgo.StdGoTypes.GoInt), ("Pythagoras" : stdgo.GoString)) : stdgo.encoding.gob_test.Gob_test.P)));
        if (_err != null) {
            stdgo.log.Log.fatal(stdgo.Go.toInterface(("encode error:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        _err = _enc.encode(stdgo.Go.toInterface((new stdgo.encoding.gob_test.Gob_test.P((1782 : stdgo.StdGoTypes.GoInt), (1841 : stdgo.StdGoTypes.GoInt), (1922 : stdgo.StdGoTypes.GoInt), ("Treehouse" : stdgo.GoString)) : stdgo.encoding.gob_test.Gob_test.P)));
        if (_err != null) {
            stdgo.log.Log.fatal(stdgo.Go.toInterface(("encode error:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        var _q:Q = ({} : stdgo.encoding.gob_test.Gob_test.Q);
        _err = _dec.decode(stdgo.Go.toInterface((stdgo.Go.setRef(_q) : stdgo.StdGoTypes.Ref<stdgo.encoding.gob_test.Gob_test.Q>)));
        if (_err != null) {
            stdgo.log.Log.fatal(stdgo.Go.toInterface(("decode error 1:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        stdgo.fmt.Fmt.printf(("%q: {%d, %d}\n" : stdgo.GoString), stdgo.Go.toInterface(_q.name), stdgo.Go.toInterface(_q.x.value), stdgo.Go.toInterface(_q.y.value));
        _err = _dec.decode(stdgo.Go.toInterface((stdgo.Go.setRef(_q) : stdgo.StdGoTypes.Ref<stdgo.encoding.gob_test.Gob_test.Q>)));
        if (_err != null) {
            stdgo.log.Log.fatal(stdgo.Go.toInterface(("decode error 2:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        stdgo.fmt.Fmt.printf(("%q: {%d, %d}\n" : stdgo.GoString), stdgo.Go.toInterface(_q.name), stdgo.Go.toInterface(_q.x.value), stdgo.Go.toInterface(_q.y.value));
    }
class Vector_asInterface {
    /**
        // UnmarshalBinary modifies the receiver so it must take a pointer receiver.
    **/
    @:keep
    public dynamic function unmarshalBinary(_data:stdgo.Slice<stdgo.StdGoTypes.GoByte>):stdgo.Error return __self__.value.unmarshalBinary(_data);
    @:keep
    public dynamic function marshalBinary():{ var _0 : stdgo.Slice<stdgo.StdGoTypes.GoByte>; var _1 : stdgo.Error; } return __self__.value.marshalBinary();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<Vector>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.encoding.gob_test.Gob_test.Vector_asInterface) class Vector_static_extension {
    /**
        // UnmarshalBinary modifies the receiver so it must take a pointer receiver.
    **/
    @:keep
    static public function unmarshalBinary( _v:stdgo.StdGoTypes.Ref<Vector>, _data:stdgo.Slice<stdgo.StdGoTypes.GoByte>):stdgo.Error {
        @:recv var _v:stdgo.StdGoTypes.Ref<Vector> = _v;
        var _b = stdgo.bytes.Bytes.newBuffer(_data);
        var __tmp__ = stdgo.fmt.Fmt.fscanln(stdgo.Go.asInterface(_b), stdgo.Go.toInterface(stdgo.Go.pointer(_v._x)), stdgo.Go.toInterface(stdgo.Go.pointer(_v._y)), stdgo.Go.toInterface(stdgo.Go.pointer(_v._z))), __0:stdgo.StdGoTypes.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        return _err;
    }
    @:keep
    static public function marshalBinary( _v:Vector):{ var _0 : stdgo.Slice<stdgo.StdGoTypes.GoByte>; var _1 : stdgo.Error; } {
        @:recv var _v:Vector = _v?.__copy__();
        var _b:stdgo.bytes.Bytes.Buffer = ({} : stdgo.bytes.Bytes.Buffer);
        stdgo.fmt.Fmt.fprintln(stdgo.Go.asInterface((stdgo.Go.setRef(_b) : stdgo.StdGoTypes.Ref<stdgo.bytes.Bytes.Buffer>)), stdgo.Go.toInterface(_v._x), stdgo.Go.toInterface(_v._y), stdgo.Go.toInterface(_v._z));
        return { _0 : _b.bytes(), _1 : (null : stdgo.Error) };
    }
}
class Point_asInterface {
    @:keep
    public dynamic function hypotenuse():stdgo.StdGoTypes.GoFloat64 return __self__.value.hypotenuse();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<Point>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.encoding.gob_test.Gob_test.Point_asInterface) class Point_static_extension {
    @:keep
    static public function hypotenuse( _p:Point):stdgo.StdGoTypes.GoFloat64 {
        @:recv var _p:Point = _p?.__copy__();
        return stdgo.math.Math.hypot((_p.x : stdgo.StdGoTypes.GoFloat64), (_p.y : stdgo.StdGoTypes.GoFloat64));
    }
}
