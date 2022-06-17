package stdgo.encoding.gob_test;
import stdgo.StdGoTypes;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.Chan;
typedef Pythagoras = StructType & {
    public function hypotenuse():GoFloat64;
};
@:structInit @:using(stdgo.encoding.gob_test.Gob_test.Vector_static_extension) class Vector {
    @:keep
    public function unmarshalBinary(_data:Slice<GoByte>):Error {
        var _v = this;
        _v;
        var _b:stdgo.bytes.Bytes.Buffer = stdgo.bytes.Bytes.newBuffer(_data);
        var __tmp__ = stdgo.fmt.Fmt.fscanln(_b, Go.pointer(_v._x), Go.pointer(_v._y), Go.pointer(_v._z)), _0:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        return _err;
    }
    @:keep
    public function marshalBinary():{ var _0 : Slice<GoByte>; var _1 : Error; } {
        var _v = this;
        (_v == null ? null : _v.__copy__());
        var _b:stdgo.bytes.Bytes.Buffer = new stdgo.bytes.Bytes.Buffer();
        stdgo.fmt.Fmt.fprintln(_b, _v._x, _v._y, _v._z);
        return { _0 : _b.bytes(), _1 : ((null : stdgo.Error)) };
    }
    public var _x : GoInt = ((0 : GoInt));
    public var _y : GoInt = ((0 : GoInt));
    public var _z : GoInt = ((0 : GoInt));
    public function new(?_x:GoInt, ?_y:GoInt, ?_z:GoInt) {
        if (_x != null) this._x = _x;
        if (_y != null) this._y = _y;
        if (_z != null) this._z = _z;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new Vector(_x, _y, _z);
    }
}
@:structInit @:using(stdgo.encoding.gob_test.Gob_test.Point_static_extension) class Point {
    @:keep
    public function hypotenuse():GoFloat64 {
        var _p = this;
        (_p == null ? null : _p.__copy__());
        return stdgo.math.Math.hypot(((_p.x : GoFloat64)), ((_p.y : GoFloat64)));
    }
    public var x : GoInt = ((0 : GoInt));
    public var y : GoInt = ((0 : GoInt));
    public function new(?x:GoInt, ?y:GoInt) {
        if (x != null) this.x = x;
        if (y != null) this.y = y;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new Point(x, y);
    }
}
@:structInit class P {
    public var x : GoInt = ((0 : GoInt));
    public var y : GoInt = ((0 : GoInt));
    public var z : GoInt = ((0 : GoInt));
    public var name : GoString = (("" : GoString));
    public function new(?x:GoInt, ?y:GoInt, ?z:GoInt, ?name:GoString) {
        if (x != null) this.x = x;
        if (y != null) this.y = y;
        if (z != null) this.z = z;
        if (name != null) this.name = name;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new P(x, y, z, name);
    }
}
@:structInit class Q {
    public var x : Pointer<GoInt32> = ((null : Pointer<GoInt32>));
    public var y : Pointer<GoInt32> = ((null : Pointer<GoInt32>));
    public var name : GoString = (("" : GoString));
    public function new(?x:Pointer<GoInt32>, ?y:Pointer<GoInt32>, ?name:GoString) {
        if (x != null) this.x = x;
        if (y != null) this.y = y;
        if (name != null) this.name = name;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new Q(x, y, name);
    }
}
function example_encodeDecode():Void {
        var _network:stdgo.bytes.Bytes.Buffer = new stdgo.bytes.Bytes.Buffer();
        var _enc:Encoder = stdgo.encoding.gob.Gob.newEncoder(_network);
        var _err:stdgo.Error = _enc.encode(Go.toInterface(((new stdgo.encoding.gob_test.Gob_test.Vector(((3 : GoInt)), ((4 : GoInt)), ((5 : GoInt))) : stdgo.encoding.gob_test.Gob_test.Vector))));
        if (_err != null) {
            stdgo.log.Log.fatal(Go.toInterface(((("encode:" : GoString)))), Go.toInterface(_err));
        };
        var _dec:Decoder = stdgo.encoding.gob.Gob.newDecoder(_network);
        var _v:Vector = new stdgo.encoding.gob_test.Gob_test.Vector();
        _err = _dec.decode(Go.toInterface(_v));
        if (_err != null) {
            stdgo.log.Log.fatal(Go.toInterface(((("decode:" : GoString)))), Go.toInterface(_err));
        };
        stdgo.fmt.Fmt.println(_v);
    }
