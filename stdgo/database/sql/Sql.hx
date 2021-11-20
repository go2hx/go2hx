package stdgo.database.sql;
import stdgo.StdGoTypes;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.Chan;
typedef T_decimal = StructType & {
    > T_decimalDecompose,
    > T_decimalCompose,
};
typedef T_decimalDecompose = StructType & {
    public function decompose(_buf:Slice<GoByte>):{ var _0 : GoByte; var _1 : Bool; var _2 : Slice<GoByte>; var _3 : GoInt32; };
};
typedef T_decimalCompose = StructType & {
    public function compose(_form:GoByte, _negative:Bool, _coefficient:Slice<GoByte>, _exponent:GoInt32):Error;
};
typedef Scanner = StructType & {
    public function scan(_src:AnyInterface):Error;
};
typedef T_finalCloser = StructType & {
    public function _finalClose():Error;
};
typedef T_stmtConnGrabber = StructType & {
    public function _grabConn(arg0:stdgo.context.Context.Context):{ var _0 : Pointer<T_driverConn>; var _1 : T_releaseConn; var _2 : Error; };
    public function _txCtx():stdgo.context.Context.Context;
};
typedef Result = StructType & {
    public function lastInsertId():{ var _0 : GoInt64; var _1 : Error; };
    public function rowsAffected():{ var _0 : GoInt64; var _1 : Error; };
};
@:structInit class T_ccChecker {
    public function checkNamedValue(_nv:Pointer<stdgo.database.sql.driver.Driver.NamedValue>):Error {
        var _c = this.__copy__();
        if (_c._cci == null) {
            return stdgo.database.sql.driver.Driver.errSkip;
        };
        var _index:GoInt = _nv.value.ordinal - ((1 : GoInt));
        if (_c._want <= _index) {
            return ((null : stdgo.Error));
        };
        {
            var __tmp__ = try {
                { value : ((_nv.value.value.value : stdgo.database.sql.driver.Driver.Valuer)), ok : true };
            } catch(_) {
                { value : ((null : stdgo.database.sql.driver.Driver.Valuer)), ok : false };
            }, _vr = __tmp__.value, _ok = __tmp__.ok;
            if (_ok) {
                var __tmp__ = _callValuerValue(_vr), _sv:stdgo.database.sql.driver.Driver.Value = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    return _err;
                };
                if (!stdgo.database.sql.driver.Driver.isValue(Go.toInterface(_sv))) {
                    return stdgo.fmt.Fmt.errorf("non-subset type %T returned from Value", Go.toInterface(_sv));
                };
                _nv.value.value = Go.toInterface(_sv);
            };
        };
        var _err:Error = ((null : stdgo.Error));
        var _arg:stdgo.database.sql.driver.Driver.Value = Go.toInterface(_nv.value.value);
        {
            var __tmp__ = _c._cci.columnConverter(_index).convertValue(Go.toInterface(_arg));
            _nv.value.value = Go.toInterface(__tmp__._0);
            _err = __tmp__._1;
        };
        if (_err != null) {
            return _err;
        };
        if (!stdgo.database.sql.driver.Driver.isValue(Go.toInterface(_nv.value.value))) {
            return stdgo.fmt.Fmt.errorf("driver ColumnConverter error converted %T to unsupported type %T", Go.toInterface(_arg), Go.toInterface(_nv.value.value));
        };
        return ((null : stdgo.Error));
    }
    public var _cci : stdgo.database.sql.driver.Driver.ColumnConverter = ((null : stdgo.database.sql.driver.Driver.ColumnConverter));
    public var _want : GoInt = ((0 : GoInt));
    public function new(?_cci:stdgo.database.sql.driver.Driver.ColumnConverter, ?_want:GoInt) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(_cci) + " " + Go.string(_want) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_ccChecker(_cci, _want);
    }
    public function __set__(__tmp__) {
        this._cci = __tmp__._cci;
        this._want = __tmp__._want;
        return this;
    }
}
@:structInit class NamedArg {
    public var __Named_Fields_Required : T__struct_44 = new T__struct_44();
    public var name : GoString = (("" : GoString));
    public var value : AnyInterface = ((null : AnyInterface));
    public function new(?__Named_Fields_Required:T__struct_44, ?name:GoString, ?value:AnyInterface) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(__Named_Fields_Required) + " " + Go.string(name) + " " + Go.string(value) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new NamedArg(__Named_Fields_Required, name, value);
    }
    public function __set__(__tmp__) {
        this.__Named_Fields_Required = __tmp__.__Named_Fields_Required;
        this.name = __tmp__.name;
        this.value = __tmp__.value;
        return this;
    }
}
@:named class IsolationLevel {
    public function toString():GoString {
        var _i = this.__copy__();
        if (_i.__t__ == levelDefault.__t__) {
            return "Default";
        } else if (_i.__t__ == levelReadUncommitted.__t__) {
            return "Read Uncommitted";
        } else if (_i.__t__ == levelReadCommitted.__t__) {
            return "Read Committed";
        } else if (_i.__t__ == levelWriteCommitted.__t__) {
            return "Write Committed";
        } else if (_i.__t__ == levelRepeatableRead.__t__) {
            return "Repeatable Read";
        } else if (_i.__t__ == levelSnapshot.__t__) {
            return "Snapshot";
        } else if (_i.__t__ == levelSerializable.__t__) {
            return "Serializable";
        } else if (_i.__t__ == levelLinearizable.__t__) {
            return "Linearizable";
        } else {
            return (("IsolationLevel(" : GoString)) + stdgo.strconv.Strconv.itoa(_i.__t__) + ((")" : GoString));
        };
    }
    public var __t__ : GoInt;
    public function new(?t:GoInt) {
        __t__ = t == null ? 0 : t;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() return new IsolationLevel(__t__);
}
@:structInit class TxOptions {
    public var isolation : IsolationLevel = new IsolationLevel();
    public var readOnly : Bool = false;
    public function new(?isolation:IsolationLevel, ?readOnly:Bool) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(isolation) + " " + Go.string(readOnly) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new TxOptions(isolation, readOnly);
    }
    public function __set__(__tmp__) {
        this.isolation = __tmp__.isolation;
        this.readOnly = __tmp__.readOnly;
        return this;
    }
}
@:named class RawBytes {
    public var __t__ : Slice<GoUInt8>;
    public function new(?t:Slice<GoUInt8>) {
        __t__ = t == null ? new Slice<GoUInt8>().nil() : t;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    @:implicit
    public function toString():GoString return Go.string(__t__);
    public function __copy__() return new RawBytes(__t__);
    public function __append__(args:haxe.Rest<GoUInt8>) return new RawBytes(this.__t__.__append__(...args));
    public function __slice__(low:GoInt, high:GoInt = -1) return new RawBytes(this.__t__.__slice__(low, high));
}
@:structInit class NullString {
    public function value():{ var _0 : stdgo.database.sql.driver.Driver.Value; var _1 : Error; } {
        var _ns = this.__copy__();
        if (!_ns.valid) {
            return { _0 : ((null : stdgo.database.sql.driver.Driver.Value)), _1 : ((null : stdgo.Error)) };
        };
        return { _0 : Go.toInterface(_ns.toString), _1 : ((null : stdgo.Error)) };
    }
    public function scan(_value:AnyInterface):Error {
        var _ns = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_value == null) {
            {
                final __tmp__0 = "";
                final __tmp__1 = false;
                _ns.value.toString = __tmp__0;
                _ns.value.valid = __tmp__1;
            };
            return ((null : stdgo.Error));
        };
        _ns.value.valid = true;
        return _convertAssign(Go.toInterface(Go.pointer(_ns.value.toString)), Go.toInterface(_value));
    }
    public var toString : GoString = (("" : GoString));
    public var valid : Bool = false;
    public function new(?toString:GoString, ?valid:Bool) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(toString) + " " + Go.string(valid) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new NullString(toString, valid);
    }
    public function __set__(__tmp__) {
        this.toString = __tmp__.toString;
        this.valid = __tmp__.valid;
        return this;
    }
}
@:structInit class NullInt64 {
    public function value():{ var _0 : stdgo.database.sql.driver.Driver.Value; var _1 : Error; } {
        var _n = this.__copy__();
        if (!_n.valid) {
            return { _0 : ((null : stdgo.database.sql.driver.Driver.Value)), _1 : ((null : stdgo.Error)) };
        };
        return { _0 : Go.toInterface(_n.int64), _1 : ((null : stdgo.Error)) };
    }
    public function scan(_value:AnyInterface):Error {
        var _n = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_value == null) {
            {
                final __tmp__0 = ((0 : GoInt64));
                final __tmp__1 = false;
                _n.value.int64 = __tmp__0;
                _n.value.valid = __tmp__1;
            };
            return ((null : stdgo.Error));
        };
        _n.value.valid = true;
        return _convertAssign(Go.toInterface(Go.pointer(_n.value.int64)), Go.toInterface(_value));
    }
    public var int64 : GoInt64 = ((0 : GoInt64));
    public var valid : Bool = false;
    public function new(?int64:GoInt64, ?valid:Bool) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(int64) + " " + Go.string(valid) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new NullInt64(int64, valid);
    }
    public function __set__(__tmp__) {
        this.int64 = __tmp__.int64;
        this.valid = __tmp__.valid;
        return this;
    }
}
@:structInit class NullInt32 {
    public function value():{ var _0 : stdgo.database.sql.driver.Driver.Value; var _1 : Error; } {
        var _n = this.__copy__();
        if (!_n.valid) {
            return { _0 : ((null : stdgo.database.sql.driver.Driver.Value)), _1 : ((null : stdgo.Error)) };
        };
        return { _0 : Go.toInterface(((_n.int32 : GoInt64))), _1 : ((null : stdgo.Error)) };
    }
    public function scan(_value:AnyInterface):Error {
        var _n = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_value == null) {
            {
                final __tmp__0 = ((0 : GoInt32));
                final __tmp__1 = false;
                _n.value.int32 = __tmp__0;
                _n.value.valid = __tmp__1;
            };
            return ((null : stdgo.Error));
        };
        _n.value.valid = true;
        return _convertAssign(Go.toInterface(Go.pointer(_n.value.int32)), Go.toInterface(_value));
    }
    public var int32 : GoInt32 = ((0 : GoInt32));
    public var valid : Bool = false;
    public function new(?int32:GoInt32, ?valid:Bool) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(int32) + " " + Go.string(valid) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new NullInt32(int32, valid);
    }
    public function __set__(__tmp__) {
        this.int32 = __tmp__.int32;
        this.valid = __tmp__.valid;
        return this;
    }
}
@:structInit class NullInt16 {
    public function value():{ var _0 : stdgo.database.sql.driver.Driver.Value; var _1 : Error; } {
        var _n = this.__copy__();
        if (!_n.valid) {
            return { _0 : ((null : stdgo.database.sql.driver.Driver.Value)), _1 : ((null : stdgo.Error)) };
        };
        return { _0 : Go.toInterface(((_n.int16 : GoInt64))), _1 : ((null : stdgo.Error)) };
    }
    public function scan(_value:AnyInterface):Error {
        var _n = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_value == null) {
            {
                final __tmp__0 = ((0 : GoInt16));
                final __tmp__1 = false;
                _n.value.int16 = __tmp__0;
                _n.value.valid = __tmp__1;
            };
            return ((null : stdgo.Error));
        };
        var _err:stdgo.Error = _convertAssign(Go.toInterface(Go.pointer(_n.value.int16)), Go.toInterface(_value));
        _n.value.valid = _err == null;
        return _err;
    }
    public var int16 : GoInt16 = ((0 : GoInt16));
    public var valid : Bool = false;
    public function new(?int16:GoInt16, ?valid:Bool) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(int16) + " " + Go.string(valid) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new NullInt16(int16, valid);
    }
    public function __set__(__tmp__) {
        this.int16 = __tmp__.int16;
        this.valid = __tmp__.valid;
        return this;
    }
}
@:structInit class NullByte {
    public function value():{ var _0 : stdgo.database.sql.driver.Driver.Value; var _1 : Error; } {
        var _n = this.__copy__();
        if (!_n.valid) {
            return { _0 : ((null : stdgo.database.sql.driver.Driver.Value)), _1 : ((null : stdgo.Error)) };
        };
        return { _0 : Go.toInterface(((_n.byte : GoInt64))), _1 : ((null : stdgo.Error)) };
    }
    public function scan(_value:AnyInterface):Error {
        var _n = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_value == null) {
            {
                final __tmp__0 = ((0 : GoUInt8));
                final __tmp__1 = false;
                _n.value.byte = __tmp__0;
                _n.value.valid = __tmp__1;
            };
            return ((null : stdgo.Error));
        };
        var _err:stdgo.Error = _convertAssign(Go.toInterface(Go.pointer(_n.value.byte)), Go.toInterface(_value));
        _n.value.valid = _err == null;
        return _err;
    }
    public var byte : GoUInt8 = ((0 : GoUInt8));
    public var valid : Bool = false;
    public function new(?byte:GoUInt8, ?valid:Bool) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(byte) + " " + Go.string(valid) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new NullByte(byte, valid);
    }
    public function __set__(__tmp__) {
        this.byte = __tmp__.byte;
        this.valid = __tmp__.valid;
        return this;
    }
}
@:structInit class NullFloat64 {
    public function value():{ var _0 : stdgo.database.sql.driver.Driver.Value; var _1 : Error; } {
        var _n = this.__copy__();
        if (!_n.valid) {
            return { _0 : ((null : stdgo.database.sql.driver.Driver.Value)), _1 : ((null : stdgo.Error)) };
        };
        return { _0 : Go.toInterface(_n.float64), _1 : ((null : stdgo.Error)) };
    }
    public function scan(_value:AnyInterface):Error {
        var _n = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_value == null) {
            {
                final __tmp__0 = ((0 : GoFloat64));
                final __tmp__1 = false;
                _n.value.float64 = __tmp__0;
                _n.value.valid = __tmp__1;
            };
            return ((null : stdgo.Error));
        };
        _n.value.valid = true;
        return _convertAssign(Go.toInterface(Go.pointer(_n.value.float64)), Go.toInterface(_value));
    }
    public var float64 : GoFloat64 = ((0 : GoFloat64));
    public var valid : Bool = false;
    public function new(?float64:GoFloat64, ?valid:Bool) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(float64) + " " + Go.string(valid) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new NullFloat64(float64, valid);
    }
    public function __set__(__tmp__) {
        this.float64 = __tmp__.float64;
        this.valid = __tmp__.valid;
        return this;
    }
}
@:structInit class NullBool {
    public function value():{ var _0 : stdgo.database.sql.driver.Driver.Value; var _1 : Error; } {
        var _n = this.__copy__();
        if (!_n.valid) {
            return { _0 : ((null : stdgo.database.sql.driver.Driver.Value)), _1 : ((null : stdgo.Error)) };
        };
        return { _0 : Go.toInterface(_n.bool), _1 : ((null : stdgo.Error)) };
    }
    public function scan(_value:AnyInterface):Error {
        var _n = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_value == null) {
            {
                final __tmp__0 = false;
                final __tmp__1 = false;
                _n.value.bool = __tmp__0;
                _n.value.valid = __tmp__1;
            };
            return ((null : stdgo.Error));
        };
        _n.value.valid = true;
        return _convertAssign(Go.toInterface(Go.pointer(_n.value.bool)), Go.toInterface(_value));
    }
    public var bool : Bool = false;
    public var valid : Bool = false;
    public function new(?bool:Bool, ?valid:Bool) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(bool) + " " + Go.string(valid) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new NullBool(bool, valid);
    }
    public function __set__(__tmp__) {
        this.bool = __tmp__.bool;
        this.valid = __tmp__.valid;
        return this;
    }
}
@:structInit class NullTime {
    public function value():{ var _0 : stdgo.database.sql.driver.Driver.Value; var _1 : Error; } {
        var _n = this.__copy__();
        if (!_n.valid) {
            return { _0 : ((null : stdgo.database.sql.driver.Driver.Value)), _1 : ((null : stdgo.Error)) };
        };
        return { _0 : Go.toInterface(_n.time.__copy__()), _1 : ((null : stdgo.Error)) };
    }
    public function scan(_value:AnyInterface):Error {
        var _n = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_value == null) {
            {
                final __tmp__0 = new stdgo.time.Time.Time().__copy__();
                final __tmp__1 = false;
                _n.value.time = __tmp__0;
                _n.value.valid = __tmp__1;
            };
            return ((null : stdgo.Error));
        };
        _n.value.valid = true;
        return _convertAssign(Go.toInterface(Go.pointer(_n.value.time)), Go.toInterface(_value));
    }
    public var time : stdgo.time.Time.Time = new stdgo.time.Time.Time();
    public var valid : Bool = false;
    public function new(?time:stdgo.time.Time.Time, ?valid:Bool) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(time) + " " + Go.string(valid) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new NullTime(time, valid);
    }
    public function __set__(__tmp__) {
        this.time = __tmp__.time;
        this.valid = __tmp__.valid;
        return this;
    }
}
@:structInit class Out {
    public var __Named_Fields_Required : T__struct_44 = new T__struct_44();
    public var dest : AnyInterface = ((null : AnyInterface));
    public var in_ : Bool = false;
    public function new(?__Named_Fields_Required:T__struct_44, ?dest:AnyInterface, ?in_:Bool) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(__Named_Fields_Required) + " " + Go.string(dest) + " " + Go.string(in_) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new Out(__Named_Fields_Required, dest, in_);
    }
    public function __set__(__tmp__) {
        this.__Named_Fields_Required = __tmp__.__Named_Fields_Required;
        this.dest = __tmp__.dest;
        this.in_ = __tmp__.in_;
        return this;
    }
}
@:structInit class DB {
    public function conn(_ctx:stdgo.context.Context.Context):{ var _0 : Pointer<Conn>; var _1 : Error; } {
        var _db = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _dc:Pointer<T_driverConn> = new Pointer<T_driverConn>().nil();
        var _err:Error = ((null : stdgo.Error));
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _maxBadConnRetries, _i++, {
                {
                    var __tmp__ = _db.value._conn(_ctx, _cachedOrNewConn);
                    _dc = __tmp__._0;
                    _err = __tmp__._1;
                };
                if (Go.toInterface(_err) != Go.toInterface(stdgo.database.sql.driver.Driver.errBadConn)) {
                    break;
                };
            });
        };
        if (Go.toInterface(_err) == Go.toInterface(stdgo.database.sql.driver.Driver.errBadConn)) {
            {
                var __tmp__ = _db.value._conn(_ctx, _alwaysNewConn);
                _dc = __tmp__._0;
                _err = __tmp__._1;
            };
        };
        if (_err != null) {
            return { _0 : new Pointer<Conn>().nil(), _1 : _err };
        };
        var _conn:Pointer<Conn> = Go.pointer((({ _db : _db, _dc : _dc, _closemu : new stdgo.sync.Sync.RWMutex(), _done : 0 } : Conn)));
        return { _0 : _conn, _1 : ((null : stdgo.Error)) };
    }
    public function driver():stdgo.database.sql.driver.Driver.Driver {
        var _db = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return _db.value._connector.driver();
    }
    public function _beginDC(_ctx:stdgo.context.Context.Context, _dc:Pointer<T_driverConn>, _release:Error -> Void, _opts:Pointer<TxOptions>):{ var _0 : Pointer<Tx>; var _1 : Error; } {
        var _db = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _tx:Pointer<Tx> = new Pointer<Tx>().nil(), _err:Error = ((null : stdgo.Error));
        var _txi:stdgo.database.sql.driver.Driver.Tx = ((null : stdgo.database.sql.driver.Driver.Tx));
        var _keepConnOnRollback:Bool = false;
        _withLock(_dc.value, function():Void {
            var __tmp__ = try {
                { value : ((_dc.value._ci.__underlying__().value : stdgo.database.sql.driver.Driver.SessionResetter)), ok : true };
            } catch(_) {
                { value : ((null : stdgo.database.sql.driver.Driver.SessionResetter)), ok : false };
            }, _ = __tmp__.value, _hasSessionResetter = __tmp__.ok;
            var __tmp__ = try {
                { value : ((_dc.value._ci.__underlying__().value : stdgo.database.sql.driver.Driver.Validator)), ok : true };
            } catch(_) {
                { value : ((null : stdgo.database.sql.driver.Driver.Validator)), ok : false };
            }, _ = __tmp__.value, _hasConnectionValidator = __tmp__.ok;
            _keepConnOnRollback = _hasSessionResetter && _hasConnectionValidator;
            {
                var __tmp__ = _ctxDriverBegin(_ctx, _opts, _dc.value._ci);
                _txi = __tmp__._0;
                _err = __tmp__._1;
            };
        });
        if (_err != null) {
            _release(_err);
            return { _0 : new Pointer<Tx>().nil(), _1 : _err };
        };
        var __tmp__ = stdgo.context.Context.withCancel(_ctx), _ctx:stdgo.context.Context.Context = __tmp__._0, _cancel:stdgo.context.Context.CancelFunc = __tmp__._1;
        _tx = Go.pointer((({ _db : _db, _dc : _dc, _releaseConn : _release, _txi : _txi, _cancel : _cancel.__copy__().__t__, _keepConnOnRollback : _keepConnOnRollback, _ctx : _ctx, _closemu : new stdgo.sync.Sync.RWMutex(), _done : 0, _stmts : { mutex : new stdgo.sync.Sync.Mutex(), _v : new Slice<Pointer<Stmt>>().nil() } } : Tx)));
        Go.routine(_tx.value._awaitDone());
        return { _0 : _tx, _1 : ((null : stdgo.Error)) };
    }
    public function _begin(_ctx:stdgo.context.Context.Context, _opts:Pointer<TxOptions>, _strategy:T_connReuseStrategy):{ var _0 : Pointer<Tx>; var _1 : Error; } {
        var _db = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _tx:Pointer<Tx> = new Pointer<Tx>().nil(), _err:Error = ((null : stdgo.Error));
        var __tmp__ = _db.value._conn(_ctx, _strategy), _dc:Pointer<T_driverConn> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : new Pointer<Tx>().nil(), _1 : _err };
        };
        return _db.value._beginDC(_ctx, _dc, _dc.value._releaseConn, _opts);
    }
    public function begin():{ var _0 : Pointer<Tx>; var _1 : Error; } {
        var _db = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return _db.value.beginTx(stdgo.context.Context.background(), new Pointer<TxOptions>().nil());
    }
    public function beginTx(_ctx:stdgo.context.Context.Context, _opts:Pointer<TxOptions>):{ var _0 : Pointer<Tx>; var _1 : Error; } {
        var _db = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _tx:Pointer<Tx> = new Pointer<Tx>().nil();
        var _err:Error = ((null : stdgo.Error));
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _maxBadConnRetries, _i++, {
                {
                    var __tmp__ = _db.value._begin(_ctx, _opts, _cachedOrNewConn);
                    _tx = __tmp__._0;
                    _err = __tmp__._1;
                };
                if (Go.toInterface(_err) != Go.toInterface(stdgo.database.sql.driver.Driver.errBadConn)) {
                    break;
                };
            });
        };
        if (Go.toInterface(_err) == Go.toInterface(stdgo.database.sql.driver.Driver.errBadConn)) {
            return _db.value._begin(_ctx, _opts, _alwaysNewConn);
        };
        return { _0 : _tx, _1 : _err };
    }
    public function queryRow(_query:GoString, _args:haxe.Rest<AnyInterface>):Pointer<Row> {
        var _db = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _args = new Slice<AnyInterface>(..._args);
        return _db.value.queryRowContext(stdgo.context.Context.background(), _query, ..._args.toArray());
    }
    public function queryRowContext(_ctx:stdgo.context.Context.Context, _query:GoString, _args:haxe.Rest<AnyInterface>):Pointer<Row> {
        var _db = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _args = new Slice<AnyInterface>(..._args);
        var __tmp__ = _db.value.queryContext(_ctx, _query, ..._args.toArray()), _rows:Pointer<Rows> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        return Go.pointer((({ _rows : _rows, _err : _err } : Row)));
    }
    public function _queryDC(_ctx:stdgo.context.Context.Context, _txctx:stdgo.context.Context.Context, _dc:Pointer<T_driverConn>, _releaseConn:Error -> Void, _query:GoString, _args:Slice<AnyInterface>):{ var _0 : Pointer<Rows>; var _1 : Error; } {
        var _db = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var __tmp__ = try {
            { value : ((_dc.value._ci.__underlying__().value : stdgo.database.sql.driver.Driver.QueryerContext)), ok : true };
        } catch(_) {
            { value : ((null : stdgo.database.sql.driver.Driver.QueryerContext)), ok : false };
        }, _queryerCtx = __tmp__.value, _ok = __tmp__.ok;
        var _queryer:stdgo.database.sql.driver.Driver.Queryer = ((null : stdgo.database.sql.driver.Driver.Queryer));
        if (!_ok) {
            {
                var __tmp__ = try {
                    { value : ((_dc.value._ci.__underlying__().value : stdgo.database.sql.driver.Driver.Queryer)), ok : true };
                } catch(_) {
                    { value : ((null : stdgo.database.sql.driver.Driver.Queryer)), ok : false };
                };
                _queryer = __tmp__.value;
                _ok = __tmp__.ok;
            };
        };
        if (_ok) {
            var _nvdargs:Slice<stdgo.database.sql.driver.Driver.NamedValue> = new Slice<stdgo.database.sql.driver.Driver.NamedValue>().nil();
            var _rowsi:stdgo.database.sql.driver.Driver.Rows = ((null : stdgo.database.sql.driver.Driver.Rows));
            var _err:Error = ((null : stdgo.Error));
            _withLock(_dc.value, function():Void {
                {
                    var __tmp__ = _driverArgsConnLocked(_dc.value._ci, new Pointer<T_driverStmt>().nil(), _args);
                    _nvdargs = __tmp__._0;
                    _err = __tmp__._1;
                };
                if (_err != null) {
                    return;
                };
                {
                    var __tmp__ = _ctxDriverQuery(_ctx, _queryerCtx, _queryer, _query, _nvdargs);
                    _rowsi = __tmp__._0;
                    _err = __tmp__._1;
                };
            });
            if (Go.toInterface(_err) != Go.toInterface(stdgo.database.sql.driver.Driver.errSkip)) {
                if (_err != null) {
                    _releaseConn(_err);
                    return { _0 : new Pointer<Rows>().nil(), _1 : _err };
                };
                var _rows:Pointer<Rows> = Go.pointer((({ _dc : _dc, _releaseConn : _releaseConn, _rowsi : _rowsi, _cancel : null, _closeStmt : new Pointer<T_driverStmt>().nil(), _closemu : new stdgo.sync.Sync.RWMutex(), _closed : false, _lasterr : ((null : stdgo.Error)), _lastcols : new Slice<stdgo.database.sql.driver.Driver.Value>().nil() } : Rows)));
                _rows.value._initContextClose(_ctx, _txctx);
                return { _0 : _rows, _1 : ((null : stdgo.Error)) };
            };
        };
        var _si:stdgo.database.sql.driver.Driver.Stmt = ((null : stdgo.database.sql.driver.Driver.Stmt));
        var _err:Error = ((null : stdgo.Error));
        _withLock(_dc.value, function():Void {
            {
                var __tmp__ = _ctxDriverPrepare(_ctx, _dc.value._ci, _query);
                _si = __tmp__._0;
                _err = __tmp__._1;
            };
        });
        if (_err != null) {
            _releaseConn(_err);
            return { _0 : new Pointer<Rows>().nil(), _1 : _err };
        };
        var _ds:Pointer<T_driverStmt> = Go.pointer((({ locker : _dc.value, _si : _si, _closed : false, _closeErr : ((null : stdgo.Error)) } : T_driverStmt)));
        var __tmp__ = _rowsiFromStatement(_ctx, _dc.value._ci, _ds, ..._args.toArray()), _rowsi:stdgo.database.sql.driver.Driver.Rows = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _ds.value.close();
            _releaseConn(_err);
            return { _0 : new Pointer<Rows>().nil(), _1 : _err };
        };
        var _rows:Pointer<Rows> = Go.pointer((({ _dc : _dc, _releaseConn : _releaseConn, _rowsi : _rowsi, _closeStmt : _ds, _cancel : null, _closemu : new stdgo.sync.Sync.RWMutex(), _closed : false, _lasterr : ((null : stdgo.Error)), _lastcols : new Slice<stdgo.database.sql.driver.Driver.Value>().nil() } : Rows)));
        _rows.value._initContextClose(_ctx, _txctx);
        return { _0 : _rows, _1 : ((null : stdgo.Error)) };
    }
    public function _query(_ctx:stdgo.context.Context.Context, _query:GoString, _args:Slice<AnyInterface>, _strategy:T_connReuseStrategy):{ var _0 : Pointer<Rows>; var _1 : Error; } {
        var _db = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var __tmp__ = _db.value._conn(_ctx, _strategy), _dc:Pointer<T_driverConn> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : new Pointer<Rows>().nil(), _1 : _err };
        };
        return _db.value._queryDC(_ctx, ((null : stdgo.context.Context.Context)), _dc, _dc.value._releaseConn, _query, _args);
    }
    public function query(_query:GoString, _args:haxe.Rest<AnyInterface>):{ var _0 : Pointer<Rows>; var _1 : Error; } {
        var _db = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _args = new Slice<AnyInterface>(..._args);
        return _db.value.queryContext(stdgo.context.Context.background(), _query, ..._args.toArray());
    }
    public function queryContext(_ctx:stdgo.context.Context.Context, _query:GoString, _args:haxe.Rest<AnyInterface>):{ var _0 : Pointer<Rows>; var _1 : Error; } {
        var _db = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _args = new Slice<AnyInterface>(..._args);
        var _rows:Pointer<Rows> = new Pointer<Rows>().nil();
        var _err:Error = ((null : stdgo.Error));
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _maxBadConnRetries, _i++, {
                {
                    var __tmp__ = _db.value._query(_ctx, _query, _args, _cachedOrNewConn);
                    _rows = __tmp__._0;
                    _err = __tmp__._1;
                };
                if (Go.toInterface(_err) != Go.toInterface(stdgo.database.sql.driver.Driver.errBadConn)) {
                    break;
                };
            });
        };
        if (Go.toInterface(_err) == Go.toInterface(stdgo.database.sql.driver.Driver.errBadConn)) {
            return _db.value._query(_ctx, _query, _args, _alwaysNewConn);
        };
        return { _0 : _rows, _1 : _err };
    }
    public function _execDC(_ctx:stdgo.context.Context.Context, _dc:Pointer<T_driverConn>, _release:Error -> Void, _query:GoString, _args:Slice<AnyInterface>):{ var _0 : Result; var _1 : Error; } {
        var _db = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var recover_exception:Error = null;
        var deferstack:Array<Void -> Void> = [];
        var _res:Result = ((null : Result)), _err:Error = ((null : stdgo.Error));
        {
            deferstack.unshift(() -> {
                var a = function():Void {
                    _release(_err);
                };
                a();
            });
        };
        try {
            var __tmp__ = try {
                { value : ((_dc.value._ci.__underlying__().value : stdgo.database.sql.driver.Driver.ExecerContext)), ok : true };
            } catch(_) {
                { value : ((null : stdgo.database.sql.driver.Driver.ExecerContext)), ok : false };
            }, _execerCtx = __tmp__.value, _ok = __tmp__.ok;
            var _execer:stdgo.database.sql.driver.Driver.Execer = ((null : stdgo.database.sql.driver.Driver.Execer));
            if (!_ok) {
                {
                    var __tmp__ = try {
                        { value : ((_dc.value._ci.__underlying__().value : stdgo.database.sql.driver.Driver.Execer)), ok : true };
                    } catch(_) {
                        { value : ((null : stdgo.database.sql.driver.Driver.Execer)), ok : false };
                    };
                    _execer = __tmp__.value;
                    _ok = __tmp__.ok;
                };
            };
            if (_ok) {
                var _nvdargs:Slice<stdgo.database.sql.driver.Driver.NamedValue> = new Slice<stdgo.database.sql.driver.Driver.NamedValue>().nil();
                var _resi:stdgo.database.sql.driver.Driver.Result = ((null : stdgo.database.sql.driver.Driver.Result));
                _withLock(_dc.value, function():Void {
                    {
                        var __tmp__ = _driverArgsConnLocked(_dc.value._ci, new Pointer<T_driverStmt>().nil(), _args);
                        _nvdargs = __tmp__._0;
                        _err = __tmp__._1;
                    };
                    if (_err != null) {
                        return;
                    };
                    {
                        var __tmp__ = _ctxDriverExec(_ctx, _execerCtx, _execer, _query, _nvdargs);
                        _resi = __tmp__._0;
                        _err = __tmp__._1;
                    };
                });
                if (Go.toInterface(_err) != Go.toInterface(stdgo.database.sql.driver.Driver.errSkip)) {
                    if (_err != null) {
                        {
                            for (defer in deferstack) {
                                defer();
                            };
                            return { _0 : ((null : Result)), _1 : _err };
                        };
                    };
                    {
                        for (defer in deferstack) {
                            defer();
                        };
                        return { _0 : new T_driverResult(_dc.value, _resi).__copy__(), _1 : ((null : stdgo.Error)) };
                    };
                };
            };
            var _si:stdgo.database.sql.driver.Driver.Stmt = ((null : stdgo.database.sql.driver.Driver.Stmt));
            _withLock(_dc.value, function():Void {
                {
                    var __tmp__ = _ctxDriverPrepare(_ctx, _dc.value._ci, _query);
                    _si = __tmp__._0;
                    _err = __tmp__._1;
                };
            });
            if (_err != null) {
                {
                    for (defer in deferstack) {
                        defer();
                    };
                    return { _0 : ((null : Result)), _1 : _err };
                };
            };
            var _ds:Pointer<T_driverStmt> = Go.pointer((({ locker : _dc.value, _si : _si, _closed : false, _closeErr : ((null : stdgo.Error)) } : T_driverStmt)));
            deferstack.unshift(() -> _ds.value.close());
            {
                for (defer in deferstack) {
                    defer();
                };
                return _resultFromStatement(_ctx, _dc.value._ci, _ds, ..._args.toArray());
            };
            for (defer in deferstack) {
                defer();
            };
        } catch(e) {
            recover_exception = stdgo.runtime.Runtime.newRuntime(e.message);
            {
                for (defer in deferstack) {
                    defer();
                };
                if (recover_exception != null) throw recover_exception;
                return { _0 : _res, _1 : _err };
            };
        };
    }
    public function _exec(_ctx:stdgo.context.Context.Context, _query:GoString, _args:Slice<AnyInterface>, _strategy:T_connReuseStrategy):{ var _0 : Result; var _1 : Error; } {
        var _db = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var __tmp__ = _db.value._conn(_ctx, _strategy), _dc:Pointer<T_driverConn> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : ((null : Result)), _1 : _err };
        };
        return _db.value._execDC(_ctx, _dc, _dc.value._releaseConn, _query, _args);
    }
    public function exec(_query:GoString, _args:haxe.Rest<AnyInterface>):{ var _0 : Result; var _1 : Error; } {
        var _db = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _args = new Slice<AnyInterface>(..._args);
        return _db.value.execContext(stdgo.context.Context.background(), _query, ..._args.toArray());
    }
    public function execContext(_ctx:stdgo.context.Context.Context, _query:GoString, _args:haxe.Rest<AnyInterface>):{ var _0 : Result; var _1 : Error; } {
        var _db = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _args = new Slice<AnyInterface>(..._args);
        var _res:Result = ((null : Result));
        var _err:Error = ((null : stdgo.Error));
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _maxBadConnRetries, _i++, {
                {
                    var __tmp__ = _db.value._exec(_ctx, _query, _args, _cachedOrNewConn);
                    _res = __tmp__._0;
                    _err = __tmp__._1;
                };
                if (Go.toInterface(_err) != Go.toInterface(stdgo.database.sql.driver.Driver.errBadConn)) {
                    break;
                };
            });
        };
        if (Go.toInterface(_err) == Go.toInterface(stdgo.database.sql.driver.Driver.errBadConn)) {
            return _db.value._exec(_ctx, _query, _args, _alwaysNewConn);
        };
        return { _0 : _res, _1 : _err };
    }
    public function _prepareDC(_ctx:stdgo.context.Context.Context, _dc:Pointer<T_driverConn>, _release:Error -> Void, _cg:T_stmtConnGrabber, _query:GoString):{ var _0 : Pointer<Stmt>; var _1 : Error; } {
        var _db = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var recover_exception:Error = null;
        var deferstack:Array<Void -> Void> = [];
        var _ds:Pointer<T_driverStmt> = new Pointer<T_driverStmt>().nil();
        var _err:Error = ((null : stdgo.Error));
        try {
            {
                deferstack.unshift(() -> {
                    var a = function():Void {
                        _release(_err);
                    };
                    a();
                });
            };
            _withLock(_dc.value, function():Void {
                {
                    var __tmp__ = _dc.value._prepareLocked(_ctx, _cg, _query);
                    _ds = __tmp__._0;
                    _err = __tmp__._1;
                };
            });
            if (_err != null) {
                {
                    for (defer in deferstack) {
                        defer();
                    };
                    return { _0 : new Pointer<Stmt>().nil(), _1 : _err };
                };
            };
            var _stmt:Pointer<Stmt> = Go.pointer((({ _db : _db, _query : _query, _cg : _cg, _cgds : _ds, _stickyErr : ((null : stdgo.Error)), _closemu : new stdgo.sync.Sync.RWMutex(), _parentStmt : new Pointer<Stmt>().nil(), _mu : new stdgo.sync.Sync.Mutex(), _closed : false, _css : new Slice<T_connStmt>().nil(), _lastNumClosed : 0 } : Stmt)));
            if (_cg == null) {
                _stmt.value._css = new Slice<T_connStmt>(new T_connStmt(_dc, _ds).__copy__());
                _stmt.value._lastNumClosed = stdgo.sync.atomic.Atomic.loadUint64(Go.pointer(_db.value._numClosed));
                _db.value._addDep(_stmt.value, Go.toInterface(_stmt));
            };
            {
                for (defer in deferstack) {
                    defer();
                };
                return { _0 : _stmt, _1 : ((null : stdgo.Error)) };
            };
            for (defer in deferstack) {
                defer();
            };
        } catch(e) {
            recover_exception = stdgo.runtime.Runtime.newRuntime(e.message);
            {
                for (defer in deferstack) {
                    defer();
                };
                if (recover_exception != null) throw recover_exception;
                return { _0 : new Pointer<Stmt>().nil(), _1 : ((null : stdgo.Error)) };
            };
        };
    }
    public function _prepare(_ctx:stdgo.context.Context.Context, _query:GoString, _strategy:T_connReuseStrategy):{ var _0 : Pointer<Stmt>; var _1 : Error; } {
        var _db = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var __tmp__ = _db.value._conn(_ctx, _strategy), _dc:Pointer<T_driverConn> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : new Pointer<Stmt>().nil(), _1 : _err };
        };
        return _db.value._prepareDC(_ctx, _dc, _dc.value._releaseConn, ((null : T_stmtConnGrabber)), _query);
    }
    public function prepare(_query:GoString):{ var _0 : Pointer<Stmt>; var _1 : Error; } {
        var _db = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return _db.value.prepareContext(stdgo.context.Context.background(), _query);
    }
    public function prepareContext(_ctx:stdgo.context.Context.Context, _query:GoString):{ var _0 : Pointer<Stmt>; var _1 : Error; } {
        var _db = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _stmt:Pointer<Stmt> = new Pointer<Stmt>().nil();
        var _err:Error = ((null : stdgo.Error));
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _maxBadConnRetries, _i++, {
                {
                    var __tmp__ = _db.value._prepare(_ctx, _query, _cachedOrNewConn);
                    _stmt = __tmp__._0;
                    _err = __tmp__._1;
                };
                if (Go.toInterface(_err) != Go.toInterface(stdgo.database.sql.driver.Driver.errBadConn)) {
                    break;
                };
            });
        };
        if (Go.toInterface(_err) == Go.toInterface(stdgo.database.sql.driver.Driver.errBadConn)) {
            return _db.value._prepare(_ctx, _query, _alwaysNewConn);
        };
        return { _0 : _stmt, _1 : _err };
    }
    public function _putConnDBLocked(_dc:Pointer<T_driverConn>, _err:Error):Bool {
        var _db = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_db.value._closed) {
            return false;
        };
        if (_db.value._maxOpen > ((0 : GoInt)) && _db.value._numOpen > _db.value._maxOpen) {
            return false;
        };
        {
            var _c:GoInt = (_db.value._connRequests == null ? 0 : _db.value._connRequests.length);
            if (_c > ((0 : GoInt))) {
                var _req:Chan<T_connRequest> = new Chan<T_connRequest>(0, () -> new T_connRequest(), true);
                var _reqKey:GoUInt64 = ((0 : GoUInt64));
                for (_obj in _db.value._connRequests.keyValueIterator()) {
                    _req = _obj.value;
                    _reqKey = _obj.key;
                    break;
                };
                _db.value._connRequests.remove(_reqKey);
                if (_err == null) {
                    _dc.value._inUse = true;
                };
                _req.send((({ _conn : _dc, _err : _err } : T_connRequest)));
                return true;
            } else if (_err == null && !_db.value._closed) {
                if (_db.value._maxIdleConnsLocked() > _db.value._freeConn.length) {
                    _db.value._freeConn = _db.value._freeConn.__append__(_dc);
                    _db.value._startCleanerLocked();
                    return true;
                };
                _db.value._maxIdleClosed++;
            };
        };
        return false;
    }
    public function _putConn(_dc:Pointer<T_driverConn>, _err:Error, _resetSession:Bool):Void {
        var _db = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (Go.toInterface(_err) != Go.toInterface(stdgo.database.sql.driver.Driver.errBadConn)) {
            if (!_dc.value._validateConnection(_resetSession)) {
                _err = stdgo.database.sql.driver.Driver.errBadConn;
            };
        };
        _db.value._mu.lock();
        if (!_dc.value._inUse) {
            _db.value._mu.unlock();
            if (_debugGetPut) {
                stdgo.fmt.Fmt.printf("putConn(%v) DUPLICATE was: %s\n\nPREVIOUS was: %s", Go.toInterface(_dc), Go.toInterface(_stack()), Go.toInterface(_db.value._lastPut[_dc]));
            };
            throw "sql: connection returned that was never out";
        };
        if (Go.toInterface(_err) != Go.toInterface(stdgo.database.sql.driver.Driver.errBadConn) && _dc.value._expired(_db.value._maxLifetime)) {
            _db.value._maxLifetimeClosed++;
            _err = stdgo.database.sql.driver.Driver.errBadConn;
        };
        if (_debugGetPut) {
            _db.value._lastPut[_dc] = _stack();
        };
        _dc.value._inUse = false;
        _dc.value._returnedAt = _nowFunc().__copy__();
        for (_fn in _dc.value._onPut) {
            _fn();
        };
        _dc.value._onPut = new Slice<() -> Void>().nil();
        if (Go.toInterface(_err) == Go.toInterface(stdgo.database.sql.driver.Driver.errBadConn)) {
            _db.value._maybeOpenNewConnections();
            _db.value._mu.unlock();
            _dc.value.close();
            return;
        };
        if (_putConnHook != null) {
            _putConnHook(_db, _dc);
        };
        var _added:Bool = _db.value._putConnDBLocked(_dc, ((null : stdgo.Error)));
        _db.value._mu.unlock();
        if (!_added) {
            _dc.value.close();
            return;
        };
    }
    public function _noteUnusedDriverStatement(_c:Pointer<T_driverConn>, _ds:Pointer<T_driverStmt>):Void {
        var _db = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var recover_exception:Error = null;
        var deferstack:Array<Void -> Void> = [];
        try {
            _db.value._mu.lock();
            deferstack.unshift(() -> _db.value._mu.unlock());
            if (_c.value._inUse) {
                _c.value._onPut = _c.value._onPut.__append__(function():Void {
                    _ds.value.close();
                });
            } else {
                _c.value.lock();
                var _fc:Bool = _c.value._finalClosed;
                _c.value.unlock();
                if (!_fc) {
                    _ds.value.close();
                };
            };
            for (defer in deferstack) {
                defer();
            };
        } catch(e) {
            recover_exception = stdgo.runtime.Runtime.newRuntime(e.message);
            {
                for (defer in deferstack) {
                    defer();
                };
                if (recover_exception != null) throw recover_exception;
                return;
            };
        };
    }
    public function _conn(_ctx:stdgo.context.Context.Context, _strategy:T_connReuseStrategy):{ var _0 : Pointer<T_driverConn>; var _1 : Error; } {
        var _db = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        _db.value._mu.lock();
        if (_db.value._closed) {
            _db.value._mu.unlock();
            return { _0 : new Pointer<T_driverConn>().nil(), _1 : _errDBClosed };
        };
        {
            null;
            {
                _ctx.done().get();
                _db.value._mu.unlock();
                return { _0 : new Pointer<T_driverConn>().nil(), _1 : _ctx.err() };
            };
        };
        var _lifetime:stdgo.time.Time.Duration = _db.value._maxLifetime;
        var _numFree:GoInt = _db.value._freeConn.length;
        if (_strategy.__t__ == _cachedOrNewConn.__t__ && _numFree > ((0 : GoInt))) {
            var _conn:Pointer<T_driverConn> = _db.value._freeConn[((0 : GoInt))];
            Go.copy(_db.value._freeConn, _db.value._freeConn.__slice__(((1 : GoInt))));
            _db.value._freeConn = _db.value._freeConn.__slice__(0, _numFree - ((1 : GoInt)));
            _conn.value._inUse = true;
            if (_conn.value._expired(_lifetime)) {
                _db.value._maxLifetimeClosed++;
                _db.value._mu.unlock();
                _conn.value.close();
                return { _0 : new Pointer<T_driverConn>().nil(), _1 : stdgo.database.sql.driver.Driver.errBadConn };
            };
            _db.value._mu.unlock();
            {
                var _err:stdgo.Error = _conn.value._resetSession(_ctx);
                if (Go.toInterface(_err) == Go.toInterface(stdgo.database.sql.driver.Driver.errBadConn)) {
                    _conn.value.close();
                    return { _0 : new Pointer<T_driverConn>().nil(), _1 : stdgo.database.sql.driver.Driver.errBadConn };
                };
            };
            return { _0 : _conn, _1 : ((null : stdgo.Error)) };
        };
        if (_db.value._maxOpen > ((0 : GoInt)) && _db.value._numOpen >= _db.value._maxOpen) {
            var _req:Chan<T_connRequest> = new Chan<T_connRequest>(((((1 : GoInt)) : GoInt)).toBasic(), () -> new T_connRequest());
            var _reqKey:GoUInt64 = _db.value._nextRequestKeyLocked();
            _db.value._connRequests[_reqKey] = _req;
            _db.value._waitCount++;
            _db.value._mu.unlock();
            var _waitStart:stdgo.time.Time.Time = _nowFunc().__copy__();
            {
                {
                    _ctx.done().get();
                    _db.value._mu.lock();
                    _db.value._connRequests.remove(_reqKey);
                    _db.value._mu.unlock();
                    stdgo.sync.atomic.Atomic.addInt64(Go.pointer(_db.value._waitDuration), stdgo.time.Time.since(_waitStart.__copy__()).__t__);
                    {
                        null;
                        {
                            var __tmp__ = _req.smartGet(), _ret = __tmp__.value, _ok = __tmp__.ok;
                            if (_ok && _ret._conn != null && !_ret._conn.isNil()) {
                                _db.value._putConn(_ret._conn, _ret._err, false);
                            };
                        };
                    };
                    return { _0 : new Pointer<T_driverConn>().nil(), _1 : _ctx.err() };
                };
                {
                    var __tmp__ = _req.smartGet(), _ret = __tmp__.value, _ok = __tmp__.ok;
                    stdgo.sync.atomic.Atomic.addInt64(Go.pointer(_db.value._waitDuration), stdgo.time.Time.since(_waitStart.__copy__()).__t__);
                    if (!_ok) {
                        return { _0 : new Pointer<T_driverConn>().nil(), _1 : _errDBClosed };
                    };
                    if (_strategy.__t__ == _cachedOrNewConn.__t__ && _ret._err == null && _ret._conn.value._expired(_lifetime)) {
                        _db.value._mu.lock();
                        _db.value._maxLifetimeClosed++;
                        _db.value._mu.unlock();
                        _ret._conn.value.close();
                        return { _0 : new Pointer<T_driverConn>().nil(), _1 : stdgo.database.sql.driver.Driver.errBadConn };
                    };
                    if (_ret._conn == null || _ret._conn.isNil()) {
                        return { _0 : new Pointer<T_driverConn>().nil(), _1 : _ret._err };
                    };
                    {
                        var _err:stdgo.Error = _ret._conn.value._resetSession(_ctx);
                        if (Go.toInterface(_err) == Go.toInterface(stdgo.database.sql.driver.Driver.errBadConn)) {
                            _ret._conn.value.close();
                            return { _0 : new Pointer<T_driverConn>().nil(), _1 : stdgo.database.sql.driver.Driver.errBadConn };
                        };
                    };
                    return { _0 : _ret._conn, _1 : _ret._err };
                };
            };
        };
        _db.value._numOpen++;
        _db.value._mu.unlock();
        var __tmp__ = _db.value._connector.connect(_ctx), _ci:stdgo.database.sql.driver.Driver.Conn = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _db.value._mu.lock();
            _db.value._numOpen--;
            _db.value._maybeOpenNewConnections();
            _db.value._mu.unlock();
            return { _0 : new Pointer<T_driverConn>().nil(), _1 : _err };
        };
        _db.value._mu.lock();
        var _dc:Pointer<T_driverConn> = Go.pointer((({ _db : _db, _createdAt : _nowFunc().__copy__(), _returnedAt : _nowFunc().__copy__(), _ci : _ci, _inUse : true, mutex : new stdgo.sync.Sync.Mutex(), _needReset : false, _closed : false, _finalClosed : false, _openStmt : new GoMap<Pointer<T_driverStmt>, Bool>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("database/sql.driverStmt", [], stdgo.reflect.Reflect.GoType.structType([{ name : "locker", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("sync.Locker", [], stdgo.reflect.Reflect.GoType.interfaceType(false, [])) }, { name : "_si", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("database/sql/driver.Stmt", [], stdgo.reflect.Reflect.GoType.interfaceType(false, [])) }, { name : "_closed", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) }, { name : "_closeErr", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("error", [], stdgo.reflect.Reflect.GoType.interfaceType(false, [])) }]))), stdgo.reflect.Reflect.GoType.basic(bool_kind)))).nil(), _onPut : new Slice<() -> Void>().nil(), _dbmuClosed : false } : T_driverConn)));
        _db.value._addDepLocked(_dc.value, Go.toInterface(_dc));
        _db.value._mu.unlock();
        return { _0 : _dc, _1 : ((null : stdgo.Error)) };
    }
    public function _nextRequestKeyLocked():GoUInt64 {
        var _db = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _next:GoUInt64 = _db.value._nextRequest;
        _db.value._nextRequest++;
        return _next;
    }
    public function _openNewConnection(_ctx:stdgo.context.Context.Context):Void {
        var _db = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var recover_exception:Error = null;
        var deferstack:Array<Void -> Void> = [];
        try {
            var __tmp__ = _db.value._connector.connect(_ctx), _ci:stdgo.database.sql.driver.Driver.Conn = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            _db.value._mu.lock();
            deferstack.unshift(() -> _db.value._mu.unlock());
            if (_db.value._closed) {
                if (_err == null) {
                    _ci.close();
                };
                _db.value._numOpen--;
                {
                    for (defer in deferstack) {
                        defer();
                    };
                    return;
                };
            };
            if (_err != null) {
                _db.value._numOpen--;
                _db.value._putConnDBLocked(new Pointer<T_driverConn>().nil(), _err);
                _db.value._maybeOpenNewConnections();
                {
                    for (defer in deferstack) {
                        defer();
                    };
                    return;
                };
            };
            var _dc:Pointer<T_driverConn> = Go.pointer((({ _db : _db, _createdAt : _nowFunc().__copy__(), _returnedAt : _nowFunc().__copy__(), _ci : _ci, mutex : new stdgo.sync.Sync.Mutex(), _needReset : false, _closed : false, _finalClosed : false, _openStmt : new GoMap<Pointer<T_driverStmt>, Bool>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("database/sql.driverStmt", [], stdgo.reflect.Reflect.GoType.structType([{ name : "locker", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("sync.Locker", [], stdgo.reflect.Reflect.GoType.interfaceType(false, [])) }, { name : "_si", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("database/sql/driver.Stmt", [], stdgo.reflect.Reflect.GoType.interfaceType(false, [])) }, { name : "_closed", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) }, { name : "_closeErr", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("error", [], stdgo.reflect.Reflect.GoType.interfaceType(false, [])) }]))), stdgo.reflect.Reflect.GoType.basic(bool_kind)))).nil(), _inUse : false, _onPut : new Slice<() -> Void>().nil(), _dbmuClosed : false } : T_driverConn)));
            if (_db.value._putConnDBLocked(_dc, _err)) {
                _db.value._addDepLocked(_dc.value, Go.toInterface(_dc));
            } else {
                _db.value._numOpen--;
                _ci.close();
            };
            for (defer in deferstack) {
                defer();
            };
        } catch(e) {
            recover_exception = stdgo.runtime.Runtime.newRuntime(e.message);
            {
                for (defer in deferstack) {
                    defer();
                };
                if (recover_exception != null) throw recover_exception;
                return;
            };
        };
    }
    public function _connectionOpener(_ctx:stdgo.context.Context.Context):Void {
        var _db = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        while (true) {
            {
                {
                    _ctx.done().get();
                    return;
                };
                {
                    _db.value._openerCh.get();
                    _db.value._openNewConnection(_ctx);
                };
            };
        };
    }
    public function _maybeOpenNewConnections():Void {
        var _db = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _numRequests:GoInt = (_db.value._connRequests == null ? 0 : _db.value._connRequests.length);
        if (_db.value._maxOpen > ((0 : GoInt))) {
            var _numCanOpen:GoInt = _db.value._maxOpen - _db.value._numOpen;
            if (_numRequests > _numCanOpen) {
                _numRequests = _numCanOpen;
            };
        };
        while (_numRequests > ((0 : GoInt))) {
            _db.value._numOpen++;
            _numRequests--;
            if (_db.value._closed) {
                return;
            };
            _db.value._openerCh.send(new T__struct_44());
        };
    }
    public function stats():DBStats {
        var _db = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var recover_exception:Error = null;
        var deferstack:Array<Void -> Void> = [];
        var _wait:GoInt64 = stdgo.sync.atomic.Atomic.loadInt64(Go.pointer(_db.value._waitDuration));
        try {
            _db.value._mu.lock();
            deferstack.unshift(() -> _db.value._mu.unlock());
            var _stats:DBStats = (({ maxOpenConnections : _db.value._maxOpen, idle : _db.value._freeConn.length, openConnections : _db.value._numOpen, inUse : _db.value._numOpen - _db.value._freeConn.length, waitCount : _db.value._waitCount, waitDuration : new stdgo.time.Time.Duration(_wait), maxIdleClosed : _db.value._maxIdleClosed, maxIdleTimeClosed : _db.value._maxIdleTimeClosed, maxLifetimeClosed : _db.value._maxLifetimeClosed } : DBStats)).__copy__();
            {
                for (defer in deferstack) {
                    defer();
                };
                return _stats.__copy__();
            };
            for (defer in deferstack) {
                defer();
            };
        } catch(e) {
            recover_exception = stdgo.runtime.Runtime.newRuntime(e.message);
            {
                for (defer in deferstack) {
                    defer();
                };
                if (recover_exception != null) throw recover_exception;
                return new DBStats();
            };
        };
    }
    public function _connectionCleanerRunLocked():Slice<Pointer<T_driverConn>> {
        var _db = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _closing:Slice<Pointer<T_driverConn>> = new Slice<Pointer<T_driverConn>>().nil();
        if (_db.value._maxLifetime.__t__ > ((0 : GoInt64))) {
            var _expiredSince:stdgo.time.Time.Time = _nowFunc().add(new stdgo.time.Time.Duration(-_db.value._maxLifetime.__t__)).__copy__();
            {
                var _i:GoInt = ((0 : GoInt));
                Go.cfor(_i < _db.value._freeConn.length, _i++, {
                    var _c:Pointer<T_driverConn> = _db.value._freeConn[_i];
                    if (_c.value._createdAt.before(_expiredSince.__copy__())) {
                        _closing = _closing.__append__(_c);
                        var _last:GoInt = _db.value._freeConn.length - ((1 : GoInt));
                        _db.value._freeConn[_i] = _db.value._freeConn[_last];
                        _db.value._freeConn[_last] = new Pointer<T_driverConn>().nil();
                        _db.value._freeConn = _db.value._freeConn.__slice__(0, _last);
                        _i--;
                    };
                });
            };
            _db.value._maxLifetimeClosed = _db.value._maxLifetimeClosed + (((_closing.length : GoInt64)));
        };
        if (_db.value._maxIdleTime.__t__ > ((0 : GoInt64))) {
            var _expiredSince:stdgo.time.Time.Time = _nowFunc().add(new stdgo.time.Time.Duration(-_db.value._maxIdleTime.__t__)).__copy__();
            var _expiredCount:GoInt64 = ((0 : GoInt64));
            {
                var _i:GoInt = ((0 : GoInt));
                Go.cfor(_i < _db.value._freeConn.length, _i++, {
                    var _c:Pointer<T_driverConn> = _db.value._freeConn[_i];
                    if (_db.value._maxIdleTime.__t__ > ((0 : GoInt64)) && _c.value._returnedAt.before(_expiredSince.__copy__())) {
                        _closing = _closing.__append__(_c);
                        _expiredCount++;
                        var _last:GoInt = _db.value._freeConn.length - ((1 : GoInt));
                        _db.value._freeConn[_i] = _db.value._freeConn[_last];
                        _db.value._freeConn[_last] = new Pointer<T_driverConn>().nil();
                        _db.value._freeConn = _db.value._freeConn.__slice__(0, _last);
                        _i--;
                    };
                });
            };
            _db.value._maxIdleTimeClosed = _db.value._maxIdleTimeClosed + (_expiredCount);
        };
        return _closing;
    }
    public function _connectionCleaner(_d:stdgo.time.Time.Duration):Void {
        var _db = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        final _minInterval:stdgo.time.Time.Duration = stdgo.time.Time.second;
        if (_d.__t__ < _minInterval.__t__) {
            _d = _minInterval;
        };
        var _t:Pointer<stdgo.time.Time.Timer> = stdgo.time.Time.newTimer(_d);
        while (true) {
            {
                _t.value.c.get();
                _db.value._cleanerCh.get();
            };
            _db.value._mu.lock();
            _d = _db.value._shortestIdleTimeLocked();
            if (_db.value._closed || _db.value._numOpen == ((0 : GoInt)) || _d.__t__ <= ((0 : GoInt64))) {
                _db.value._cleanerCh = new Chan<T__struct_44>(0, () -> new T__struct_44(), true);
                _db.value._mu.unlock();
                return;
            };
            var _closing:Slice<Pointer<T_driverConn>> = _db.value._connectionCleanerRunLocked();
            _db.value._mu.unlock();
            for (_c in _closing) {
                _c.value.close();
            };
            if (_d.__t__ < _minInterval.__t__) {
                _d = _minInterval;
            };
            _t.value.reset(_d);
        };
    }
    public function _startCleanerLocked():Void {
        var _db = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if ((_db.value._maxLifetime.__t__ > ((0 : GoInt64)) || _db.value._maxIdleTime.__t__ > ((0 : GoInt64))) && _db.value._numOpen > ((0 : GoInt)) && _db.value._cleanerCh == null || _db.value._cleanerCh.isNil()) {
            _db.value._cleanerCh = new Chan<T__struct_44>(((((1 : GoInt)) : GoInt)).toBasic(), () -> new T__struct_44());
            Go.routine(_db.value._connectionCleaner(_db.value._shortestIdleTimeLocked()));
        };
    }
    public function setConnMaxIdleTime(_d:stdgo.time.Time.Duration):Void {
        var _db = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var recover_exception:Error = null;
        var deferstack:Array<Void -> Void> = [];
        try {
            if (_d.__t__ < ((0 : GoInt64))) {
                _d = new stdgo.time.Time.Duration(((0 : GoInt64)));
            };
            _db.value._mu.lock();
            deferstack.unshift(() -> _db.value._mu.unlock());
            if (_d.__t__ > ((0 : GoInt64)) && _d.__t__ < _db.value._maxIdleTime.__t__ && _db.value._cleanerCh != null && !_db.value._cleanerCh.isNil()) {
                {
                    _db.value._cleanerCh.send(new T__struct_44());
                    null;
                };
            };
            _db.value._maxIdleTime = _d;
            _db.value._startCleanerLocked();
            for (defer in deferstack) {
                defer();
            };
        } catch(e) {
            recover_exception = stdgo.runtime.Runtime.newRuntime(e.message);
            {
                for (defer in deferstack) {
                    defer();
                };
                if (recover_exception != null) throw recover_exception;
                return;
            };
        };
    }
    public function setConnMaxLifetime(_d:stdgo.time.Time.Duration):Void {
        var _db = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_d.__t__ < ((0 : GoInt64))) {
            _d = new stdgo.time.Time.Duration(((0 : GoInt64)));
        };
        _db.value._mu.lock();
        if (_d.__t__ > ((0 : GoInt64)) && _d.__t__ < _db.value._maxLifetime.__t__ && _db.value._cleanerCh != null && !_db.value._cleanerCh.isNil()) {
            {
                _db.value._cleanerCh.send(new T__struct_44());
                null;
            };
        };
        _db.value._maxLifetime = _d;
        _db.value._startCleanerLocked();
        _db.value._mu.unlock();
    }
    public function setMaxOpenConns(_n:GoInt):Void {
        var _db = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        _db.value._mu.lock();
        _db.value._maxOpen = _n;
        if (_n < ((0 : GoInt))) {
            _db.value._maxOpen = ((0 : GoInt));
        };
        var _syncMaxIdle:Bool = _db.value._maxOpen > ((0 : GoInt)) && _db.value._maxIdleConnsLocked() > _db.value._maxOpen;
        _db.value._mu.unlock();
        if (_syncMaxIdle) {
            _db.value.setMaxIdleConns(_n);
        };
    }
    public function setMaxIdleConns(_n:GoInt):Void {
        var _db = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        _db.value._mu.lock();
        if (_n > ((0 : GoInt))) {
            _db.value._maxIdleCount = _n;
        } else {
            _db.value._maxIdleCount = -((1 : GoUnTypedInt));
        };
        if (_db.value._maxOpen > ((0 : GoInt)) && _db.value._maxIdleConnsLocked() > _db.value._maxOpen) {
            _db.value._maxIdleCount = _db.value._maxOpen;
        };
        var _closing:Slice<Pointer<T_driverConn>> = new Slice<Pointer<T_driverConn>>().nil();
        var _idleCount:GoInt = _db.value._freeConn.length;
        var _maxIdle:GoInt = _db.value._maxIdleConnsLocked();
        if (_idleCount > _maxIdle) {
            _closing = _db.value._freeConn.__slice__(_maxIdle);
            _db.value._freeConn = _db.value._freeConn.__slice__(0, _maxIdle);
        };
        _db.value._maxIdleClosed = _db.value._maxIdleClosed + (((_closing.length : GoInt64)));
        _db.value._mu.unlock();
        for (_c in _closing) {
            _c.value.close();
        };
    }
    public function _shortestIdleTimeLocked():stdgo.time.Time.Duration {
        var _db = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_db.value._maxIdleTime.__t__ <= ((0 : GoInt64))) {
            return _db.value._maxLifetime;
        };
        if (_db.value._maxLifetime.__t__ <= ((0 : GoInt64))) {
            return _db.value._maxIdleTime;
        };
        var _min:stdgo.time.Time.Duration = _db.value._maxIdleTime;
        if (_min.__t__ > _db.value._maxLifetime.__t__) {
            _min = _db.value._maxLifetime;
        };
        return _min;
    }
    public function _maxIdleConnsLocked():GoInt {
        var _db = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _n:GoInt = _db.value._maxIdleCount;
        if (_n == ((0 : GoInt))) {
            return _defaultMaxIdleConns;
        } else if (_n < ((0 : GoInt))) {
            return ((0 : GoInt));
        } else {
            return _n;
        };
    }
    public function close():Error {
        var _db = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        _db.value._mu.lock();
        if (_db.value._closed) {
            _db.value._mu.unlock();
            return ((null : stdgo.Error));
        };
        if (_db.value._cleanerCh != null && !_db.value._cleanerCh.isNil()) {
            _db.value._cleanerCh.close();
        };
        var _err:Error = ((null : stdgo.Error));
        var _fns:Slice<() -> stdgo.Error> = new Slice<() -> stdgo.Error>(...[for (i in 0 ... ((((0 : GoInt)) : GoInt)).toBasic()) null]).setCap(((_db.value._freeConn.length : GoInt)).toBasic());
        for (_dc in _db.value._freeConn) {
            _fns = _fns.__append__(_dc.value._closeDBLocked());
        };
        _db.value._freeConn = new Slice<Pointer<T_driverConn>>().nil();
        _db.value._closed = true;
        for (_req in _db.value._connRequests) {
            _req.close();
        };
        _db.value._mu.unlock();
        for (_fn in _fns) {
            var _err1:stdgo.Error = _fn();
            if (_err1 != null) {
                _err = _err1;
            };
        };
        _db.value._stop();
        {
            var __tmp__ = try {
                { value : ((_db.value._connector.__underlying__().value : stdgo.io.Io.Closer)), ok : true };
            } catch(_) {
                { value : ((null : stdgo.io.Io.Closer)), ok : false };
            }, _c = __tmp__.value, _ok = __tmp__.ok;
            if (_ok) {
                var _err1:stdgo.Error = _c.close();
                if (_err1 != null) {
                    _err = _err1;
                };
            };
        };
        return _err;
    }
    public function ping():Error {
        var _db = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return _db.value.pingContext(stdgo.context.Context.background());
    }
    public function pingContext(_ctx:stdgo.context.Context.Context):Error {
        var _db = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _dc:Pointer<T_driverConn> = new Pointer<T_driverConn>().nil();
        var _err:Error = ((null : stdgo.Error));
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _maxBadConnRetries, _i++, {
                {
                    var __tmp__ = _db.value._conn(_ctx, _cachedOrNewConn);
                    _dc = __tmp__._0;
                    _err = __tmp__._1;
                };
                if (Go.toInterface(_err) != Go.toInterface(stdgo.database.sql.driver.Driver.errBadConn)) {
                    break;
                };
            });
        };
        if (Go.toInterface(_err) == Go.toInterface(stdgo.database.sql.driver.Driver.errBadConn)) {
            {
                var __tmp__ = _db.value._conn(_ctx, _alwaysNewConn);
                _dc = __tmp__._0;
                _err = __tmp__._1;
            };
        };
        if (_err != null) {
            return _err;
        };
        return _db.value._pingDC(_ctx, _dc, _dc.value._releaseConn);
    }
    public function _pingDC(_ctx:stdgo.context.Context.Context, _dc:Pointer<T_driverConn>, _release:Error -> Void):Error {
        var _db = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _err:Error = ((null : stdgo.Error));
        {
            var __tmp__ = try {
                { value : ((_dc.value._ci.__underlying__().value : stdgo.database.sql.driver.Driver.Pinger)), ok : true };
            } catch(_) {
                { value : ((null : stdgo.database.sql.driver.Driver.Pinger)), ok : false };
            }, _pinger = __tmp__.value, _ok = __tmp__.ok;
            if (_ok) {
                _withLock(_dc.value, function():Void {
                    _err = _pinger.ping(_ctx);
                });
            };
        };
        _release(_err);
        return _err;
    }
    public function _removeDepLocked(_x:T_finalCloser, _dep:AnyInterface):() -> Error {
        var _db = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var __tmp__ = _db.value._dep.exists(_x) ? { value : _db.value._dep[_x], ok : true } : { value : _db.value._dep.defaultValue(), ok : false }, _xdep:T_depSet = __tmp__.value, _ok:Bool = __tmp__.ok;
        if (!_ok) {
            throw stdgo.fmt.Fmt.sprintf("unpaired removeDep: no deps for %T", Go.toInterface(_x));
        };
        var _l0:GoInt = (_xdep.__t__ == null ? 0 : _xdep.__t__.length);
        _xdep.remove(Go.toInterface(_dep));
        if ((_xdep.__t__ == null ? 0 : _xdep.__t__.length) == _l0) {
            throw stdgo.fmt.Fmt.sprintf("unpaired removeDep: no %T dep on %T", Go.toInterface(_dep), Go.toInterface(_x));
        } else if ((_xdep.__t__ == null ? 0 : _xdep.__t__.length) == ((0 : GoInt))) {
            _db.value._dep.remove(_x);
            return _x._finalClose;
        } else {
            return function():Error {
                return ((null : stdgo.Error));
            };
        };
    }
    public function _removeDep(_x:T_finalCloser, _dep:AnyInterface):Error {
        var _db = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        _db.value._mu.lock();
        var _fn:() -> stdgo.Error = _db.value._removeDepLocked(_x, Go.toInterface(_dep));
        _db.value._mu.unlock();
        return _fn();
    }
    public function _addDepLocked(_x:T_finalCloser, _dep:AnyInterface):Void {
        var _db = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_db.value._dep == null || _db.value._dep.isNil()) {
            _db.value._dep = new GoMap<T_finalCloser, T_depSet>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.named("database/sql.finalCloser", [], stdgo.reflect.Reflect.GoType.named("database/sql.finalCloser", [], stdgo.reflect.Reflect.GoType.interfaceType(false, []))), stdgo.reflect.Reflect.GoType.named("database/sql.depSet", [], stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.interfaceType(true, []), stdgo.reflect.Reflect.GoType.basic(bool_kind))))));
        };
        var _xdep:T_depSet = _db.value._dep[_x].__copy__();
        if (_xdep.__t__ == null || _xdep.__t__.isNil()) {
            _xdep = new T_depSet(new GoMap<AnyInterface, Bool>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.interfaceType(true, []), stdgo.reflect.Reflect.GoType.basic(bool_kind))))).__copy__();
            _db.value._dep[_x] = _xdep.__copy__();
        };
        _xdep.__t__[Go.toInterface(_dep)] = true;
    }
    public function _addDep(_x:T_finalCloser, _dep:AnyInterface):Void {
        var _db = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var recover_exception:Error = null;
        var deferstack:Array<Void -> Void> = [];
        try {
            _db.value._mu.lock();
            deferstack.unshift(() -> _db.value._mu.unlock());
            _db.value._addDepLocked(_x, Go.toInterface(_dep));
            for (defer in deferstack) {
                defer();
            };
        } catch(e) {
            recover_exception = stdgo.runtime.Runtime.newRuntime(e.message);
            {
                for (defer in deferstack) {
                    defer();
                };
                if (recover_exception != null) throw recover_exception;
                return;
            };
        };
    }
    public var _waitDuration : GoInt64 = ((0 : GoInt64));
    public var _connector : stdgo.database.sql.driver.Driver.Connector = ((null : stdgo.database.sql.driver.Driver.Connector));
    public var _numClosed : GoUInt64 = ((0 : GoUInt64));
    public var _mu : stdgo.sync.Sync.Mutex = new stdgo.sync.Sync.Mutex();
    public var _freeConn : Slice<Pointer<T_driverConn>> = new Slice<Pointer<T_driverConn>>().nil();
    public var _connRequests : GoMap<GoUInt64, Chan<T_connRequest>> = new GoMap<GoUInt64, Chan<T_connRequest>>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(uint64_kind), stdgo.reflect.Reflect.GoType.chanType(0, stdgo.reflect.Reflect.GoType.named("database/sql.connRequest", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_conn", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("database/sql.driverConn", [], stdgo.reflect.Reflect.GoType.structType([
{ name : "_db", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("database/sql.DB", [], stdgo.reflect.Reflect.GoType.named("database/sql.DB", [], stdgo.reflect.Reflect.GoType.structType([
{ name : "_waitDuration", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) },
{ name : "_connector", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("database/sql/driver.Connector", [], stdgo.reflect.Reflect.GoType.interfaceType(false, [])) },
{ name : "_numClosed", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) },
{ name : "_mu", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("sync.Mutex", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_state", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int32_kind) }, { name : "_sema", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint32_kind) }])) },
{ name : "_freeConn", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("database/sql.driverConn", [], stdgo.reflect.Reflect.GoType.structType([
{ name : "_db", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("database/sql.DB", [], stdgo.reflect.Reflect.GoType.structType([
{ name : "_waitDuration", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) },
{ name : "_connector", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("database/sql/driver.Connector", [], stdgo.reflect.Reflect.GoType.interfaceType(false, [])) },
{ name : "_numClosed", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) },
{ name : "_mu", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("sync.Mutex", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_state", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int32_kind) }, { name : "_sema", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint32_kind) }])) },
{ name : "_freeConn", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("database/sql.driverConn", [], stdgo.reflect.Reflect.GoType.invalidType))) },
{ name : "_connRequests", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(uint64_kind), stdgo.reflect.Reflect.GoType.chanType(0, stdgo.reflect.Reflect.GoType.named("database/sql.connRequest", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_conn", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("database/sql.driverConn", [], stdgo.reflect.Reflect.GoType.invalidType)) }, { name : "_err", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("error", [], stdgo.reflect.Reflect.GoType.interfaceType(false, [])) }])))) },
{ name : "_nextRequest", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) },
{ name : "_numOpen", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) },
{ name : "_openerCh", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.chanType(0, stdgo.reflect.Reflect.GoType.structType([])) },
{ name : "_closed", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) },
{ name : "_dep", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.named("database/sql.finalCloser", [], stdgo.reflect.Reflect.GoType.named("database/sql.finalCloser", [], stdgo.reflect.Reflect.GoType.interfaceType(false, []))), stdgo.reflect.Reflect.GoType.named("database/sql.depSet", [], stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.interfaceType(true, []), stdgo.reflect.Reflect.GoType.basic(bool_kind)))) },
{ name : "_lastPut", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("database/sql.driverConn", [], stdgo.reflect.Reflect.GoType.invalidType)), stdgo.reflect.Reflect.GoType.basic(string_kind)) },
{ name : "_maxIdleCount", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) },
{ name : "_maxOpen", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) },
{ name : "_maxLifetime", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("time.Duration", [], stdgo.reflect.Reflect.GoType.basic(int64_kind)) },
{ name : "_maxIdleTime", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("time.Duration", [], stdgo.reflect.Reflect.GoType.invalidType) },
{ name : "_cleanerCh", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.chanType(0, stdgo.reflect.Reflect.GoType.structType([])) },
{ name : "_waitCount", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) },
{ name : "_maxIdleClosed", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) },
{ name : "_maxIdleTimeClosed", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) },
{ name : "_maxLifetimeClosed", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) },
{ name : "_stop", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.signature(false, [], [], stdgo.reflect.Reflect.GoType.invalidType) }]))) },
{ name : "_createdAt", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("time.Time", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_wall", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) }, { name : "_ext", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) }, { name : "_loc", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("time.Location", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_name", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "_zone", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("time.zone", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_name", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "_offset", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) }, { name : "_isDST", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) }]))) }, { name : "_tx", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("time.zoneTrans", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_when", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) }, { name : "_index", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint8_kind) }, { name : "_isstd", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) }, { name : "_isutc", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) }]))) }, { name : "_extend", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "_cacheStart", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) }, { name : "_cacheEnd", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) }, { name : "_cacheZone", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("time.zone", [], stdgo.reflect.Reflect.GoType.invalidType)) }]))) }])) },
{ name : "mutex", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("sync.Mutex", [], stdgo.reflect.Reflect.GoType.invalidType) },
{ name : "_ci", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("database/sql/driver.Conn", [], stdgo.reflect.Reflect.GoType.interfaceType(false, [])) },
{ name : "_needReset", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) },
{ name : "_closed", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) },
{ name : "_finalClosed", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) },
{ name : "_openStmt", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("database/sql.driverStmt", [], stdgo.reflect.Reflect.GoType.structType([{ name : "locker", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("sync.Locker", [], stdgo.reflect.Reflect.GoType.interfaceType(false, [])) }, { name : "_si", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("database/sql/driver.Stmt", [], stdgo.reflect.Reflect.GoType.interfaceType(false, [])) }, { name : "_closed", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) }, { name : "_closeErr", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("error", [], stdgo.reflect.Reflect.GoType.invalidType) }]))), stdgo.reflect.Reflect.GoType.basic(bool_kind)) },
{ name : "_inUse", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) },
{ name : "_returnedAt", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("time.Time", [], stdgo.reflect.Reflect.GoType.invalidType) },
{ name : "_onPut", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.signature(false, [], [], stdgo.reflect.Reflect.GoType.invalidType)) },
{ name : "_dbmuClosed", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) }])))) },
{ name : "_connRequests", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(uint64_kind), stdgo.reflect.Reflect.GoType.chanType(0, stdgo.reflect.Reflect.GoType.named("database/sql.connRequest", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_conn", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("database/sql.driverConn", [], stdgo.reflect.Reflect.GoType.structType([
{ name : "_db", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("database/sql.DB", [], stdgo.reflect.Reflect.GoType.structType([
{ name : "_waitDuration", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) },
{ name : "_connector", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("database/sql/driver.Connector", [], stdgo.reflect.Reflect.GoType.interfaceType(false, [])) },
{ name : "_numClosed", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) },
{ name : "_mu", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("sync.Mutex", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_state", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int32_kind) }, { name : "_sema", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint32_kind) }])) },
{ name : "_freeConn", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("database/sql.driverConn", [], stdgo.reflect.Reflect.GoType.invalidType))) },
{ name : "_connRequests", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(uint64_kind), stdgo.reflect.Reflect.GoType.chanType(0, stdgo.reflect.Reflect.GoType.named("database/sql.connRequest", [], stdgo.reflect.Reflect.GoType.invalidType))) },
{ name : "_nextRequest", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) },
{ name : "_numOpen", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) },
{ name : "_openerCh", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.chanType(0, stdgo.reflect.Reflect.GoType.structType([])) },
{ name : "_closed", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) },
{ name : "_dep", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.named("database/sql.finalCloser", [], stdgo.reflect.Reflect.GoType.named("database/sql.finalCloser", [], stdgo.reflect.Reflect.GoType.interfaceType(false, []))), stdgo.reflect.Reflect.GoType.named("database/sql.depSet", [], stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.interfaceType(true, []), stdgo.reflect.Reflect.GoType.basic(bool_kind)))) },
{ name : "_lastPut", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("database/sql.driverConn", [], stdgo.reflect.Reflect.GoType.invalidType)), stdgo.reflect.Reflect.GoType.basic(string_kind)) },
{ name : "_maxIdleCount", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) },
{ name : "_maxOpen", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) },
{ name : "_maxLifetime", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("time.Duration", [], stdgo.reflect.Reflect.GoType.basic(int64_kind)) },
{ name : "_maxIdleTime", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("time.Duration", [], stdgo.reflect.Reflect.GoType.invalidType) },
{ name : "_cleanerCh", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.chanType(0, stdgo.reflect.Reflect.GoType.structType([])) },
{ name : "_waitCount", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) },
{ name : "_maxIdleClosed", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) },
{ name : "_maxIdleTimeClosed", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) },
{ name : "_maxLifetimeClosed", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) },
{ name : "_stop", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.signature(false, [], [], stdgo.reflect.Reflect.GoType.invalidType) }]))) },
{ name : "_createdAt", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("time.Time", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_wall", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) }, { name : "_ext", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) }, { name : "_loc", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("time.Location", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_name", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "_zone", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("time.zone", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_name", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "_offset", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) }, { name : "_isDST", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) }]))) }, { name : "_tx", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("time.zoneTrans", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_when", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) }, { name : "_index", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint8_kind) }, { name : "_isstd", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) }, { name : "_isutc", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) }]))) }, { name : "_extend", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "_cacheStart", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) }, { name : "_cacheEnd", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) }, { name : "_cacheZone", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("time.zone", [], stdgo.reflect.Reflect.GoType.invalidType)) }]))) }])) },
{ name : "mutex", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("sync.Mutex", [], stdgo.reflect.Reflect.GoType.invalidType) },
{ name : "_ci", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("database/sql/driver.Conn", [], stdgo.reflect.Reflect.GoType.interfaceType(false, [])) },
{ name : "_needReset", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) },
{ name : "_closed", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) },
{ name : "_finalClosed", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) },
{ name : "_openStmt", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("database/sql.driverStmt", [], stdgo.reflect.Reflect.GoType.structType([{ name : "locker", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("sync.Locker", [], stdgo.reflect.Reflect.GoType.interfaceType(false, [])) }, { name : "_si", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("database/sql/driver.Stmt", [], stdgo.reflect.Reflect.GoType.interfaceType(false, [])) }, { name : "_closed", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) }, { name : "_closeErr", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("error", [], stdgo.reflect.Reflect.GoType.interfaceType(false, [])) }]))), stdgo.reflect.Reflect.GoType.basic(bool_kind)) },
{ name : "_inUse", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) },
{ name : "_returnedAt", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("time.Time", [], stdgo.reflect.Reflect.GoType.invalidType) },
{ name : "_onPut", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.signature(false, [], [], stdgo.reflect.Reflect.GoType.invalidType)) },
{ name : "_dbmuClosed", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) }]))) }, { name : "_err", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("error", [], stdgo.reflect.Reflect.GoType.invalidType) }])))) },
{ name : "_nextRequest", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) },
{ name : "_numOpen", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) },
{ name : "_openerCh", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.chanType(0, stdgo.reflect.Reflect.GoType.structType([])) },
{ name : "_closed", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) },
{ name : "_dep", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.named("database/sql.finalCloser", [], stdgo.reflect.Reflect.GoType.named("database/sql.finalCloser", [], stdgo.reflect.Reflect.GoType.interfaceType(false, []))), stdgo.reflect.Reflect.GoType.named("database/sql.depSet", [], stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.interfaceType(true, []), stdgo.reflect.Reflect.GoType.basic(bool_kind)))) },
{ name : "_lastPut", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("database/sql.driverConn", [], stdgo.reflect.Reflect.GoType.structType([
{ name : "_db", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("database/sql.DB", [], stdgo.reflect.Reflect.GoType.structType([
{ name : "_waitDuration", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) },
{ name : "_connector", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("database/sql/driver.Connector", [], stdgo.reflect.Reflect.GoType.interfaceType(false, [])) },
{ name : "_numClosed", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) },
{ name : "_mu", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("sync.Mutex", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_state", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int32_kind) }, { name : "_sema", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint32_kind) }])) },
{ name : "_freeConn", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("database/sql.driverConn", [], stdgo.reflect.Reflect.GoType.invalidType))) },
{ name : "_connRequests", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(uint64_kind), stdgo.reflect.Reflect.GoType.chanType(0, stdgo.reflect.Reflect.GoType.named("database/sql.connRequest", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_conn", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("database/sql.driverConn", [], stdgo.reflect.Reflect.GoType.invalidType)) }, { name : "_err", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("error", [], stdgo.reflect.Reflect.GoType.interfaceType(false, [])) }])))) },
{ name : "_nextRequest", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) },
{ name : "_numOpen", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) },
{ name : "_openerCh", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.chanType(0, stdgo.reflect.Reflect.GoType.structType([])) },
{ name : "_closed", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) },
{ name : "_dep", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.named("database/sql.finalCloser", [], stdgo.reflect.Reflect.GoType.named("database/sql.finalCloser", [], stdgo.reflect.Reflect.GoType.interfaceType(false, []))), stdgo.reflect.Reflect.GoType.named("database/sql.depSet", [], stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.interfaceType(true, []), stdgo.reflect.Reflect.GoType.basic(bool_kind)))) },
{ name : "_lastPut", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("database/sql.driverConn", [], stdgo.reflect.Reflect.GoType.invalidType)), stdgo.reflect.Reflect.GoType.basic(string_kind)) },
{ name : "_maxIdleCount", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) },
{ name : "_maxOpen", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) },
{ name : "_maxLifetime", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("time.Duration", [], stdgo.reflect.Reflect.GoType.basic(int64_kind)) },
{ name : "_maxIdleTime", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("time.Duration", [], stdgo.reflect.Reflect.GoType.invalidType) },
{ name : "_cleanerCh", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.chanType(0, stdgo.reflect.Reflect.GoType.structType([])) },
{ name : "_waitCount", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) },
{ name : "_maxIdleClosed", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) },
{ name : "_maxIdleTimeClosed", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) },
{ name : "_maxLifetimeClosed", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) },
{ name : "_stop", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.signature(false, [], [], stdgo.reflect.Reflect.GoType.invalidType) }]))) },
{ name : "_createdAt", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("time.Time", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_wall", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) }, { name : "_ext", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) }, { name : "_loc", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("time.Location", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_name", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "_zone", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("time.zone", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_name", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "_offset", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) }, { name : "_isDST", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) }]))) }, { name : "_tx", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("time.zoneTrans", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_when", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) }, { name : "_index", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint8_kind) }, { name : "_isstd", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) }, { name : "_isutc", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) }]))) }, { name : "_extend", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "_cacheStart", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) }, { name : "_cacheEnd", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) }, { name : "_cacheZone", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("time.zone", [], stdgo.reflect.Reflect.GoType.invalidType)) }]))) }])) },
{ name : "mutex", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("sync.Mutex", [], stdgo.reflect.Reflect.GoType.invalidType) },
{ name : "_ci", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("database/sql/driver.Conn", [], stdgo.reflect.Reflect.GoType.interfaceType(false, [])) },
{ name : "_needReset", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) },
{ name : "_closed", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) },
{ name : "_finalClosed", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) },
{ name : "_openStmt", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("database/sql.driverStmt", [], stdgo.reflect.Reflect.GoType.structType([{ name : "locker", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("sync.Locker", [], stdgo.reflect.Reflect.GoType.interfaceType(false, [])) }, { name : "_si", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("database/sql/driver.Stmt", [], stdgo.reflect.Reflect.GoType.interfaceType(false, [])) }, { name : "_closed", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) }, { name : "_closeErr", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("error", [], stdgo.reflect.Reflect.GoType.invalidType) }]))), stdgo.reflect.Reflect.GoType.basic(bool_kind)) },
{ name : "_inUse", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) },
{ name : "_returnedAt", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("time.Time", [], stdgo.reflect.Reflect.GoType.invalidType) },
{ name : "_onPut", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.signature(false, [], [], stdgo.reflect.Reflect.GoType.invalidType)) },
{ name : "_dbmuClosed", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) }]))), stdgo.reflect.Reflect.GoType.basic(string_kind)) },
{ name : "_maxIdleCount", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) },
{ name : "_maxOpen", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) },
{ name : "_maxLifetime", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("time.Duration", [], stdgo.reflect.Reflect.GoType.basic(int64_kind)) },
{ name : "_maxIdleTime", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("time.Duration", [], stdgo.reflect.Reflect.GoType.basic(int64_kind)) },
{ name : "_cleanerCh", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.chanType(0, stdgo.reflect.Reflect.GoType.structType([])) },
{ name : "_waitCount", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) },
{ name : "_maxIdleClosed", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) },
{ name : "_maxIdleTimeClosed", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) },
{ name : "_maxLifetimeClosed", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) },
{ name : "_stop", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.signature(false, [], [], stdgo.reflect.Reflect.GoType.invalidType) }])))) },
{ name : "_createdAt", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("time.Time", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_wall", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) }, { name : "_ext", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) }, { name : "_loc", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("time.Location", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_name", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "_zone", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("time.zone", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_name", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "_offset", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) }, { name : "_isDST", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) }]))) }, { name : "_tx", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("time.zoneTrans", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_when", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) }, { name : "_index", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint8_kind) }, { name : "_isstd", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) }, { name : "_isutc", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) }]))) }, { name : "_extend", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "_cacheStart", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) }, { name : "_cacheEnd", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) }, { name : "_cacheZone", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("time.zone", [], stdgo.reflect.Reflect.GoType.invalidType)) }]))) }])) },
{ name : "mutex", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("sync.Mutex", [], stdgo.reflect.Reflect.GoType.invalidType) },
{ name : "_ci", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("database/sql/driver.Conn", [], stdgo.reflect.Reflect.GoType.interfaceType(false, [])) },
{ name : "_needReset", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) },
{ name : "_closed", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) },
{ name : "_finalClosed", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) },
{ name : "_openStmt", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("database/sql.driverStmt", [], stdgo.reflect.Reflect.GoType.structType([{ name : "locker", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("sync.Locker", [], stdgo.reflect.Reflect.GoType.interfaceType(false, [])) }, { name : "_si", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("database/sql/driver.Stmt", [], stdgo.reflect.Reflect.GoType.interfaceType(false, [])) }, { name : "_closed", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) }, { name : "_closeErr", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("error", [], stdgo.reflect.Reflect.GoType.interfaceType(false, [])) }]))), stdgo.reflect.Reflect.GoType.basic(bool_kind)) },
{ name : "_inUse", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) },
{ name : "_returnedAt", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("time.Time", [], stdgo.reflect.Reflect.GoType.invalidType) },
{ name : "_onPut", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.signature(false, [], [], stdgo.reflect.Reflect.GoType.invalidType)) },
{ name : "_dbmuClosed", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) }]))) }, { name : "_err", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("error", [], stdgo.reflect.Reflect.GoType.invalidType) }])))))).nil();
    public var _nextRequest : GoUInt64 = ((0 : GoUInt64));
    public var _numOpen : GoInt = ((0 : GoInt));
    public var _openerCh : Chan<{ }> = new Chan<{ }>(0, () -> null, true);
    public var _closed : Bool = false;
    public var _dep : GoMap<T_finalCloser, T_depSet> = new GoMap<T_finalCloser, T_depSet>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.named("database/sql.finalCloser", [], stdgo.reflect.Reflect.GoType.named("database/sql.finalCloser", [], stdgo.reflect.Reflect.GoType.interfaceType(false, []))), stdgo.reflect.Reflect.GoType.named("database/sql.depSet", [], stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.interfaceType(true, []), stdgo.reflect.Reflect.GoType.basic(bool_kind)))))).nil();
    public var _lastPut : GoMap<Pointer<T_driverConn>, GoString> = new GoMap<Pointer<T_driverConn>, GoString>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("database/sql.driverConn", [], stdgo.reflect.Reflect.GoType.structType([
{ name : "_db", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("database/sql.DB", [], stdgo.reflect.Reflect.GoType.named("database/sql.DB", [], stdgo.reflect.Reflect.GoType.structType([
{ name : "_waitDuration", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) },
{ name : "_connector", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("database/sql/driver.Connector", [], stdgo.reflect.Reflect.GoType.interfaceType(false, [])) },
{ name : "_numClosed", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) },
{ name : "_mu", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("sync.Mutex", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_state", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int32_kind) }, { name : "_sema", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint32_kind) }])) },
{ name : "_freeConn", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("database/sql.driverConn", [], stdgo.reflect.Reflect.GoType.structType([
{ name : "_db", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("database/sql.DB", [], stdgo.reflect.Reflect.GoType.structType([
{ name : "_waitDuration", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) },
{ name : "_connector", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("database/sql/driver.Connector", [], stdgo.reflect.Reflect.GoType.interfaceType(false, [])) },
{ name : "_numClosed", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) },
{ name : "_mu", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("sync.Mutex", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_state", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int32_kind) }, { name : "_sema", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint32_kind) }])) },
{ name : "_freeConn", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("database/sql.driverConn", [], stdgo.reflect.Reflect.GoType.invalidType))) },
{ name : "_connRequests", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(uint64_kind), stdgo.reflect.Reflect.GoType.chanType(0, stdgo.reflect.Reflect.GoType.named("database/sql.connRequest", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_conn", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("database/sql.driverConn", [], stdgo.reflect.Reflect.GoType.invalidType)) }, { name : "_err", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("error", [], stdgo.reflect.Reflect.GoType.interfaceType(false, [])) }])))) },
{ name : "_nextRequest", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) },
{ name : "_numOpen", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) },
{ name : "_openerCh", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.chanType(0, stdgo.reflect.Reflect.GoType.structType([])) },
{ name : "_closed", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) },
{ name : "_dep", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.named("database/sql.finalCloser", [], stdgo.reflect.Reflect.GoType.named("database/sql.finalCloser", [], stdgo.reflect.Reflect.GoType.interfaceType(false, []))), stdgo.reflect.Reflect.GoType.named("database/sql.depSet", [], stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.interfaceType(true, []), stdgo.reflect.Reflect.GoType.basic(bool_kind)))) },
{ name : "_lastPut", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("database/sql.driverConn", [], stdgo.reflect.Reflect.GoType.invalidType)), stdgo.reflect.Reflect.GoType.basic(string_kind)) },
{ name : "_maxIdleCount", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) },
{ name : "_maxOpen", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) },
{ name : "_maxLifetime", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("time.Duration", [], stdgo.reflect.Reflect.GoType.basic(int64_kind)) },
{ name : "_maxIdleTime", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("time.Duration", [], stdgo.reflect.Reflect.GoType.invalidType) },
{ name : "_cleanerCh", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.chanType(0, stdgo.reflect.Reflect.GoType.structType([])) },
{ name : "_waitCount", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) },
{ name : "_maxIdleClosed", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) },
{ name : "_maxIdleTimeClosed", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) },
{ name : "_maxLifetimeClosed", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) },
{ name : "_stop", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.signature(false, [], [], stdgo.reflect.Reflect.GoType.invalidType) }]))) },
{ name : "_createdAt", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("time.Time", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_wall", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) }, { name : "_ext", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) }, { name : "_loc", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("time.Location", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_name", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "_zone", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("time.zone", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_name", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "_offset", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) }, { name : "_isDST", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) }]))) }, { name : "_tx", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("time.zoneTrans", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_when", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) }, { name : "_index", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint8_kind) }, { name : "_isstd", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) }, { name : "_isutc", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) }]))) }, { name : "_extend", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "_cacheStart", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) }, { name : "_cacheEnd", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) }, { name : "_cacheZone", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("time.zone", [], stdgo.reflect.Reflect.GoType.invalidType)) }]))) }])) },
{ name : "mutex", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("sync.Mutex", [], stdgo.reflect.Reflect.GoType.invalidType) },
{ name : "_ci", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("database/sql/driver.Conn", [], stdgo.reflect.Reflect.GoType.interfaceType(false, [])) },
{ name : "_needReset", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) },
{ name : "_closed", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) },
{ name : "_finalClosed", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) },
{ name : "_openStmt", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("database/sql.driverStmt", [], stdgo.reflect.Reflect.GoType.structType([{ name : "locker", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("sync.Locker", [], stdgo.reflect.Reflect.GoType.interfaceType(false, [])) }, { name : "_si", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("database/sql/driver.Stmt", [], stdgo.reflect.Reflect.GoType.interfaceType(false, [])) }, { name : "_closed", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) }, { name : "_closeErr", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("error", [], stdgo.reflect.Reflect.GoType.invalidType) }]))), stdgo.reflect.Reflect.GoType.basic(bool_kind)) },
{ name : "_inUse", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) },
{ name : "_returnedAt", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("time.Time", [], stdgo.reflect.Reflect.GoType.invalidType) },
{ name : "_onPut", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.signature(false, [], [], stdgo.reflect.Reflect.GoType.invalidType)) },
{ name : "_dbmuClosed", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) }])))) },
{ name : "_connRequests", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(uint64_kind), stdgo.reflect.Reflect.GoType.chanType(0, stdgo.reflect.Reflect.GoType.named("database/sql.connRequest", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_conn", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("database/sql.driverConn", [], stdgo.reflect.Reflect.GoType.structType([
{ name : "_db", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("database/sql.DB", [], stdgo.reflect.Reflect.GoType.structType([
{ name : "_waitDuration", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) },
{ name : "_connector", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("database/sql/driver.Connector", [], stdgo.reflect.Reflect.GoType.interfaceType(false, [])) },
{ name : "_numClosed", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) },
{ name : "_mu", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("sync.Mutex", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_state", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int32_kind) }, { name : "_sema", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint32_kind) }])) },
{ name : "_freeConn", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("database/sql.driverConn", [], stdgo.reflect.Reflect.GoType.invalidType))) },
{ name : "_connRequests", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(uint64_kind), stdgo.reflect.Reflect.GoType.chanType(0, stdgo.reflect.Reflect.GoType.named("database/sql.connRequest", [], stdgo.reflect.Reflect.GoType.invalidType))) },
{ name : "_nextRequest", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) },
{ name : "_numOpen", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) },
{ name : "_openerCh", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.chanType(0, stdgo.reflect.Reflect.GoType.structType([])) },
{ name : "_closed", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) },
{ name : "_dep", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.named("database/sql.finalCloser", [], stdgo.reflect.Reflect.GoType.named("database/sql.finalCloser", [], stdgo.reflect.Reflect.GoType.interfaceType(false, []))), stdgo.reflect.Reflect.GoType.named("database/sql.depSet", [], stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.interfaceType(true, []), stdgo.reflect.Reflect.GoType.basic(bool_kind)))) },
{ name : "_lastPut", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("database/sql.driverConn", [], stdgo.reflect.Reflect.GoType.invalidType)), stdgo.reflect.Reflect.GoType.basic(string_kind)) },
{ name : "_maxIdleCount", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) },
{ name : "_maxOpen", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) },
{ name : "_maxLifetime", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("time.Duration", [], stdgo.reflect.Reflect.GoType.basic(int64_kind)) },
{ name : "_maxIdleTime", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("time.Duration", [], stdgo.reflect.Reflect.GoType.invalidType) },
{ name : "_cleanerCh", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.chanType(0, stdgo.reflect.Reflect.GoType.structType([])) },
{ name : "_waitCount", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) },
{ name : "_maxIdleClosed", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) },
{ name : "_maxIdleTimeClosed", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) },
{ name : "_maxLifetimeClosed", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) },
{ name : "_stop", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.signature(false, [], [], stdgo.reflect.Reflect.GoType.invalidType) }]))) },
{ name : "_createdAt", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("time.Time", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_wall", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) }, { name : "_ext", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) }, { name : "_loc", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("time.Location", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_name", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "_zone", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("time.zone", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_name", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "_offset", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) }, { name : "_isDST", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) }]))) }, { name : "_tx", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("time.zoneTrans", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_when", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) }, { name : "_index", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint8_kind) }, { name : "_isstd", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) }, { name : "_isutc", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) }]))) }, { name : "_extend", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "_cacheStart", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) }, { name : "_cacheEnd", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) }, { name : "_cacheZone", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("time.zone", [], stdgo.reflect.Reflect.GoType.invalidType)) }]))) }])) },
{ name : "mutex", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("sync.Mutex", [], stdgo.reflect.Reflect.GoType.invalidType) },
{ name : "_ci", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("database/sql/driver.Conn", [], stdgo.reflect.Reflect.GoType.interfaceType(false, [])) },
{ name : "_needReset", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) },
{ name : "_closed", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) },
{ name : "_finalClosed", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) },
{ name : "_openStmt", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("database/sql.driverStmt", [], stdgo.reflect.Reflect.GoType.structType([{ name : "locker", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("sync.Locker", [], stdgo.reflect.Reflect.GoType.interfaceType(false, [])) }, { name : "_si", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("database/sql/driver.Stmt", [], stdgo.reflect.Reflect.GoType.interfaceType(false, [])) }, { name : "_closed", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) }, { name : "_closeErr", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("error", [], stdgo.reflect.Reflect.GoType.interfaceType(false, [])) }]))), stdgo.reflect.Reflect.GoType.basic(bool_kind)) },
{ name : "_inUse", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) },
{ name : "_returnedAt", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("time.Time", [], stdgo.reflect.Reflect.GoType.invalidType) },
{ name : "_onPut", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.signature(false, [], [], stdgo.reflect.Reflect.GoType.invalidType)) },
{ name : "_dbmuClosed", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) }]))) }, { name : "_err", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("error", [], stdgo.reflect.Reflect.GoType.invalidType) }])))) },
{ name : "_nextRequest", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) },
{ name : "_numOpen", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) },
{ name : "_openerCh", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.chanType(0, stdgo.reflect.Reflect.GoType.structType([])) },
{ name : "_closed", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) },
{ name : "_dep", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.named("database/sql.finalCloser", [], stdgo.reflect.Reflect.GoType.named("database/sql.finalCloser", [], stdgo.reflect.Reflect.GoType.interfaceType(false, []))), stdgo.reflect.Reflect.GoType.named("database/sql.depSet", [], stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.interfaceType(true, []), stdgo.reflect.Reflect.GoType.basic(bool_kind)))) },
{ name : "_lastPut", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("database/sql.driverConn", [], stdgo.reflect.Reflect.GoType.structType([
{ name : "_db", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("database/sql.DB", [], stdgo.reflect.Reflect.GoType.structType([
{ name : "_waitDuration", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) },
{ name : "_connector", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("database/sql/driver.Connector", [], stdgo.reflect.Reflect.GoType.interfaceType(false, [])) },
{ name : "_numClosed", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) },
{ name : "_mu", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("sync.Mutex", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_state", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int32_kind) }, { name : "_sema", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint32_kind) }])) },
{ name : "_freeConn", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("database/sql.driverConn", [], stdgo.reflect.Reflect.GoType.invalidType))) },
{ name : "_connRequests", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(uint64_kind), stdgo.reflect.Reflect.GoType.chanType(0, stdgo.reflect.Reflect.GoType.named("database/sql.connRequest", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_conn", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("database/sql.driverConn", [], stdgo.reflect.Reflect.GoType.invalidType)) }, { name : "_err", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("error", [], stdgo.reflect.Reflect.GoType.interfaceType(false, [])) }])))) },
{ name : "_nextRequest", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) },
{ name : "_numOpen", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) },
{ name : "_openerCh", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.chanType(0, stdgo.reflect.Reflect.GoType.structType([])) },
{ name : "_closed", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) },
{ name : "_dep", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.named("database/sql.finalCloser", [], stdgo.reflect.Reflect.GoType.named("database/sql.finalCloser", [], stdgo.reflect.Reflect.GoType.interfaceType(false, []))), stdgo.reflect.Reflect.GoType.named("database/sql.depSet", [], stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.interfaceType(true, []), stdgo.reflect.Reflect.GoType.basic(bool_kind)))) },
{ name : "_lastPut", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("database/sql.driverConn", [], stdgo.reflect.Reflect.GoType.invalidType)), stdgo.reflect.Reflect.GoType.basic(string_kind)) },
{ name : "_maxIdleCount", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) },
{ name : "_maxOpen", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) },
{ name : "_maxLifetime", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("time.Duration", [], stdgo.reflect.Reflect.GoType.basic(int64_kind)) },
{ name : "_maxIdleTime", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("time.Duration", [], stdgo.reflect.Reflect.GoType.invalidType) },
{ name : "_cleanerCh", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.chanType(0, stdgo.reflect.Reflect.GoType.structType([])) },
{ name : "_waitCount", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) },
{ name : "_maxIdleClosed", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) },
{ name : "_maxIdleTimeClosed", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) },
{ name : "_maxLifetimeClosed", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) },
{ name : "_stop", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.signature(false, [], [], stdgo.reflect.Reflect.GoType.invalidType) }]))) },
{ name : "_createdAt", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("time.Time", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_wall", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) }, { name : "_ext", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) }, { name : "_loc", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("time.Location", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_name", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "_zone", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("time.zone", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_name", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "_offset", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) }, { name : "_isDST", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) }]))) }, { name : "_tx", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("time.zoneTrans", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_when", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) }, { name : "_index", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint8_kind) }, { name : "_isstd", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) }, { name : "_isutc", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) }]))) }, { name : "_extend", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "_cacheStart", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) }, { name : "_cacheEnd", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) }, { name : "_cacheZone", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("time.zone", [], stdgo.reflect.Reflect.GoType.invalidType)) }]))) }])) },
{ name : "mutex", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("sync.Mutex", [], stdgo.reflect.Reflect.GoType.invalidType) },
{ name : "_ci", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("database/sql/driver.Conn", [], stdgo.reflect.Reflect.GoType.interfaceType(false, [])) },
{ name : "_needReset", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) },
{ name : "_closed", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) },
{ name : "_finalClosed", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) },
{ name : "_openStmt", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("database/sql.driverStmt", [], stdgo.reflect.Reflect.GoType.structType([{ name : "locker", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("sync.Locker", [], stdgo.reflect.Reflect.GoType.interfaceType(false, [])) }, { name : "_si", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("database/sql/driver.Stmt", [], stdgo.reflect.Reflect.GoType.interfaceType(false, [])) }, { name : "_closed", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) }, { name : "_closeErr", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("error", [], stdgo.reflect.Reflect.GoType.invalidType) }]))), stdgo.reflect.Reflect.GoType.basic(bool_kind)) },
{ name : "_inUse", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) },
{ name : "_returnedAt", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("time.Time", [], stdgo.reflect.Reflect.GoType.invalidType) },
{ name : "_onPut", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.signature(false, [], [], stdgo.reflect.Reflect.GoType.invalidType)) },
{ name : "_dbmuClosed", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) }]))), stdgo.reflect.Reflect.GoType.basic(string_kind)) },
{ name : "_maxIdleCount", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) },
{ name : "_maxOpen", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) },
{ name : "_maxLifetime", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("time.Duration", [], stdgo.reflect.Reflect.GoType.basic(int64_kind)) },
{ name : "_maxIdleTime", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("time.Duration", [], stdgo.reflect.Reflect.GoType.basic(int64_kind)) },
{ name : "_cleanerCh", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.chanType(0, stdgo.reflect.Reflect.GoType.structType([])) },
{ name : "_waitCount", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) },
{ name : "_maxIdleClosed", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) },
{ name : "_maxIdleTimeClosed", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) },
{ name : "_maxLifetimeClosed", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) },
{ name : "_stop", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.signature(false, [], [], stdgo.reflect.Reflect.GoType.invalidType) }])))) },
{ name : "_createdAt", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("time.Time", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_wall", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) }, { name : "_ext", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) }, { name : "_loc", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("time.Location", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_name", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "_zone", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("time.zone", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_name", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "_offset", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) }, { name : "_isDST", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) }]))) }, { name : "_tx", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("time.zoneTrans", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_when", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) }, { name : "_index", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint8_kind) }, { name : "_isstd", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) }, { name : "_isutc", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) }]))) }, { name : "_extend", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "_cacheStart", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) }, { name : "_cacheEnd", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) }, { name : "_cacheZone", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("time.zone", [], stdgo.reflect.Reflect.GoType.invalidType)) }]))) }])) },
{ name : "mutex", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("sync.Mutex", [], stdgo.reflect.Reflect.GoType.invalidType) },
{ name : "_ci", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("database/sql/driver.Conn", [], stdgo.reflect.Reflect.GoType.interfaceType(false, [])) },
{ name : "_needReset", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) },
{ name : "_closed", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) },
{ name : "_finalClosed", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) },
{ name : "_openStmt", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("database/sql.driverStmt", [], stdgo.reflect.Reflect.GoType.structType([{ name : "locker", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("sync.Locker", [], stdgo.reflect.Reflect.GoType.interfaceType(false, [])) }, { name : "_si", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("database/sql/driver.Stmt", [], stdgo.reflect.Reflect.GoType.interfaceType(false, [])) }, { name : "_closed", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) }, { name : "_closeErr", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("error", [], stdgo.reflect.Reflect.GoType.invalidType) }]))), stdgo.reflect.Reflect.GoType.basic(bool_kind)) },
{ name : "_inUse", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) },
{ name : "_returnedAt", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("time.Time", [], stdgo.reflect.Reflect.GoType.invalidType) },
{ name : "_onPut", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.signature(false, [], [], stdgo.reflect.Reflect.GoType.invalidType)) },
{ name : "_dbmuClosed", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) }]))), stdgo.reflect.Reflect.GoType.basic(string_kind)))).nil();
    public var _maxIdleCount : GoInt = ((0 : GoInt));
    public var _maxOpen : GoInt = ((0 : GoInt));
    public var _maxLifetime : stdgo.time.Time.Duration = new stdgo.time.Time.Duration();
    public var _maxIdleTime : stdgo.time.Time.Duration = new stdgo.time.Time.Duration();
    public var _cleanerCh : Chan<{ }> = new Chan<{ }>(0, () -> null, true);
    public var _waitCount : GoInt64 = ((0 : GoInt64));
    public var _maxIdleClosed : GoInt64 = ((0 : GoInt64));
    public var _maxIdleTimeClosed : GoInt64 = ((0 : GoInt64));
    public var _maxLifetimeClosed : GoInt64 = ((0 : GoInt64));
    public var _stop : () -> Void = null;
    public function new(?_waitDuration:GoInt64, ?_connector:stdgo.database.sql.driver.Driver.Connector, ?_numClosed:GoUInt64, ?_mu:stdgo.sync.Sync.Mutex, ?_freeConn:Slice<Pointer<T_driverConn>>, ?_connRequests:GoMap<GoUInt64, Chan<T_connRequest>>, ?_nextRequest:GoUInt64, ?_numOpen:GoInt, ?_openerCh:Chan<{ }>, ?_closed:Bool, ?_dep:GoMap<T_finalCloser, T_depSet>, ?_lastPut:GoMap<Pointer<T_driverConn>, GoString>, ?_maxIdleCount:GoInt, ?_maxOpen:GoInt, ?_maxLifetime:stdgo.time.Time.Duration, ?_maxIdleTime:stdgo.time.Time.Duration, ?_cleanerCh:Chan<{ }>, ?_waitCount:GoInt64, ?_maxIdleClosed:GoInt64, ?_maxIdleTimeClosed:GoInt64, ?_maxLifetimeClosed:GoInt64, ?_stop:() -> Void) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(_waitDuration) + " " + Go.string(_connector) + " " + Go.string(_numClosed) + " " + Go.string(_mu) + " " + Go.string(_freeConn) + " " + Go.string(_connRequests) + " " + Go.string(_nextRequest) + " " + Go.string(_numOpen) + " " + Go.string(_openerCh) + " " + Go.string(_closed) + " " + Go.string(_dep) + " " + Go.string(_lastPut) + " " + Go.string(_maxIdleCount) + " " + Go.string(_maxOpen) + " " + Go.string(_maxLifetime) + " " + Go.string(_maxIdleTime) + " " + Go.string(_cleanerCh) + " " + Go.string(_waitCount) + " " + Go.string(_maxIdleClosed) + " " + Go.string(_maxIdleTimeClosed) + " " + Go.string(_maxLifetimeClosed) + " " + Go.string(_stop) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new DB(
_waitDuration,
_connector,
_numClosed,
_mu,
_freeConn,
_connRequests,
_nextRequest,
_numOpen,
_openerCh,
_closed,
_dep,
_lastPut,
_maxIdleCount,
_maxOpen,
_maxLifetime,
_maxIdleTime,
_cleanerCh,
_waitCount,
_maxIdleClosed,
_maxIdleTimeClosed,
_maxLifetimeClosed,
_stop);
    }
    public function __set__(__tmp__) {
        this._waitDuration = __tmp__._waitDuration;
        this._connector = __tmp__._connector;
        this._numClosed = __tmp__._numClosed;
        this._mu = __tmp__._mu;
        this._freeConn = __tmp__._freeConn;
        this._connRequests = __tmp__._connRequests;
        this._nextRequest = __tmp__._nextRequest;
        this._numOpen = __tmp__._numOpen;
        this._openerCh = __tmp__._openerCh;
        this._closed = __tmp__._closed;
        this._dep = __tmp__._dep;
        this._lastPut = __tmp__._lastPut;
        this._maxIdleCount = __tmp__._maxIdleCount;
        this._maxOpen = __tmp__._maxOpen;
        this._maxLifetime = __tmp__._maxLifetime;
        this._maxIdleTime = __tmp__._maxIdleTime;
        this._cleanerCh = __tmp__._cleanerCh;
        this._waitCount = __tmp__._waitCount;
        this._maxIdleClosed = __tmp__._maxIdleClosed;
        this._maxIdleTimeClosed = __tmp__._maxIdleTimeClosed;
        this._maxLifetimeClosed = __tmp__._maxLifetimeClosed;
        this._stop = __tmp__._stop;
        return this;
    }
}
@:named class T_connReuseStrategy {
    public var __t__ : GoUInt8;
    public function new(?t:GoUInt8) {
        __t__ = t == null ? 0 : t;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    @:implicit
    public function toString():GoString return Go.string(__t__);
    public function __copy__() return new T_connReuseStrategy(__t__);
}
@:structInit class T_driverConn {
    public function _finalClose():Error {
        var _dc = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _err:Error = ((null : stdgo.Error));
        var _openStmt:Slice<Pointer<T_driverStmt>> = new Slice<Pointer<T_driverStmt>>().nil();
        _withLock(_dc.value, function():Void {
            _openStmt = new Slice<Pointer<T_driverStmt>>(...[for (i in 0 ... ((((0 : GoInt)) : GoInt)).toBasic()) new Pointer<T_driverStmt>().nil()]).setCap((((_dc.value._openStmt == null ? 0 : _dc.value._openStmt.length) : GoInt)).toBasic());
            {
                var _ds;
                for (_obj in _dc.value._openStmt.keyValueIterator()) {
                    _ds = _obj.key;
                    _openStmt = _openStmt.__append__(_ds);
                };
            };
            _dc.value._openStmt = new GoMap<Pointer<T_driverStmt>, Bool>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("database/sql.driverStmt", [], stdgo.reflect.Reflect.GoType.named("database/sql.driverStmt", [], stdgo.reflect.Reflect.GoType.structType([{ name : "locker", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("sync.Locker", [], stdgo.reflect.Reflect.GoType.interfaceType(false, [])) }, { name : "_si", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("database/sql/driver.Stmt", [], stdgo.reflect.Reflect.GoType.interfaceType(false, [])) }, { name : "_closed", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) }, { name : "_closeErr", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("error", [], stdgo.reflect.Reflect.GoType.interfaceType(false, [])) }])))), stdgo.reflect.Reflect.GoType.basic(bool_kind)))).nil();
        });
        for (_ds in _openStmt) {
            _ds.value.close();
        };
        _withLock(_dc.value, function():Void {
            _dc.value._finalClosed = true;
            _err = _dc.value._ci.close();
            _dc.value._ci = ((null : stdgo.database.sql.driver.Driver.Conn));
        });
        _dc.value._db.value._mu.lock();
        _dc.value._db.value._numOpen--;
        _dc.value._db.value._maybeOpenNewConnections();
        _dc.value._db.value._mu.unlock();
        stdgo.sync.atomic.Atomic.addUint64(Go.pointer(_dc.value._db.value._numClosed), ((1 : GoUInt64)));
        return _err;
    }
    public function close():Error {
        var _dc = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        _dc.value.lock();
        if (_dc.value._closed) {
            _dc.value.unlock();
            return stdgo.errors.Errors.new_("sql: duplicate driverConn close");
        };
        _dc.value._closed = true;
        _dc.value.unlock();
        _dc.value._db.value._mu.lock();
        _dc.value._dbmuClosed = true;
        var _fn:() -> stdgo.Error = _dc.value._db.value._removeDepLocked(_dc.value, Go.toInterface(_dc));
        _dc.value._db.value._mu.unlock();
        return _fn();
    }
    public function _closeDBLocked():() -> Error {
        var _dc = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var recover_exception:Error = null;
        var deferstack:Array<Void -> Void> = [];
        _dc.value.lock();
        try {
            deferstack.unshift(() -> _dc.value.unlock());
            if (_dc.value._closed) {
                {
                    for (defer in deferstack) {
                        defer();
                    };
                    return function():Error {
                        return stdgo.errors.Errors.new_("sql: duplicate driverConn close");
                    };
                };
            };
            _dc.value._closed = true;
            {
                for (defer in deferstack) {
                    defer();
                };
                return _dc.value._db.value._removeDepLocked(_dc.value, Go.toInterface(_dc));
            };
            for (defer in deferstack) {
                defer();
            };
        } catch(e) {
            recover_exception = stdgo.runtime.Runtime.newRuntime(e.message);
            {
                for (defer in deferstack) {
                    defer();
                };
                if (recover_exception != null) throw recover_exception;
                return null;
            };
        };
    }
    public function _prepareLocked(_ctx:stdgo.context.Context.Context, _cg:T_stmtConnGrabber, _query:GoString):{ var _0 : Pointer<T_driverStmt>; var _1 : Error; } {
        var _dc = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var __tmp__ = _ctxDriverPrepare(_ctx, _dc.value._ci, _query), _si:stdgo.database.sql.driver.Driver.Stmt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : new Pointer<T_driverStmt>().nil(), _1 : _err };
        };
        var _ds:Pointer<T_driverStmt> = Go.pointer((({ locker : _dc.value, _si : _si, _closed : false, _closeErr : ((null : stdgo.Error)) } : T_driverStmt)));
        if (_cg != null) {
            return { _0 : _ds, _1 : ((null : stdgo.Error)) };
        };
        if (_dc.value._openStmt == null || _dc.value._openStmt.isNil()) {
            _dc.value._openStmt = new GoMap<Pointer<T_driverStmt>, Bool>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("database/sql.driverStmt", [], stdgo.reflect.Reflect.GoType.named("database/sql.driverStmt", [], stdgo.reflect.Reflect.GoType.structType([{ name : "locker", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("sync.Locker", [], stdgo.reflect.Reflect.GoType.interfaceType(false, [])) }, { name : "_si", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("database/sql/driver.Stmt", [], stdgo.reflect.Reflect.GoType.interfaceType(false, [])) }, { name : "_closed", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) }, { name : "_closeErr", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("error", [], stdgo.reflect.Reflect.GoType.interfaceType(false, [])) }])))), stdgo.reflect.Reflect.GoType.basic(bool_kind))));
        };
        _dc.value._openStmt[_ds] = true;
        return { _0 : _ds, _1 : ((null : stdgo.Error)) };
    }
    public function _validateConnection(_needsReset:Bool):Bool {
        var _dc = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var recover_exception:Error = null;
        var deferstack:Array<Void -> Void> = [];
        _dc.value.lock();
        try {
            deferstack.unshift(() -> _dc.value.unlock());
            if (_needsReset) {
                _dc.value._needReset = true;
            };
            {
                var __tmp__ = try {
                    { value : ((_dc.value._ci.__underlying__().value : stdgo.database.sql.driver.Driver.Validator)), ok : true };
                } catch(_) {
                    { value : ((null : stdgo.database.sql.driver.Driver.Validator)), ok : false };
                }, _cv = __tmp__.value, _ok = __tmp__.ok;
                if (_ok) {
                    {
                        for (defer in deferstack) {
                            defer();
                        };
                        return _cv.isValid();
                    };
                };
            };
            {
                for (defer in deferstack) {
                    defer();
                };
                return true;
            };
            for (defer in deferstack) {
                defer();
            };
        } catch(e) {
            recover_exception = stdgo.runtime.Runtime.newRuntime(e.message);
            {
                for (defer in deferstack) {
                    defer();
                };
                if (recover_exception != null) throw recover_exception;
                return false;
            };
        };
    }
    public function _resetSession(_ctx:stdgo.context.Context.Context):Error {
        var _dc = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var recover_exception:Error = null;
        var deferstack:Array<Void -> Void> = [];
        _dc.value.lock();
        try {
            deferstack.unshift(() -> _dc.value.unlock());
            if (!_dc.value._needReset) {
                {
                    for (defer in deferstack) {
                        defer();
                    };
                    return ((null : stdgo.Error));
                };
            };
            {
                var __tmp__ = try {
                    { value : ((_dc.value._ci.__underlying__().value : stdgo.database.sql.driver.Driver.SessionResetter)), ok : true };
                } catch(_) {
                    { value : ((null : stdgo.database.sql.driver.Driver.SessionResetter)), ok : false };
                }, _cr = __tmp__.value, _ok = __tmp__.ok;
                if (_ok) {
                    {
                        for (defer in deferstack) {
                            defer();
                        };
                        return _cr.resetSession(_ctx);
                    };
                };
            };
            {
                for (defer in deferstack) {
                    defer();
                };
                return ((null : stdgo.Error));
            };
            for (defer in deferstack) {
                defer();
            };
        } catch(e) {
            recover_exception = stdgo.runtime.Runtime.newRuntime(e.message);
            {
                for (defer in deferstack) {
                    defer();
                };
                if (recover_exception != null) throw recover_exception;
                return ((null : stdgo.Error));
            };
        };
    }
    public function _expired(_timeout:stdgo.time.Time.Duration):Bool {
        var _dc = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_timeout.__t__ <= ((0 : GoInt64))) {
            return false;
        };
        return _dc.value._createdAt.add(_timeout).before(_nowFunc().__copy__());
    }
    public function _removeOpenStmt(_ds:Pointer<T_driverStmt>):Void {
        var _dc = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var recover_exception:Error = null;
        var deferstack:Array<Void -> Void> = [];
        try {
            _dc.value.lock();
            deferstack.unshift(() -> _dc.value.unlock());
            _dc.value._openStmt.remove(_ds);
            for (defer in deferstack) {
                defer();
            };
        } catch(e) {
            recover_exception = stdgo.runtime.Runtime.newRuntime(e.message);
            {
                for (defer in deferstack) {
                    defer();
                };
                if (recover_exception != null) throw recover_exception;
                return;
            };
        };
    }
    public function _releaseConn(_err:Error):Void {
        var _dc = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        _dc.value._db.value._putConn(_dc, _err, true);
    }
    public var _db : Pointer<DB> = new Pointer<DB>().nil();
    public var _createdAt : stdgo.time.Time.Time = new stdgo.time.Time.Time();
    @:embedded
    public var mutex : stdgo.sync.Sync.Mutex = new stdgo.sync.Sync.Mutex();
    public var _ci : stdgo.database.sql.driver.Driver.Conn = ((null : stdgo.database.sql.driver.Driver.Conn));
    public var _needReset : Bool = false;
    public var _closed : Bool = false;
    public var _finalClosed : Bool = false;
    public var _openStmt : GoMap<Pointer<T_driverStmt>, Bool> = new GoMap<Pointer<T_driverStmt>, Bool>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("database/sql.driverStmt", [], stdgo.reflect.Reflect.GoType.structType([{ name : "locker", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("sync.Locker", [], stdgo.reflect.Reflect.GoType.interfaceType(false, [])) }, { name : "_si", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("database/sql/driver.Stmt", [], stdgo.reflect.Reflect.GoType.interfaceType(false, [])) }, { name : "_closed", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) }, { name : "_closeErr", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("error", [], stdgo.reflect.Reflect.GoType.interfaceType(false, [])) }]))), stdgo.reflect.Reflect.GoType.basic(bool_kind)))).nil();
    public var _inUse : Bool = false;
    public var _returnedAt : stdgo.time.Time.Time = new stdgo.time.Time.Time();
    public var _onPut : Slice<() -> Void> = new Slice<() -> Void>().nil();
    public var _dbmuClosed : Bool = false;
    public function new(?_db:Pointer<DB>, ?_createdAt:stdgo.time.Time.Time, ?mutex:stdgo.sync.Sync.Mutex, ?_ci:stdgo.database.sql.driver.Driver.Conn, ?_needReset:Bool, ?_closed:Bool, ?_finalClosed:Bool, ?_openStmt:GoMap<Pointer<T_driverStmt>, Bool>, ?_inUse:Bool, ?_returnedAt:stdgo.time.Time.Time, ?_onPut:Slice<() -> Void>, ?_dbmuClosed:Bool) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(_db) + " " + Go.string(_createdAt) + " " + Go.string(mutex) + " " + Go.string(_ci) + " " + Go.string(_needReset) + " " + Go.string(_closed) + " " + Go.string(_finalClosed) + " " + Go.string(_openStmt) + " " + Go.string(_inUse) + " " + Go.string(_returnedAt) + " " + Go.string(_onPut) + " " + Go.string(_dbmuClosed) + "}";
    }
    public function lock() mutex.lock();
    public function unlock() mutex.unlock();
    public function _lockSlow() mutex._lockSlow();
    public function _unlockSlow(_new:GoInt32) mutex._unlockSlow(_0);
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_driverConn(
_db,
_createdAt,
mutex,
_ci,
_needReset,
_closed,
_finalClosed,
_openStmt,
_inUse,
_returnedAt,
_onPut,
_dbmuClosed);
    }
    public function __set__(__tmp__) {
        this._db = __tmp__._db;
        this._createdAt = __tmp__._createdAt;
        this.mutex = __tmp__.mutex;
        this._ci = __tmp__._ci;
        this._needReset = __tmp__._needReset;
        this._closed = __tmp__._closed;
        this._finalClosed = __tmp__._finalClosed;
        this._openStmt = __tmp__._openStmt;
        this._inUse = __tmp__._inUse;
        this._returnedAt = __tmp__._returnedAt;
        this._onPut = __tmp__._onPut;
        this._dbmuClosed = __tmp__._dbmuClosed;
        return this;
    }
}
@:structInit class T_driverStmt {
    public function close():Error {
        var _ds = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var recover_exception:Error = null;
        var deferstack:Array<Void -> Void> = [];
        _ds.value.lock();
        try {
            deferstack.unshift(() -> _ds.value.unlock());
            if (_ds.value._closed) {
                {
                    for (defer in deferstack) {
                        defer();
                    };
                    return _ds.value._closeErr;
                };
            };
            _ds.value._closed = true;
            _ds.value._closeErr = _ds.value._si.close();
            {
                for (defer in deferstack) {
                    defer();
                };
                return _ds.value._closeErr;
            };
            for (defer in deferstack) {
                defer();
            };
        } catch(e) {
            recover_exception = stdgo.runtime.Runtime.newRuntime(e.message);
            {
                for (defer in deferstack) {
                    defer();
                };
                if (recover_exception != null) throw recover_exception;
                return ((null : stdgo.Error));
            };
        };
    }
    @:embedded
    public var locker : stdgo.sync.Sync.Locker = ((null : stdgo.sync.Sync.Locker));
    public var _si : stdgo.database.sql.driver.Driver.Stmt = ((null : stdgo.database.sql.driver.Driver.Stmt));
    public var _closed : Bool = false;
    public var _closeErr : stdgo.Error = ((null : stdgo.Error));
    public function new(?locker:stdgo.sync.Sync.Locker, ?_si:stdgo.database.sql.driver.Driver.Stmt, ?_closed:Bool, ?_closeErr:stdgo.Error) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(locker) + " " + Go.string(_si) + " " + Go.string(_closed) + " " + Go.string(_closeErr) + "}";
    }
    public function lock() locker.lock();
    public function unlock() locker.unlock();
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_driverStmt(locker, _si, _closed, _closeErr);
    }
    public function __set__(__tmp__) {
        this.locker = __tmp__.locker;
        this._si = __tmp__._si;
        this._closed = __tmp__._closed;
        this._closeErr = __tmp__._closeErr;
        return this;
    }
}
@:named class T_depSet {
    public var __t__ : GoMap<AnyInterface, Bool>;
    public function new(?t:GoMap<AnyInterface, Bool>) {
        __t__ = t == null ? new GoMap<AnyInterface, Bool>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.interfaceType(true, []), stdgo.reflect.Reflect.GoType.basic(bool_kind)))).nil() : t;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    @:implicit
    public function toString():GoString return Go.string(__t__);
    public function __copy__() return new T_depSet(__t__);
}
@:structInit class T_dsnConnector {
    public function driver():stdgo.database.sql.driver.Driver.Driver {
        var _t = this.__copy__();
        return _t._driver;
    }
    public function connect(_:stdgo.context.Context.Context):{ var _0 : stdgo.database.sql.driver.Driver.Conn; var _1 : Error; } {
        var _t = this.__copy__();
        return _t._driver.open(_t._dsn);
    }
    public var _dsn : GoString = (("" : GoString));
    public var _driver : stdgo.database.sql.driver.Driver.Driver = ((null : stdgo.database.sql.driver.Driver.Driver));
    public function new(?_dsn:GoString, ?_driver:stdgo.database.sql.driver.Driver.Driver) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(_dsn) + " " + Go.string(_driver) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_dsnConnector(_dsn, _driver);
    }
    public function __set__(__tmp__) {
        this._dsn = __tmp__._dsn;
        this._driver = __tmp__._driver;
        return this;
    }
}
@:structInit class DBStats {
    public var maxOpenConnections : GoInt = ((0 : GoInt));
    public var openConnections : GoInt = ((0 : GoInt));
    public var inUse : GoInt = ((0 : GoInt));
    public var idle : GoInt = ((0 : GoInt));
    public var waitCount : GoInt64 = ((0 : GoInt64));
    public var waitDuration : stdgo.time.Time.Duration = new stdgo.time.Time.Duration();
    public var maxIdleClosed : GoInt64 = ((0 : GoInt64));
    public var maxIdleTimeClosed : GoInt64 = ((0 : GoInt64));
    public var maxLifetimeClosed : GoInt64 = ((0 : GoInt64));
    public function new(?maxOpenConnections:GoInt, ?openConnections:GoInt, ?inUse:GoInt, ?idle:GoInt, ?waitCount:GoInt64, ?waitDuration:stdgo.time.Time.Duration, ?maxIdleClosed:GoInt64, ?maxIdleTimeClosed:GoInt64, ?maxLifetimeClosed:GoInt64) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(maxOpenConnections) + " " + Go.string(openConnections) + " " + Go.string(inUse) + " " + Go.string(idle) + " " + Go.string(waitCount) + " " + Go.string(waitDuration) + " " + Go.string(maxIdleClosed) + " " + Go.string(maxIdleTimeClosed) + " " + Go.string(maxLifetimeClosed) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new DBStats(maxOpenConnections, openConnections, inUse, idle, waitCount, waitDuration, maxIdleClosed, maxIdleTimeClosed, maxLifetimeClosed);
    }
    public function __set__(__tmp__) {
        this.maxOpenConnections = __tmp__.maxOpenConnections;
        this.openConnections = __tmp__.openConnections;
        this.inUse = __tmp__.inUse;
        this.idle = __tmp__.idle;
        this.waitCount = __tmp__.waitCount;
        this.waitDuration = __tmp__.waitDuration;
        this.maxIdleClosed = __tmp__.maxIdleClosed;
        this.maxIdleTimeClosed = __tmp__.maxIdleTimeClosed;
        this.maxLifetimeClosed = __tmp__.maxLifetimeClosed;
        return this;
    }
}
@:structInit class T_connRequest {
    public var _conn : Pointer<T_driverConn> = new Pointer<T_driverConn>().nil();
    public var _err : stdgo.Error = ((null : stdgo.Error));
    public function new(?_conn:Pointer<T_driverConn>, ?_err:stdgo.Error) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(_conn) + " " + Go.string(_err) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_connRequest(_conn, _err);
    }
    public function __set__(__tmp__) {
        this._conn = __tmp__._conn;
        this._err = __tmp__._err;
        return this;
    }
}
@:named class T_releaseConn {
    public var __t__ : stdgo.Error -> Void;
    public function new(?t:stdgo.Error -> Void) {
        __t__ = t == null ? null : t;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    @:implicit
    public function toString():GoString return Go.string(__t__);
    public function __copy__() return new T_releaseConn(__t__);
}
@:structInit class Conn {
    public function close():Error {
        var _c = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return _c.value._close(((null : stdgo.Error)));
    }
    public function _close(_err:Error):Error {
        var _c = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var recover_exception:Error = null;
        var deferstack:Array<Void -> Void> = [];
        if (!stdgo.sync.atomic.Atomic.compareAndSwapInt32(Go.pointer(_c.value._done), ((0 : GoInt32)), ((1 : GoInt32)))) {
            return errConnDone;
        };
        try {
            _c.value._closemu.lock();
            deferstack.unshift(() -> _c.value._closemu.unlock());
            _c.value._dc.value._releaseConn(_err);
            _c.value._dc = new Pointer<T_driverConn>().nil();
            _c.value._db = new Pointer<DB>().nil();
            {
                for (defer in deferstack) {
                    defer();
                };
                return _err;
            };
            for (defer in deferstack) {
                defer();
            };
        } catch(e) {
            recover_exception = stdgo.runtime.Runtime.newRuntime(e.message);
            {
                for (defer in deferstack) {
                    defer();
                };
                if (recover_exception != null) throw recover_exception;
                return ((null : stdgo.Error));
            };
        };
    }
    public function _txCtx():stdgo.context.Context.Context {
        var _c = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return ((null : stdgo.context.Context.Context));
    }
    public function _closemuRUnlockCondReleaseConn(_err:Error):Void {
        var _c = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        _c.value._closemu.runlock();
        if (Go.toInterface(_err) == Go.toInterface(stdgo.database.sql.driver.Driver.errBadConn)) {
            _c.value._close(_err);
        };
    }
    public function beginTx(_ctx:stdgo.context.Context.Context, _opts:Pointer<TxOptions>):{ var _0 : Pointer<Tx>; var _1 : Error; } {
        var _c = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var __tmp__ = _c.value._grabConn(_ctx), _dc:Pointer<T_driverConn> = __tmp__._0, _release:T_releaseConn = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        if (_err != null) {
            return { _0 : new Pointer<Tx>().nil(), _1 : _err };
        };
        return _c.value._db.value._beginDC(_ctx, _dc, _release.__copy__().__t__, _opts);
    }
    public function raw(_f:(_driverConn:AnyInterface) -> Error):Error {
        var _c = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var recover_exception:Error = null;
        var deferstack:Array<Void -> Void> = [];
        var _err:Error = ((null : stdgo.Error));
        try {
            var _dc:Pointer<T_driverConn> = new Pointer<T_driverConn>().nil();
            var _release:T_releaseConn = new T_releaseConn();
            {
                var __tmp__ = _c.value._grabConn(((null : stdgo.context.Context.Context)));
                _dc = __tmp__._0;
                _release = __tmp__._1.__copy__();
                _err = __tmp__._2;
            };
            if (_err != null) {
                return _err;
            };
            var _fPanic:Bool = true;
            _dc.value.mutex.lock();
            {
                deferstack.unshift(() -> {
                    var a = function():Void {
                        _dc.value.mutex.unlock();
                        if (_fPanic) {
                            _err = stdgo.database.sql.driver.Driver.errBadConn;
                        };
                        _release.__t__(_err);
                    };
                    a();
                });
            };
            _err = _f(Go.toInterface(_dc.value._ci));
            _fPanic = false;
            {
                for (defer in deferstack) {
                    defer();
                };
                return _err;
            };
            for (defer in deferstack) {
                defer();
            };
        } catch(e) {
            recover_exception = stdgo.runtime.Runtime.newRuntime(e.message);
            {
                for (defer in deferstack) {
                    defer();
                };
                if (recover_exception != null) throw recover_exception;
                return _err;
            };
        };
    }
    public function prepareContext(_ctx:stdgo.context.Context.Context, _query:GoString):{ var _0 : Pointer<Stmt>; var _1 : Error; } {
        var _c = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var __tmp__ = _c.value._grabConn(_ctx), _dc:Pointer<T_driverConn> = __tmp__._0, _release:T_releaseConn = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        if (_err != null) {
            return { _0 : new Pointer<Stmt>().nil(), _1 : _err };
        };
        return _c.value._db.value._prepareDC(_ctx, _dc, _release.__copy__().__t__, _c.value, _query);
    }
    public function queryRowContext(_ctx:stdgo.context.Context.Context, _query:GoString, _args:haxe.Rest<AnyInterface>):Pointer<Row> {
        var _c = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _args = new Slice<AnyInterface>(..._args);
        var __tmp__ = _c.value.queryContext(_ctx, _query, ..._args.toArray()), _rows:Pointer<Rows> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        return Go.pointer((({ _rows : _rows, _err : _err } : Row)));
    }
    public function queryContext(_ctx:stdgo.context.Context.Context, _query:GoString, _args:haxe.Rest<AnyInterface>):{ var _0 : Pointer<Rows>; var _1 : Error; } {
        var _c = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _args = new Slice<AnyInterface>(..._args);
        var __tmp__ = _c.value._grabConn(_ctx), _dc:Pointer<T_driverConn> = __tmp__._0, _release:T_releaseConn = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        if (_err != null) {
            return { _0 : new Pointer<Rows>().nil(), _1 : _err };
        };
        return _c.value._db.value._queryDC(_ctx, ((null : stdgo.context.Context.Context)), _dc, _release.__copy__().__t__, _query, _args);
    }
    public function execContext(_ctx:stdgo.context.Context.Context, _query:GoString, _args:haxe.Rest<AnyInterface>):{ var _0 : Result; var _1 : Error; } {
        var _c = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _args = new Slice<AnyInterface>(..._args);
        var __tmp__ = _c.value._grabConn(_ctx), _dc:Pointer<T_driverConn> = __tmp__._0, _release:T_releaseConn = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        if (_err != null) {
            return { _0 : ((null : Result)), _1 : _err };
        };
        return _c.value._db.value._execDC(_ctx, _dc, _release.__copy__().__t__, _query, _args);
    }
    public function pingContext(_ctx:stdgo.context.Context.Context):Error {
        var _c = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var __tmp__ = _c.value._grabConn(_ctx), _dc:Pointer<T_driverConn> = __tmp__._0, _release:T_releaseConn = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        if (_err != null) {
            return _err;
        };
        return _c.value._db.value._pingDC(_ctx, _dc, _release.__copy__().__t__);
    }
    public function _grabConn(arg0:stdgo.context.Context.Context):{ var _0 : Pointer<T_driverConn>; var _1 : T_releaseConn; var _2 : Error; } {
        var _c = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (stdgo.sync.atomic.Atomic.loadInt32(Go.pointer(_c.value._done)) != ((0 : GoInt32))) {
            return { _0 : new Pointer<T_driverConn>().nil(), _1 : new T_releaseConn(), _2 : errConnDone };
        };
        _c.value._closemu.rlock();
        return { _0 : _c.value._dc, _1 : new T_releaseConn(_c.value._closemuRUnlockCondReleaseConn), _2 : ((null : stdgo.Error)) };
    }
    public var _db : Pointer<DB> = new Pointer<DB>().nil();
    public var _closemu : stdgo.sync.Sync.RWMutex = new stdgo.sync.Sync.RWMutex();
    public var _dc : Pointer<T_driverConn> = new Pointer<T_driverConn>().nil();
    public var _done : GoInt32 = ((0 : GoInt32));
    public function new(?_db:Pointer<DB>, ?_closemu:stdgo.sync.Sync.RWMutex, ?_dc:Pointer<T_driverConn>, ?_done:GoInt32) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(_db) + " " + Go.string(_closemu) + " " + Go.string(_dc) + " " + Go.string(_done) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new Conn(_db, _closemu, _dc, _done);
    }
    public function __set__(__tmp__) {
        this._db = __tmp__._db;
        this._closemu = __tmp__._closemu;
        this._dc = __tmp__._dc;
        this._done = __tmp__._done;
        return this;
    }
}
@:structInit class Tx {
    public function queryRow(_query:GoString, _args:haxe.Rest<AnyInterface>):Pointer<Row> {
        var _tx = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _args = new Slice<AnyInterface>(..._args);
        return _tx.value.queryRowContext(stdgo.context.Context.background(), _query, ..._args.toArray());
    }
    public function queryRowContext(_ctx:stdgo.context.Context.Context, _query:GoString, _args:haxe.Rest<AnyInterface>):Pointer<Row> {
        var _tx = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _args = new Slice<AnyInterface>(..._args);
        var __tmp__ = _tx.value.queryContext(_ctx, _query, ..._args.toArray()), _rows:Pointer<Rows> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        return Go.pointer((({ _rows : _rows, _err : _err } : Row)));
    }
    public function query(_query:GoString, _args:haxe.Rest<AnyInterface>):{ var _0 : Pointer<Rows>; var _1 : Error; } {
        var _tx = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _args = new Slice<AnyInterface>(..._args);
        return _tx.value.queryContext(stdgo.context.Context.background(), _query, ..._args.toArray());
    }
    public function queryContext(_ctx:stdgo.context.Context.Context, _query:GoString, _args:haxe.Rest<AnyInterface>):{ var _0 : Pointer<Rows>; var _1 : Error; } {
        var _tx = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _args = new Slice<AnyInterface>(..._args);
        var __tmp__ = _tx.value._grabConn(_ctx), _dc:Pointer<T_driverConn> = __tmp__._0, _release:T_releaseConn = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        if (_err != null) {
            return { _0 : new Pointer<Rows>().nil(), _1 : _err };
        };
        return _tx.value._db.value._queryDC(_ctx, _tx.value._ctx, _dc, _release.__copy__().__t__, _query, _args);
    }
    public function exec(_query:GoString, _args:haxe.Rest<AnyInterface>):{ var _0 : Result; var _1 : Error; } {
        var _tx = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _args = new Slice<AnyInterface>(..._args);
        return _tx.value.execContext(stdgo.context.Context.background(), _query, ..._args.toArray());
    }
    public function execContext(_ctx:stdgo.context.Context.Context, _query:GoString, _args:haxe.Rest<AnyInterface>):{ var _0 : Result; var _1 : Error; } {
        var _tx = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _args = new Slice<AnyInterface>(..._args);
        var __tmp__ = _tx.value._grabConn(_ctx), _dc:Pointer<T_driverConn> = __tmp__._0, _release:T_releaseConn = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        if (_err != null) {
            return { _0 : ((null : Result)), _1 : _err };
        };
        return _tx.value._db.value._execDC(_ctx, _dc, _release.__copy__().__t__, _query, _args);
    }
    public function stmt(_stmt:Pointer<Stmt>):Pointer<Stmt> {
        var _tx = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return _tx.value.stmtContext(stdgo.context.Context.background(), _stmt);
    }
    public function stmtContext(_ctx:stdgo.context.Context.Context, _stmt:Pointer<Stmt>):Pointer<Stmt> {
        var _tx = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var recover_exception:Error = null;
        var deferstack:Array<Void -> Void> = [];
        var __tmp__ = _tx.value._grabConn(_ctx), _dc:Pointer<T_driverConn> = __tmp__._0, _release:T_releaseConn = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        try {
            if (_err != null) {
                return Go.pointer((({ _stickyErr : _err, _db : new Pointer<DB>().nil(), _query : "", _closemu : new stdgo.sync.Sync.RWMutex(), _cg : ((null : T_stmtConnGrabber)), _cgds : new Pointer<T_driverStmt>().nil(), _parentStmt : new Pointer<Stmt>().nil(), _mu : new stdgo.sync.Sync.Mutex(), _closed : false, _css : new Slice<T_connStmt>().nil(), _lastNumClosed : 0 } : Stmt)));
            };
            {
                var a0 = null;
                deferstack.unshift(() -> _release.__t__(a0));
            };
            if (_tx.value._db != _stmt.value._db) {
                {
                    for (defer in deferstack) {
                        defer();
                    };
                    return Go.pointer((({ _stickyErr : stdgo.errors.Errors.new_("sql: Tx.Stmt: statement from different database used"), _db : new Pointer<DB>().nil(), _query : "", _closemu : new stdgo.sync.Sync.RWMutex(), _cg : ((null : T_stmtConnGrabber)), _cgds : new Pointer<T_driverStmt>().nil(), _parentStmt : new Pointer<Stmt>().nil(), _mu : new stdgo.sync.Sync.Mutex(), _closed : false, _css : new Slice<T_connStmt>().nil(), _lastNumClosed : 0 } : Stmt)));
                };
            };
            var _si:stdgo.database.sql.driver.Driver.Stmt = ((null : stdgo.database.sql.driver.Driver.Stmt));
            var _parentStmt:Pointer<Stmt> = new Pointer<Stmt>().nil();
            _stmt.value._mu.lock();
            if (_stmt.value._closed || _stmt.value._cg != null) {
                _stmt.value._mu.unlock();
                _withLock(_dc.value, function():Void {
                    {
                        var __tmp__ = _ctxDriverPrepare(_ctx, _dc.value._ci, _stmt.value._query);
                        _si = __tmp__._0;
                        _err = __tmp__._1;
                    };
                });
                if (_err != null) {
                    {
                        for (defer in deferstack) {
                            defer();
                        };
                        return Go.pointer((({ _stickyErr : _err, _db : new Pointer<DB>().nil(), _query : "", _closemu : new stdgo.sync.Sync.RWMutex(), _cg : ((null : T_stmtConnGrabber)), _cgds : new Pointer<T_driverStmt>().nil(), _parentStmt : new Pointer<Stmt>().nil(), _mu : new stdgo.sync.Sync.Mutex(), _closed : false, _css : new Slice<T_connStmt>().nil(), _lastNumClosed : 0 } : Stmt)));
                    };
                };
            } else {
                _stmt.value._removeClosedStmtLocked();
                for (_v in _stmt.value._css) {
                    if (_v._dc == _dc) {
                        _si = _v._ds.value._si;
                        break;
                    };
                };
                _stmt.value._mu.unlock();
                if (_si == null) {
                    var _ds:Pointer<T_driverStmt> = new Pointer<T_driverStmt>().nil();
                    _withLock(_dc.value, function():Void {
                        {
                            var __tmp__ = _stmt.value._prepareOnConnLocked(_ctx, _dc);
                            _ds = __tmp__._0;
                            _err = __tmp__._1;
                        };
                    });
                    if (_err != null) {
                        {
                            for (defer in deferstack) {
                                defer();
                            };
                            return Go.pointer((({ _stickyErr : _err, _db : new Pointer<DB>().nil(), _query : "", _closemu : new stdgo.sync.Sync.RWMutex(), _cg : ((null : T_stmtConnGrabber)), _cgds : new Pointer<T_driverStmt>().nil(), _parentStmt : new Pointer<Stmt>().nil(), _mu : new stdgo.sync.Sync.Mutex(), _closed : false, _css : new Slice<T_connStmt>().nil(), _lastNumClosed : 0 } : Stmt)));
                        };
                    };
                    _si = _ds.value._si;
                };
                _parentStmt = _stmt;
            };
            var _txs:Pointer<Stmt> = Go.pointer((({ _db : _tx.value._db, _cg : _tx.value, _cgds : Go.pointer((({ locker : _dc.value, _si : _si, _closed : false, _closeErr : ((null : stdgo.Error)) } : T_driverStmt))), _parentStmt : _parentStmt, _query : _stmt.value._query, _stickyErr : ((null : stdgo.Error)), _closemu : new stdgo.sync.Sync.RWMutex(), _mu : new stdgo.sync.Sync.Mutex(), _closed : false, _css : new Slice<T_connStmt>().nil(), _lastNumClosed : 0 } : Stmt)));
            if (_parentStmt != null && !_parentStmt.isNil()) {
                _tx.value._db.value._addDep(_parentStmt.value, Go.toInterface(_txs));
            };
            _tx.value._stmts.lock();
            _tx.value._stmts._v = _tx.value._stmts._v.__append__(_txs);
            _tx.value._stmts.unlock();
            {
                for (defer in deferstack) {
                    defer();
                };
                return _txs;
            };
            for (defer in deferstack) {
                defer();
            };
        } catch(e) {
            recover_exception = stdgo.runtime.Runtime.newRuntime(e.message);
            {
                for (defer in deferstack) {
                    defer();
                };
                if (recover_exception != null) throw recover_exception;
                return new Pointer<Stmt>().nil();
            };
        };
    }
    public function prepare(_query:GoString):{ var _0 : Pointer<Stmt>; var _1 : Error; } {
        var _tx = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return _tx.value.prepareContext(stdgo.context.Context.background(), _query);
    }
    public function prepareContext(_ctx:stdgo.context.Context.Context, _query:GoString):{ var _0 : Pointer<Stmt>; var _1 : Error; } {
        var _tx = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var __tmp__ = _tx.value._grabConn(_ctx), _dc:Pointer<T_driverConn> = __tmp__._0, _release:T_releaseConn = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        if (_err != null) {
            return { _0 : new Pointer<Stmt>().nil(), _1 : _err };
        };
        var __tmp__ = _tx.value._db.value._prepareDC(_ctx, _dc, _release.__copy__().__t__, _tx.value, _query), _stmt:Pointer<Stmt> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : new Pointer<Stmt>().nil(), _1 : _err };
        };
        _tx.value._stmts.lock();
        _tx.value._stmts._v = _tx.value._stmts._v.__append__(_stmt);
        _tx.value._stmts.unlock();
        return { _0 : _stmt, _1 : ((null : stdgo.Error)) };
    }
    public function rollback():Error {
        var _tx = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return _tx.value._rollback(false);
    }
    public function _rollback(_discardConn:Bool):Error {
        var _tx = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (!stdgo.sync.atomic.Atomic.compareAndSwapInt32(Go.pointer(_tx.value._done), ((0 : GoInt32)), ((1 : GoInt32)))) {
            return errTxDone;
        };
        if (_rollbackHook != null) {
            _rollbackHook();
        };
        _tx.value._cancel();
        _tx.value._closemu.lock();
        _tx.value._closemu.unlock();
        var _err:Error = ((null : stdgo.Error));
        _withLock(_tx.value._dc.value, function():Void {
            _err = _tx.value._txi.rollback();
        });
        if (Go.toInterface(_err) != Go.toInterface(stdgo.database.sql.driver.Driver.errBadConn)) {
            _tx.value._closePrepared();
        };
        if (_discardConn) {
            _err = stdgo.database.sql.driver.Driver.errBadConn;
        };
        _tx.value._close(_err);
        return _err;
    }
    public function commit():Error {
        var _tx = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        {
            null;
            {
                _tx.value._ctx.done().get();
                if (stdgo.sync.atomic.Atomic.loadInt32(Go.pointer(_tx.value._done)) == ((1 : GoInt32))) {
                    return errTxDone;
                };
                return _tx.value._ctx.err();
            };
        };
        if (!stdgo.sync.atomic.Atomic.compareAndSwapInt32(Go.pointer(_tx.value._done), ((0 : GoInt32)), ((1 : GoInt32)))) {
            return errTxDone;
        };
        _tx.value._cancel();
        _tx.value._closemu.lock();
        _tx.value._closemu.unlock();
        var _err:Error = ((null : stdgo.Error));
        _withLock(_tx.value._dc.value, function():Void {
            _err = _tx.value._txi.commit();
        });
        if (Go.toInterface(_err) != Go.toInterface(stdgo.database.sql.driver.Driver.errBadConn)) {
            _tx.value._closePrepared();
        };
        _tx.value._close(_err);
        return _err;
    }
    public function _closePrepared():Void {
        var _tx = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var recover_exception:Error = null;
        var deferstack:Array<Void -> Void> = [];
        try {
            _tx.value._stmts.lock();
            deferstack.unshift(() -> _tx.value._stmts.unlock());
            for (_stmt in _tx.value._stmts._v) {
                _stmt.value.close();
            };
            for (defer in deferstack) {
                defer();
            };
        } catch(e) {
            recover_exception = stdgo.runtime.Runtime.newRuntime(e.message);
            {
                for (defer in deferstack) {
                    defer();
                };
                if (recover_exception != null) throw recover_exception;
                return;
            };
        };
    }
    public function _closemuRUnlockRelease(arg0:Error):Void {
        var _tx = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        _tx.value._closemu.runlock();
    }
    public function _txCtx():stdgo.context.Context.Context {
        var _tx = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return _tx.value._ctx;
    }
    public function _grabConn(_ctx:stdgo.context.Context.Context):{ var _0 : Pointer<T_driverConn>; var _1 : T_releaseConn; var _2 : Error; } {
        var _tx = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        {
            null;
            {
                _ctx.done().get();
                return { _0 : new Pointer<T_driverConn>().nil(), _1 : new T_releaseConn(), _2 : _ctx.err() };
            };
        };
        _tx.value._closemu.rlock();
        if (_tx.value._isDone()) {
            _tx.value._closemu.runlock();
            return { _0 : new Pointer<T_driverConn>().nil(), _1 : new T_releaseConn(), _2 : errTxDone };
        };
        if (_hookTxGrabConn != null) {
            _hookTxGrabConn();
        };
        return { _0 : _tx.value._dc, _1 : new T_releaseConn(_tx.value._closemuRUnlockRelease), _2 : ((null : stdgo.Error)) };
    }
    public function _close(_err:Error):Void {
        var _tx = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        _tx.value._releaseConn(_err);
        _tx.value._dc = new Pointer<T_driverConn>().nil();
        _tx.value._txi = ((null : stdgo.database.sql.driver.Driver.Tx));
    }
    public function _isDone():Bool {
        var _tx = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return stdgo.sync.atomic.Atomic.loadInt32(Go.pointer(_tx.value._done)) != ((0 : GoInt32));
    }
    public function _awaitDone():Void {
        var _tx = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        _tx.value._ctx.done().get();
        var _discardConnection:Bool = !_tx.value._keepConnOnRollback;
        _tx.value._rollback(_discardConnection);
    }
    public var _db : Pointer<DB> = new Pointer<DB>().nil();
    public var _closemu : stdgo.sync.Sync.RWMutex = new stdgo.sync.Sync.RWMutex();
    public var _dc : Pointer<T_driverConn> = new Pointer<T_driverConn>().nil();
    public var _txi : stdgo.database.sql.driver.Driver.Tx = ((null : stdgo.database.sql.driver.Driver.Tx));
    public var _releaseConn : stdgo.Error -> Void = null;
    public var _done : GoInt32 = ((0 : GoInt32));
    public var _keepConnOnRollback : Bool = false;
    public var _stmts : T__struct_45 = new T__struct_45();
    public var _cancel : () -> Void = null;
    public var _ctx : stdgo.context.Context.Context = ((null : stdgo.context.Context.Context));
    public function new(?_db:Pointer<DB>, ?_closemu:stdgo.sync.Sync.RWMutex, ?_dc:Pointer<T_driverConn>, ?_txi:stdgo.database.sql.driver.Driver.Tx, ?_releaseConn:stdgo.Error -> Void, ?_done:GoInt32, ?_keepConnOnRollback:Bool, ?_stmts:T__struct_45, ?_cancel:() -> Void, ?_ctx:stdgo.context.Context.Context) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(_db) + " " + Go.string(_closemu) + " " + Go.string(_dc) + " " + Go.string(_txi) + " " + Go.string(_releaseConn) + " " + Go.string(_done) + " " + Go.string(_keepConnOnRollback) + " " + Go.string(_stmts) + " " + Go.string(_cancel) + " " + Go.string(_ctx) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new Tx(_db, _closemu, _dc, _txi, _releaseConn, _done, _keepConnOnRollback, _stmts, _cancel, _ctx);
    }
    public function __set__(__tmp__) {
        this._db = __tmp__._db;
        this._closemu = __tmp__._closemu;
        this._dc = __tmp__._dc;
        this._txi = __tmp__._txi;
        this._releaseConn = __tmp__._releaseConn;
        this._done = __tmp__._done;
        this._keepConnOnRollback = __tmp__._keepConnOnRollback;
        this._stmts = __tmp__._stmts;
        this._cancel = __tmp__._cancel;
        this._ctx = __tmp__._ctx;
        return this;
    }
}
@:structInit class T_connStmt {
    public var _dc : Pointer<T_driverConn> = new Pointer<T_driverConn>().nil();
    public var _ds : Pointer<T_driverStmt> = new Pointer<T_driverStmt>().nil();
    public function new(?_dc:Pointer<T_driverConn>, ?_ds:Pointer<T_driverStmt>) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(_dc) + " " + Go.string(_ds) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_connStmt(_dc, _ds);
    }
    public function __set__(__tmp__) {
        this._dc = __tmp__._dc;
        this._ds = __tmp__._ds;
        return this;
    }
}
@:structInit class Stmt {
    public function _finalClose():Error {
        var _s = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var recover_exception:Error = null;
        var deferstack:Array<Void -> Void> = [];
        _s.value._mu.lock();
        try {
            deferstack.unshift(() -> _s.value._mu.unlock());
            if (_s.value._css != null && !_s.value._css.isNil()) {
                for (_v in _s.value._css) {
                    _s.value._db.value._noteUnusedDriverStatement(_v._dc, _v._ds);
                    _v._dc.value._removeOpenStmt(_v._ds);
                };
                _s.value._css = new Slice<T_connStmt>().nil();
            };
            {
                for (defer in deferstack) {
                    defer();
                };
                return ((null : stdgo.Error));
            };
            for (defer in deferstack) {
                defer();
            };
        } catch(e) {
            recover_exception = stdgo.runtime.Runtime.newRuntime(e.message);
            {
                for (defer in deferstack) {
                    defer();
                };
                if (recover_exception != null) throw recover_exception;
                return ((null : stdgo.Error));
            };
        };
    }
    public function close():Error {
        var _s = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var recover_exception:Error = null;
        var deferstack:Array<Void -> Void> = [];
        _s.value._closemu.lock();
        try {
            deferstack.unshift(() -> _s.value._closemu.unlock());
            if (_s.value._stickyErr != null) {
                {
                    for (defer in deferstack) {
                        defer();
                    };
                    return _s.value._stickyErr;
                };
            };
            _s.value._mu.lock();
            if (_s.value._closed) {
                _s.value._mu.unlock();
                {
                    for (defer in deferstack) {
                        defer();
                    };
                    return ((null : stdgo.Error));
                };
            };
            _s.value._closed = true;
            var _txds:Pointer<T_driverStmt> = _s.value._cgds;
            _s.value._cgds = new Pointer<T_driverStmt>().nil();
            _s.value._mu.unlock();
            if (_s.value._cg == null) {
                {
                    for (defer in deferstack) {
                        defer();
                    };
                    return _s.value._db.value._removeDep(_s.value, Go.toInterface(_s));
                };
            };
            if (_s.value._parentStmt != null && !_s.value._parentStmt.isNil()) {
                {
                    for (defer in deferstack) {
                        defer();
                    };
                    return _s.value._db.value._removeDep(_s.value._parentStmt.value, Go.toInterface(_s));
                };
            };
            {
                for (defer in deferstack) {
                    defer();
                };
                return _txds.value.close();
            };
            for (defer in deferstack) {
                defer();
            };
        } catch(e) {
            recover_exception = stdgo.runtime.Runtime.newRuntime(e.message);
            {
                for (defer in deferstack) {
                    defer();
                };
                if (recover_exception != null) throw recover_exception;
                return ((null : stdgo.Error));
            };
        };
    }
    public function queryRow(_args:haxe.Rest<AnyInterface>):Pointer<Row> {
        var _s = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _args = new Slice<AnyInterface>(..._args);
        return _s.value.queryRowContext(stdgo.context.Context.background(), ..._args.toArray());
    }
    public function queryRowContext(_ctx:stdgo.context.Context.Context, _args:haxe.Rest<AnyInterface>):Pointer<Row> {
        var _s = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _args = new Slice<AnyInterface>(..._args);
        var __tmp__ = _s.value.queryContext(_ctx, ..._args.toArray()), _rows:Pointer<Rows> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return Go.pointer((({ _err : _err, _rows : new Pointer<Rows>().nil() } : Row)));
        };
        return Go.pointer((({ _rows : _rows, _err : ((null : stdgo.Error)) } : Row)));
    }
    public function query(_args:haxe.Rest<AnyInterface>):{ var _0 : Pointer<Rows>; var _1 : Error; } {
        var _s = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _args = new Slice<AnyInterface>(..._args);
        return _s.value.queryContext(stdgo.context.Context.background(), ..._args.toArray());
    }
    public function queryContext(_ctx:stdgo.context.Context.Context, _args:haxe.Rest<AnyInterface>):{ var _0 : Pointer<Rows>; var _1 : Error; } {
        var _s = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _args = new Slice<AnyInterface>(..._args);
        var recover_exception:Error = null;
        var deferstack:Array<Void -> Void> = [];
        _s.value._closemu.rlock();
        deferstack.unshift(() -> _s.value._closemu.runlock());
        try {
            var _rowsi:stdgo.database.sql.driver.Driver.Rows = ((null : stdgo.database.sql.driver.Driver.Rows));
            var _strategy:T_connReuseStrategy = _cachedOrNewConn;
            {
                var _i:GoInt = ((0 : GoInt));
                Go.cfor(_i < _maxBadConnRetries + ((1 : GoUnTypedInt)), _i++, {
                    if (_i == _maxBadConnRetries) {
                        _strategy = _alwaysNewConn;
                    };
                    var __tmp__ = _s.value._connStmt(_ctx, _strategy), _dc:Pointer<T_driverConn> = __tmp__._0, _releaseConn:stdgo.Error -> Void = __tmp__._1, _ds:Pointer<T_driverStmt> = __tmp__._2, _err:stdgo.Error = __tmp__._3;
                    if (_err != null) {
                        if (Go.toInterface(_err) == Go.toInterface(stdgo.database.sql.driver.Driver.errBadConn)) {
                            continue;
                        };
                        {
                            for (defer in deferstack) {
                                defer();
                            };
                            return { _0 : new Pointer<Rows>().nil(), _1 : _err };
                        };
                    };
                    {
                        var __tmp__ = _rowsiFromStatement(_ctx, _dc.value._ci, _ds, ..._args.toArray());
                        _rowsi = __tmp__._0;
                        _err = __tmp__._1;
                    };
                    if (_err == null) {
                        var _rows:Pointer<Rows> = Go.pointer((({ _dc : _dc, _rowsi : _rowsi, _releaseConn : null, _cancel : null, _closeStmt : new Pointer<T_driverStmt>().nil(), _closemu : new stdgo.sync.Sync.RWMutex(), _closed : false, _lasterr : ((null : stdgo.Error)), _lastcols : new Slice<stdgo.database.sql.driver.Driver.Value>().nil() } : Rows)));
                        _s.value._db.value._addDep(_s.value, Go.toInterface(_rows));
                        _rows.value._releaseConn = function(_err:Error):Void {
                            _releaseConn(_err);
                            _s.value._db.value._removeDep(_s.value, Go.toInterface(_rows));
                        };
                        var _txctx:stdgo.context.Context.Context = ((null : stdgo.context.Context.Context));
                        if (_s.value._cg != null) {
                            _txctx = _s.value._cg._txCtx();
                        };
                        _rows.value._initContextClose(_ctx, _txctx);
                        {
                            for (defer in deferstack) {
                                defer();
                            };
                            return { _0 : _rows, _1 : ((null : stdgo.Error)) };
                        };
                    };
                    _releaseConn(_err);
                    if (Go.toInterface(_err) != Go.toInterface(stdgo.database.sql.driver.Driver.errBadConn)) {
                        {
                            for (defer in deferstack) {
                                defer();
                            };
                            return { _0 : new Pointer<Rows>().nil(), _1 : _err };
                        };
                    };
                });
            };
            {
                for (defer in deferstack) {
                    defer();
                };
                return { _0 : new Pointer<Rows>().nil(), _1 : stdgo.database.sql.driver.Driver.errBadConn };
            };
            for (defer in deferstack) {
                defer();
            };
        } catch(e) {
            recover_exception = stdgo.runtime.Runtime.newRuntime(e.message);
            {
                for (defer in deferstack) {
                    defer();
                };
                if (recover_exception != null) throw recover_exception;
                return { _0 : new Pointer<Rows>().nil(), _1 : ((null : stdgo.Error)) };
            };
        };
    }
    public function _prepareOnConnLocked(_ctx:stdgo.context.Context.Context, _dc:Pointer<T_driverConn>):{ var _0 : Pointer<T_driverStmt>; var _1 : Error; } {
        var _s = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var __tmp__ = _dc.value._prepareLocked(_ctx, _s.value._cg, _s.value._query), _si:Pointer<T_driverStmt> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : new Pointer<T_driverStmt>().nil(), _1 : _err };
        };
        var _cs:T_connStmt = new T_connStmt(_dc, _si).__copy__();
        _s.value._mu.lock();
        _s.value._css = _s.value._css.__append__(_cs.__copy__());
        _s.value._mu.unlock();
        return { _0 : _cs._ds, _1 : ((null : stdgo.Error)) };
    }
    public function _connStmt(_ctx:stdgo.context.Context.Context, _strategy:T_connReuseStrategy):{ var _0 : Pointer<T_driverConn>; var _1 : Error -> Void; var _2 : Pointer<T_driverStmt>; var _3 : Error; } {
        var _s = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _dc:Pointer<T_driverConn> = new Pointer<T_driverConn>().nil(), _releaseConn:Error -> Void = null, _ds:Pointer<T_driverStmt> = new Pointer<T_driverStmt>().nil(), _err:Error = ((null : stdgo.Error));
        {
            _err = _s.value._stickyErr;
            if (_err != null) {
                return { _0 : _dc, _1 : _releaseConn, _2 : _ds, _3 : _err };
            };
        };
        _s.value._mu.lock();
        if (_s.value._closed) {
            _s.value._mu.unlock();
            _err = stdgo.errors.Errors.new_("sql: statement is closed");
            return { _0 : _dc, _1 : _releaseConn, _2 : _ds, _3 : _err };
        };
        if (_s.value._cg != null) {
            _s.value._mu.unlock();
            {
                var __tmp__ = _s.value._cg._grabConn(_ctx);
                _dc = __tmp__._0;
                _releaseConn = __tmp__._1.__copy__().__t__;
                _err = __tmp__._2;
            };
            if (_err != null) {
                return { _0 : _dc, _1 : _releaseConn, _2 : _ds, _3 : _err };
            };
            return { _0 : _dc, _1 : _releaseConn, _2 : _s.value._cgds, _3 : ((null : stdgo.Error)) };
        };
        _s.value._removeClosedStmtLocked();
        _s.value._mu.unlock();
        {
            var __tmp__ = _s.value._db.value._conn(_ctx, _strategy);
            _dc = __tmp__._0;
            _err = __tmp__._1;
        };
        if (_err != null) {
            return { _0 : new Pointer<T_driverConn>().nil(), _1 : null, _2 : new Pointer<T_driverStmt>().nil(), _3 : _err };
        };
        _s.value._mu.lock();
        for (_v in _s.value._css) {
            if (_v._dc == _dc) {
                _s.value._mu.unlock();
                return { _0 : _dc, _1 : _dc.value._releaseConn, _2 : _v._ds, _3 : ((null : stdgo.Error)) };
            };
        };
        _s.value._mu.unlock();
        _withLock(_dc.value, function():Void {
            {
                var __tmp__ = _s.value._prepareOnConnLocked(_ctx, _dc);
                _ds = __tmp__._0;
                _err = __tmp__._1;
            };
        });
        if (_err != null) {
            _dc.value._releaseConn(_err);
            return { _0 : new Pointer<T_driverConn>().nil(), _1 : null, _2 : new Pointer<T_driverStmt>().nil(), _3 : _err };
        };
        return { _0 : _dc, _1 : _dc.value._releaseConn, _2 : _ds, _3 : ((null : stdgo.Error)) };
    }
    public function _removeClosedStmtLocked():Void {
        var _s = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _t:GoInt = _s.value._css.length / ((2 : GoInt)) + ((1 : GoInt));
        if (_t > ((10 : GoInt))) {
            _t = ((10 : GoInt));
        };
        var _dbClosed:GoUInt64 = stdgo.sync.atomic.Atomic.loadUint64(Go.pointer(_s.value._db.value._numClosed));
        if (_dbClosed - _s.value._lastNumClosed < ((_t : GoUInt64))) {
            return;
        };
        _s.value._db.value._mu.lock();
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _s.value._css.length, _i++, {
                if (_s.value._css[_i]._dc.value._dbmuClosed) {
                    _s.value._css[_i] = _s.value._css[_s.value._css.length - ((1 : GoInt))].__copy__();
                    _s.value._css = _s.value._css.__slice__(0, _s.value._css.length - ((1 : GoInt)));
                    _i--;
                };
            });
        };
        _s.value._db.value._mu.unlock();
        _s.value._lastNumClosed = _dbClosed;
    }
    public function exec(_args:haxe.Rest<AnyInterface>):{ var _0 : Result; var _1 : Error; } {
        var _s = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _args = new Slice<AnyInterface>(..._args);
        return _s.value.execContext(stdgo.context.Context.background(), ..._args.toArray());
    }
    public function execContext(_ctx:stdgo.context.Context.Context, _args:haxe.Rest<AnyInterface>):{ var _0 : Result; var _1 : Error; } {
        var _s = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _args = new Slice<AnyInterface>(..._args);
        var recover_exception:Error = null;
        var deferstack:Array<Void -> Void> = [];
        _s.value._closemu.rlock();
        deferstack.unshift(() -> _s.value._closemu.runlock());
        try {
            var _res:Result = ((null : Result));
            var _strategy:T_connReuseStrategy = _cachedOrNewConn;
            {
                var _i:GoInt = ((0 : GoInt));
                Go.cfor(_i < _maxBadConnRetries + ((1 : GoUnTypedInt)), _i++, {
                    if (_i == _maxBadConnRetries) {
                        _strategy = _alwaysNewConn;
                    };
                    var __tmp__ = _s.value._connStmt(_ctx, _strategy), _dc:Pointer<T_driverConn> = __tmp__._0, _releaseConn:stdgo.Error -> Void = __tmp__._1, _ds:Pointer<T_driverStmt> = __tmp__._2, _err:stdgo.Error = __tmp__._3;
                    if (_err != null) {
                        if (Go.toInterface(_err) == Go.toInterface(stdgo.database.sql.driver.Driver.errBadConn)) {
                            continue;
                        };
                        {
                            for (defer in deferstack) {
                                defer();
                            };
                            return { _0 : ((null : Result)), _1 : _err };
                        };
                    };
                    {
                        var __tmp__ = _resultFromStatement(_ctx, _dc.value._ci, _ds, ..._args.toArray());
                        _res = __tmp__._0;
                        _err = __tmp__._1;
                    };
                    _releaseConn(_err);
                    if (Go.toInterface(_err) != Go.toInterface(stdgo.database.sql.driver.Driver.errBadConn)) {
                        {
                            for (defer in deferstack) {
                                defer();
                            };
                            return { _0 : _res, _1 : _err };
                        };
                    };
                });
            };
            {
                for (defer in deferstack) {
                    defer();
                };
                return { _0 : ((null : Result)), _1 : stdgo.database.sql.driver.Driver.errBadConn };
            };
            for (defer in deferstack) {
                defer();
            };
        } catch(e) {
            recover_exception = stdgo.runtime.Runtime.newRuntime(e.message);
            {
                for (defer in deferstack) {
                    defer();
                };
                if (recover_exception != null) throw recover_exception;
                return { _0 : ((null : Result)), _1 : ((null : stdgo.Error)) };
            };
        };
    }
    public var _db : Pointer<DB> = new Pointer<DB>().nil();
    public var _query : GoString = (("" : GoString));
    public var _stickyErr : stdgo.Error = ((null : stdgo.Error));
    public var _closemu : stdgo.sync.Sync.RWMutex = new stdgo.sync.Sync.RWMutex();
    public var _cg : T_stmtConnGrabber = ((null : T_stmtConnGrabber));
    public var _cgds : Pointer<T_driverStmt> = new Pointer<T_driverStmt>().nil();
    public var _parentStmt : Pointer<Stmt> = new Pointer<Stmt>().nil();
    public var _mu : stdgo.sync.Sync.Mutex = new stdgo.sync.Sync.Mutex();
    public var _closed : Bool = false;
    public var _css : Slice<T_connStmt> = new Slice<T_connStmt>().nil();
    public var _lastNumClosed : GoUInt64 = ((0 : GoUInt64));
    public function new(?_db:Pointer<DB>, ?_query:GoString, ?_stickyErr:stdgo.Error, ?_closemu:stdgo.sync.Sync.RWMutex, ?_cg:T_stmtConnGrabber, ?_cgds:Pointer<T_driverStmt>, ?_parentStmt:Pointer<Stmt>, ?_mu:stdgo.sync.Sync.Mutex, ?_closed:Bool, ?_css:Slice<T_connStmt>, ?_lastNumClosed:GoUInt64) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(_db) + " " + Go.string(_query) + " " + Go.string(_stickyErr) + " " + Go.string(_closemu) + " " + Go.string(_cg) + " " + Go.string(_cgds) + " " + Go.string(_parentStmt) + " " + Go.string(_mu) + " " + Go.string(_closed) + " " + Go.string(_css) + " " + Go.string(_lastNumClosed) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new Stmt(
_db,
_query,
_stickyErr,
_closemu,
_cg,
_cgds,
_parentStmt,
_mu,
_closed,
_css,
_lastNumClosed);
    }
    public function __set__(__tmp__) {
        this._db = __tmp__._db;
        this._query = __tmp__._query;
        this._stickyErr = __tmp__._stickyErr;
        this._closemu = __tmp__._closemu;
        this._cg = __tmp__._cg;
        this._cgds = __tmp__._cgds;
        this._parentStmt = __tmp__._parentStmt;
        this._mu = __tmp__._mu;
        this._closed = __tmp__._closed;
        this._css = __tmp__._css;
        this._lastNumClosed = __tmp__._lastNumClosed;
        return this;
    }
}
@:structInit class Rows {
    public function _close(_err:Error):Error {
        var _rs = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var recover_exception:Error = null;
        var deferstack:Array<Void -> Void> = [];
        _rs.value._closemu.lock();
        try {
            deferstack.unshift(() -> _rs.value._closemu.unlock());
            if (_rs.value._closed) {
                {
                    for (defer in deferstack) {
                        defer();
                    };
                    return ((null : stdgo.Error));
                };
            };
            _rs.value._closed = true;
            if (_rs.value._lasterr == null) {
                _rs.value._lasterr = _err;
            };
            _withLock(_rs.value._dc.value, function():Void {
                _err = _rs.value._rowsi.close();
            });
            {
                var _fn:(Pointer<Rows>, Pointer<stdgo.Error>) -> Void = _rowsCloseHook();
                if (_fn != null) {
                    _fn(_rs, Go.pointer(_err));
                };
            };
            if (_rs.value._cancel != null) {
                _rs.value._cancel();
            };
            if (_rs.value._closeStmt != null && !_rs.value._closeStmt.isNil()) {
                _rs.value._closeStmt.value.close();
            };
            _rs.value._releaseConn(_err);
            {
                for (defer in deferstack) {
                    defer();
                };
                return _err;
            };
            for (defer in deferstack) {
                defer();
            };
        } catch(e) {
            recover_exception = stdgo.runtime.Runtime.newRuntime(e.message);
            {
                for (defer in deferstack) {
                    defer();
                };
                if (recover_exception != null) throw recover_exception;
                return ((null : stdgo.Error));
            };
        };
    }
    public function close():Error {
        var _rs = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return _rs.value._close(((null : stdgo.Error)));
    }
    public function scan(_dest:haxe.Rest<AnyInterface>):Error {
        var _rs = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _dest = new Slice<AnyInterface>(..._dest);
        _rs.value._closemu.rlock();
        if (_rs.value._lasterr != null && Go.toInterface(_rs.value._lasterr) != Go.toInterface(stdgo.io.Io.eof)) {
            _rs.value._closemu.runlock();
            return _rs.value._lasterr;
        };
        if (_rs.value._closed) {
            var _err:stdgo.Error = _rs.value._lasterrOrErrLocked(_errRowsClosed);
            _rs.value._closemu.runlock();
            return _err;
        };
        _rs.value._closemu.runlock();
        if (_rs.value._lastcols == null || _rs.value._lastcols.isNil()) {
            return stdgo.errors.Errors.new_("sql: Scan called without calling Next");
        };
        if (_dest.length != _rs.value._lastcols.length) {
            return stdgo.fmt.Fmt.errorf("sql: expected %d destination arguments in Scan, not %d", Go.toInterface(_rs.value._lastcols.length), Go.toInterface(_dest.length));
        };
        {
            var _i;
            var _sv;
            for (_obj in _rs.value._lastcols.keyValueIterator()) {
                _i = _obj.key;
                _sv = _obj.value;
                var _err:stdgo.Error = _convertAssignRows(Go.toInterface(_dest[_i]), Go.toInterface(_sv), _rs);
                if (_err != null) {
                    return stdgo.fmt.Fmt.errorf("sql: Scan error on column index %d, name %q: %w", Go.toInterface(_i), Go.toInterface(_rs.value._rowsi.columns()[_i]), Go.toInterface(_err));
                };
            };
        };
        return ((null : stdgo.Error));
    }
    public function columnTypes():{ var _0 : Slice<Pointer<ColumnType>>; var _1 : Error; } {
        var _rs = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var recover_exception:Error = null;
        var deferstack:Array<Void -> Void> = [];
        _rs.value._closemu.rlock();
        deferstack.unshift(() -> _rs.value._closemu.runlock());
        try {
            if (_rs.value._closed) {
                {
                    for (defer in deferstack) {
                        defer();
                    };
                    return { _0 : new Slice<Pointer<ColumnType>>().nil(), _1 : _rs.value._lasterrOrErrLocked(_errRowsClosed) };
                };
            };
            if (_rs.value._rowsi == null) {
                {
                    for (defer in deferstack) {
                        defer();
                    };
                    return { _0 : new Slice<Pointer<ColumnType>>().nil(), _1 : _rs.value._lasterrOrErrLocked(_errNoRows) };
                };
            };
            _rs.value._dc.value.lock();
            deferstack.unshift(() -> _rs.value._dc.value.unlock());
            {
                for (defer in deferstack) {
                    defer();
                };
                return { _0 : _rowsColumnInfoSetupConnLocked(_rs.value._rowsi), _1 : ((null : stdgo.Error)) };
            };
            for (defer in deferstack) {
                defer();
            };
        } catch(e) {
            recover_exception = stdgo.runtime.Runtime.newRuntime(e.message);
            {
                for (defer in deferstack) {
                    defer();
                };
                if (recover_exception != null) throw recover_exception;
                return { _0 : new Slice<Pointer<ColumnType>>().nil(), _1 : ((null : stdgo.Error)) };
            };
        };
    }
    public function columns():{ var _0 : Slice<GoString>; var _1 : Error; } {
        var _rs = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var recover_exception:Error = null;
        var deferstack:Array<Void -> Void> = [];
        _rs.value._closemu.rlock();
        deferstack.unshift(() -> _rs.value._closemu.runlock());
        try {
            if (_rs.value._closed) {
                {
                    for (defer in deferstack) {
                        defer();
                    };
                    return { _0 : new Slice<GoString>().nil(), _1 : _rs.value._lasterrOrErrLocked(_errRowsClosed) };
                };
            };
            if (_rs.value._rowsi == null) {
                {
                    for (defer in deferstack) {
                        defer();
                    };
                    return { _0 : new Slice<GoString>().nil(), _1 : _rs.value._lasterrOrErrLocked(_errNoRows) };
                };
            };
            _rs.value._dc.value.lock();
            deferstack.unshift(() -> _rs.value._dc.value.unlock());
            {
                for (defer in deferstack) {
                    defer();
                };
                return { _0 : _rs.value._rowsi.columns(), _1 : ((null : stdgo.Error)) };
            };
            for (defer in deferstack) {
                defer();
            };
        } catch(e) {
            recover_exception = stdgo.runtime.Runtime.newRuntime(e.message);
            {
                for (defer in deferstack) {
                    defer();
                };
                if (recover_exception != null) throw recover_exception;
                return { _0 : new Slice<GoString>().nil(), _1 : ((null : stdgo.Error)) };
            };
        };
    }
    public function err():Error {
        var _rs = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var recover_exception:Error = null;
        var deferstack:Array<Void -> Void> = [];
        _rs.value._closemu.rlock();
        try {
            deferstack.unshift(() -> _rs.value._closemu.runlock());
            {
                for (defer in deferstack) {
                    defer();
                };
                return _rs.value._lasterrOrErrLocked(((null : stdgo.Error)));
            };
            for (defer in deferstack) {
                defer();
            };
        } catch(e) {
            recover_exception = stdgo.runtime.Runtime.newRuntime(e.message);
            {
                for (defer in deferstack) {
                    defer();
                };
                if (recover_exception != null) throw recover_exception;
                return ((null : stdgo.Error));
            };
        };
    }
    public function nextResultSet():Bool {
        var _rs = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var recover_exception:Error = null;
        var deferstack:Array<Void -> Void> = [];
        var _doClose:Bool = false;
        try {
            {
                deferstack.unshift(() -> {
                    var a = function():Void {
                        if (_doClose) {
                            _rs.value.close();
                        };
                    };
                    a();
                });
            };
            _rs.value._closemu.rlock();
            deferstack.unshift(() -> _rs.value._closemu.runlock());
            if (_rs.value._closed) {
                {
                    for (defer in deferstack) {
                        defer();
                    };
                    return false;
                };
            };
            _rs.value._lastcols = new Slice<stdgo.database.sql.driver.Driver.Value>().nil();
            var __tmp__ = try {
                { value : ((_rs.value._rowsi.__underlying__().value : stdgo.database.sql.driver.Driver.RowsNextResultSet)), ok : true };
            } catch(_) {
                { value : ((null : stdgo.database.sql.driver.Driver.RowsNextResultSet)), ok : false };
            }, _nextResultSet = __tmp__.value, _ok = __tmp__.ok;
            if (!_ok) {
                _doClose = true;
                {
                    for (defer in deferstack) {
                        defer();
                    };
                    return false;
                };
            };
            _rs.value._dc.value.lock();
            deferstack.unshift(() -> _rs.value._dc.value.unlock());
            _rs.value._lasterr = _nextResultSet.nextResultSet();
            if (_rs.value._lasterr != null) {
                _doClose = true;
                {
                    for (defer in deferstack) {
                        defer();
                    };
                    return false;
                };
            };
            {
                for (defer in deferstack) {
                    defer();
                };
                return true;
            };
            for (defer in deferstack) {
                defer();
            };
        } catch(e) {
            recover_exception = stdgo.runtime.Runtime.newRuntime(e.message);
            {
                for (defer in deferstack) {
                    defer();
                };
                if (recover_exception != null) throw recover_exception;
                return false;
            };
        };
    }
    public function _nextLocked():{ var _0 : Bool; var _1 : Bool; } {
        var _rs = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var recover_exception:Error = null;
        var deferstack:Array<Void -> Void> = [];
        var _doClose:Bool = false, _ok:Bool = false;
        if (_rs.value._closed) {
            return { _0 : false, _1 : false };
        };
        try {
            _rs.value._dc.value.lock();
            deferstack.unshift(() -> _rs.value._dc.value.unlock());
            if (_rs.value._lastcols == null || _rs.value._lastcols.isNil()) {
                _rs.value._lastcols = new Slice<stdgo.database.sql.driver.Driver.Value>(...[for (i in 0 ... ((_rs.value._rowsi.columns().length : GoInt)).toBasic()) ((null : stdgo.database.sql.driver.Driver.Value))]);
            };
            _rs.value._lasterr = _rs.value._rowsi.next(_rs.value._lastcols);
            if (_rs.value._lasterr != null) {
                if (Go.toInterface(_rs.value._lasterr) != Go.toInterface(stdgo.io.Io.eof)) {
                    {
                        for (defer in deferstack) {
                            defer();
                        };
                        return { _0 : true, _1 : false };
                    };
                };
                var __tmp__ = try {
                    { value : ((_rs.value._rowsi.__underlying__().value : stdgo.database.sql.driver.Driver.RowsNextResultSet)), ok : true };
                } catch(_) {
                    { value : ((null : stdgo.database.sql.driver.Driver.RowsNextResultSet)), ok : false };
                }, _nextResultSet = __tmp__.value, _ok = __tmp__.ok;
                if (!_ok) {
                    {
                        for (defer in deferstack) {
                            defer();
                        };
                        return { _0 : true, _1 : false };
                    };
                };
                if (!_nextResultSet.hasNextResultSet()) {
                    _doClose = true;
                };
                {
                    for (defer in deferstack) {
                        defer();
                    };
                    return { _0 : _doClose, _1 : false };
                };
            };
            {
                for (defer in deferstack) {
                    defer();
                };
                return { _0 : false, _1 : true };
            };
            for (defer in deferstack) {
                defer();
            };
        } catch(e) {
            recover_exception = stdgo.runtime.Runtime.newRuntime(e.message);
            {
                for (defer in deferstack) {
                    defer();
                };
                if (recover_exception != null) throw recover_exception;
                return { _0 : _doClose, _1 : _ok };
            };
        };
    }
    public function next():Bool {
        var _rs = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _doClose:Bool = false, _ok:Bool = false;
        _withLock(_rs.value._closemu.rlocker(), function():Void {
            {
                var __tmp__ = _rs.value._nextLocked();
                _doClose = __tmp__._0;
                _ok = __tmp__._1;
            };
        });
        if (_doClose) {
            _rs.value.close();
        };
        return _ok;
    }
    public function _awaitDone(_ctx:stdgo.context.Context.Context, _txctx:stdgo.context.Context.Context):Void {
        var _rs = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _txctxDone:Chan<T__struct_44> = new Chan<T__struct_44>(0, () -> new T__struct_44(), true);
        if (_txctx != null) {
            _txctxDone = _txctx.done();
        };
        {
            _ctx.done().get();
            _txctxDone.get();
        };
        _rs.value._close(_ctx.err());
    }
    public function _initContextClose(_ctx:stdgo.context.Context.Context, _txctx:stdgo.context.Context.Context):Void {
        var _rs = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_ctx.done() == null || _ctx.done().isNil() && (_txctx == null || _txctx.done() == null || _txctx.done().isNil())) {
            return;
        };
        if (_bypassRowsAwaitDone) {
            return;
        };
        {
            var __tmp__ = stdgo.context.Context.withCancel(_ctx);
            _ctx = __tmp__._0;
            _rs.value._cancel = __tmp__._1.__copy__().__t__;
        };
        Go.routine(_rs.value._awaitDone(_ctx, _txctx));
    }
    public function _lasterrOrErrLocked(_err:Error):Error {
        var _rs = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_rs.value._lasterr != null && Go.toInterface(_rs.value._lasterr) != Go.toInterface(stdgo.io.Io.eof)) {
            return _rs.value._lasterr;
        };
        return _err;
    }
    public var _dc : Pointer<T_driverConn> = new Pointer<T_driverConn>().nil();
    public var _releaseConn : stdgo.Error -> Void = null;
    public var _rowsi : stdgo.database.sql.driver.Driver.Rows = ((null : stdgo.database.sql.driver.Driver.Rows));
    public var _cancel : () -> Void = null;
    public var _closeStmt : Pointer<T_driverStmt> = new Pointer<T_driverStmt>().nil();
    public var _closemu : stdgo.sync.Sync.RWMutex = new stdgo.sync.Sync.RWMutex();
    public var _closed : Bool = false;
    public var _lasterr : stdgo.Error = ((null : stdgo.Error));
    public var _lastcols : Slice<stdgo.database.sql.driver.Driver.Value> = new Slice<stdgo.database.sql.driver.Driver.Value>().nil();
    public function new(?_dc:Pointer<T_driverConn>, ?_releaseConn:stdgo.Error -> Void, ?_rowsi:stdgo.database.sql.driver.Driver.Rows, ?_cancel:() -> Void, ?_closeStmt:Pointer<T_driverStmt>, ?_closemu:stdgo.sync.Sync.RWMutex, ?_closed:Bool, ?_lasterr:stdgo.Error, ?_lastcols:Slice<stdgo.database.sql.driver.Driver.Value>) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(_dc) + " " + Go.string(_releaseConn) + " " + Go.string(_rowsi) + " " + Go.string(_cancel) + " " + Go.string(_closeStmt) + " " + Go.string(_closemu) + " " + Go.string(_closed) + " " + Go.string(_lasterr) + " " + Go.string(_lastcols) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new Rows(_dc, _releaseConn, _rowsi, _cancel, _closeStmt, _closemu, _closed, _lasterr, _lastcols);
    }
    public function __set__(__tmp__) {
        this._dc = __tmp__._dc;
        this._releaseConn = __tmp__._releaseConn;
        this._rowsi = __tmp__._rowsi;
        this._cancel = __tmp__._cancel;
        this._closeStmt = __tmp__._closeStmt;
        this._closemu = __tmp__._closemu;
        this._closed = __tmp__._closed;
        this._lasterr = __tmp__._lasterr;
        this._lastcols = __tmp__._lastcols;
        return this;
    }
}
@:structInit class ColumnType {
    public function databaseTypeName():GoString {
        var _ci = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return _ci.value._databaseType;
    }
    public function nullable():{ var _0 : Bool; var _1 : Bool; } {
        var _ci = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _nullable:Bool = false, _ok:Bool = false;
        return { _0 : _ci.value._nullable, _1 : _ci.value._hasNullable };
    }
    public function scanType():stdgo.reflect.Reflect.Type {
        var _ci = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return _ci.value._scanType;
    }
    public function decimalSize():{ var _0 : GoInt64; var _1 : GoInt64; var _2 : Bool; } {
        var _ci = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _precision:GoInt64 = ((0 : GoInt64)), _scale:GoInt64 = ((0 : GoInt64)), _ok:Bool = false;
        return { _0 : _ci.value._precision, _1 : _ci.value._scale, _2 : _ci.value._hasPrecisionScale };
    }
    public function length():{ var _0 : GoInt64; var _1 : Bool; } {
        var _ci = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _length:GoInt64 = ((0 : GoInt64)), _ok:Bool = false;
        return { _0 : _ci.value._length, _1 : _ci.value._hasLength };
    }
    public function name():GoString {
        var _ci = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return _ci.value._name;
    }
    public var _name : GoString = (("" : GoString));
    public var _hasNullable : Bool = false;
    public var _hasLength : Bool = false;
    public var _hasPrecisionScale : Bool = false;
    public var _nullable : Bool = false;
    public var _length : GoInt64 = ((0 : GoInt64));
    public var _databaseType : GoString = (("" : GoString));
    public var _precision : GoInt64 = ((0 : GoInt64));
    public var _scale : GoInt64 = ((0 : GoInt64));
    public var _scanType : stdgo.reflect.Reflect.Type = ((null : stdgo.reflect.Reflect.Type));
    public function new(?_name:GoString, ?_hasNullable:Bool, ?_hasLength:Bool, ?_hasPrecisionScale:Bool, ?_nullable:Bool, ?_length:GoInt64, ?_databaseType:GoString, ?_precision:GoInt64, ?_scale:GoInt64, ?_scanType:stdgo.reflect.Reflect.Type) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(_name) + " " + Go.string(_hasNullable) + " " + Go.string(_hasLength) + " " + Go.string(_hasPrecisionScale) + " " + Go.string(_nullable) + " " + Go.string(_length) + " " + Go.string(_databaseType) + " " + Go.string(_precision) + " " + Go.string(_scale) + " " + Go.string(_scanType) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new ColumnType(_name, _hasNullable, _hasLength, _hasPrecisionScale, _nullable, _length, _databaseType, _precision, _scale, _scanType);
    }
    public function __set__(__tmp__) {
        this._name = __tmp__._name;
        this._hasNullable = __tmp__._hasNullable;
        this._hasLength = __tmp__._hasLength;
        this._hasPrecisionScale = __tmp__._hasPrecisionScale;
        this._nullable = __tmp__._nullable;
        this._length = __tmp__._length;
        this._databaseType = __tmp__._databaseType;
        this._precision = __tmp__._precision;
        this._scale = __tmp__._scale;
        this._scanType = __tmp__._scanType;
        return this;
    }
}
@:structInit class Row {
    public function err():Error {
        var _r = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return _r.value._err;
    }
    public function scan(_dest:haxe.Rest<AnyInterface>):Error {
        var _r = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _dest = new Slice<AnyInterface>(..._dest);
        var recover_exception:Error = null;
        var deferstack:Array<Void -> Void> = [];
        if (_r.value._err != null) {
            return _r.value._err;
        };
        try {
            deferstack.unshift(() -> _r.value._rows.value.close());
            for (_dp in _dest) {
                {
                    var __tmp__ = try {
                        { value : ((_dp.value : Pointer<RawBytes>)), ok : true };
                    } catch(_) {
                        { value : new Pointer<RawBytes>().nil(), ok : false };
                    }, _ = __tmp__.value, _ok = __tmp__.ok;
                    if (_ok) {
                        {
                            for (defer in deferstack) {
                                defer();
                            };
                            return stdgo.errors.Errors.new_("sql: RawBytes isn\'t allowed on Row.Scan");
                        };
                    };
                };
            };
            if (!_r.value._rows.value.next()) {
                {
                    var _err:stdgo.Error = _r.value._rows.value.err();
                    if (_err != null) {
                        {
                            for (defer in deferstack) {
                                defer();
                            };
                            return _err;
                        };
                    };
                };
                {
                    for (defer in deferstack) {
                        defer();
                    };
                    return errNoRows;
                };
            };
            var _err:stdgo.Error = _r.value._rows.value.scan(..._dest.toArray());
            if (_err != null) {
                {
                    for (defer in deferstack) {
                        defer();
                    };
                    return _err;
                };
            };
            {
                for (defer in deferstack) {
                    defer();
                };
                return _r.value._rows.value.close();
            };
            for (defer in deferstack) {
                defer();
            };
        } catch(e) {
            recover_exception = stdgo.runtime.Runtime.newRuntime(e.message);
            {
                for (defer in deferstack) {
                    defer();
                };
                if (recover_exception != null) throw recover_exception;
                return ((null : stdgo.Error));
            };
        };
    }
    public var _err : stdgo.Error = ((null : stdgo.Error));
    public var _rows : Pointer<Rows> = new Pointer<Rows>().nil();
    public function new(?_err:stdgo.Error, ?_rows:Pointer<Rows>) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(_err) + " " + Go.string(_rows) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new Row(_err, _rows);
    }
    public function __set__(__tmp__) {
        this._err = __tmp__._err;
        this._rows = __tmp__._rows;
        return this;
    }
}
@:structInit class T_driverResult {
    public function rowsAffected():{ var _0 : GoInt64; var _1 : Error; } {
        var _dr = this.__copy__();
        var recover_exception:Error = null;
        var deferstack:Array<Void -> Void> = [];
        _dr.lock();
        deferstack.unshift(() -> _dr.unlock());
        try {
            {
                for (defer in deferstack) {
                    defer();
                };
                return _dr._resi.rowsAffected();
            };
            for (defer in deferstack) {
                defer();
            };
        } catch(e) {
            recover_exception = stdgo.runtime.Runtime.newRuntime(e.message);
            {
                for (defer in deferstack) {
                    defer();
                };
                if (recover_exception != null) throw recover_exception;
                return { _0 : ((0 : GoInt64)), _1 : ((null : stdgo.Error)) };
            };
        };
    }
    public function lastInsertId():{ var _0 : GoInt64; var _1 : Error; } {
        var _dr = this.__copy__();
        var recover_exception:Error = null;
        var deferstack:Array<Void -> Void> = [];
        _dr.lock();
        deferstack.unshift(() -> _dr.unlock());
        try {
            {
                for (defer in deferstack) {
                    defer();
                };
                return _dr._resi.lastInsertId();
            };
            for (defer in deferstack) {
                defer();
            };
        } catch(e) {
            recover_exception = stdgo.runtime.Runtime.newRuntime(e.message);
            {
                for (defer in deferstack) {
                    defer();
                };
                if (recover_exception != null) throw recover_exception;
                return { _0 : ((0 : GoInt64)), _1 : ((null : stdgo.Error)) };
            };
        };
    }
    @:embedded
    public var locker : stdgo.sync.Sync.Locker = ((null : stdgo.sync.Sync.Locker));
    public var _resi : stdgo.database.sql.driver.Driver.Result = ((null : stdgo.database.sql.driver.Driver.Result));
    public function new(?locker:stdgo.sync.Sync.Locker, ?_resi:stdgo.database.sql.driver.Driver.Result) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(locker) + " " + Go.string(_resi) + "}";
    }
    public function lock() locker.lock();
    public function unlock() locker.unlock();
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_driverResult(locker, _resi);
    }
    public function __set__(__tmp__) {
        this.locker = __tmp__.locker;
        this._resi = __tmp__._resi;
        return this;
    }
}
@:structInit @:local class T__struct_44 {
    public function new() stdgo.internal.Macro.initLocals();
    public function toString() {
        return "{}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T__struct_44();
    }
    public function __set__(__tmp__) {
        return this;
    }
}
@:structInit @:local class T__struct_45 {
    @:embedded
    public var mutex : stdgo.sync.Sync.Mutex = new stdgo.sync.Sync.Mutex();
    public var _v : Slice<Pointer<Stmt>> = new Slice<Pointer<Stmt>>().nil();
    public function new(?mutex:stdgo.sync.Sync.Mutex, ?_v:Slice<Pointer<Stmt>>) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(mutex) + " " + Go.string(_v) + "}";
    }
    public function lock() mutex.lock();
    public function unlock() mutex.unlock();
    public function _lockSlow() mutex._lockSlow();
    public function _unlockSlow(_new:GoInt32) mutex._unlockSlow(_0);
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T__struct_45(mutex, _v);
    }
    public function __set__(__tmp__) {
        this.mutex = __tmp__.mutex;
        this._v = __tmp__._v;
        return this;
    }
}
final levelDefault : IsolationLevel = new IsolationLevel((0 : GoUnTypedInt));
var _0 : stdgo.fmt.Fmt.Stringer = levelDefault;
final _alwaysNewConn : T_connReuseStrategy = new T_connReuseStrategy((0 : GoUnTypedInt));
final levelReadUncommitted : IsolationLevel = new IsolationLevel((1 : GoUnTypedInt));
var _1 : T_stmtConnGrabber = Go.pointer(new Tx()).value;
final levelWriteCommitted : IsolationLevel = new IsolationLevel((3 : GoUnTypedInt));
var _driversMu : stdgo.sync.Sync.RWMutex = new stdgo.sync.Sync.RWMutex();
var _2 : T_stmtConnGrabber = Go.pointer(new Conn()).value;
var _bypassRowsAwaitDone : Bool = false;
var _connectionRequestQueueSize : GoInt64 = ((1000000 : GoInt));
var _valuerReflectType : stdgo.reflect.Reflect.Type = stdgo.reflect.Reflect.typeOf(Go.toInterface(((new Pointer<stdgo.database.sql.driver.Driver.Valuer>().nil() : Pointer<stdgo.database.sql.driver.Driver.Valuer>)))).elem();
var errNoRows : stdgo.Error = stdgo.errors.Errors.new_("sql: no rows in result set");
var _nowFunc : () -> stdgo.time.Time.Time = stdgo.time.Time.now;
var _drivers : GoMap<GoString, stdgo.database.sql.driver.Driver.Driver> = new GoMap<GoString, stdgo.database.sql.driver.Driver.Driver>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.named("database/sql/driver.Driver", [], stdgo.reflect.Reflect.GoType.interfaceType(false, [])))));
final _defaultMaxIdleConns : GoInt64 = ((2 : GoUnTypedInt));
final levelRepeatableRead : IsolationLevel = new IsolationLevel((4 : GoUnTypedInt));
var _errNilPtr : stdgo.Error = stdgo.errors.Errors.new_("destination pointer is nil");
var _errDBClosed : stdgo.Error = stdgo.errors.Errors.new_("sql: database is closed");
var _hookTxGrabConn : () -> Void = null;
var _errNoRows : stdgo.Error = stdgo.errors.Errors.new_("sql: no Rows available");
var errConnDone : stdgo.Error = stdgo.errors.Errors.new_("sql: connection is already closed");
final levelSerializable : IsolationLevel = new IsolationLevel((6 : GoUnTypedInt));
final levelLinearizable : IsolationLevel = new IsolationLevel((7 : GoUnTypedInt));
final _debugGetPut : Bool = false;
var _rowsCloseHook : () -> ((Pointer<Rows>, Pointer<stdgo.Error>) -> Void) = function():(Pointer<Rows>, Pointer<Error>) -> Void {
        return null;
    };
final _maxBadConnRetries : GoInt64 = ((2 : GoUnTypedInt));
var _errRowsClosed : stdgo.Error = stdgo.errors.Errors.new_("sql: Rows are closed");
var errTxDone : stdgo.Error = stdgo.errors.Errors.new_("sql: transaction has already been committed or rolled back");
final levelSnapshot : IsolationLevel = new IsolationLevel((5 : GoUnTypedInt));
final levelReadCommitted : IsolationLevel = new IsolationLevel((2 : GoUnTypedInt));
final _cachedOrNewConn : T_connReuseStrategy = new T_connReuseStrategy((1 : GoUnTypedInt));
var _putConnHook : (Pointer<DB>, Pointer<T_driverConn>) -> Void = null;
var _rollbackHook : () -> Void = null;
function _describeNamedValue(_nv:Pointer<stdgo.database.sql.driver.Driver.NamedValue>):GoString {
        if (_nv.value.name.length == ((0 : GoInt))) {
            return stdgo.fmt.Fmt.sprintf("$%d", Go.toInterface(_nv.value.ordinal));
        };
        return stdgo.fmt.Fmt.sprintf("with name %q", Go.toInterface(_nv.value.name));
    }
function _validateNamedValueName(_name:GoString):Error {
        if (_name.length == ((0 : GoInt))) {
            return ((null : stdgo.Error));
        };
        var __tmp__ = stdgo.unicode.utf8.Utf8.decodeRuneInString(_name), _r:GoInt32 = __tmp__._0, _:GoInt = __tmp__._1;
        if (stdgo.unicode.Unicode.isLetter(_r)) {
            return ((null : stdgo.Error));
        };
        return stdgo.fmt.Fmt.errorf("name %q does not begin with a letter", Go.toInterface(_name));
    }
/**
    // defaultCheckNamedValue wraps the default ColumnConverter to have the same
    // function signature as the CheckNamedValue in the driver.NamedValueChecker
    // interface.
**/
function _defaultCheckNamedValue(_nv:Pointer<stdgo.database.sql.driver.Driver.NamedValue>):Error {
        var _err:Error = ((null : stdgo.Error));
        {
            var __tmp__ = stdgo.database.sql.driver.Driver.defaultParameterConverter.convertValue(Go.toInterface(_nv.value.value));
            _nv.value.value = Go.toInterface(__tmp__._0);
            _err = __tmp__._1;
        };
        return _err;
    }
/**
    // driverArgsConnLocked converts arguments from callers of Stmt.Exec and
    // Stmt.Query into driver Values.
    //
    // The statement ds may be nil, if no statement is available.
    //
    // ci must be locked.
**/
function _driverArgsConnLocked(_ci:stdgo.database.sql.driver.Driver.Conn, _ds:Pointer<T_driverStmt>, _args:Slice<AnyInterface>):{ var _0 : Slice<stdgo.database.sql.driver.Driver.NamedValue>; var _1 : Error; } {
        return stdgo.internal.Macro.controlFlow({
            var _nvargs:Slice<stdgo.database.sql.driver.Driver.NamedValue> = new Slice<stdgo.database.sql.driver.Driver.NamedValue>(...[for (i in 0 ... ((_args.length : GoInt)).toBasic()) new stdgo.database.sql.driver.Driver.NamedValue()]);
            var _want:GoInt = -((1 : GoUnTypedInt));
            var _si:stdgo.database.sql.driver.Driver.Stmt = ((null : stdgo.database.sql.driver.Driver.Stmt));
            var _cc:T_ccChecker = new T_ccChecker();
            if (_ds != null && !_ds.isNil()) {
                _si = _ds.value._si;
                _want = _ds.value._si.numInput();
                _cc._want = _want;
            };
            var __tmp__ = try {
                { value : ((_si.__underlying__().value : stdgo.database.sql.driver.Driver.NamedValueChecker)), ok : true };
            } catch(_) {
                { value : ((null : stdgo.database.sql.driver.Driver.NamedValueChecker)), ok : false };
            }, _nvc = __tmp__.value, _ok = __tmp__.ok;
            if (!_ok) {
                {
                    var __tmp__ = try {
                        { value : ((_ci.__underlying__().value : stdgo.database.sql.driver.Driver.NamedValueChecker)), ok : true };
                    } catch(_) {
                        { value : ((null : stdgo.database.sql.driver.Driver.NamedValueChecker)), ok : false };
                    };
                    _nvc = __tmp__.value;
                    _ok = __tmp__.ok;
                };
            };
            var __tmp__ = try {
                { value : ((_si.__underlying__().value : stdgo.database.sql.driver.Driver.ColumnConverter)), ok : true };
            } catch(_) {
                { value : ((null : stdgo.database.sql.driver.Driver.ColumnConverter)), ok : false };
            }, _cci = __tmp__.value, _ok = __tmp__.ok;
            if (_ok) {
                _cc._cci = _cci;
            };
            var _err:Error = ((null : stdgo.Error));
            var _n:GoInt = ((0 : GoInt));
            for (_arg in _args) {
                var _nv:Pointer<stdgo.database.sql.driver.Driver.NamedValue> = Go.pointer(_nvargs[_n]);
                {
                    var __tmp__ = try {
                        { value : ((_arg.value : NamedArg)), ok : true };
                    } catch(_) {
                        { value : new NamedArg(), ok : false };
                    }, _np = __tmp__.value, _ok = __tmp__.ok;
                    if (_ok) {
                        {
                            _err = _validateNamedValueName(_np.name);
                            if (_err != null) {
                                return { _0 : new Slice<stdgo.database.sql.driver.Driver.NamedValue>().nil(), _1 : _err };
                            };
                        };
                        _arg = Go.toInterface(_np.value);
                        _nv.value.name = _np.name;
                    };
                };
                _nv.value.ordinal = _n + ((1 : GoInt));
                _nv.value.value = Go.toInterface(_arg);
                var _checker:Pointer<stdgo.database.sql.driver.Driver.NamedValue> -> stdgo.Error = _defaultCheckNamedValue;
                var _nextCC:Bool = false;
                if (_nvc != null) {
                    _nextCC = _cci != null;
                    _checker = _nvc.checkNamedValue;
                } else if (_cci != null) {
                    _checker = _cc.checkNamedValue;
                };
                @:label("nextCheck") _err = _checker(_nv);
                if (_err == null) {
                    _n++;
                    continue;
                } else if (Go.toInterface(_err) == Go.toInterface(stdgo.database.sql.driver.Driver.errRemoveArgument)) {
                    _nvargs = _nvargs.__slice__(0, _nvargs.length - ((1 : GoInt)));
                    continue;
                } else if (Go.toInterface(_err) == Go.toInterface(stdgo.database.sql.driver.Driver.errSkip)) {
                    if (_nextCC) {
                        _nextCC = false;
                        _checker = _cc.checkNamedValue;
                    } else {
                        _checker = _defaultCheckNamedValue;
                    };
                    @:goto "nextCheck";
                } else {
                    return { _0 : new Slice<stdgo.database.sql.driver.Driver.NamedValue>().nil(), _1 : stdgo.fmt.Fmt.errorf("sql: converting argument %s type: %v", Go.toInterface(_describeNamedValue(_nv)), Go.toInterface(_err)) };
                };
            };
            if (_want != -((1 : GoUnTypedInt)) && _nvargs.length != _want) {
                return { _0 : new Slice<stdgo.database.sql.driver.Driver.NamedValue>().nil(), _1 : stdgo.fmt.Fmt.errorf("sql: expected %d arguments, got %d", Go.toInterface(_want), Go.toInterface(_nvargs.length)) };
            };
            return { _0 : _nvargs, _1 : ((null : stdgo.Error)) };
        });
    }
/**
    // convertAssign is the same as convertAssignRows, but without the optional
    // rows argument.
**/
function _convertAssign(_dest:AnyInterface, _src:AnyInterface):Error {
        return _convertAssignRows(Go.toInterface(_dest), Go.toInterface(_src), new Pointer<Rows>().nil());
    }
/**
    // convertAssignRows copies to dest the value in src, converting it if possible.
    // An error is returned if the copy would result in loss of information.
    // dest should be a pointer type. If rows is passed in, the rows will
    // be used as the parent for any cursor values converted from a
    // driver.Rows to a *Rows.
**/
function _convertAssignRows(_dest:AnyInterface, _src:AnyInterface, _rows:Pointer<Rows>):Error {
        if (Go.assertable(((_src : GoString)))) {
            var _s:GoString = _src == null ? null : _src.__underlying__() == null ? null : _src == null ? null : _src.__underlying__().value;
            if (Go.assertable(((_dest : Pointer<GoString>)))) {
                var _d:Pointer<GoString> = _dest == null ? null : _dest.__underlying__() == null ? null : _dest == null ? null : _dest.__underlying__().value;
                if (_d == null || _d.isNil()) {
                    return _errNilPtr;
                };
                _d.value = _s;
                return ((null : stdgo.Error));
            } else if (Go.assertable(((_dest : Pointer<Slice<GoByte>>)))) {
                var _d:Pointer<Slice<GoUInt8>> = _dest == null ? null : _dest.__underlying__() == null ? null : _dest == null ? null : _dest.__underlying__().value;
                if (_d == null || _d.isNil()) {
                    return _errNilPtr;
                };
                _d.value = ((_s : Slice<GoByte>));
                return ((null : stdgo.Error));
            } else if (Go.assertable(((_dest : Pointer<RawBytes>)))) {
                var _d:Pointer<RawBytes> = _dest == null ? null : _dest.__underlying__() == null ? null : _dest == null ? null : _dest.__underlying__().value;
                if (_d == null || _d.isNil()) {
                    return _errNilPtr;
                };
                _d.value = (_d.value).__slice__(0, ((0 : GoInt))).__append__(..._s.toArray()).__copy__();
                return ((null : stdgo.Error));
            };
        } else if (Go.assertable(((_src : Slice<GoByte>)))) {
            var _s:Slice<GoUInt8> = _src == null ? null : _src.__underlying__() == null ? null : _src == null ? null : _src.__underlying__().value;
            if (Go.assertable(((_dest : Pointer<GoString>)))) {
                var _d:Pointer<GoString> = _dest == null ? null : _dest.__underlying__() == null ? null : _dest == null ? null : _dest.__underlying__().value;
                if (_d == null || _d.isNil()) {
                    return _errNilPtr;
                };
                _d.value = ((_s : GoString));
                return ((null : stdgo.Error));
            } else if (Go.assertable(((_dest : Pointer<AnyInterface>)))) {
                var _d:Pointer<AnyInterface> = _dest == null ? null : _dest.__underlying__() == null ? null : _dest == null ? null : _dest.__underlying__().value;
                if (_d == null || _d.isNil()) {
                    return _errNilPtr;
                };
                _d.value = Go.toInterface(_cloneBytes(_s));
                return ((null : stdgo.Error));
            } else if (Go.assertable(((_dest : Pointer<Slice<GoByte>>)))) {
                var _d:Pointer<Slice<GoUInt8>> = _dest == null ? null : _dest.__underlying__() == null ? null : _dest == null ? null : _dest.__underlying__().value;
                if (_d == null || _d.isNil()) {
                    return _errNilPtr;
                };
                _d.value = _cloneBytes(_s);
                return ((null : stdgo.Error));
            } else if (Go.assertable(((_dest : Pointer<RawBytes>)))) {
                var _d:Pointer<RawBytes> = _dest == null ? null : _dest.__underlying__() == null ? null : _dest == null ? null : _dest.__underlying__().value;
                if (_d == null || _d.isNil()) {
                    return _errNilPtr;
                };
                _d.value = new RawBytes(_s);
                return ((null : stdgo.Error));
            };
        } else if (Go.assertable(((_src : stdgo.time.Time.Time)))) {
            var _s:stdgo.time.Time.Time = _src == null ? null : _src.__underlying__() == null ? null : _src == null ? null : _src.__underlying__().value;
            if (Go.assertable(((_dest : Pointer<stdgo.time.Time.Time>)))) {
                var _d:Pointer<stdgo.time.Time.Time> = _dest == null ? null : _dest.__underlying__() == null ? null : _dest == null ? null : _dest.__underlying__().value;
                _d.value = _s.__copy__();
                return ((null : stdgo.Error));
            } else if (Go.assertable(((_dest : Pointer<GoString>)))) {
                var _d:Pointer<GoString> = _dest == null ? null : _dest.__underlying__() == null ? null : _dest == null ? null : _dest.__underlying__().value;
                _d.value = _s.format(stdgo.time.Time.rfc3339nano);
                return ((null : stdgo.Error));
            } else if (Go.assertable(((_dest : Pointer<Slice<GoByte>>)))) {
                var _d:Pointer<Slice<GoUInt8>> = _dest == null ? null : _dest.__underlying__() == null ? null : _dest == null ? null : _dest.__underlying__().value;
                if (_d == null || _d.isNil()) {
                    return _errNilPtr;
                };
                _d.value = ((_s.format(stdgo.time.Time.rfc3339nano) : Slice<GoByte>));
                return ((null : stdgo.Error));
            } else if (Go.assertable(((_dest : Pointer<RawBytes>)))) {
                var _d:Pointer<RawBytes> = _dest == null ? null : _dest.__underlying__() == null ? null : _dest == null ? null : _dest.__underlying__().value;
                if (_d == null || _d.isNil()) {
                    return _errNilPtr;
                };
                _d.value = new RawBytes(_s.appendFormat((_d.value).__slice__(0, ((0 : GoInt))).__copy__().__t__, stdgo.time.Time.rfc3339nano));
                return ((null : stdgo.Error));
            };
        } else if (Go.assertable(((_src : T_decimalDecompose)))) {
            var _s:T_decimalDecompose = _src == null ? null : _src.__underlying__() == null ? null : _src == null ? null : _src.__underlying__().value;
            if (Go.assertable(((_dest : T_decimalCompose)))) {
                var _d:T_decimalCompose = _dest == null ? null : _dest.__underlying__() == null ? null : _dest == null ? null : _dest.__underlying__().value;
                return {
                    var __tmp__ = _s.decompose(new Slice<GoUInt8>().nil());
                    _d.compose(((__tmp__._0 : GoUInt8)), ((__tmp__._1 : Bool)), ((__tmp__._2 : Slice<GoUInt8>)), ((__tmp__._3 : GoInt32)));
                };
            };
        } else if (_src == null) {
            var _s:AnyInterface = _src == null ? null : _src.__underlying__();
            if (Go.assertable(((_dest : Pointer<AnyInterface>)))) {
                var _d:Pointer<AnyInterface> = _dest == null ? null : _dest.__underlying__() == null ? null : _dest == null ? null : _dest.__underlying__().value;
                if (_d == null || _d.isNil()) {
                    return _errNilPtr;
                };
                _d.value = ((null : AnyInterface));
                return ((null : stdgo.Error));
            } else if (Go.assertable(((_dest : Pointer<Slice<GoByte>>)))) {
                var _d:Pointer<Slice<GoUInt8>> = _dest == null ? null : _dest.__underlying__() == null ? null : _dest == null ? null : _dest.__underlying__().value;
                if (_d == null || _d.isNil()) {
                    return _errNilPtr;
                };
                _d.value = new Slice<GoUInt8>().nil();
                return ((null : stdgo.Error));
            } else if (Go.assertable(((_dest : Pointer<RawBytes>)))) {
                var _d:Pointer<RawBytes> = _dest == null ? null : _dest.__underlying__() == null ? null : _dest == null ? null : _dest.__underlying__().value;
                if (_d == null || _d.isNil()) {
                    return _errNilPtr;
                };
                _d.value = new RawBytes();
                return ((null : stdgo.Error));
            };
        } else if (Go.assertable(((_src : stdgo.database.sql.driver.Driver.Rows)))) {
            var _s:stdgo.database.sql.driver.Driver.Rows = _src == null ? null : _src.__underlying__() == null ? null : _src == null ? null : _src.__underlying__().value;
            if (Go.assertable(((_dest : Pointer<Rows>)))) {
                var _d:Pointer<Rows> = _dest == null ? null : _dest.__underlying__() == null ? null : _dest == null ? null : _dest.__underlying__().value;
                if (_d == null || _d.isNil()) {
                    return _errNilPtr;
                };
                if (_rows == null || _rows.isNil()) {
                    return stdgo.errors.Errors.new_("invalid context to convert cursor rows, missing parent *Rows");
                };
                _rows.value._closemu.lock();
                _d.value = (({ _dc : _rows.value._dc, _releaseConn : function(arg0:Error):Void {}, _rowsi : _s, _cancel : null, _closeStmt : new Pointer<T_driverStmt>().nil(), _closemu : new stdgo.sync.Sync.RWMutex(), _closed : false, _lasterr : ((null : stdgo.Error)), _lastcols : new Slice<stdgo.database.sql.driver.Driver.Value>().nil() } : Rows)).__copy__();
                var _parentCancel:() -> Void = _rows.value._cancel;
                _rows.value._cancel = function():Void {
                    _d.value._close(_rows.value._lasterr);
                    if (_parentCancel != null) {
                        _parentCancel();
                    };
                };
                _rows.value._closemu.unlock();
                return ((null : stdgo.Error));
            };
        };
        var _sv:stdgo.reflect.Reflect.Value = new stdgo.reflect.Reflect.Value();
        if (Go.assertable(((_dest : Pointer<GoString>)))) {
            var _d:Pointer<GoString> = _dest == null ? null : _dest.__underlying__() == null ? null : _dest == null ? null : _dest.__underlying__().value;
            _sv = stdgo.reflect.Reflect.valueOf(Go.toInterface(_src)).__copy__();
            if (_sv.kind().__t__ == stdgo.reflect.Reflect.bool.__t__ || _sv.kind().__t__ == stdgo.reflect.Reflect.int.__t__ || _sv.kind().__t__ == stdgo.reflect.Reflect.int8.__t__ || _sv.kind().__t__ == stdgo.reflect.Reflect.int16.__t__ || _sv.kind().__t__ == stdgo.reflect.Reflect.int32.__t__ || _sv.kind().__t__ == stdgo.reflect.Reflect.int64.__t__ || _sv.kind().__t__ == stdgo.reflect.Reflect.uint.__t__ || _sv.kind().__t__ == stdgo.reflect.Reflect.uint8.__t__ || _sv.kind().__t__ == stdgo.reflect.Reflect.uint16.__t__ || _sv.kind().__t__ == stdgo.reflect.Reflect.uint32.__t__ || _sv.kind().__t__ == stdgo.reflect.Reflect.uint64.__t__ || _sv.kind().__t__ == stdgo.reflect.Reflect.float32.__t__ || _sv.kind().__t__ == stdgo.reflect.Reflect.float64.__t__) {
                _d.value = _asString(Go.toInterface(_src));
                return ((null : stdgo.Error));
            };
        } else if (Go.assertable(((_dest : Pointer<Slice<GoByte>>)))) {
            var _d:Pointer<Slice<GoUInt8>> = _dest == null ? null : _dest.__underlying__() == null ? null : _dest == null ? null : _dest.__underlying__().value;
            _sv = stdgo.reflect.Reflect.valueOf(Go.toInterface(_src)).__copy__();
            {
                var __tmp__ = _asBytes(new Slice<GoUInt8>().nil(), _sv.__copy__()), _b:Slice<GoUInt8> = __tmp__._0, _ok:Bool = __tmp__._1;
                if (_ok) {
                    _d.value = _b;
                    return ((null : stdgo.Error));
                };
            };
        } else if (Go.assertable(((_dest : Pointer<RawBytes>)))) {
            var _d:Pointer<RawBytes> = _dest == null ? null : _dest.__underlying__() == null ? null : _dest == null ? null : _dest.__underlying__().value;
            _sv = stdgo.reflect.Reflect.valueOf(Go.toInterface(_src)).__copy__();
            {
                var __tmp__ = _asBytes(_d.value.__t__.__slice__(0, ((0 : GoInt))), _sv.__copy__()), _b:Slice<GoUInt8> = __tmp__._0, _ok:Bool = __tmp__._1;
                if (_ok) {
                    _d.value = new RawBytes(_b).__copy__();
                    return ((null : stdgo.Error));
                };
            };
        } else if (Go.assertable(((_dest : Pointer<Bool>)))) {
            var _d:Pointer<Bool> = _dest == null ? null : _dest.__underlying__() == null ? null : _dest == null ? null : _dest.__underlying__().value;
            var __tmp__ = stdgo.database.sql.driver.Driver.bool.convertValue(Go.toInterface(_src)), _bv:stdgo.database.sql.driver.Driver.Value = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err == null) {
                _d.value = ((_bv.value : Bool));
            };
            return _err;
        } else if (Go.assertable(((_dest : Pointer<AnyInterface>)))) {
            var _d:Pointer<AnyInterface> = _dest == null ? null : _dest.__underlying__() == null ? null : _dest == null ? null : _dest.__underlying__().value;
            _d.value = Go.toInterface(_src);
            return ((null : stdgo.Error));
        };
        {
            var __tmp__ = try {
                { value : ((_dest.value : Scanner)), ok : true };
            } catch(_) {
                { value : ((null : Scanner)), ok : false };
            }, _scanner = __tmp__.value, _ok = __tmp__.ok;
            if (_ok) {
                return _scanner.scan(Go.toInterface(_src));
            };
        };
        var _dpv:stdgo.reflect.Reflect.Value = stdgo.reflect.Reflect.valueOf(Go.toInterface(_dest)).__copy__();
        if (_dpv.kind().__t__ != stdgo.reflect.Reflect.ptr.__t__) {
            return stdgo.errors.Errors.new_("destination not a pointer");
        };
        if (_dpv.isNil()) {
            return _errNilPtr;
        };
        if (!_sv.isValid()) {
            _sv = stdgo.reflect.Reflect.valueOf(Go.toInterface(_src)).__copy__();
        };
        var _dv:stdgo.reflect.Reflect.Value = stdgo.reflect.Reflect.indirect(_dpv.__copy__()).__copy__();
        if (_sv.isValid() && _sv.type().assignableTo(_dv.type())) {
            if (Go.assertable(((_src : Slice<GoByte>)))) {
                var _b:Slice<GoUInt8> = _src == null ? null : _src.__underlying__() == null ? null : _src == null ? null : _src.__underlying__().value;
                _dv.set(stdgo.reflect.Reflect.valueOf(Go.toInterface(_cloneBytes(_b))).__copy__());
            } else {
                var _b:AnyInterface = _src == null ? null : _src.__underlying__();
                _dv.set(_sv.__copy__());
            };
            return ((null : stdgo.Error));
        };
        if (_dv.kind().__t__ == _sv.kind().__t__ && _sv.type().convertibleTo(_dv.type())) {
            _dv.set(_sv.convert(_dv.type()).__copy__());
            return ((null : stdgo.Error));
        };
        if (_dv.kind().__t__ == stdgo.reflect.Reflect.ptr.__t__) {
            if (_src == null) {
                _dv.set(stdgo.reflect.Reflect.zero(_dv.type()).__copy__());
                return ((null : stdgo.Error));
            };
            _dv.set(stdgo.reflect.Reflect.new_(_dv.type().elem()).__copy__());
            return _convertAssignRows(Go.toInterface(_dv.interface_()), Go.toInterface(_src), _rows);
        } else if (_dv.kind().__t__ == stdgo.reflect.Reflect.int.__t__ || _dv.kind().__t__ == stdgo.reflect.Reflect.int8.__t__ || _dv.kind().__t__ == stdgo.reflect.Reflect.int16.__t__ || _dv.kind().__t__ == stdgo.reflect.Reflect.int32.__t__ || _dv.kind().__t__ == stdgo.reflect.Reflect.int64.__t__) {
            if (_src == null) {
                return stdgo.fmt.Fmt.errorf("converting NULL to %s is unsupported", Go.toInterface(_dv.kind()));
            };
            var _s:GoString = _asString(Go.toInterface(_src));
            var __tmp__ = stdgo.strconv.Strconv.parseInt(_s, ((10 : GoInt)), _dv.type().bits()), _i64:GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _err = _strconvErr(_err);
                return stdgo.fmt.Fmt.errorf("converting driver.Value type %T (%q) to a %s: %v", Go.toInterface(_src), Go.toInterface(_s), Go.toInterface(_dv.kind()), Go.toInterface(_err));
            };
            _dv.setInt(_i64);
            return ((null : stdgo.Error));
        } else if (_dv.kind().__t__ == stdgo.reflect.Reflect.uint.__t__ || _dv.kind().__t__ == stdgo.reflect.Reflect.uint8.__t__ || _dv.kind().__t__ == stdgo.reflect.Reflect.uint16.__t__ || _dv.kind().__t__ == stdgo.reflect.Reflect.uint32.__t__ || _dv.kind().__t__ == stdgo.reflect.Reflect.uint64.__t__) {
            if (_src == null) {
                return stdgo.fmt.Fmt.errorf("converting NULL to %s is unsupported", Go.toInterface(_dv.kind()));
            };
            var _s:GoString = _asString(Go.toInterface(_src));
            var __tmp__ = stdgo.strconv.Strconv.parseUint(_s, ((10 : GoInt)), _dv.type().bits()), _u64:GoUInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _err = _strconvErr(_err);
                return stdgo.fmt.Fmt.errorf("converting driver.Value type %T (%q) to a %s: %v", Go.toInterface(_src), Go.toInterface(_s), Go.toInterface(_dv.kind()), Go.toInterface(_err));
            };
            _dv.setUint(_u64);
            return ((null : stdgo.Error));
        } else if (_dv.kind().__t__ == stdgo.reflect.Reflect.float32.__t__ || _dv.kind().__t__ == stdgo.reflect.Reflect.float64.__t__) {
            if (_src == null) {
                return stdgo.fmt.Fmt.errorf("converting NULL to %s is unsupported", Go.toInterface(_dv.kind()));
            };
            var _s:GoString = _asString(Go.toInterface(_src));
            var __tmp__ = stdgo.strconv.Strconv.parseFloat(_s, _dv.type().bits()), _f64:GoFloat64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _err = _strconvErr(_err);
                return stdgo.fmt.Fmt.errorf("converting driver.Value type %T (%q) to a %s: %v", Go.toInterface(_src), Go.toInterface(_s), Go.toInterface(_dv.kind()), Go.toInterface(_err));
            };
            _dv.setFloat(_f64);
            return ((null : stdgo.Error));
        } else if (_dv.kind().__t__ == stdgo.reflect.Reflect.toString.__t__) {
            if (_src == null) {
                return stdgo.fmt.Fmt.errorf("converting NULL to %s is unsupported", Go.toInterface(_dv.kind()));
            };
            if (Go.assertable(((_src : GoString)))) {
                var _v:GoString = _src == null ? null : _src.__underlying__() == null ? null : _src == null ? null : _src.__underlying__().value;
                _dv.setString(_v);
                return ((null : stdgo.Error));
            } else if (Go.assertable(((_src : Slice<GoByte>)))) {
                var _v:Slice<GoUInt8> = _src == null ? null : _src.__underlying__() == null ? null : _src == null ? null : _src.__underlying__().value;
                _dv.setString(((_v : GoString)));
                return ((null : stdgo.Error));
            };
        };
        return stdgo.fmt.Fmt.errorf("unsupported Scan, storing driver.Value type %T into type %T", Go.toInterface(_src), Go.toInterface(_dest));
    }
function _strconvErr(_err:Error):Error {
        {
            var __tmp__ = try {
                { value : ((_err.__underlying__().value : stdgo.strconv.Strconv.NumError)), ok : true };
            } catch(_) {
                { value : new Pointer<stdgo.strconv.Strconv.NumError>().nil(), ok : false };
            }, _ne = __tmp__.value, _ok = __tmp__.ok;
            if (_ok) {
                return _ne.value.err;
            };
        };
        return _err;
    }
function _cloneBytes(_b:Slice<GoByte>):Slice<GoByte> {
        if (_b == null || _b.isNil()) {
            return new Slice<GoUInt8>().nil();
        };
        var _c:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((_b.length : GoInt)).toBasic()) ((0 : GoUInt8))]);
        Go.copy(_c, _b);
        return _c;
    }
function _asString(_src:AnyInterface):GoString {
        if (Go.assertable(((_src : GoString)))) {
            var _v:GoString = _src == null ? null : _src.__underlying__() == null ? null : _src == null ? null : _src.__underlying__().value;
            return _v;
        } else if (Go.assertable(((_src : Slice<GoByte>)))) {
            var _v:Slice<GoUInt8> = _src == null ? null : _src.__underlying__() == null ? null : _src == null ? null : _src.__underlying__().value;
            return ((_v : GoString));
        };
        var _rv:stdgo.reflect.Reflect.Value = stdgo.reflect.Reflect.valueOf(Go.toInterface(_src)).__copy__();
        if (_rv.kind().__t__ == stdgo.reflect.Reflect.int.__t__ || _rv.kind().__t__ == stdgo.reflect.Reflect.int8.__t__ || _rv.kind().__t__ == stdgo.reflect.Reflect.int16.__t__ || _rv.kind().__t__ == stdgo.reflect.Reflect.int32.__t__ || _rv.kind().__t__ == stdgo.reflect.Reflect.int64.__t__) {
            return stdgo.strconv.Strconv.formatInt(_rv.int(), ((10 : GoInt)));
        } else if (_rv.kind().__t__ == stdgo.reflect.Reflect.uint.__t__ || _rv.kind().__t__ == stdgo.reflect.Reflect.uint8.__t__ || _rv.kind().__t__ == stdgo.reflect.Reflect.uint16.__t__ || _rv.kind().__t__ == stdgo.reflect.Reflect.uint32.__t__ || _rv.kind().__t__ == stdgo.reflect.Reflect.uint64.__t__) {
            return stdgo.strconv.Strconv.formatUint(_rv.uint(), ((10 : GoInt)));
        } else if (_rv.kind().__t__ == stdgo.reflect.Reflect.float64.__t__) {
            return stdgo.strconv.Strconv.formatFloat(_rv.float(), (("g".code : GoRune)), -((1 : GoUnTypedInt)), ((64 : GoInt)));
        } else if (_rv.kind().__t__ == stdgo.reflect.Reflect.float32.__t__) {
            return stdgo.strconv.Strconv.formatFloat(_rv.float(), (("g".code : GoRune)), -((1 : GoUnTypedInt)), ((32 : GoInt)));
        } else if (_rv.kind().__t__ == stdgo.reflect.Reflect.bool.__t__) {
            return stdgo.strconv.Strconv.formatBool(_rv.bool());
        };
        return stdgo.fmt.Fmt.sprintf("%v", Go.toInterface(_src));
    }
function _asBytes(_buf:Slice<GoByte>, _rv:stdgo.reflect.Reflect.Value):{ var _0 : Slice<GoByte>; var _1 : Bool; } {
        var _b:Slice<GoByte> = new Slice<GoUInt8>().nil(), _ok:Bool = false;
        if (_rv.kind().__t__ == stdgo.reflect.Reflect.int.__t__ || _rv.kind().__t__ == stdgo.reflect.Reflect.int8.__t__ || _rv.kind().__t__ == stdgo.reflect.Reflect.int16.__t__ || _rv.kind().__t__ == stdgo.reflect.Reflect.int32.__t__ || _rv.kind().__t__ == stdgo.reflect.Reflect.int64.__t__) {
            return { _0 : stdgo.strconv.Strconv.appendInt(_buf, _rv.int(), ((10 : GoInt))), _1 : true };
        } else if (_rv.kind().__t__ == stdgo.reflect.Reflect.uint.__t__ || _rv.kind().__t__ == stdgo.reflect.Reflect.uint8.__t__ || _rv.kind().__t__ == stdgo.reflect.Reflect.uint16.__t__ || _rv.kind().__t__ == stdgo.reflect.Reflect.uint32.__t__ || _rv.kind().__t__ == stdgo.reflect.Reflect.uint64.__t__) {
            return { _0 : stdgo.strconv.Strconv.appendUint(_buf, _rv.uint(), ((10 : GoInt))), _1 : true };
        } else if (_rv.kind().__t__ == stdgo.reflect.Reflect.float32.__t__) {
            return { _0 : stdgo.strconv.Strconv.appendFloat(_buf, _rv.float(), (("g".code : GoRune)), -((1 : GoUnTypedInt)), ((32 : GoInt))), _1 : true };
        } else if (_rv.kind().__t__ == stdgo.reflect.Reflect.float64.__t__) {
            return { _0 : stdgo.strconv.Strconv.appendFloat(_buf, _rv.float(), (("g".code : GoRune)), -((1 : GoUnTypedInt)), ((64 : GoInt))), _1 : true };
        } else if (_rv.kind().__t__ == stdgo.reflect.Reflect.bool.__t__) {
            return { _0 : stdgo.strconv.Strconv.appendBool(_buf, _rv.bool()), _1 : true };
        } else if (_rv.kind().__t__ == stdgo.reflect.Reflect.toString.__t__) {
            var _s:GoString = _rv.toString();
            return { _0 : _buf.__append__(..._s.toArray()), _1 : true };
        };
        return { _0 : _b, _1 : _ok };
    }
/**
    // callValuerValue returns vr.Value(), with one exception:
    // If vr.Value is an auto-generated method on a pointer type and the
    // pointer is nil, it would panic at runtime in the panicwrap
    // method. Treat it like nil instead.
    // Issue 8415.
    //
    // This is so people can implement driver.Value on value types and
    // still use nil pointers to those types to mean nil/NULL, just like
    // string/*string.
    //
    // This function is mirrored in the database/sql/driver package.
**/
function _callValuerValue(_vr:stdgo.database.sql.driver.Driver.Valuer):{ var _0 : stdgo.database.sql.driver.Driver.Value; var _1 : Error; } {
        var _v:stdgo.database.sql.driver.Driver.Value = ((null : stdgo.database.sql.driver.Driver.Value)), _err:Error = ((null : stdgo.Error));
        {
            var _rv:stdgo.reflect.Reflect.Value = stdgo.reflect.Reflect.valueOf(Go.toInterface(_vr)).__copy__();
            if (_rv.kind().__t__ == stdgo.reflect.Reflect.ptr.__t__ && _rv.isNil() && _rv.type().elem().implements_(_valuerReflectType)) {
                return { _0 : ((null : stdgo.database.sql.driver.Driver.Value)), _1 : ((null : stdgo.Error)) };
            };
        };
        return _vr.value();
    }
function _ctxDriverPrepare(_ctx:stdgo.context.Context.Context, _ci:stdgo.database.sql.driver.Driver.Conn, _query:GoString):{ var _0 : stdgo.database.sql.driver.Driver.Stmt; var _1 : Error; } {
        {
            var __tmp__ = try {
                { value : ((_ci.__underlying__().value : stdgo.database.sql.driver.Driver.ConnPrepareContext)), ok : true };
            } catch(_) {
                { value : ((null : stdgo.database.sql.driver.Driver.ConnPrepareContext)), ok : false };
            }, _ciCtx = __tmp__.value, _is = __tmp__.ok;
            if (_is) {
                return _ciCtx.prepareContext(_ctx, _query);
            };
        };
        var __tmp__ = _ci.prepare(_query), _si:stdgo.database.sql.driver.Driver.Stmt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err == null) {
            {
                null;
                {
                    _ctx.done().get();
                    _si.close();
                    return { _0 : ((null : stdgo.database.sql.driver.Driver.Stmt)), _1 : _ctx.err() };
                };
            };
        };
        return { _0 : _si, _1 : _err };
    }
function _ctxDriverExec(_ctx:stdgo.context.Context.Context, _execerCtx:stdgo.database.sql.driver.Driver.ExecerContext, _execer:stdgo.database.sql.driver.Driver.Execer, _query:GoString, _nvdargs:Slice<stdgo.database.sql.driver.Driver.NamedValue>):{ var _0 : stdgo.database.sql.driver.Driver.Result; var _1 : Error; } {
        if (_execerCtx != null) {
            return _execerCtx.execContext(_ctx, _query, _nvdargs);
        };
        var __tmp__ = _namedValueToValue(_nvdargs), _dargs:Slice<stdgo.database.sql.driver.Driver.Value> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : ((null : stdgo.database.sql.driver.Driver.Result)), _1 : _err };
        };
        {
            null;
            {
                _ctx.done().get();
                return { _0 : ((null : stdgo.database.sql.driver.Driver.Result)), _1 : _ctx.err() };
            };
        };
        return _execer.exec(_query, _dargs);
    }
function _ctxDriverQuery(_ctx:stdgo.context.Context.Context, _queryerCtx:stdgo.database.sql.driver.Driver.QueryerContext, _queryer:stdgo.database.sql.driver.Driver.Queryer, _query:GoString, _nvdargs:Slice<stdgo.database.sql.driver.Driver.NamedValue>):{ var _0 : stdgo.database.sql.driver.Driver.Rows; var _1 : Error; } {
        if (_queryerCtx != null) {
            return _queryerCtx.queryContext(_ctx, _query, _nvdargs);
        };
        var __tmp__ = _namedValueToValue(_nvdargs), _dargs:Slice<stdgo.database.sql.driver.Driver.Value> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : ((null : stdgo.database.sql.driver.Driver.Rows)), _1 : _err };
        };
        {
            null;
            {
                _ctx.done().get();
                return { _0 : ((null : stdgo.database.sql.driver.Driver.Rows)), _1 : _ctx.err() };
            };
        };
        return _queryer.query(_query, _dargs);
    }
function _ctxDriverStmtExec(_ctx:stdgo.context.Context.Context, _si:stdgo.database.sql.driver.Driver.Stmt, _nvdargs:Slice<stdgo.database.sql.driver.Driver.NamedValue>):{ var _0 : stdgo.database.sql.driver.Driver.Result; var _1 : Error; } {
        {
            var __tmp__ = try {
                { value : ((_si.__underlying__().value : stdgo.database.sql.driver.Driver.StmtExecContext)), ok : true };
            } catch(_) {
                { value : ((null : stdgo.database.sql.driver.Driver.StmtExecContext)), ok : false };
            }, _siCtx = __tmp__.value, _is = __tmp__.ok;
            if (_is) {
                return _siCtx.execContext(_ctx, _nvdargs);
            };
        };
        var __tmp__ = _namedValueToValue(_nvdargs), _dargs:Slice<stdgo.database.sql.driver.Driver.Value> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : ((null : stdgo.database.sql.driver.Driver.Result)), _1 : _err };
        };
        {
            null;
            {
                _ctx.done().get();
                return { _0 : ((null : stdgo.database.sql.driver.Driver.Result)), _1 : _ctx.err() };
            };
        };
        return _si.exec(_dargs);
    }
function _ctxDriverStmtQuery(_ctx:stdgo.context.Context.Context, _si:stdgo.database.sql.driver.Driver.Stmt, _nvdargs:Slice<stdgo.database.sql.driver.Driver.NamedValue>):{ var _0 : stdgo.database.sql.driver.Driver.Rows; var _1 : Error; } {
        {
            var __tmp__ = try {
                { value : ((_si.__underlying__().value : stdgo.database.sql.driver.Driver.StmtQueryContext)), ok : true };
            } catch(_) {
                { value : ((null : stdgo.database.sql.driver.Driver.StmtQueryContext)), ok : false };
            }, _siCtx = __tmp__.value, _is = __tmp__.ok;
            if (_is) {
                return _siCtx.queryContext(_ctx, _nvdargs);
            };
        };
        var __tmp__ = _namedValueToValue(_nvdargs), _dargs:Slice<stdgo.database.sql.driver.Driver.Value> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : ((null : stdgo.database.sql.driver.Driver.Rows)), _1 : _err };
        };
        {
            null;
            {
                _ctx.done().get();
                return { _0 : ((null : stdgo.database.sql.driver.Driver.Rows)), _1 : _ctx.err() };
            };
        };
        return _si.query(_dargs);
    }
function _ctxDriverBegin(_ctx:stdgo.context.Context.Context, _opts:Pointer<TxOptions>, _ci:stdgo.database.sql.driver.Driver.Conn):{ var _0 : stdgo.database.sql.driver.Driver.Tx; var _1 : Error; } {
        {
            var __tmp__ = try {
                { value : ((_ci.__underlying__().value : stdgo.database.sql.driver.Driver.ConnBeginTx)), ok : true };
            } catch(_) {
                { value : ((null : stdgo.database.sql.driver.Driver.ConnBeginTx)), ok : false };
            }, _ciCtx = __tmp__.value, _is = __tmp__.ok;
            if (_is) {
                var _dopts:stdgo.database.sql.driver.Driver.TxOptions = new stdgo.database.sql.driver.Driver.TxOptions().__copy__();
                if (_opts != null && !_opts.isNil()) {
                    _dopts.isolation = new stdgo.database.sql.driver.Driver.IsolationLevel(_opts.value.isolation.__t__);
                    _dopts.readOnly = _opts.value.readOnly;
                };
                return _ciCtx.beginTx(_ctx, _dopts.__copy__());
            };
        };
        if (_opts != null && !_opts.isNil()) {
            if (_opts.value.isolation.__t__ != levelDefault.__t__) {
                return { _0 : ((null : stdgo.database.sql.driver.Driver.Tx)), _1 : stdgo.errors.Errors.new_("sql: driver does not support non-default isolation level") };
            };
            if (_opts.value.readOnly) {
                return { _0 : ((null : stdgo.database.sql.driver.Driver.Tx)), _1 : stdgo.errors.Errors.new_("sql: driver does not support read-only transactions") };
            };
        };
        if (_ctx.done() == null || _ctx.done().isNil()) {
            return _ci.begin();
        };
        var __tmp__ = _ci.begin(), _txi:stdgo.database.sql.driver.Driver.Tx = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err == null) {
            {
                null;
                {
                    _ctx.done().get();
                    _txi.rollback();
                    return { _0 : ((null : stdgo.database.sql.driver.Driver.Tx)), _1 : _ctx.err() };
                };
            };
        };
        return { _0 : _txi, _1 : _err };
    }
function _namedValueToValue(_named:Slice<stdgo.database.sql.driver.Driver.NamedValue>):{ var _0 : Slice<stdgo.database.sql.driver.Driver.Value>; var _1 : Error; } {
        var _dargs:Slice<stdgo.database.sql.driver.Driver.Value> = new Slice<stdgo.database.sql.driver.Driver.Value>(...[for (i in 0 ... ((_named.length : GoInt)).toBasic()) ((null : stdgo.database.sql.driver.Driver.Value))]);
        {
            var _n;
            var _param;
            for (_obj in _named.keyValueIterator()) {
                _n = _obj.key;
                _param = _obj.value;
                if (_param.name.length > ((0 : GoInt))) {
                    return { _0 : new Slice<stdgo.database.sql.driver.Driver.Value>().nil(), _1 : stdgo.errors.Errors.new_("sql: driver does not support the use of Named Parameters") };
                };
                _dargs[_n] = Go.toInterface(_param.value);
            };
        };
        return { _0 : _dargs, _1 : ((null : stdgo.Error)) };
    }
/**
    // Register makes a database driver available by the provided name.
    // If Register is called twice with the same name or if driver is nil,
    // it panics.
**/
function register(_name:GoString, _driver:stdgo.database.sql.driver.Driver.Driver):Void {
        var recover_exception:Error = null;
        var deferstack:Array<Void -> Void> = [];
        try {
            _driversMu.lock();
            deferstack.unshift(() -> _driversMu.unlock());
            if (_driver == null) {
                throw "sql: Register driver is nil";
            };
            {
                var __tmp__ = _drivers.exists(_name) ? { value : _drivers[_name], ok : true } : { value : _drivers.defaultValue(), ok : false }, _:stdgo.database.sql.driver.Driver.Driver = __tmp__.value, _dup:Bool = __tmp__.ok;
                if (_dup) {
                    throw (("sql: Register called twice for driver " : GoString)) + _name;
                };
            };
            _drivers[_name] = _driver;
            for (defer in deferstack) {
                defer();
            };
        } catch(e) {
            recover_exception = stdgo.runtime.Runtime.newRuntime(e.message);
            {
                for (defer in deferstack) {
                    defer();
                };
                if (recover_exception != null) throw recover_exception;
                return;
            };
        };
    }
function _unregisterAllDrivers():Void {
        var recover_exception:Error = null;
        var deferstack:Array<Void -> Void> = [];
        try {
            _driversMu.lock();
            deferstack.unshift(() -> _driversMu.unlock());
            _drivers = new GoMap<GoString, stdgo.database.sql.driver.Driver.Driver>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.named("database/sql/driver.Driver", [], stdgo.reflect.Reflect.GoType.interfaceType(false, [])))));
            for (defer in deferstack) {
                defer();
            };
        } catch(e) {
            recover_exception = stdgo.runtime.Runtime.newRuntime(e.message);
            {
                for (defer in deferstack) {
                    defer();
                };
                if (recover_exception != null) throw recover_exception;
                return;
            };
        };
    }
/**
    // Drivers returns a sorted list of the names of the registered drivers.
**/
function drivers():Slice<GoString> {
        var recover_exception:Error = null;
        var deferstack:Array<Void -> Void> = [];
        _driversMu.rlock();
        try {
            deferstack.unshift(() -> _driversMu.runlock());
            var _list:Slice<GoString> = new Slice<GoString>(...[for (i in 0 ... ((((0 : GoInt)) : GoInt)).toBasic()) (("" : GoString))]).setCap((((_drivers == null ? 0 : _drivers.length) : GoInt)).toBasic());
            {
                var _name;
                for (_obj in _drivers.keyValueIterator()) {
                    _name = _obj.key;
                    _list = _list.__append__(_name);
                };
            };
            stdgo.sort.Sort.strings(_list);
            {
                for (defer in deferstack) {
                    defer();
                };
                return _list;
            };
            for (defer in deferstack) {
                defer();
            };
        } catch(e) {
            recover_exception = stdgo.runtime.Runtime.newRuntime(e.message);
            {
                for (defer in deferstack) {
                    defer();
                };
                if (recover_exception != null) throw recover_exception;
                return new Slice<GoString>().nil();
            };
        };
    }
/**
    // Named provides a more concise way to create NamedArg values.
    //
    // Example usage:
    //
    //     db.ExecContext(ctx, `
    //         delete from Invoice
    //         where
    //             TimeCreated < @end
    //             and TimeCreated >= @start;`,
    //         sql.Named("start", startTime),
    //         sql.Named("end", endTime),
    //     )
**/
function named(_name:GoString, _value:AnyInterface):NamedArg {
        return (({ name : _name, value : Go.toInterface(_value), __Named_Fields_Required : null } : NamedArg)).__copy__();
    }
/**
    // OpenDB opens a database using a Connector, allowing drivers to
    // bypass a string based data source name.
    //
    // Most users will open a database via a driver-specific connection
    // helper function that returns a *DB. No database drivers are included
    // in the Go standard library. See https://golang.org/s/sqldrivers for
    // a list of third-party drivers.
    //
    // OpenDB may just validate its arguments without creating a connection
    // to the database. To verify that the data source name is valid, call
    // Ping.
    //
    // The returned DB is safe for concurrent use by multiple goroutines
    // and maintains its own pool of idle connections. Thus, the OpenDB
    // function should be called just once. It is rarely necessary to
    // close a DB.
**/
function openDB(_c:stdgo.database.sql.driver.Driver.Connector):Pointer<DB> {
        var __tmp__ = stdgo.context.Context.withCancel(stdgo.context.Context.background()), _ctx:stdgo.context.Context.Context = __tmp__._0, _cancel:stdgo.context.Context.CancelFunc = __tmp__._1;
        var _db:Pointer<DB> = Go.pointer((({ _connector : _c, _openerCh : new Chan<T__struct_44>(((_connectionRequestQueueSize : GoInt)).toBasic(), () -> new T__struct_44()), _lastPut : new GoMap<Pointer<T_driverConn>, GoString>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("database/sql.driverConn", [], stdgo.reflect.Reflect.GoType.named("database/sql.driverConn", [], stdgo.reflect.Reflect.GoType.structType([
{ name : "_db", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("database/sql.DB", [], stdgo.reflect.Reflect.GoType.named("database/sql.DB", [], stdgo.reflect.Reflect.GoType.structType([
{ name : "_waitDuration", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) },
{ name : "_connector", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("database/sql/driver.Connector", [], stdgo.reflect.Reflect.GoType.interfaceType(false, [])) },
{ name : "_numClosed", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) },
{ name : "_mu", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("sync.Mutex", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_state", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int32_kind) }, { name : "_sema", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint32_kind) }])) },
{ name : "_freeConn", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("database/sql.driverConn", [], stdgo.reflect.Reflect.GoType.structType([
{ name : "_db", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("database/sql.DB", [], stdgo.reflect.Reflect.GoType.structType([
{ name : "_waitDuration", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) },
{ name : "_connector", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("database/sql/driver.Connector", [], stdgo.reflect.Reflect.GoType.interfaceType(false, [])) },
{ name : "_numClosed", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) },
{ name : "_mu", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("sync.Mutex", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_state", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int32_kind) }, { name : "_sema", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint32_kind) }])) },
{ name : "_freeConn", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("database/sql.driverConn", [], stdgo.reflect.Reflect.GoType.invalidType))) },
{ name : "_connRequests", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(uint64_kind), stdgo.reflect.Reflect.GoType.chanType(0, stdgo.reflect.Reflect.GoType.named("database/sql.connRequest", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_conn", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("database/sql.driverConn", [], stdgo.reflect.Reflect.GoType.invalidType)) }, { name : "_err", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("error", [], stdgo.reflect.Reflect.GoType.interfaceType(false, [])) }])))) },
{ name : "_nextRequest", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) },
{ name : "_numOpen", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) },
{ name : "_openerCh", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.chanType(0, stdgo.reflect.Reflect.GoType.structType([])) },
{ name : "_closed", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) },
{ name : "_dep", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.named("database/sql.finalCloser", [], stdgo.reflect.Reflect.GoType.named("database/sql.finalCloser", [], stdgo.reflect.Reflect.GoType.interfaceType(false, []))), stdgo.reflect.Reflect.GoType.named("database/sql.depSet", [], stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.interfaceType(true, []), stdgo.reflect.Reflect.GoType.basic(bool_kind)))) },
{ name : "_lastPut", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("database/sql.driverConn", [], stdgo.reflect.Reflect.GoType.invalidType)), stdgo.reflect.Reflect.GoType.basic(string_kind)) },
{ name : "_maxIdleCount", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) },
{ name : "_maxOpen", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) },
{ name : "_maxLifetime", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("time.Duration", [], stdgo.reflect.Reflect.GoType.basic(int64_kind)) },
{ name : "_maxIdleTime", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("time.Duration", [], stdgo.reflect.Reflect.GoType.invalidType) },
{ name : "_cleanerCh", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.chanType(0, stdgo.reflect.Reflect.GoType.structType([])) },
{ name : "_waitCount", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) },
{ name : "_maxIdleClosed", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) },
{ name : "_maxIdleTimeClosed", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) },
{ name : "_maxLifetimeClosed", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) },
{ name : "_stop", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.signature(false, [], [], stdgo.reflect.Reflect.GoType.invalidType) }]))) },
{ name : "_createdAt", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("time.Time", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_wall", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) }, { name : "_ext", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) }, { name : "_loc", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("time.Location", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_name", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "_zone", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("time.zone", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_name", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "_offset", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) }, { name : "_isDST", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) }]))) }, { name : "_tx", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("time.zoneTrans", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_when", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) }, { name : "_index", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint8_kind) }, { name : "_isstd", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) }, { name : "_isutc", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) }]))) }, { name : "_extend", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "_cacheStart", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) }, { name : "_cacheEnd", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) }, { name : "_cacheZone", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("time.zone", [], stdgo.reflect.Reflect.GoType.invalidType)) }]))) }])) },
{ name : "mutex", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("sync.Mutex", [], stdgo.reflect.Reflect.GoType.invalidType) },
{ name : "_ci", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("database/sql/driver.Conn", [], stdgo.reflect.Reflect.GoType.interfaceType(false, [])) },
{ name : "_needReset", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) },
{ name : "_closed", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) },
{ name : "_finalClosed", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) },
{ name : "_openStmt", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("database/sql.driverStmt", [], stdgo.reflect.Reflect.GoType.structType([{ name : "locker", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("sync.Locker", [], stdgo.reflect.Reflect.GoType.interfaceType(false, [])) }, { name : "_si", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("database/sql/driver.Stmt", [], stdgo.reflect.Reflect.GoType.interfaceType(false, [])) }, { name : "_closed", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) }, { name : "_closeErr", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("error", [], stdgo.reflect.Reflect.GoType.invalidType) }]))), stdgo.reflect.Reflect.GoType.basic(bool_kind)) },
{ name : "_inUse", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) },
{ name : "_returnedAt", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("time.Time", [], stdgo.reflect.Reflect.GoType.invalidType) },
{ name : "_onPut", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.signature(false, [], [], stdgo.reflect.Reflect.GoType.invalidType)) },
{ name : "_dbmuClosed", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) }])))) },
{ name : "_connRequests", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(uint64_kind), stdgo.reflect.Reflect.GoType.chanType(0, stdgo.reflect.Reflect.GoType.named("database/sql.connRequest", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_conn", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("database/sql.driverConn", [], stdgo.reflect.Reflect.GoType.structType([
{ name : "_db", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("database/sql.DB", [], stdgo.reflect.Reflect.GoType.structType([
{ name : "_waitDuration", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) },
{ name : "_connector", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("database/sql/driver.Connector", [], stdgo.reflect.Reflect.GoType.interfaceType(false, [])) },
{ name : "_numClosed", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) },
{ name : "_mu", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("sync.Mutex", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_state", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int32_kind) }, { name : "_sema", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint32_kind) }])) },
{ name : "_freeConn", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("database/sql.driverConn", [], stdgo.reflect.Reflect.GoType.invalidType))) },
{ name : "_connRequests", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(uint64_kind), stdgo.reflect.Reflect.GoType.chanType(0, stdgo.reflect.Reflect.GoType.named("database/sql.connRequest", [], stdgo.reflect.Reflect.GoType.invalidType))) },
{ name : "_nextRequest", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) },
{ name : "_numOpen", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) },
{ name : "_openerCh", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.chanType(0, stdgo.reflect.Reflect.GoType.structType([])) },
{ name : "_closed", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) },
{ name : "_dep", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.named("database/sql.finalCloser", [], stdgo.reflect.Reflect.GoType.named("database/sql.finalCloser", [], stdgo.reflect.Reflect.GoType.interfaceType(false, []))), stdgo.reflect.Reflect.GoType.named("database/sql.depSet", [], stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.interfaceType(true, []), stdgo.reflect.Reflect.GoType.basic(bool_kind)))) },
{ name : "_lastPut", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("database/sql.driverConn", [], stdgo.reflect.Reflect.GoType.invalidType)), stdgo.reflect.Reflect.GoType.basic(string_kind)) },
{ name : "_maxIdleCount", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) },
{ name : "_maxOpen", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) },
{ name : "_maxLifetime", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("time.Duration", [], stdgo.reflect.Reflect.GoType.basic(int64_kind)) },
{ name : "_maxIdleTime", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("time.Duration", [], stdgo.reflect.Reflect.GoType.invalidType) },
{ name : "_cleanerCh", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.chanType(0, stdgo.reflect.Reflect.GoType.structType([])) },
{ name : "_waitCount", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) },
{ name : "_maxIdleClosed", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) },
{ name : "_maxIdleTimeClosed", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) },
{ name : "_maxLifetimeClosed", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) },
{ name : "_stop", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.signature(false, [], [], stdgo.reflect.Reflect.GoType.invalidType) }]))) },
{ name : "_createdAt", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("time.Time", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_wall", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) }, { name : "_ext", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) }, { name : "_loc", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("time.Location", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_name", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "_zone", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("time.zone", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_name", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "_offset", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) }, { name : "_isDST", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) }]))) }, { name : "_tx", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("time.zoneTrans", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_when", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) }, { name : "_index", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint8_kind) }, { name : "_isstd", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) }, { name : "_isutc", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) }]))) }, { name : "_extend", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "_cacheStart", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) }, { name : "_cacheEnd", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) }, { name : "_cacheZone", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("time.zone", [], stdgo.reflect.Reflect.GoType.invalidType)) }]))) }])) },
{ name : "mutex", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("sync.Mutex", [], stdgo.reflect.Reflect.GoType.invalidType) },
{ name : "_ci", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("database/sql/driver.Conn", [], stdgo.reflect.Reflect.GoType.interfaceType(false, [])) },
{ name : "_needReset", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) },
{ name : "_closed", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) },
{ name : "_finalClosed", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) },
{ name : "_openStmt", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("database/sql.driverStmt", [], stdgo.reflect.Reflect.GoType.structType([{ name : "locker", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("sync.Locker", [], stdgo.reflect.Reflect.GoType.interfaceType(false, [])) }, { name : "_si", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("database/sql/driver.Stmt", [], stdgo.reflect.Reflect.GoType.interfaceType(false, [])) }, { name : "_closed", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) }, { name : "_closeErr", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("error", [], stdgo.reflect.Reflect.GoType.interfaceType(false, [])) }]))), stdgo.reflect.Reflect.GoType.basic(bool_kind)) },
{ name : "_inUse", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) },
{ name : "_returnedAt", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("time.Time", [], stdgo.reflect.Reflect.GoType.invalidType) },
{ name : "_onPut", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.signature(false, [], [], stdgo.reflect.Reflect.GoType.invalidType)) },
{ name : "_dbmuClosed", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) }]))) }, { name : "_err", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("error", [], stdgo.reflect.Reflect.GoType.invalidType) }])))) },
{ name : "_nextRequest", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) },
{ name : "_numOpen", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) },
{ name : "_openerCh", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.chanType(0, stdgo.reflect.Reflect.GoType.structType([])) },
{ name : "_closed", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) },
{ name : "_dep", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.named("database/sql.finalCloser", [], stdgo.reflect.Reflect.GoType.named("database/sql.finalCloser", [], stdgo.reflect.Reflect.GoType.interfaceType(false, []))), stdgo.reflect.Reflect.GoType.named("database/sql.depSet", [], stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.interfaceType(true, []), stdgo.reflect.Reflect.GoType.basic(bool_kind)))) },
{ name : "_lastPut", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("database/sql.driverConn", [], stdgo.reflect.Reflect.GoType.structType([
{ name : "_db", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("database/sql.DB", [], stdgo.reflect.Reflect.GoType.structType([
{ name : "_waitDuration", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) },
{ name : "_connector", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("database/sql/driver.Connector", [], stdgo.reflect.Reflect.GoType.interfaceType(false, [])) },
{ name : "_numClosed", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) },
{ name : "_mu", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("sync.Mutex", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_state", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int32_kind) }, { name : "_sema", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint32_kind) }])) },
{ name : "_freeConn", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("database/sql.driverConn", [], stdgo.reflect.Reflect.GoType.invalidType))) },
{ name : "_connRequests", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(uint64_kind), stdgo.reflect.Reflect.GoType.chanType(0, stdgo.reflect.Reflect.GoType.named("database/sql.connRequest", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_conn", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("database/sql.driverConn", [], stdgo.reflect.Reflect.GoType.invalidType)) }, { name : "_err", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("error", [], stdgo.reflect.Reflect.GoType.interfaceType(false, [])) }])))) },
{ name : "_nextRequest", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) },
{ name : "_numOpen", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) },
{ name : "_openerCh", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.chanType(0, stdgo.reflect.Reflect.GoType.structType([])) },
{ name : "_closed", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) },
{ name : "_dep", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.named("database/sql.finalCloser", [], stdgo.reflect.Reflect.GoType.named("database/sql.finalCloser", [], stdgo.reflect.Reflect.GoType.interfaceType(false, []))), stdgo.reflect.Reflect.GoType.named("database/sql.depSet", [], stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.interfaceType(true, []), stdgo.reflect.Reflect.GoType.basic(bool_kind)))) },
{ name : "_lastPut", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("database/sql.driverConn", [], stdgo.reflect.Reflect.GoType.invalidType)), stdgo.reflect.Reflect.GoType.basic(string_kind)) },
{ name : "_maxIdleCount", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) },
{ name : "_maxOpen", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) },
{ name : "_maxLifetime", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("time.Duration", [], stdgo.reflect.Reflect.GoType.basic(int64_kind)) },
{ name : "_maxIdleTime", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("time.Duration", [], stdgo.reflect.Reflect.GoType.invalidType) },
{ name : "_cleanerCh", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.chanType(0, stdgo.reflect.Reflect.GoType.structType([])) },
{ name : "_waitCount", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) },
{ name : "_maxIdleClosed", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) },
{ name : "_maxIdleTimeClosed", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) },
{ name : "_maxLifetimeClosed", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) },
{ name : "_stop", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.signature(false, [], [], stdgo.reflect.Reflect.GoType.invalidType) }]))) },
{ name : "_createdAt", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("time.Time", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_wall", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) }, { name : "_ext", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) }, { name : "_loc", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("time.Location", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_name", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "_zone", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("time.zone", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_name", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "_offset", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) }, { name : "_isDST", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) }]))) }, { name : "_tx", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("time.zoneTrans", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_when", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) }, { name : "_index", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint8_kind) }, { name : "_isstd", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) }, { name : "_isutc", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) }]))) }, { name : "_extend", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "_cacheStart", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) }, { name : "_cacheEnd", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) }, { name : "_cacheZone", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("time.zone", [], stdgo.reflect.Reflect.GoType.invalidType)) }]))) }])) },
{ name : "mutex", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("sync.Mutex", [], stdgo.reflect.Reflect.GoType.invalidType) },
{ name : "_ci", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("database/sql/driver.Conn", [], stdgo.reflect.Reflect.GoType.interfaceType(false, [])) },
{ name : "_needReset", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) },
{ name : "_closed", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) },
{ name : "_finalClosed", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) },
{ name : "_openStmt", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("database/sql.driverStmt", [], stdgo.reflect.Reflect.GoType.structType([{ name : "locker", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("sync.Locker", [], stdgo.reflect.Reflect.GoType.interfaceType(false, [])) }, { name : "_si", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("database/sql/driver.Stmt", [], stdgo.reflect.Reflect.GoType.interfaceType(false, [])) }, { name : "_closed", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) }, { name : "_closeErr", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("error", [], stdgo.reflect.Reflect.GoType.invalidType) }]))), stdgo.reflect.Reflect.GoType.basic(bool_kind)) },
{ name : "_inUse", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) },
{ name : "_returnedAt", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("time.Time", [], stdgo.reflect.Reflect.GoType.invalidType) },
{ name : "_onPut", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.signature(false, [], [], stdgo.reflect.Reflect.GoType.invalidType)) },
{ name : "_dbmuClosed", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) }]))), stdgo.reflect.Reflect.GoType.basic(string_kind)) },
{ name : "_maxIdleCount", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) },
{ name : "_maxOpen", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) },
{ name : "_maxLifetime", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("time.Duration", [], stdgo.reflect.Reflect.GoType.basic(int64_kind)) },
{ name : "_maxIdleTime", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("time.Duration", [], stdgo.reflect.Reflect.GoType.basic(int64_kind)) },
{ name : "_cleanerCh", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.chanType(0, stdgo.reflect.Reflect.GoType.structType([])) },
{ name : "_waitCount", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) },
{ name : "_maxIdleClosed", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) },
{ name : "_maxIdleTimeClosed", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) },
{ name : "_maxLifetimeClosed", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) },
{ name : "_stop", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.signature(false, [], [], stdgo.reflect.Reflect.GoType.invalidType) }])))) },
{ name : "_createdAt", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("time.Time", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_wall", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) }, { name : "_ext", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) }, { name : "_loc", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("time.Location", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_name", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "_zone", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("time.zone", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_name", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "_offset", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) }, { name : "_isDST", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) }]))) }, { name : "_tx", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("time.zoneTrans", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_when", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) }, { name : "_index", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint8_kind) }, { name : "_isstd", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) }, { name : "_isutc", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) }]))) }, { name : "_extend", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "_cacheStart", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) }, { name : "_cacheEnd", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) }, { name : "_cacheZone", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("time.zone", [], stdgo.reflect.Reflect.GoType.invalidType)) }]))) }])) },
{ name : "mutex", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("sync.Mutex", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_state", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int32_kind) }, { name : "_sema", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint32_kind) }])) },
{ name : "_ci", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("database/sql/driver.Conn", [], stdgo.reflect.Reflect.GoType.interfaceType(false, [])) },
{ name : "_needReset", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) },
{ name : "_closed", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) },
{ name : "_finalClosed", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) },
{ name : "_openStmt", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("database/sql.driverStmt", [], stdgo.reflect.Reflect.GoType.structType([{ name : "locker", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("sync.Locker", [], stdgo.reflect.Reflect.GoType.interfaceType(false, [])) }, { name : "_si", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("database/sql/driver.Stmt", [], stdgo.reflect.Reflect.GoType.interfaceType(false, [])) }, { name : "_closed", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) }, { name : "_closeErr", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("error", [], stdgo.reflect.Reflect.GoType.interfaceType(false, [])) }]))), stdgo.reflect.Reflect.GoType.basic(bool_kind)) },
{ name : "_inUse", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) },
{ name : "_returnedAt", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("time.Time", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_wall", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) }, { name : "_ext", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) }, { name : "_loc", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("time.Location", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_name", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "_zone", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("time.zone", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_name", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "_offset", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) }, { name : "_isDST", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) }]))) }, { name : "_tx", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("time.zoneTrans", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_when", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) }, { name : "_index", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint8_kind) }, { name : "_isstd", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) }, { name : "_isutc", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) }]))) }, { name : "_extend", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "_cacheStart", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) }, { name : "_cacheEnd", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) }, { name : "_cacheZone", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("time.zone", [], stdgo.reflect.Reflect.GoType.invalidType)) }]))) }])) },
{ name : "_onPut", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.signature(false, [], [], stdgo.reflect.Reflect.GoType.invalidType)) },
{ name : "_dbmuClosed", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) }])))), stdgo.reflect.Reflect.GoType.basic(string_kind)))), _connRequests : new GoMap<GoUInt64, Chan<T_connRequest>>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(uint64_kind), stdgo.reflect.Reflect.GoType.chanType(0, stdgo.reflect.Reflect.GoType.named("database/sql.connRequest", [], stdgo.reflect.Reflect.GoType.named("database/sql.connRequest", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_conn", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("database/sql.driverConn", [], stdgo.reflect.Reflect.GoType.named("database/sql.driverConn", [], stdgo.reflect.Reflect.GoType.structType([
{ name : "_db", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("database/sql.DB", [], stdgo.reflect.Reflect.GoType.named("database/sql.DB", [], stdgo.reflect.Reflect.GoType.structType([
{ name : "_waitDuration", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) },
{ name : "_connector", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("database/sql/driver.Connector", [], stdgo.reflect.Reflect.GoType.interfaceType(false, [])) },
{ name : "_numClosed", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) },
{ name : "_mu", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("sync.Mutex", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_state", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int32_kind) }, { name : "_sema", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint32_kind) }])) },
{ name : "_freeConn", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("database/sql.driverConn", [], stdgo.reflect.Reflect.GoType.structType([
{ name : "_db", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("database/sql.DB", [], stdgo.reflect.Reflect.GoType.structType([
{ name : "_waitDuration", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) },
{ name : "_connector", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("database/sql/driver.Connector", [], stdgo.reflect.Reflect.GoType.interfaceType(false, [])) },
{ name : "_numClosed", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) },
{ name : "_mu", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("sync.Mutex", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_state", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int32_kind) }, { name : "_sema", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint32_kind) }])) },
{ name : "_freeConn", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("database/sql.driverConn", [], stdgo.reflect.Reflect.GoType.invalidType))) },
{ name : "_connRequests", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(uint64_kind), stdgo.reflect.Reflect.GoType.chanType(0, stdgo.reflect.Reflect.GoType.named("database/sql.connRequest", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_conn", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("database/sql.driverConn", [], stdgo.reflect.Reflect.GoType.invalidType)) }, { name : "_err", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("error", [], stdgo.reflect.Reflect.GoType.interfaceType(false, [])) }])))) },
{ name : "_nextRequest", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) },
{ name : "_numOpen", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) },
{ name : "_openerCh", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.chanType(0, stdgo.reflect.Reflect.GoType.structType([])) },
{ name : "_closed", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) },
{ name : "_dep", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.named("database/sql.finalCloser", [], stdgo.reflect.Reflect.GoType.named("database/sql.finalCloser", [], stdgo.reflect.Reflect.GoType.interfaceType(false, []))), stdgo.reflect.Reflect.GoType.named("database/sql.depSet", [], stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.interfaceType(true, []), stdgo.reflect.Reflect.GoType.basic(bool_kind)))) },
{ name : "_lastPut", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("database/sql.driverConn", [], stdgo.reflect.Reflect.GoType.invalidType)), stdgo.reflect.Reflect.GoType.basic(string_kind)) },
{ name : "_maxIdleCount", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) },
{ name : "_maxOpen", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) },
{ name : "_maxLifetime", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("time.Duration", [], stdgo.reflect.Reflect.GoType.basic(int64_kind)) },
{ name : "_maxIdleTime", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("time.Duration", [], stdgo.reflect.Reflect.GoType.invalidType) },
{ name : "_cleanerCh", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.chanType(0, stdgo.reflect.Reflect.GoType.structType([])) },
{ name : "_waitCount", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) },
{ name : "_maxIdleClosed", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) },
{ name : "_maxIdleTimeClosed", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) },
{ name : "_maxLifetimeClosed", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) },
{ name : "_stop", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.signature(false, [], [], stdgo.reflect.Reflect.GoType.invalidType) }]))) },
{ name : "_createdAt", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("time.Time", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_wall", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) }, { name : "_ext", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) }, { name : "_loc", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("time.Location", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_name", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "_zone", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("time.zone", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_name", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "_offset", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) }, { name : "_isDST", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) }]))) }, { name : "_tx", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("time.zoneTrans", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_when", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) }, { name : "_index", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint8_kind) }, { name : "_isstd", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) }, { name : "_isutc", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) }]))) }, { name : "_extend", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "_cacheStart", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) }, { name : "_cacheEnd", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) }, { name : "_cacheZone", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("time.zone", [], stdgo.reflect.Reflect.GoType.invalidType)) }]))) }])) },
{ name : "mutex", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("sync.Mutex", [], stdgo.reflect.Reflect.GoType.invalidType) },
{ name : "_ci", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("database/sql/driver.Conn", [], stdgo.reflect.Reflect.GoType.interfaceType(false, [])) },
{ name : "_needReset", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) },
{ name : "_closed", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) },
{ name : "_finalClosed", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) },
{ name : "_openStmt", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("database/sql.driverStmt", [], stdgo.reflect.Reflect.GoType.structType([{ name : "locker", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("sync.Locker", [], stdgo.reflect.Reflect.GoType.interfaceType(false, [])) }, { name : "_si", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("database/sql/driver.Stmt", [], stdgo.reflect.Reflect.GoType.interfaceType(false, [])) }, { name : "_closed", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) }, { name : "_closeErr", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("error", [], stdgo.reflect.Reflect.GoType.invalidType) }]))), stdgo.reflect.Reflect.GoType.basic(bool_kind)) },
{ name : "_inUse", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) },
{ name : "_returnedAt", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("time.Time", [], stdgo.reflect.Reflect.GoType.invalidType) },
{ name : "_onPut", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.signature(false, [], [], stdgo.reflect.Reflect.GoType.invalidType)) },
{ name : "_dbmuClosed", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) }])))) },
{ name : "_connRequests", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(uint64_kind), stdgo.reflect.Reflect.GoType.chanType(0, stdgo.reflect.Reflect.GoType.named("database/sql.connRequest", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_conn", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("database/sql.driverConn", [], stdgo.reflect.Reflect.GoType.structType([
{ name : "_db", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("database/sql.DB", [], stdgo.reflect.Reflect.GoType.structType([
{ name : "_waitDuration", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) },
{ name : "_connector", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("database/sql/driver.Connector", [], stdgo.reflect.Reflect.GoType.interfaceType(false, [])) },
{ name : "_numClosed", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) },
{ name : "_mu", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("sync.Mutex", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_state", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int32_kind) }, { name : "_sema", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint32_kind) }])) },
{ name : "_freeConn", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("database/sql.driverConn", [], stdgo.reflect.Reflect.GoType.invalidType))) },
{ name : "_connRequests", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(uint64_kind), stdgo.reflect.Reflect.GoType.chanType(0, stdgo.reflect.Reflect.GoType.named("database/sql.connRequest", [], stdgo.reflect.Reflect.GoType.invalidType))) },
{ name : "_nextRequest", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) },
{ name : "_numOpen", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) },
{ name : "_openerCh", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.chanType(0, stdgo.reflect.Reflect.GoType.structType([])) },
{ name : "_closed", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) },
{ name : "_dep", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.named("database/sql.finalCloser", [], stdgo.reflect.Reflect.GoType.named("database/sql.finalCloser", [], stdgo.reflect.Reflect.GoType.interfaceType(false, []))), stdgo.reflect.Reflect.GoType.named("database/sql.depSet", [], stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.interfaceType(true, []), stdgo.reflect.Reflect.GoType.basic(bool_kind)))) },
{ name : "_lastPut", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("database/sql.driverConn", [], stdgo.reflect.Reflect.GoType.invalidType)), stdgo.reflect.Reflect.GoType.basic(string_kind)) },
{ name : "_maxIdleCount", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) },
{ name : "_maxOpen", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) },
{ name : "_maxLifetime", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("time.Duration", [], stdgo.reflect.Reflect.GoType.basic(int64_kind)) },
{ name : "_maxIdleTime", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("time.Duration", [], stdgo.reflect.Reflect.GoType.invalidType) },
{ name : "_cleanerCh", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.chanType(0, stdgo.reflect.Reflect.GoType.structType([])) },
{ name : "_waitCount", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) },
{ name : "_maxIdleClosed", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) },
{ name : "_maxIdleTimeClosed", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) },
{ name : "_maxLifetimeClosed", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) },
{ name : "_stop", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.signature(false, [], [], stdgo.reflect.Reflect.GoType.invalidType) }]))) },
{ name : "_createdAt", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("time.Time", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_wall", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) }, { name : "_ext", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) }, { name : "_loc", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("time.Location", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_name", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "_zone", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("time.zone", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_name", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "_offset", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) }, { name : "_isDST", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) }]))) }, { name : "_tx", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("time.zoneTrans", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_when", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) }, { name : "_index", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint8_kind) }, { name : "_isstd", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) }, { name : "_isutc", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) }]))) }, { name : "_extend", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "_cacheStart", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) }, { name : "_cacheEnd", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) }, { name : "_cacheZone", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("time.zone", [], stdgo.reflect.Reflect.GoType.invalidType)) }]))) }])) },
{ name : "mutex", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("sync.Mutex", [], stdgo.reflect.Reflect.GoType.invalidType) },
{ name : "_ci", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("database/sql/driver.Conn", [], stdgo.reflect.Reflect.GoType.interfaceType(false, [])) },
{ name : "_needReset", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) },
{ name : "_closed", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) },
{ name : "_finalClosed", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) },
{ name : "_openStmt", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("database/sql.driverStmt", [], stdgo.reflect.Reflect.GoType.structType([{ name : "locker", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("sync.Locker", [], stdgo.reflect.Reflect.GoType.interfaceType(false, [])) }, { name : "_si", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("database/sql/driver.Stmt", [], stdgo.reflect.Reflect.GoType.interfaceType(false, [])) }, { name : "_closed", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) }, { name : "_closeErr", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("error", [], stdgo.reflect.Reflect.GoType.interfaceType(false, [])) }]))), stdgo.reflect.Reflect.GoType.basic(bool_kind)) },
{ name : "_inUse", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) },
{ name : "_returnedAt", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("time.Time", [], stdgo.reflect.Reflect.GoType.invalidType) },
{ name : "_onPut", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.signature(false, [], [], stdgo.reflect.Reflect.GoType.invalidType)) },
{ name : "_dbmuClosed", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) }]))) }, { name : "_err", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("error", [], stdgo.reflect.Reflect.GoType.invalidType) }])))) },
{ name : "_nextRequest", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) },
{ name : "_numOpen", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) },
{ name : "_openerCh", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.chanType(0, stdgo.reflect.Reflect.GoType.structType([])) },
{ name : "_closed", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) },
{ name : "_dep", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.named("database/sql.finalCloser", [], stdgo.reflect.Reflect.GoType.named("database/sql.finalCloser", [], stdgo.reflect.Reflect.GoType.interfaceType(false, []))), stdgo.reflect.Reflect.GoType.named("database/sql.depSet", [], stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.interfaceType(true, []), stdgo.reflect.Reflect.GoType.basic(bool_kind)))) },
{ name : "_lastPut", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("database/sql.driverConn", [], stdgo.reflect.Reflect.GoType.structType([
{ name : "_db", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("database/sql.DB", [], stdgo.reflect.Reflect.GoType.structType([
{ name : "_waitDuration", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) },
{ name : "_connector", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("database/sql/driver.Connector", [], stdgo.reflect.Reflect.GoType.interfaceType(false, [])) },
{ name : "_numClosed", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) },
{ name : "_mu", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("sync.Mutex", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_state", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int32_kind) }, { name : "_sema", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint32_kind) }])) },
{ name : "_freeConn", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("database/sql.driverConn", [], stdgo.reflect.Reflect.GoType.invalidType))) },
{ name : "_connRequests", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(uint64_kind), stdgo.reflect.Reflect.GoType.chanType(0, stdgo.reflect.Reflect.GoType.named("database/sql.connRequest", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_conn", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("database/sql.driverConn", [], stdgo.reflect.Reflect.GoType.invalidType)) }, { name : "_err", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("error", [], stdgo.reflect.Reflect.GoType.interfaceType(false, [])) }])))) },
{ name : "_nextRequest", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) },
{ name : "_numOpen", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) },
{ name : "_openerCh", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.chanType(0, stdgo.reflect.Reflect.GoType.structType([])) },
{ name : "_closed", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) },
{ name : "_dep", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.named("database/sql.finalCloser", [], stdgo.reflect.Reflect.GoType.named("database/sql.finalCloser", [], stdgo.reflect.Reflect.GoType.interfaceType(false, []))), stdgo.reflect.Reflect.GoType.named("database/sql.depSet", [], stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.interfaceType(true, []), stdgo.reflect.Reflect.GoType.basic(bool_kind)))) },
{ name : "_lastPut", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("database/sql.driverConn", [], stdgo.reflect.Reflect.GoType.invalidType)), stdgo.reflect.Reflect.GoType.basic(string_kind)) },
{ name : "_maxIdleCount", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) },
{ name : "_maxOpen", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) },
{ name : "_maxLifetime", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("time.Duration", [], stdgo.reflect.Reflect.GoType.basic(int64_kind)) },
{ name : "_maxIdleTime", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("time.Duration", [], stdgo.reflect.Reflect.GoType.invalidType) },
{ name : "_cleanerCh", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.chanType(0, stdgo.reflect.Reflect.GoType.structType([])) },
{ name : "_waitCount", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) },
{ name : "_maxIdleClosed", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) },
{ name : "_maxIdleTimeClosed", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) },
{ name : "_maxLifetimeClosed", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) },
{ name : "_stop", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.signature(false, [], [], stdgo.reflect.Reflect.GoType.invalidType) }]))) },
{ name : "_createdAt", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("time.Time", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_wall", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) }, { name : "_ext", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) }, { name : "_loc", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("time.Location", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_name", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "_zone", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("time.zone", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_name", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "_offset", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) }, { name : "_isDST", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) }]))) }, { name : "_tx", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("time.zoneTrans", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_when", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) }, { name : "_index", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint8_kind) }, { name : "_isstd", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) }, { name : "_isutc", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) }]))) }, { name : "_extend", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "_cacheStart", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) }, { name : "_cacheEnd", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) }, { name : "_cacheZone", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("time.zone", [], stdgo.reflect.Reflect.GoType.invalidType)) }]))) }])) },
{ name : "mutex", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("sync.Mutex", [], stdgo.reflect.Reflect.GoType.invalidType) },
{ name : "_ci", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("database/sql/driver.Conn", [], stdgo.reflect.Reflect.GoType.interfaceType(false, [])) },
{ name : "_needReset", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) },
{ name : "_closed", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) },
{ name : "_finalClosed", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) },
{ name : "_openStmt", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("database/sql.driverStmt", [], stdgo.reflect.Reflect.GoType.structType([{ name : "locker", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("sync.Locker", [], stdgo.reflect.Reflect.GoType.interfaceType(false, [])) }, { name : "_si", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("database/sql/driver.Stmt", [], stdgo.reflect.Reflect.GoType.interfaceType(false, [])) }, { name : "_closed", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) }, { name : "_closeErr", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("error", [], stdgo.reflect.Reflect.GoType.invalidType) }]))), stdgo.reflect.Reflect.GoType.basic(bool_kind)) },
{ name : "_inUse", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) },
{ name : "_returnedAt", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("time.Time", [], stdgo.reflect.Reflect.GoType.invalidType) },
{ name : "_onPut", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.signature(false, [], [], stdgo.reflect.Reflect.GoType.invalidType)) },
{ name : "_dbmuClosed", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) }]))), stdgo.reflect.Reflect.GoType.basic(string_kind)) },
{ name : "_maxIdleCount", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) },
{ name : "_maxOpen", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) },
{ name : "_maxLifetime", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("time.Duration", [], stdgo.reflect.Reflect.GoType.basic(int64_kind)) },
{ name : "_maxIdleTime", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("time.Duration", [], stdgo.reflect.Reflect.GoType.basic(int64_kind)) },
{ name : "_cleanerCh", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.chanType(0, stdgo.reflect.Reflect.GoType.structType([])) },
{ name : "_waitCount", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) },
{ name : "_maxIdleClosed", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) },
{ name : "_maxIdleTimeClosed", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) },
{ name : "_maxLifetimeClosed", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) },
{ name : "_stop", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.signature(false, [], [], stdgo.reflect.Reflect.GoType.invalidType) }])))) },
{ name : "_createdAt", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("time.Time", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_wall", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) }, { name : "_ext", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) }, { name : "_loc", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("time.Location", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_name", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "_zone", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("time.zone", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_name", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "_offset", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) }, { name : "_isDST", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) }]))) }, { name : "_tx", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("time.zoneTrans", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_when", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) }, { name : "_index", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint8_kind) }, { name : "_isstd", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) }, { name : "_isutc", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) }]))) }, { name : "_extend", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "_cacheStart", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) }, { name : "_cacheEnd", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) }, { name : "_cacheZone", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("time.zone", [], stdgo.reflect.Reflect.GoType.invalidType)) }]))) }])) },
{ name : "mutex", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("sync.Mutex", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_state", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int32_kind) }, { name : "_sema", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint32_kind) }])) },
{ name : "_ci", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("database/sql/driver.Conn", [], stdgo.reflect.Reflect.GoType.interfaceType(false, [])) },
{ name : "_needReset", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) },
{ name : "_closed", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) },
{ name : "_finalClosed", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) },
{ name : "_openStmt", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("database/sql.driverStmt", [], stdgo.reflect.Reflect.GoType.structType([{ name : "locker", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("sync.Locker", [], stdgo.reflect.Reflect.GoType.interfaceType(false, [])) }, { name : "_si", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("database/sql/driver.Stmt", [], stdgo.reflect.Reflect.GoType.interfaceType(false, [])) }, { name : "_closed", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) }, { name : "_closeErr", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("error", [], stdgo.reflect.Reflect.GoType.interfaceType(false, [])) }]))), stdgo.reflect.Reflect.GoType.basic(bool_kind)) },
{ name : "_inUse", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) },
{ name : "_returnedAt", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("time.Time", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_wall", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) }, { name : "_ext", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) }, { name : "_loc", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("time.Location", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_name", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "_zone", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("time.zone", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_name", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "_offset", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) }, { name : "_isDST", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) }]))) }, { name : "_tx", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("time.zoneTrans", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_when", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) }, { name : "_index", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint8_kind) }, { name : "_isstd", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) }, { name : "_isutc", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) }]))) }, { name : "_extend", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "_cacheStart", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) }, { name : "_cacheEnd", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) }, { name : "_cacheZone", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("time.zone", [], stdgo.reflect.Reflect.GoType.invalidType)) }]))) }])) },
{ name : "_onPut", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.signature(false, [], [], stdgo.reflect.Reflect.GoType.invalidType)) },
{ name : "_dbmuClosed", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) }])))) }, { name : "_err", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("error", [], stdgo.reflect.Reflect.GoType.interfaceType(false, [])) }]))))))), _stop : _cancel.__copy__().__t__, _waitDuration : 0, _numClosed : 0, _mu : new stdgo.sync.Sync.Mutex(), _freeConn : new Slice<Pointer<T_driverConn>>().nil(), _nextRequest : 0, _numOpen : 0, _closed : false, _dep : new GoMap<T_finalCloser, T_depSet>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.named("database/sql.finalCloser", [], stdgo.reflect.Reflect.GoType.named("database/sql.finalCloser", [], stdgo.reflect.Reflect.GoType.interfaceType(false, []))), stdgo.reflect.Reflect.GoType.named("database/sql.depSet", [], stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.interfaceType(true, []), stdgo.reflect.Reflect.GoType.basic(bool_kind)))))).nil(), _maxIdleCount : 0, _maxOpen : 0, _maxLifetime : new stdgo.time.Time.Duration(), _maxIdleTime : new stdgo.time.Time.Duration(), _cleanerCh : new Chan<{ }>(0, () -> null, true), _waitCount : 0, _maxIdleClosed : 0, _maxIdleTimeClosed : 0, _maxLifetimeClosed : 0 } : DB)));
        Go.routine(_db.value._connectionOpener(_ctx));
        return _db;
    }
/**
    // Open opens a database specified by its database driver name and a
    // driver-specific data source name, usually consisting of at least a
    // database name and connection information.
    //
    // Most users will open a database via a driver-specific connection
    // helper function that returns a *DB. No database drivers are included
    // in the Go standard library. See https://golang.org/s/sqldrivers for
    // a list of third-party drivers.
    //
    // Open may just validate its arguments without creating a connection
    // to the database. To verify that the data source name is valid, call
    // Ping.
    //
    // The returned DB is safe for concurrent use by multiple goroutines
    // and maintains its own pool of idle connections. Thus, the Open
    // function should be called just once. It is rarely necessary to
    // close a DB.
**/
function open(_driverName:GoString, _dataSourceName:GoString):{ var _0 : Pointer<DB>; var _1 : Error; } {
        _driversMu.rlock();
        var __tmp__ = _drivers.exists(_driverName) ? { value : _drivers[_driverName], ok : true } : { value : _drivers.defaultValue(), ok : false }, _driveri:stdgo.database.sql.driver.Driver.Driver = __tmp__.value, _ok:Bool = __tmp__.ok;
        _driversMu.runlock();
        if (!_ok) {
            return { _0 : new Pointer<DB>().nil(), _1 : stdgo.fmt.Fmt.errorf("sql: unknown driver %q (forgotten import?)", Go.toInterface(_driverName)) };
        };
        {
            var __tmp__ = try {
                { value : ((_driveri.__underlying__().value : stdgo.database.sql.driver.Driver.DriverContext)), ok : true };
            } catch(_) {
                { value : ((null : stdgo.database.sql.driver.Driver.DriverContext)), ok : false };
            }, _driverCtx = __tmp__.value, _ok = __tmp__.ok;
            if (_ok) {
                var __tmp__ = _driverCtx.openConnector(_dataSourceName), _connector:stdgo.database.sql.driver.Driver.Connector = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    return { _0 : new Pointer<DB>().nil(), _1 : _err };
                };
                return { _0 : openDB(_connector), _1 : ((null : stdgo.Error)) };
            };
        };
        return { _0 : openDB((({ _dsn : _dataSourceName, _driver : _driveri } : T_dsnConnector)).__copy__()), _1 : ((null : stdgo.Error)) };
    }
function _resultFromStatement(_ctx:stdgo.context.Context.Context, _ci:stdgo.database.sql.driver.Driver.Conn, _ds:Pointer<T_driverStmt>, _args:haxe.Rest<AnyInterface>):{ var _0 : Result; var _1 : Error; } {
        var _args = new Slice<AnyInterface>(..._args);
        var recover_exception:Error = null;
        var deferstack:Array<Void -> Void> = [];
        _ds.value.lock();
        deferstack.unshift(() -> _ds.value.unlock());
        try {
            var __tmp__ = _driverArgsConnLocked(_ci, _ds, _args), _dargs:Slice<stdgo.database.sql.driver.Driver.NamedValue> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                {
                    for (defer in deferstack) {
                        defer();
                    };
                    return { _0 : ((null : Result)), _1 : _err };
                };
            };
            var __tmp__ = _ctxDriverStmtExec(_ctx, _ds.value._si, _dargs), _resi:stdgo.database.sql.driver.Driver.Result = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                {
                    for (defer in deferstack) {
                        defer();
                    };
                    return { _0 : ((null : Result)), _1 : _err };
                };
            };
            {
                for (defer in deferstack) {
                    defer();
                };
                return { _0 : new T_driverResult(_ds.value.locker, _resi).__copy__(), _1 : ((null : stdgo.Error)) };
            };
            for (defer in deferstack) {
                defer();
            };
        } catch(e) {
            recover_exception = stdgo.runtime.Runtime.newRuntime(e.message);
            {
                for (defer in deferstack) {
                    defer();
                };
                if (recover_exception != null) throw recover_exception;
                return { _0 : ((null : Result)), _1 : ((null : stdgo.Error)) };
            };
        };
    }
function _rowsiFromStatement(_ctx:stdgo.context.Context.Context, _ci:stdgo.database.sql.driver.Driver.Conn, _ds:Pointer<T_driverStmt>, _args:haxe.Rest<AnyInterface>):{ var _0 : stdgo.database.sql.driver.Driver.Rows; var _1 : Error; } {
        var _args = new Slice<AnyInterface>(..._args);
        var recover_exception:Error = null;
        var deferstack:Array<Void -> Void> = [];
        _ds.value.lock();
        deferstack.unshift(() -> _ds.value.unlock());
        try {
            var __tmp__ = _driverArgsConnLocked(_ci, _ds, _args), _dargs:Slice<stdgo.database.sql.driver.Driver.NamedValue> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                {
                    for (defer in deferstack) {
                        defer();
                    };
                    return { _0 : ((null : stdgo.database.sql.driver.Driver.Rows)), _1 : _err };
                };
            };
            {
                for (defer in deferstack) {
                    defer();
                };
                return _ctxDriverStmtQuery(_ctx, _ds.value._si, _dargs);
            };
            for (defer in deferstack) {
                defer();
            };
        } catch(e) {
            recover_exception = stdgo.runtime.Runtime.newRuntime(e.message);
            {
                for (defer in deferstack) {
                    defer();
                };
                if (recover_exception != null) throw recover_exception;
                return { _0 : ((null : stdgo.database.sql.driver.Driver.Rows)), _1 : ((null : stdgo.Error)) };
            };
        };
    }
function _rowsColumnInfoSetupConnLocked(_rowsi:stdgo.database.sql.driver.Driver.Rows):Slice<Pointer<ColumnType>> {
        var _names:Slice<GoString> = _rowsi.columns();
        var _list:Slice<Pointer<ColumnType>> = new Slice<Pointer<ColumnType>>(...[for (i in 0 ... ((_names.length : GoInt)).toBasic()) new Pointer<ColumnType>().nil()]);
        {
            var _i;
            for (_obj in _list.keyValueIterator()) {
                _i = _obj.key;
                var _ci:Pointer<ColumnType> = Go.pointer((({ _name : _names[_i], _hasNullable : false, _hasLength : false, _hasPrecisionScale : false, _nullable : false, _length : 0, _databaseType : "", _precision : 0, _scale : 0, _scanType : ((null : stdgo.reflect.Reflect.Type)) } : ColumnType)));
                _list[_i] = _ci;
                {
                    var __tmp__ = try {
                        { value : ((_rowsi.__underlying__().value : stdgo.database.sql.driver.Driver.RowsColumnTypeScanType)), ok : true };
                    } catch(_) {
                        { value : ((null : stdgo.database.sql.driver.Driver.RowsColumnTypeScanType)), ok : false };
                    }, _prop = __tmp__.value, _ok = __tmp__.ok;
                    if (_ok) {
                        _ci.value._scanType = _prop.columnTypeScanType(_i);
                    } else {
                        _ci.value._scanType = stdgo.reflect.Reflect.typeOf(Go.toInterface(Go.pointer(((null : AnyInterface)), true))).elem();
                    };
                };
                {
                    var __tmp__ = try {
                        { value : ((_rowsi.__underlying__().value : stdgo.database.sql.driver.Driver.RowsColumnTypeDatabaseTypeName)), ok : true };
                    } catch(_) {
                        { value : ((null : stdgo.database.sql.driver.Driver.RowsColumnTypeDatabaseTypeName)), ok : false };
                    }, _prop = __tmp__.value, _ok = __tmp__.ok;
                    if (_ok) {
                        _ci.value._databaseType = _prop.columnTypeDatabaseTypeName(_i);
                    };
                };
                {
                    var __tmp__ = try {
                        { value : ((_rowsi.__underlying__().value : stdgo.database.sql.driver.Driver.RowsColumnTypeLength)), ok : true };
                    } catch(_) {
                        { value : ((null : stdgo.database.sql.driver.Driver.RowsColumnTypeLength)), ok : false };
                    }, _prop = __tmp__.value, _ok = __tmp__.ok;
                    if (_ok) {
                        {
                            var __tmp__ = _prop.columnTypeLength(_i);
                            _ci.value._length = __tmp__._0;
                            _ci.value._hasLength = __tmp__._1;
                        };
                    };
                };
                {
                    var __tmp__ = try {
                        { value : ((_rowsi.__underlying__().value : stdgo.database.sql.driver.Driver.RowsColumnTypeNullable)), ok : true };
                    } catch(_) {
                        { value : ((null : stdgo.database.sql.driver.Driver.RowsColumnTypeNullable)), ok : false };
                    }, _prop = __tmp__.value, _ok = __tmp__.ok;
                    if (_ok) {
                        {
                            var __tmp__ = _prop.columnTypeNullable(_i);
                            _ci.value._nullable = __tmp__._0;
                            _ci.value._hasNullable = __tmp__._1;
                        };
                    };
                };
                {
                    var __tmp__ = try {
                        { value : ((_rowsi.__underlying__().value : stdgo.database.sql.driver.Driver.RowsColumnTypePrecisionScale)), ok : true };
                    } catch(_) {
                        { value : ((null : stdgo.database.sql.driver.Driver.RowsColumnTypePrecisionScale)), ok : false };
                    }, _prop = __tmp__.value, _ok = __tmp__.ok;
                    if (_ok) {
                        {
                            var __tmp__ = _prop.columnTypePrecisionScale(_i);
                            _ci.value._precision = __tmp__._0;
                            _ci.value._scale = __tmp__._1;
                            _ci.value._hasPrecisionScale = __tmp__._2;
                        };
                    };
                };
            };
        };
        return _list;
    }
function _stack():GoString {
        var _buf:GoArray<GoByte> = new GoArray<GoUInt8>(...[for (i in 0 ... 2048) ((0 : GoUInt8))]);
        return ((_buf.__slice__(0, stdgo.runtime.Runtime.stack(_buf.__slice__(0), false)) : GoString));
    }
/**
    // withLock runs while holding lk.
**/
function _withLock(_lk:stdgo.sync.Sync.Locker, _fn:() -> Void):Void {
        var recover_exception:Error = null;
        var deferstack:Array<Void -> Void> = [];
        try {
            _lk.lock();
            deferstack.unshift(() -> _lk.unlock());
            _fn();
            for (defer in deferstack) {
                defer();
            };
        } catch(e) {
            recover_exception = stdgo.runtime.Runtime.newRuntime(e.message);
            {
                for (defer in deferstack) {
                    defer();
                };
                if (recover_exception != null) throw recover_exception;
                return;
            };
        };
    }
class T_ccChecker_extension_fields {
    public function checkNamedValue(__tmp__, _nv:Pointer<stdgo.database.sql.driver.Driver.NamedValue>):Error return __tmp__.checkNamedValue(_nv);
}
class IsolationLevel_extension_fields {
    public function toString(__tmp__):GoString return __tmp__.toString();
}
class NullString_extension_fields {
    public function scan(__tmp__, _value:AnyInterface):Error return __tmp__.scan(_value);
    public function value(__tmp__):{ var _0 : stdgo.database.sql.driver.Driver.Value; var _1 : Error; } return __tmp__.value();
}
class NullInt64_extension_fields {
    public function scan(__tmp__, _value:AnyInterface):Error return __tmp__.scan(_value);
    public function value(__tmp__):{ var _0 : stdgo.database.sql.driver.Driver.Value; var _1 : Error; } return __tmp__.value();
}
class NullInt32_extension_fields {
    public function scan(__tmp__, _value:AnyInterface):Error return __tmp__.scan(_value);
    public function value(__tmp__):{ var _0 : stdgo.database.sql.driver.Driver.Value; var _1 : Error; } return __tmp__.value();
}
class NullInt16_extension_fields {
    public function scan(__tmp__, _value:AnyInterface):Error return __tmp__.scan(_value);
    public function value(__tmp__):{ var _0 : stdgo.database.sql.driver.Driver.Value; var _1 : Error; } return __tmp__.value();
}
class NullByte_extension_fields {
    public function scan(__tmp__, _value:AnyInterface):Error return __tmp__.scan(_value);
    public function value(__tmp__):{ var _0 : stdgo.database.sql.driver.Driver.Value; var _1 : Error; } return __tmp__.value();
}
class NullFloat64_extension_fields {
    public function scan(__tmp__, _value:AnyInterface):Error return __tmp__.scan(_value);
    public function value(__tmp__):{ var _0 : stdgo.database.sql.driver.Driver.Value; var _1 : Error; } return __tmp__.value();
}
class NullBool_extension_fields {
    public function scan(__tmp__, _value:AnyInterface):Error return __tmp__.scan(_value);
    public function value(__tmp__):{ var _0 : stdgo.database.sql.driver.Driver.Value; var _1 : Error; } return __tmp__.value();
}
class NullTime_extension_fields {
    public function scan(__tmp__, _value:AnyInterface):Error return __tmp__.scan(_value);
    public function value(__tmp__):{ var _0 : stdgo.database.sql.driver.Driver.Value; var _1 : Error; } return __tmp__.value();
}
class DB_extension_fields {
    public function _addDep(__tmp__, _x:T_finalCloser, _dep:AnyInterface):Void __tmp__._addDep(_x, _dep);
    public function _addDepLocked(__tmp__, _x:T_finalCloser, _dep:AnyInterface):Void __tmp__._addDepLocked(_x, _dep);
    public function _removeDep(__tmp__, _x:T_finalCloser, _dep:AnyInterface):Error return __tmp__._removeDep(_x, _dep);
    public function _removeDepLocked(__tmp__, _x:T_finalCloser, _dep:AnyInterface):() -> Error return __tmp__._removeDepLocked(_x, _dep);
    public function _pingDC(__tmp__, _ctx:stdgo.context.Context.Context, _dc:Pointer<T_driverConn>, _release:Error -> Void):Error return __tmp__._pingDC(_ctx, _dc, _release);
    public function pingContext(__tmp__, _ctx:stdgo.context.Context.Context):Error return __tmp__.pingContext(_ctx);
    public function ping(__tmp__):Error return __tmp__.ping();
    public function close(__tmp__):Error return __tmp__.close();
    public function _maxIdleConnsLocked(__tmp__):GoInt return __tmp__._maxIdleConnsLocked();
    public function _shortestIdleTimeLocked(__tmp__):stdgo.time.Time.Duration return __tmp__._shortestIdleTimeLocked();
    public function setMaxIdleConns(__tmp__, _n:GoInt):Void __tmp__.setMaxIdleConns(_n);
    public function setMaxOpenConns(__tmp__, _n:GoInt):Void __tmp__.setMaxOpenConns(_n);
    public function setConnMaxLifetime(__tmp__, _d:stdgo.time.Time.Duration):Void __tmp__.setConnMaxLifetime(_d);
    public function setConnMaxIdleTime(__tmp__, _d:stdgo.time.Time.Duration):Void __tmp__.setConnMaxIdleTime(_d);
    public function _startCleanerLocked(__tmp__):Void __tmp__._startCleanerLocked();
    public function _connectionCleaner(__tmp__, _d:stdgo.time.Time.Duration):Void __tmp__._connectionCleaner(_d);
    public function _connectionCleanerRunLocked(__tmp__):Slice<Pointer<T_driverConn>> return __tmp__._connectionCleanerRunLocked();
    public function stats(__tmp__):DBStats return __tmp__.stats();
    public function _maybeOpenNewConnections(__tmp__):Void __tmp__._maybeOpenNewConnections();
    public function _connectionOpener(__tmp__, _ctx:stdgo.context.Context.Context):Void __tmp__._connectionOpener(_ctx);
    public function _openNewConnection(__tmp__, _ctx:stdgo.context.Context.Context):Void __tmp__._openNewConnection(_ctx);
    public function _nextRequestKeyLocked(__tmp__):GoUInt64 return __tmp__._nextRequestKeyLocked();
    public function _conn(__tmp__, _ctx:stdgo.context.Context.Context, _strategy:T_connReuseStrategy):{ var _0 : Pointer<T_driverConn>; var _1 : Error; } return __tmp__._conn(_ctx, _strategy);
    public function _noteUnusedDriverStatement(__tmp__, _c:Pointer<T_driverConn>, _ds:Pointer<T_driverStmt>):Void __tmp__._noteUnusedDriverStatement(_c, _ds);
    public function _putConn(__tmp__, _dc:Pointer<T_driverConn>, _err:Error, _resetSession:Bool):Void __tmp__._putConn(_dc, _err, _resetSession);
    public function _putConnDBLocked(__tmp__, _dc:Pointer<T_driverConn>, _err:Error):Bool return __tmp__._putConnDBLocked(_dc, _err);
    public function prepareContext(__tmp__, _ctx:stdgo.context.Context.Context, _query:GoString):{ var _0 : Pointer<Stmt>; var _1 : Error; } return __tmp__.prepareContext(_ctx, _query);
    public function prepare(__tmp__, _query:GoString):{ var _0 : Pointer<Stmt>; var _1 : Error; } return __tmp__.prepare(_query);
    public function _prepare(__tmp__, _ctx:stdgo.context.Context.Context, _query:GoString, _strategy:T_connReuseStrategy):{ var _0 : Pointer<Stmt>; var _1 : Error; } return __tmp__._prepare(_ctx, _query, _strategy);
    public function _prepareDC(__tmp__, _ctx:stdgo.context.Context.Context, _dc:Pointer<T_driverConn>, _release:Error -> Void, _cg:T_stmtConnGrabber, _query:GoString):{ var _0 : Pointer<Stmt>; var _1 : Error; } return __tmp__._prepareDC(_ctx, _dc, _release, _cg, _query);
    public function execContext(__tmp__, _ctx:stdgo.context.Context.Context, _query:GoString, _args:haxe.Rest<AnyInterface>):{ var _0 : Result; var _1 : Error; } return __tmp__.execContext(_ctx, _query, _args);
    public function exec(__tmp__, _query:GoString, _args:haxe.Rest<AnyInterface>):{ var _0 : Result; var _1 : Error; } return __tmp__.exec(_query, _args);
    public function _exec(__tmp__, _ctx:stdgo.context.Context.Context, _query:GoString, _args:Slice<AnyInterface>, _strategy:T_connReuseStrategy):{ var _0 : Result; var _1 : Error; } return __tmp__._exec(_ctx, _query, _args, _strategy);
    public function _execDC(__tmp__, _ctx:stdgo.context.Context.Context, _dc:Pointer<T_driverConn>, _release:Error -> Void, _query:GoString, _args:Slice<AnyInterface>):{ var _0 : Result; var _1 : Error; } return __tmp__._execDC(_ctx, _dc, _release, _query, _args);
    public function queryContext(__tmp__, _ctx:stdgo.context.Context.Context, _query:GoString, _args:haxe.Rest<AnyInterface>):{ var _0 : Pointer<Rows>; var _1 : Error; } return __tmp__.queryContext(_ctx, _query, _args);
    public function query(__tmp__, _query:GoString, _args:haxe.Rest<AnyInterface>):{ var _0 : Pointer<Rows>; var _1 : Error; } return __tmp__.query(_query, _args);
    public function _query(__tmp__, _ctx:stdgo.context.Context.Context, _query:GoString, _args:Slice<AnyInterface>, _strategy:T_connReuseStrategy):{ var _0 : Pointer<Rows>; var _1 : Error; } return __tmp__._query(_ctx, _query, _args, _strategy);
    public function _queryDC(__tmp__, _ctx:stdgo.context.Context.Context, _txctx:stdgo.context.Context.Context, _dc:Pointer<T_driverConn>, _releaseConn:Error -> Void, _query:GoString, _args:Slice<AnyInterface>):{ var _0 : Pointer<Rows>; var _1 : Error; } return __tmp__._queryDC(_ctx, _txctx, _dc, _releaseConn, _query, _args);
    public function queryRowContext(__tmp__, _ctx:stdgo.context.Context.Context, _query:GoString, _args:haxe.Rest<AnyInterface>):Pointer<Row> return __tmp__.queryRowContext(_ctx, _query, _args);
    public function queryRow(__tmp__, _query:GoString, _args:haxe.Rest<AnyInterface>):Pointer<Row> return __tmp__.queryRow(_query, _args);
    public function beginTx(__tmp__, _ctx:stdgo.context.Context.Context, _opts:Pointer<TxOptions>):{ var _0 : Pointer<Tx>; var _1 : Error; } return __tmp__.beginTx(_ctx, _opts);
    public function begin(__tmp__):{ var _0 : Pointer<Tx>; var _1 : Error; } return __tmp__.begin();
    public function _begin(__tmp__, _ctx:stdgo.context.Context.Context, _opts:Pointer<TxOptions>, _strategy:T_connReuseStrategy):{ var _0 : Pointer<Tx>; var _1 : Error; } return __tmp__._begin(_ctx, _opts, _strategy);
    public function _beginDC(__tmp__, _ctx:stdgo.context.Context.Context, _dc:Pointer<T_driverConn>, _release:Error -> Void, _opts:Pointer<TxOptions>):{ var _0 : Pointer<Tx>; var _1 : Error; } return __tmp__._beginDC(_ctx, _dc, _release, _opts);
    public function driver(__tmp__):stdgo.database.sql.driver.Driver.Driver return __tmp__.driver();
    public function conn(__tmp__, _ctx:stdgo.context.Context.Context):{ var _0 : Pointer<Conn>; var _1 : Error; } return __tmp__.conn(_ctx);
}
class T_driverConn_extension_fields {
    public function _releaseConn(__tmp__, _err:Error):Void __tmp__._releaseConn(_err);
    public function _removeOpenStmt(__tmp__, _ds:Pointer<T_driverStmt>):Void __tmp__._removeOpenStmt(_ds);
    public function _expired(__tmp__, _timeout:stdgo.time.Time.Duration):Bool return __tmp__._expired(_timeout);
    public function _resetSession(__tmp__, _ctx:stdgo.context.Context.Context):Error return __tmp__._resetSession(_ctx);
    public function _validateConnection(__tmp__, _needsReset:Bool):Bool return __tmp__._validateConnection(_needsReset);
    public function _prepareLocked(__tmp__, _ctx:stdgo.context.Context.Context, _cg:T_stmtConnGrabber, _query:GoString):{ var _0 : Pointer<T_driverStmt>; var _1 : Error; } return __tmp__._prepareLocked(_ctx, _cg, _query);
    public function _closeDBLocked(__tmp__):() -> Error return __tmp__._closeDBLocked();
    public function close(__tmp__):Error return __tmp__.close();
    public function _finalClose(__tmp__):Error return __tmp__._finalClose();
}
class T_driverStmt_extension_fields {
    public function close(__tmp__):Error return __tmp__.close();
}
class T_dsnConnector_extension_fields {
    public function connect(__tmp__, _:stdgo.context.Context.Context):{ var _0 : stdgo.database.sql.driver.Driver.Conn; var _1 : Error; } return __tmp__.connect(_);
    public function driver(__tmp__):stdgo.database.sql.driver.Driver.Driver return __tmp__.driver();
}
class Conn_extension_fields {
    public function _grabConn(__tmp__, arg0:stdgo.context.Context.Context):{ var _0 : Pointer<T_driverConn>; var _1 : T_releaseConn; var _2 : Error; } return __tmp__._grabConn(arg0);
    public function pingContext(__tmp__, _ctx:stdgo.context.Context.Context):Error return __tmp__.pingContext(_ctx);
    public function execContext(__tmp__, _ctx:stdgo.context.Context.Context, _query:GoString, _args:haxe.Rest<AnyInterface>):{ var _0 : Result; var _1 : Error; } return __tmp__.execContext(_ctx, _query, _args);
    public function queryContext(__tmp__, _ctx:stdgo.context.Context.Context, _query:GoString, _args:haxe.Rest<AnyInterface>):{ var _0 : Pointer<Rows>; var _1 : Error; } return __tmp__.queryContext(_ctx, _query, _args);
    public function queryRowContext(__tmp__, _ctx:stdgo.context.Context.Context, _query:GoString, _args:haxe.Rest<AnyInterface>):Pointer<Row> return __tmp__.queryRowContext(_ctx, _query, _args);
    public function prepareContext(__tmp__, _ctx:stdgo.context.Context.Context, _query:GoString):{ var _0 : Pointer<Stmt>; var _1 : Error; } return __tmp__.prepareContext(_ctx, _query);
    public function raw(__tmp__, _f:(_driverConn:AnyInterface) -> Error):Error return __tmp__.raw(_f);
    public function beginTx(__tmp__, _ctx:stdgo.context.Context.Context, _opts:Pointer<TxOptions>):{ var _0 : Pointer<Tx>; var _1 : Error; } return __tmp__.beginTx(_ctx, _opts);
    public function _closemuRUnlockCondReleaseConn(__tmp__, _err:Error):Void __tmp__._closemuRUnlockCondReleaseConn(_err);
    public function _txCtx(__tmp__):stdgo.context.Context.Context return __tmp__._txCtx();
    public function _close(__tmp__, _err:Error):Error return __tmp__._close(_err);
    public function close(__tmp__):Error return __tmp__.close();
}
class Tx_extension_fields {
    public function _awaitDone(__tmp__):Void __tmp__._awaitDone();
    public function _isDone(__tmp__):Bool return __tmp__._isDone();
    public function _close(__tmp__, _err:Error):Void __tmp__._close(_err);
    public function _grabConn(__tmp__, _ctx:stdgo.context.Context.Context):{ var _0 : Pointer<T_driverConn>; var _1 : T_releaseConn; var _2 : Error; } return __tmp__._grabConn(_ctx);
    public function _txCtx(__tmp__):stdgo.context.Context.Context return __tmp__._txCtx();
    public function _closemuRUnlockRelease(__tmp__, arg0:Error):Void __tmp__._closemuRUnlockRelease(arg0);
    public function _closePrepared(__tmp__):Void __tmp__._closePrepared();
    public function commit(__tmp__):Error return __tmp__.commit();
    public function _rollback(__tmp__, _discardConn:Bool):Error return __tmp__._rollback(_discardConn);
    public function rollback(__tmp__):Error return __tmp__.rollback();
    public function prepareContext(__tmp__, _ctx:stdgo.context.Context.Context, _query:GoString):{ var _0 : Pointer<Stmt>; var _1 : Error; } return __tmp__.prepareContext(_ctx, _query);
    public function prepare(__tmp__, _query:GoString):{ var _0 : Pointer<Stmt>; var _1 : Error; } return __tmp__.prepare(_query);
    public function stmtContext(__tmp__, _ctx:stdgo.context.Context.Context, _stmt:Pointer<Stmt>):Pointer<Stmt> return __tmp__.stmtContext(_ctx, _stmt);
    public function stmt(__tmp__, _stmt:Pointer<Stmt>):Pointer<Stmt> return __tmp__.stmt(_stmt);
    public function execContext(__tmp__, _ctx:stdgo.context.Context.Context, _query:GoString, _args:haxe.Rest<AnyInterface>):{ var _0 : Result; var _1 : Error; } return __tmp__.execContext(_ctx, _query, _args);
    public function exec(__tmp__, _query:GoString, _args:haxe.Rest<AnyInterface>):{ var _0 : Result; var _1 : Error; } return __tmp__.exec(_query, _args);
    public function queryContext(__tmp__, _ctx:stdgo.context.Context.Context, _query:GoString, _args:haxe.Rest<AnyInterface>):{ var _0 : Pointer<Rows>; var _1 : Error; } return __tmp__.queryContext(_ctx, _query, _args);
    public function query(__tmp__, _query:GoString, _args:haxe.Rest<AnyInterface>):{ var _0 : Pointer<Rows>; var _1 : Error; } return __tmp__.query(_query, _args);
    public function queryRowContext(__tmp__, _ctx:stdgo.context.Context.Context, _query:GoString, _args:haxe.Rest<AnyInterface>):Pointer<Row> return __tmp__.queryRowContext(_ctx, _query, _args);
    public function queryRow(__tmp__, _query:GoString, _args:haxe.Rest<AnyInterface>):Pointer<Row> return __tmp__.queryRow(_query, _args);
}
class Stmt_extension_fields {
    public function execContext(__tmp__, _ctx:stdgo.context.Context.Context, _args:haxe.Rest<AnyInterface>):{ var _0 : Result; var _1 : Error; } return __tmp__.execContext(_ctx, _args);
    public function exec(__tmp__, _args:haxe.Rest<AnyInterface>):{ var _0 : Result; var _1 : Error; } return __tmp__.exec(_args);
    public function _removeClosedStmtLocked(__tmp__):Void __tmp__._removeClosedStmtLocked();
    public function _connStmt(__tmp__, _ctx:stdgo.context.Context.Context, _strategy:T_connReuseStrategy):{ var _0 : Pointer<T_driverConn>; var _1 : Error -> Void; var _2 : Pointer<T_driverStmt>; var _3 : Error; } return __tmp__._connStmt(_ctx, _strategy);
    public function _prepareOnConnLocked(__tmp__, _ctx:stdgo.context.Context.Context, _dc:Pointer<T_driverConn>):{ var _0 : Pointer<T_driverStmt>; var _1 : Error; } return __tmp__._prepareOnConnLocked(_ctx, _dc);
    public function queryContext(__tmp__, _ctx:stdgo.context.Context.Context, _args:haxe.Rest<AnyInterface>):{ var _0 : Pointer<Rows>; var _1 : Error; } return __tmp__.queryContext(_ctx, _args);
    public function query(__tmp__, _args:haxe.Rest<AnyInterface>):{ var _0 : Pointer<Rows>; var _1 : Error; } return __tmp__.query(_args);
    public function queryRowContext(__tmp__, _ctx:stdgo.context.Context.Context, _args:haxe.Rest<AnyInterface>):Pointer<Row> return __tmp__.queryRowContext(_ctx, _args);
    public function queryRow(__tmp__, _args:haxe.Rest<AnyInterface>):Pointer<Row> return __tmp__.queryRow(_args);
    public function close(__tmp__):Error return __tmp__.close();
    public function _finalClose(__tmp__):Error return __tmp__._finalClose();
}
class Rows_extension_fields {
    public function _lasterrOrErrLocked(__tmp__, _err:Error):Error return __tmp__._lasterrOrErrLocked(_err);
    public function _initContextClose(__tmp__, _ctx:stdgo.context.Context.Context, _txctx:stdgo.context.Context.Context):Void __tmp__._initContextClose(_ctx, _txctx);
    public function _awaitDone(__tmp__, _ctx:stdgo.context.Context.Context, _txctx:stdgo.context.Context.Context):Void __tmp__._awaitDone(_ctx, _txctx);
    public function next(__tmp__):Bool return __tmp__.next();
    public function _nextLocked(__tmp__):{ var _0 : Bool; var _1 : Bool; } return __tmp__._nextLocked();
    public function nextResultSet(__tmp__):Bool return __tmp__.nextResultSet();
    public function err(__tmp__):Error return __tmp__.err();
    public function columns(__tmp__):{ var _0 : Slice<GoString>; var _1 : Error; } return __tmp__.columns();
    public function columnTypes(__tmp__):{ var _0 : Slice<Pointer<ColumnType>>; var _1 : Error; } return __tmp__.columnTypes();
    public function scan(__tmp__, _dest:haxe.Rest<AnyInterface>):Error return __tmp__.scan(_dest);
    public function close(__tmp__):Error return __tmp__.close();
    public function _close(__tmp__, _err:Error):Error return __tmp__._close(_err);
}
class ColumnType_extension_fields {
    public function name(__tmp__):GoString return __tmp__.name();
    public function length(__tmp__):{ var _0 : GoInt64; var _1 : Bool; } return __tmp__.length();
    public function decimalSize(__tmp__):{ var _0 : GoInt64; var _1 : GoInt64; var _2 : Bool; } return __tmp__.decimalSize();
    public function scanType(__tmp__):stdgo.reflect.Reflect.Type return __tmp__.scanType();
    public function nullable(__tmp__):{ var _0 : Bool; var _1 : Bool; } return __tmp__.nullable();
    public function databaseTypeName(__tmp__):GoString return __tmp__.databaseTypeName();
}
class Row_extension_fields {
    public function scan(__tmp__, _dest:haxe.Rest<AnyInterface>):Error return __tmp__.scan(_dest);
    public function err(__tmp__):Error return __tmp__.err();
}
class T_driverResult_extension_fields {
    public function lastInsertId(__tmp__):{ var _0 : GoInt64; var _1 : Error; } return __tmp__.lastInsertId();
    public function rowsAffected(__tmp__):{ var _0 : GoInt64; var _1 : Error; } return __tmp__.rowsAffected();
}