function example_interface():Void {
        var _network:stdgo.bytes.Bytes.Buffer = new stdgo.bytes.Bytes.Buffer();
        stdgo.encoding.gob.Gob.register(Go.toInterface(((new stdgo.encoding.gob_test.Gob_test.Point() : stdgo.encoding.gob_test.Gob_test.Point))));
        var _enc:Encoder = stdgo.encoding.gob.Gob.newEncoder(_network);
        {
            var _i:GoInt = ((1 : GoInt));
            Go.cfor(_i <= ((3 : GoInt)), _i++, {
                _interfaceEncode(_enc, ((new stdgo.encoding.gob_test.Gob_test.Point(((3 : GoInt)) * _i, ((4 : GoInt)) * _i) : stdgo.encoding.gob_test.Gob_test.Point)));
            });
        };
        var _dec:Decoder = stdgo.encoding.gob.Gob.newDecoder(_network);
        {
            var _i:GoInt = ((1 : GoInt));
            Go.cfor(_i <= ((3 : GoInt)), _i++, {
                var _result:stdgo.encoding.gob_test.Gob_test.Pythagoras = _interfaceDecode(_dec);
                stdgo.fmt.Fmt.println(_result.hypotenuse());
            });
        };
    }
function _interfaceEncode(_enc:Encoder, _p:Pythagoras):Void {
        var _err:stdgo.Error = _enc.encode(Go.toInterface(_p));
        if (_err != null) {
            stdgo.log.Log.fatal(Go.toInterface(((("encode:" : GoString)))), Go.toInterface(_err));
        };
    }
function _interfaceDecode(_dec:Decoder):Pythagoras {
        var _p:Pythagoras = ((null : stdgo.encoding.gob_test.Gob_test.Pythagoras));
        var _err:stdgo.Error = _dec.decode(Go.toInterface(_p));
        if (_err != null) {
            stdgo.log.Log.fatal(Go.toInterface(((("decode:" : GoString)))), Go.toInterface(_err));
        };
        return _p;
    }
function example_basic():Void {
        var _network:stdgo.bytes.Bytes.Buffer = new stdgo.bytes.Bytes.Buffer();
        var _enc:Encoder = stdgo.encoding.gob.Gob.newEncoder(_network);
        var _dec:Decoder = stdgo.encoding.gob.Gob.newDecoder(_network);
        var _err:stdgo.Error = _enc.encode(Go.toInterface(((new stdgo.encoding.gob_test.Gob_test.P(((3 : GoInt)), ((4 : GoInt)), ((5 : GoInt)), ((("Pythagoras" : GoString)))) : stdgo.encoding.gob_test.Gob_test.P))));
        if (_err != null) {
            stdgo.log.Log.fatal(Go.toInterface(((("encode error:" : GoString)))), Go.toInterface(_err));
        };
        _err = _enc.encode(Go.toInterface(((new stdgo.encoding.gob_test.Gob_test.P(((1782 : GoInt)), ((1841 : GoInt)), ((1922 : GoInt)), ((("Treehouse" : GoString)))) : stdgo.encoding.gob_test.Gob_test.P))));
        if (_err != null) {
            stdgo.log.Log.fatal(Go.toInterface(((("encode error:" : GoString)))), Go.toInterface(_err));
        };
        var _q:Q = new stdgo.encoding.gob_test.Gob_test.Q();
        _err = _dec.decode(Go.toInterface(_q));
        if (_err != null) {
            stdgo.log.Log.fatal(Go.toInterface(((("decode error 1:" : GoString)))), Go.toInterface(_err));
        };
        stdgo.fmt.Fmt.printf(((("%q: {%d, %d}\n" : GoString))), Go.toInterface(_q.name), Go.toInterface(_q.x.value), Go.toInterface(_q.y.value));
        _err = _dec.decode(Go.toInterface(_q));
        if (_err != null) {
            stdgo.log.Log.fatal(Go.toInterface(((("decode error 2:" : GoString)))), Go.toInterface(_err));
        };
        stdgo.fmt.Fmt.printf(((("%q: {%d, %d}\n" : GoString))), Go.toInterface(_q.name), Go.toInterface(_q.x.value), Go.toInterface(_q.y.value));
    }
@:keep class Vector_static_extension {

}
class Vector_wrapper {
    public var __t__ : Vector;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
@:keep class Point_static_extension {

}
class Point_wrapper {
    public var __t__ : Point;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
