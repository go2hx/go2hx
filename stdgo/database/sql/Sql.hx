package stdgo.database.sql;
final levelDefault : IsolationLevel = stdgo._internal.database.sql.Sql_levelDefault.levelDefault;
final levelReadUncommitted = stdgo._internal.database.sql.Sql_levelReadUncommitted.levelReadUncommitted;
final levelReadCommitted = stdgo._internal.database.sql.Sql_levelReadCommitted.levelReadCommitted;
final levelWriteCommitted = stdgo._internal.database.sql.Sql_levelWriteCommitted.levelWriteCommitted;
final levelRepeatableRead = stdgo._internal.database.sql.Sql_levelRepeatableRead.levelRepeatableRead;
final levelSnapshot = stdgo._internal.database.sql.Sql_levelSnapshot.levelSnapshot;
final levelSerializable = stdgo._internal.database.sql.Sql_levelSerializable.levelSerializable;
final levelLinearizable = stdgo._internal.database.sql.Sql_levelLinearizable.levelLinearizable;
var errNoRows(get, set) : stdgo.Error;
private function get_errNoRows():stdgo.Error return stdgo._internal.database.sql.Sql_errNoRows.errNoRows;
private function set_errNoRows(v:stdgo.Error):stdgo.Error {
        stdgo._internal.database.sql.Sql_errNoRows.errNoRows = v;
        return v;
    }
var errConnDone(get, set) : stdgo.Error;
private function get_errConnDone():stdgo.Error return stdgo._internal.database.sql.Sql_errConnDone.errConnDone;
private function set_errConnDone(v:stdgo.Error):stdgo.Error {
        stdgo._internal.database.sql.Sql_errConnDone.errConnDone = v;
        return v;
    }
var errTxDone(get, set) : stdgo.Error;
private function get_errTxDone():stdgo.Error return stdgo._internal.database.sql.Sql_errTxDone.errTxDone;
private function set_errTxDone(v:stdgo.Error):stdgo.Error {
        stdgo._internal.database.sql.Sql_errTxDone.errTxDone = v;
        return v;
    }
class T_decimal_static_extension {

}
typedef T_decimal = stdgo._internal.database.sql.Sql_T_decimal.T_decimal;
class T_decimalDecompose_static_extension {
    static public function decompose(t:stdgo._internal.database.sql.Sql_T_decimalDecompose.T_decimalDecompose, _buf:Array<std.UInt>):stdgo.Tuple.Tuple4<std.UInt, Bool, Array<std.UInt>, StdTypes.Int> {
        final _buf = ([for (i in _buf) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.database.sql.Sql_T_decimalDecompose_static_extension.T_decimalDecompose_static_extension.decompose(t, _buf);
            { _0 : obj._0, _1 : obj._1, _2 : [for (i in obj._2) i], _3 : obj._3 };
        };
    }
}
typedef T_decimalDecompose = stdgo._internal.database.sql.Sql_T_decimalDecompose.T_decimalDecompose;
class T_decimalCompose_static_extension {
    static public function compose(t:stdgo._internal.database.sql.Sql_T_decimalCompose.T_decimalCompose, _form:std.UInt, _negative:Bool, _coefficient:Array<std.UInt>, _exponent:StdTypes.Int):stdgo.Error {
        final _coefficient = ([for (i in _coefficient) i] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.database.sql.Sql_T_decimalCompose_static_extension.T_decimalCompose_static_extension.compose(t, _form, _negative, _coefficient, _exponent);
    }
}
typedef T_decimalCompose = stdgo._internal.database.sql.Sql_T_decimalCompose.T_decimalCompose;
class Scanner_static_extension {
    static public function scan(t:stdgo._internal.database.sql.Sql_Scanner.Scanner, _src:stdgo.AnyInterface):stdgo.Error {
        return stdgo._internal.database.sql.Sql_Scanner_static_extension.Scanner_static_extension.scan(t, _src);
    }
}
typedef Scanner = stdgo._internal.database.sql.Sql_Scanner.Scanner;
class T_finalCloser_static_extension {
    static public function _finalClose(t:stdgo._internal.database.sql.Sql_T_finalCloser.T_finalCloser):stdgo.Error {
        return stdgo._internal.database.sql.Sql_T_finalCloser_static_extension.T_finalCloser_static_extension._finalClose(t);
    }
}
typedef T_finalCloser = stdgo._internal.database.sql.Sql_T_finalCloser.T_finalCloser;
class T_stmtConnGrabber_static_extension {
    static public function _txCtx(t:stdgo._internal.database.sql.Sql_T_stmtConnGrabber.T_stmtConnGrabber):stdgo._internal.context.Context_Context.Context {
        return stdgo._internal.database.sql.Sql_T_stmtConnGrabber_static_extension.T_stmtConnGrabber_static_extension._txCtx(t);
    }
    static public function _grabConn(t:stdgo._internal.database.sql.Sql_T_stmtConnGrabber.T_stmtConnGrabber, _0:stdgo._internal.context.Context_Context.Context):stdgo.Tuple.Tuple3<T_driverConn, T_releaseConn, stdgo.Error> {
        return {
            final obj = stdgo._internal.database.sql.Sql_T_stmtConnGrabber_static_extension.T_stmtConnGrabber_static_extension._grabConn(t, _0);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
}
typedef T_stmtConnGrabber = stdgo._internal.database.sql.Sql_T_stmtConnGrabber.T_stmtConnGrabber;
class Result_static_extension {
    static public function rowsAffected(t:stdgo._internal.database.sql.Sql_Result.Result):stdgo.Tuple<haxe.Int64, stdgo.Error> {
        return {
            final obj = stdgo._internal.database.sql.Sql_Result_static_extension.Result_static_extension.rowsAffected(t);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function lastInsertId(t:stdgo._internal.database.sql.Sql_Result.Result):stdgo.Tuple<haxe.Int64, stdgo.Error> {
        return {
            final obj = stdgo._internal.database.sql.Sql_Result_static_extension.Result_static_extension.lastInsertId(t);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
typedef Result = stdgo._internal.database.sql.Sql_Result.Result;
@:structInit @:using(stdgo.database.sql.Sql.T_ccChecker_static_extension) abstract T_ccChecker(stdgo._internal.database.sql.Sql_T_ccChecker.T_ccChecker) from stdgo._internal.database.sql.Sql_T_ccChecker.T_ccChecker to stdgo._internal.database.sql.Sql_T_ccChecker.T_ccChecker {
    public var _cci(get, set) : ColumnConverter;
    function get__cci():ColumnConverter return this._cci;
    function set__cci(v:ColumnConverter):ColumnConverter {
        this._cci = v;
        return v;
    }
    public var _want(get, set) : StdTypes.Int;
    function get__want():StdTypes.Int return this._want;
    function set__want(v:StdTypes.Int):StdTypes.Int {
        this._want = v;
        return v;
    }
    public function new(?_cci:ColumnConverter, ?_want:StdTypes.Int) this = new stdgo._internal.database.sql.Sql_T_ccChecker.T_ccChecker(_cci, _want);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract NamedArg(stdgo._internal.database.sql.Sql_NamedArg.NamedArg) from stdgo._internal.database.sql.Sql_NamedArg.NamedArg to stdgo._internal.database.sql.Sql_NamedArg.NamedArg {
    public var __NamedFieldsRequired(get, set) : stdgo.Tuple.Tuple0;
    function get___NamedFieldsRequired():stdgo.Tuple.Tuple0 return {
        final obj = this.__NamedFieldsRequired;
        {  };
    };
    function set___NamedFieldsRequired(v:stdgo.Tuple.Tuple0):stdgo.Tuple.Tuple0 {
        this.__NamedFieldsRequired = {
            final obj = v;
            {  };
        };
        return v;
    }
    public var name(get, set) : String;
    function get_name():String return this.name;
    function set_name(v:String):String {
        this.name = v;
        return v;
    }
    public var value(get, set) : stdgo.AnyInterface;
    function get_value():stdgo.AnyInterface return this.value;
    function set_value(v:stdgo.AnyInterface):stdgo.AnyInterface {
        this.value = v;
        return v;
    }
    public function new(?__NamedFieldsRequired:stdgo.Tuple.Tuple0, ?name:String, ?value:stdgo.AnyInterface) this = new stdgo._internal.database.sql.Sql_NamedArg.NamedArg({
        final obj = __NamedFieldsRequired;
        {  };
    }, name, value);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract TxOptions(stdgo._internal.database.sql.Sql_TxOptions.TxOptions) from stdgo._internal.database.sql.Sql_TxOptions.TxOptions to stdgo._internal.database.sql.Sql_TxOptions.TxOptions {
    public var isolation(get, set) : IsolationLevel;
    function get_isolation():IsolationLevel return this.isolation;
    function set_isolation(v:IsolationLevel):IsolationLevel {
        this.isolation = v;
        return v;
    }
    public var readOnly(get, set) : Bool;
    function get_readOnly():Bool return this.readOnly;
    function set_readOnly(v:Bool):Bool {
        this.readOnly = v;
        return v;
    }
    public function new(?isolation:IsolationLevel, ?readOnly:Bool) this = new stdgo._internal.database.sql.Sql_TxOptions.TxOptions(isolation, readOnly);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.database.sql.Sql.NullString_static_extension) abstract NullString(stdgo._internal.database.sql.Sql_NullString.NullString) from stdgo._internal.database.sql.Sql_NullString.NullString to stdgo._internal.database.sql.Sql_NullString.NullString {
    public var string(get, set) : String;
    function get_string():String return this.string;
    function set_string(v:String):String {
        this.string = v;
        return v;
    }
    public var valid(get, set) : Bool;
    function get_valid():Bool return this.valid;
    function set_valid(v:Bool):Bool {
        this.valid = v;
        return v;
    }
    public function new(?string:String, ?valid:Bool) this = new stdgo._internal.database.sql.Sql_NullString.NullString(string, valid);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.database.sql.Sql.NullInt64_static_extension) abstract NullInt64(stdgo._internal.database.sql.Sql_NullInt64.NullInt64) from stdgo._internal.database.sql.Sql_NullInt64.NullInt64 to stdgo._internal.database.sql.Sql_NullInt64.NullInt64 {
    public var int64(get, set) : haxe.Int64;
    function get_int64():haxe.Int64 return this.int64;
    function set_int64(v:haxe.Int64):haxe.Int64 {
        this.int64 = v;
        return v;
    }
    public var valid(get, set) : Bool;
    function get_valid():Bool return this.valid;
    function set_valid(v:Bool):Bool {
        this.valid = v;
        return v;
    }
    public function new(?int64:haxe.Int64, ?valid:Bool) this = new stdgo._internal.database.sql.Sql_NullInt64.NullInt64(int64, valid);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.database.sql.Sql.NullInt32_static_extension) abstract NullInt32(stdgo._internal.database.sql.Sql_NullInt32.NullInt32) from stdgo._internal.database.sql.Sql_NullInt32.NullInt32 to stdgo._internal.database.sql.Sql_NullInt32.NullInt32 {
    public var int32(get, set) : StdTypes.Int;
    function get_int32():StdTypes.Int return this.int32;
    function set_int32(v:StdTypes.Int):StdTypes.Int {
        this.int32 = v;
        return v;
    }
    public var valid(get, set) : Bool;
    function get_valid():Bool return this.valid;
    function set_valid(v:Bool):Bool {
        this.valid = v;
        return v;
    }
    public function new(?int32:StdTypes.Int, ?valid:Bool) this = new stdgo._internal.database.sql.Sql_NullInt32.NullInt32(int32, valid);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.database.sql.Sql.NullInt16_static_extension) abstract NullInt16(stdgo._internal.database.sql.Sql_NullInt16.NullInt16) from stdgo._internal.database.sql.Sql_NullInt16.NullInt16 to stdgo._internal.database.sql.Sql_NullInt16.NullInt16 {
    public var int16(get, set) : StdTypes.Int;
    function get_int16():StdTypes.Int return this.int16;
    function set_int16(v:StdTypes.Int):StdTypes.Int {
        this.int16 = v;
        return v;
    }
    public var valid(get, set) : Bool;
    function get_valid():Bool return this.valid;
    function set_valid(v:Bool):Bool {
        this.valid = v;
        return v;
    }
    public function new(?int16:StdTypes.Int, ?valid:Bool) this = new stdgo._internal.database.sql.Sql_NullInt16.NullInt16(int16, valid);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.database.sql.Sql.NullByte_static_extension) abstract NullByte(stdgo._internal.database.sql.Sql_NullByte.NullByte) from stdgo._internal.database.sql.Sql_NullByte.NullByte to stdgo._internal.database.sql.Sql_NullByte.NullByte {
    public var byte(get, set) : std.UInt;
    function get_byte():std.UInt return this.byte;
    function set_byte(v:std.UInt):std.UInt {
        this.byte = v;
        return v;
    }
    public var valid(get, set) : Bool;
    function get_valid():Bool return this.valid;
    function set_valid(v:Bool):Bool {
        this.valid = v;
        return v;
    }
    public function new(?byte:std.UInt, ?valid:Bool) this = new stdgo._internal.database.sql.Sql_NullByte.NullByte(byte, valid);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.database.sql.Sql.NullFloat64_static_extension) abstract NullFloat64(stdgo._internal.database.sql.Sql_NullFloat64.NullFloat64) from stdgo._internal.database.sql.Sql_NullFloat64.NullFloat64 to stdgo._internal.database.sql.Sql_NullFloat64.NullFloat64 {
    public var float64(get, set) : StdTypes.Float;
    function get_float64():StdTypes.Float return this.float64;
    function set_float64(v:StdTypes.Float):StdTypes.Float {
        this.float64 = v;
        return v;
    }
    public var valid(get, set) : Bool;
    function get_valid():Bool return this.valid;
    function set_valid(v:Bool):Bool {
        this.valid = v;
        return v;
    }
    public function new(?float64:StdTypes.Float, ?valid:Bool) this = new stdgo._internal.database.sql.Sql_NullFloat64.NullFloat64(float64, valid);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.database.sql.Sql.NullBool_static_extension) abstract NullBool(stdgo._internal.database.sql.Sql_NullBool.NullBool) from stdgo._internal.database.sql.Sql_NullBool.NullBool to stdgo._internal.database.sql.Sql_NullBool.NullBool {
    public var bool_(get, set) : Bool;
    function get_bool_():Bool return this.bool_;
    function set_bool_(v:Bool):Bool {
        this.bool_ = v;
        return v;
    }
    public var valid(get, set) : Bool;
    function get_valid():Bool return this.valid;
    function set_valid(v:Bool):Bool {
        this.valid = v;
        return v;
    }
    public function new(?bool_:Bool, ?valid:Bool) this = new stdgo._internal.database.sql.Sql_NullBool.NullBool(bool_, valid);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.database.sql.Sql.NullTime_static_extension) abstract NullTime(stdgo._internal.database.sql.Sql_NullTime.NullTime) from stdgo._internal.database.sql.Sql_NullTime.NullTime to stdgo._internal.database.sql.Sql_NullTime.NullTime {
    public var time(get, set) : stdgo._internal.time.Time_Time.Time;
    function get_time():stdgo._internal.time.Time_Time.Time return this.time;
    function set_time(v:stdgo._internal.time.Time_Time.Time):stdgo._internal.time.Time_Time.Time {
        this.time = v;
        return v;
    }
    public var valid(get, set) : Bool;
    function get_valid():Bool return this.valid;
    function set_valid(v:Bool):Bool {
        this.valid = v;
        return v;
    }
    public function new(?time:stdgo._internal.time.Time_Time.Time, ?valid:Bool) this = new stdgo._internal.database.sql.Sql_NullTime.NullTime(time, valid);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract Out(stdgo._internal.database.sql.Sql_Out.Out) from stdgo._internal.database.sql.Sql_Out.Out to stdgo._internal.database.sql.Sql_Out.Out {
    public var __NamedFieldsRequired(get, set) : stdgo.Tuple.Tuple0;
    function get___NamedFieldsRequired():stdgo.Tuple.Tuple0 return {
        final obj = this.__NamedFieldsRequired;
        {  };
    };
    function set___NamedFieldsRequired(v:stdgo.Tuple.Tuple0):stdgo.Tuple.Tuple0 {
        this.__NamedFieldsRequired = {
            final obj = v;
            {  };
        };
        return v;
    }
    public var dest(get, set) : stdgo.AnyInterface;
    function get_dest():stdgo.AnyInterface return this.dest;
    function set_dest(v:stdgo.AnyInterface):stdgo.AnyInterface {
        this.dest = v;
        return v;
    }
    public var in_(get, set) : Bool;
    function get_in_():Bool return this.in_;
    function set_in_(v:Bool):Bool {
        this.in_ = v;
        return v;
    }
    public function new(?__NamedFieldsRequired:stdgo.Tuple.Tuple0, ?dest:stdgo.AnyInterface, ?in_:Bool) this = new stdgo._internal.database.sql.Sql_Out.Out({
        final obj = __NamedFieldsRequired;
        {  };
    }, dest, in_);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.database.sql.Sql.DB_static_extension) abstract DB(stdgo._internal.database.sql.Sql_DB.DB) from stdgo._internal.database.sql.Sql_DB.DB to stdgo._internal.database.sql.Sql_DB.DB {
    public var _waitDuration(get, set) : stdgo._internal.sync.atomic_.Atomic__Int64_.Int64_;
    function get__waitDuration():stdgo._internal.sync.atomic_.Atomic__Int64_.Int64_ return this._waitDuration;
    function set__waitDuration(v:stdgo._internal.sync.atomic_.Atomic__Int64_.Int64_):stdgo._internal.sync.atomic_.Atomic__Int64_.Int64_ {
        this._waitDuration = v;
        return v;
    }
    public var _connector(get, set) : Connector;
    function get__connector():Connector return this._connector;
    function set__connector(v:Connector):Connector {
        this._connector = v;
        return v;
    }
    public var _numClosed(get, set) : stdgo._internal.sync.atomic_.Atomic__Uint64.Uint64;
    function get__numClosed():stdgo._internal.sync.atomic_.Atomic__Uint64.Uint64 return this._numClosed;
    function set__numClosed(v:stdgo._internal.sync.atomic_.Atomic__Uint64.Uint64):stdgo._internal.sync.atomic_.Atomic__Uint64.Uint64 {
        this._numClosed = v;
        return v;
    }
    public var _mu(get, set) : stdgo._internal.sync.Sync_Mutex.Mutex;
    function get__mu():stdgo._internal.sync.Sync_Mutex.Mutex return this._mu;
    function set__mu(v:stdgo._internal.sync.Sync_Mutex.Mutex):stdgo._internal.sync.Sync_Mutex.Mutex {
        this._mu = v;
        return v;
    }
    public var _freeConn(get, set) : Array<T_driverConn>;
    function get__freeConn():Array<T_driverConn> return [for (i in this._freeConn) i];
    function set__freeConn(v:Array<T_driverConn>):Array<T_driverConn> {
        this._freeConn = ([for (i in v) i] : stdgo.Slice<stdgo.Ref<stdgo._internal.database.sql.Sql_T_driverConn.T_driverConn>>);
        return v;
    }
    public var _connRequests(get, set) : stdgo.GoMap<stdgo.GoUInt64, stdgo.Chan<stdgo._internal.database.sql.Sql_T_connRequest.T_connRequest>>;
    function get__connRequests():stdgo.GoMap<stdgo.GoUInt64, stdgo.Chan<stdgo._internal.database.sql.Sql_T_connRequest.T_connRequest>> return this._connRequests;
    function set__connRequests(v:stdgo.GoMap<stdgo.GoUInt64, stdgo.Chan<stdgo._internal.database.sql.Sql_T_connRequest.T_connRequest>>):stdgo.GoMap<stdgo.GoUInt64, stdgo.Chan<stdgo._internal.database.sql.Sql_T_connRequest.T_connRequest>> {
        this._connRequests = v;
        return v;
    }
    public var _nextRequest(get, set) : haxe.UInt64;
    function get__nextRequest():haxe.UInt64 return this._nextRequest;
    function set__nextRequest(v:haxe.UInt64):haxe.UInt64 {
        this._nextRequest = v;
        return v;
    }
    public var _numOpen(get, set) : StdTypes.Int;
    function get__numOpen():StdTypes.Int return this._numOpen;
    function set__numOpen(v:StdTypes.Int):StdTypes.Int {
        this._numOpen = v;
        return v;
    }
    public var _openerCh(get, set) : stdgo.Chan<{ }>;
    function get__openerCh():stdgo.Chan<{ }> return this._openerCh;
    function set__openerCh(v:stdgo.Chan<{ }>):stdgo.Chan<{ }> {
        this._openerCh = v;
        return v;
    }
    public var _closed(get, set) : Bool;
    function get__closed():Bool return this._closed;
    function set__closed(v:Bool):Bool {
        this._closed = v;
        return v;
    }
    public var _dep(get, set) : stdgo.GoMap<stdgo._internal.database.sql.Sql_T_finalCloser.T_finalCloser, stdgo._internal.database.sql.Sql_T_depSet.T_depSet>;
    function get__dep():stdgo.GoMap<stdgo._internal.database.sql.Sql_T_finalCloser.T_finalCloser, stdgo._internal.database.sql.Sql_T_depSet.T_depSet> return this._dep;
    function set__dep(v:stdgo.GoMap<stdgo._internal.database.sql.Sql_T_finalCloser.T_finalCloser, stdgo._internal.database.sql.Sql_T_depSet.T_depSet>):stdgo.GoMap<stdgo._internal.database.sql.Sql_T_finalCloser.T_finalCloser, stdgo._internal.database.sql.Sql_T_depSet.T_depSet> {
        this._dep = v;
        return v;
    }
    public var _lastPut(get, set) : stdgo.GoMap<stdgo.Ref<stdgo._internal.database.sql.Sql_T_driverConn.T_driverConn>, stdgo.GoString>;
    function get__lastPut():stdgo.GoMap<stdgo.Ref<stdgo._internal.database.sql.Sql_T_driverConn.T_driverConn>, stdgo.GoString> return this._lastPut;
    function set__lastPut(v:stdgo.GoMap<stdgo.Ref<stdgo._internal.database.sql.Sql_T_driverConn.T_driverConn>, stdgo.GoString>):stdgo.GoMap<stdgo.Ref<stdgo._internal.database.sql.Sql_T_driverConn.T_driverConn>, stdgo.GoString> {
        this._lastPut = v;
        return v;
    }
    public var _maxIdleCount(get, set) : StdTypes.Int;
    function get__maxIdleCount():StdTypes.Int return this._maxIdleCount;
    function set__maxIdleCount(v:StdTypes.Int):StdTypes.Int {
        this._maxIdleCount = v;
        return v;
    }
    public var _maxOpen(get, set) : StdTypes.Int;
    function get__maxOpen():StdTypes.Int return this._maxOpen;
    function set__maxOpen(v:StdTypes.Int):StdTypes.Int {
        this._maxOpen = v;
        return v;
    }
    public var _maxLifetime(get, set) : stdgo._internal.time.Time_Duration.Duration;
    function get__maxLifetime():stdgo._internal.time.Time_Duration.Duration return this._maxLifetime;
    function set__maxLifetime(v:stdgo._internal.time.Time_Duration.Duration):stdgo._internal.time.Time_Duration.Duration {
        this._maxLifetime = v;
        return v;
    }
    public var _maxIdleTime(get, set) : stdgo._internal.time.Time_Duration.Duration;
    function get__maxIdleTime():stdgo._internal.time.Time_Duration.Duration return this._maxIdleTime;
    function set__maxIdleTime(v:stdgo._internal.time.Time_Duration.Duration):stdgo._internal.time.Time_Duration.Duration {
        this._maxIdleTime = v;
        return v;
    }
    public var _cleanerCh(get, set) : stdgo.Chan<{ }>;
    function get__cleanerCh():stdgo.Chan<{ }> return this._cleanerCh;
    function set__cleanerCh(v:stdgo.Chan<{ }>):stdgo.Chan<{ }> {
        this._cleanerCh = v;
        return v;
    }
    public var _waitCount(get, set) : haxe.Int64;
    function get__waitCount():haxe.Int64 return this._waitCount;
    function set__waitCount(v:haxe.Int64):haxe.Int64 {
        this._waitCount = v;
        return v;
    }
    public var _maxIdleClosed(get, set) : haxe.Int64;
    function get__maxIdleClosed():haxe.Int64 return this._maxIdleClosed;
    function set__maxIdleClosed(v:haxe.Int64):haxe.Int64 {
        this._maxIdleClosed = v;
        return v;
    }
    public var _maxIdleTimeClosed(get, set) : haxe.Int64;
    function get__maxIdleTimeClosed():haxe.Int64 return this._maxIdleTimeClosed;
    function set__maxIdleTimeClosed(v:haxe.Int64):haxe.Int64 {
        this._maxIdleTimeClosed = v;
        return v;
    }
    public var _maxLifetimeClosed(get, set) : haxe.Int64;
    function get__maxLifetimeClosed():haxe.Int64 return this._maxLifetimeClosed;
    function set__maxLifetimeClosed(v:haxe.Int64):haxe.Int64 {
        this._maxLifetimeClosed = v;
        return v;
    }
    public var _stop(get, set) : () -> Void;
    function get__stop():() -> Void return () -> this._stop();
    function set__stop(v:() -> Void):() -> Void {
        this._stop = v;
        return v;
    }
    public function new(?_waitDuration:stdgo._internal.sync.atomic_.Atomic__Int64_.Int64_, ?_connector:Connector, ?_numClosed:stdgo._internal.sync.atomic_.Atomic__Uint64.Uint64, ?_mu:stdgo._internal.sync.Sync_Mutex.Mutex, ?_freeConn:Array<T_driverConn>, ?_connRequests:stdgo.GoMap<stdgo.GoUInt64, stdgo.Chan<stdgo._internal.database.sql.Sql_T_connRequest.T_connRequest>>, ?_nextRequest:haxe.UInt64, ?_numOpen:StdTypes.Int, ?_openerCh:stdgo.Chan<{ }>, ?_closed:Bool, ?_dep:stdgo.GoMap<stdgo._internal.database.sql.Sql_T_finalCloser.T_finalCloser, stdgo._internal.database.sql.Sql_T_depSet.T_depSet>, ?_lastPut:stdgo.GoMap<stdgo.Ref<stdgo._internal.database.sql.Sql_T_driverConn.T_driverConn>, stdgo.GoString>, ?_maxIdleCount:StdTypes.Int, ?_maxOpen:StdTypes.Int, ?_maxLifetime:stdgo._internal.time.Time_Duration.Duration, ?_maxIdleTime:stdgo._internal.time.Time_Duration.Duration, ?_cleanerCh:stdgo.Chan<{ }>, ?_waitCount:haxe.Int64, ?_maxIdleClosed:haxe.Int64, ?_maxIdleTimeClosed:haxe.Int64, ?_maxLifetimeClosed:haxe.Int64, ?_stop:() -> Void) this = new stdgo._internal.database.sql.Sql_DB.DB(
_waitDuration,
_connector,
_numClosed,
_mu,
([for (i in _freeConn) i] : stdgo.Slice<stdgo.Ref<stdgo._internal.database.sql.Sql_T_driverConn.T_driverConn>>),
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
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.database.sql.Sql.T_driverConn_static_extension) abstract T_driverConn(stdgo._internal.database.sql.Sql_T_driverConn.T_driverConn) from stdgo._internal.database.sql.Sql_T_driverConn.T_driverConn to stdgo._internal.database.sql.Sql_T_driverConn.T_driverConn {
    public var _db(get, set) : DB;
    function get__db():DB return this._db;
    function set__db(v:DB):DB {
        this._db = v;
        return v;
    }
    public var _createdAt(get, set) : stdgo._internal.time.Time_Time.Time;
    function get__createdAt():stdgo._internal.time.Time_Time.Time return this._createdAt;
    function set__createdAt(v:stdgo._internal.time.Time_Time.Time):stdgo._internal.time.Time_Time.Time {
        this._createdAt = v;
        return v;
    }
    public var mutex(get, set) : stdgo._internal.sync.Sync_Mutex.Mutex;
    function get_mutex():stdgo._internal.sync.Sync_Mutex.Mutex return this.mutex;
    function set_mutex(v:stdgo._internal.sync.Sync_Mutex.Mutex):stdgo._internal.sync.Sync_Mutex.Mutex {
        this.mutex = v;
        return v;
    }
    public var _ci(get, set) : Conn;
    function get__ci():Conn return this._ci;
    function set__ci(v:Conn):Conn {
        this._ci = v;
        return v;
    }
    public var _needReset(get, set) : Bool;
    function get__needReset():Bool return this._needReset;
    function set__needReset(v:Bool):Bool {
        this._needReset = v;
        return v;
    }
    public var _closed(get, set) : Bool;
    function get__closed():Bool return this._closed;
    function set__closed(v:Bool):Bool {
        this._closed = v;
        return v;
    }
    public var _finalClosed(get, set) : Bool;
    function get__finalClosed():Bool return this._finalClosed;
    function set__finalClosed(v:Bool):Bool {
        this._finalClosed = v;
        return v;
    }
    public var _openStmt(get, set) : stdgo.GoMap<stdgo.Ref<stdgo._internal.database.sql.Sql_T_driverStmt.T_driverStmt>, Bool>;
    function get__openStmt():stdgo.GoMap<stdgo.Ref<stdgo._internal.database.sql.Sql_T_driverStmt.T_driverStmt>, Bool> return this._openStmt;
    function set__openStmt(v:stdgo.GoMap<stdgo.Ref<stdgo._internal.database.sql.Sql_T_driverStmt.T_driverStmt>, Bool>):stdgo.GoMap<stdgo.Ref<stdgo._internal.database.sql.Sql_T_driverStmt.T_driverStmt>, Bool> {
        this._openStmt = v;
        return v;
    }
    public var _inUse(get, set) : Bool;
    function get__inUse():Bool return this._inUse;
    function set__inUse(v:Bool):Bool {
        this._inUse = v;
        return v;
    }
    public var _returnedAt(get, set) : stdgo._internal.time.Time_Time.Time;
    function get__returnedAt():stdgo._internal.time.Time_Time.Time return this._returnedAt;
    function set__returnedAt(v:stdgo._internal.time.Time_Time.Time):stdgo._internal.time.Time_Time.Time {
        this._returnedAt = v;
        return v;
    }
    public var _onPut(get, set) : Array<() -> Void>;
    function get__onPut():Array<() -> Void> return [for (i in this._onPut) () -> i()];
    function set__onPut(v:Array<() -> Void>):Array<() -> Void> {
        this._onPut = ([for (i in v) i] : stdgo.Slice<() -> Void>);
        return v;
    }
    public var _dbmuClosed(get, set) : Bool;
    function get__dbmuClosed():Bool return this._dbmuClosed;
    function set__dbmuClosed(v:Bool):Bool {
        this._dbmuClosed = v;
        return v;
    }
    public function new(?_db:DB, ?_createdAt:stdgo._internal.time.Time_Time.Time, ?mutex:stdgo._internal.sync.Sync_Mutex.Mutex, ?_ci:Conn, ?_needReset:Bool, ?_closed:Bool, ?_finalClosed:Bool, ?_openStmt:stdgo.GoMap<stdgo.Ref<stdgo._internal.database.sql.Sql_T_driverStmt.T_driverStmt>, Bool>, ?_inUse:Bool, ?_returnedAt:stdgo._internal.time.Time_Time.Time, ?_onPut:Array<() -> Void>, ?_dbmuClosed:Bool) this = new stdgo._internal.database.sql.Sql_T_driverConn.T_driverConn(
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
([for (i in _onPut) i] : stdgo.Slice<() -> Void>),
_dbmuClosed);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.database.sql.Sql.T_driverStmt_static_extension) abstract T_driverStmt(stdgo._internal.database.sql.Sql_T_driverStmt.T_driverStmt) from stdgo._internal.database.sql.Sql_T_driverStmt.T_driverStmt to stdgo._internal.database.sql.Sql_T_driverStmt.T_driverStmt {
    public var locker(get, set) : stdgo._internal.sync.Sync_Locker.Locker;
    function get_locker():stdgo._internal.sync.Sync_Locker.Locker return this.locker;
    function set_locker(v:stdgo._internal.sync.Sync_Locker.Locker):stdgo._internal.sync.Sync_Locker.Locker {
        this.locker = v;
        return v;
    }
    public var _si(get, set) : Stmt;
    function get__si():Stmt return this._si;
    function set__si(v:Stmt):Stmt {
        this._si = v;
        return v;
    }
    public var _closed(get, set) : Bool;
    function get__closed():Bool return this._closed;
    function set__closed(v:Bool):Bool {
        this._closed = v;
        return v;
    }
    public var _closeErr(get, set) : stdgo.Error;
    function get__closeErr():stdgo.Error return this._closeErr;
    function set__closeErr(v:stdgo.Error):stdgo.Error {
        this._closeErr = v;
        return v;
    }
    public function new(?locker:stdgo._internal.sync.Sync_Locker.Locker, ?_si:Stmt, ?_closed:Bool, ?_closeErr:stdgo.Error) this = new stdgo._internal.database.sql.Sql_T_driverStmt.T_driverStmt(locker, _si, _closed, _closeErr);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.database.sql.Sql.T_dsnConnector_static_extension) abstract T_dsnConnector(stdgo._internal.database.sql.Sql_T_dsnConnector.T_dsnConnector) from stdgo._internal.database.sql.Sql_T_dsnConnector.T_dsnConnector to stdgo._internal.database.sql.Sql_T_dsnConnector.T_dsnConnector {
    public var _dsn(get, set) : String;
    function get__dsn():String return this._dsn;
    function set__dsn(v:String):String {
        this._dsn = v;
        return v;
    }
    public var _driver(get, set) : Driver;
    function get__driver():Driver return this._driver;
    function set__driver(v:Driver):Driver {
        this._driver = v;
        return v;
    }
    public function new(?_dsn:String, ?_driver:Driver) this = new stdgo._internal.database.sql.Sql_T_dsnConnector.T_dsnConnector(_dsn, _driver);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract DBStats(stdgo._internal.database.sql.Sql_DBStats.DBStats) from stdgo._internal.database.sql.Sql_DBStats.DBStats to stdgo._internal.database.sql.Sql_DBStats.DBStats {
    public var maxOpenConnections(get, set) : StdTypes.Int;
    function get_maxOpenConnections():StdTypes.Int return this.maxOpenConnections;
    function set_maxOpenConnections(v:StdTypes.Int):StdTypes.Int {
        this.maxOpenConnections = v;
        return v;
    }
    public var openConnections(get, set) : StdTypes.Int;
    function get_openConnections():StdTypes.Int return this.openConnections;
    function set_openConnections(v:StdTypes.Int):StdTypes.Int {
        this.openConnections = v;
        return v;
    }
    public var inUse(get, set) : StdTypes.Int;
    function get_inUse():StdTypes.Int return this.inUse;
    function set_inUse(v:StdTypes.Int):StdTypes.Int {
        this.inUse = v;
        return v;
    }
    public var idle(get, set) : StdTypes.Int;
    function get_idle():StdTypes.Int return this.idle;
    function set_idle(v:StdTypes.Int):StdTypes.Int {
        this.idle = v;
        return v;
    }
    public var waitCount(get, set) : haxe.Int64;
    function get_waitCount():haxe.Int64 return this.waitCount;
    function set_waitCount(v:haxe.Int64):haxe.Int64 {
        this.waitCount = v;
        return v;
    }
    public var waitDuration(get, set) : stdgo._internal.time.Time_Duration.Duration;
    function get_waitDuration():stdgo._internal.time.Time_Duration.Duration return this.waitDuration;
    function set_waitDuration(v:stdgo._internal.time.Time_Duration.Duration):stdgo._internal.time.Time_Duration.Duration {
        this.waitDuration = v;
        return v;
    }
    public var maxIdleClosed(get, set) : haxe.Int64;
    function get_maxIdleClosed():haxe.Int64 return this.maxIdleClosed;
    function set_maxIdleClosed(v:haxe.Int64):haxe.Int64 {
        this.maxIdleClosed = v;
        return v;
    }
    public var maxIdleTimeClosed(get, set) : haxe.Int64;
    function get_maxIdleTimeClosed():haxe.Int64 return this.maxIdleTimeClosed;
    function set_maxIdleTimeClosed(v:haxe.Int64):haxe.Int64 {
        this.maxIdleTimeClosed = v;
        return v;
    }
    public var maxLifetimeClosed(get, set) : haxe.Int64;
    function get_maxLifetimeClosed():haxe.Int64 return this.maxLifetimeClosed;
    function set_maxLifetimeClosed(v:haxe.Int64):haxe.Int64 {
        this.maxLifetimeClosed = v;
        return v;
    }
    public function new(?maxOpenConnections:StdTypes.Int, ?openConnections:StdTypes.Int, ?inUse:StdTypes.Int, ?idle:StdTypes.Int, ?waitCount:haxe.Int64, ?waitDuration:stdgo._internal.time.Time_Duration.Duration, ?maxIdleClosed:haxe.Int64, ?maxIdleTimeClosed:haxe.Int64, ?maxLifetimeClosed:haxe.Int64) this = new stdgo._internal.database.sql.Sql_DBStats.DBStats(maxOpenConnections, openConnections, inUse, idle, waitCount, waitDuration, maxIdleClosed, maxIdleTimeClosed, maxLifetimeClosed);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract T_connRequest(stdgo._internal.database.sql.Sql_T_connRequest.T_connRequest) from stdgo._internal.database.sql.Sql_T_connRequest.T_connRequest to stdgo._internal.database.sql.Sql_T_connRequest.T_connRequest {
    public var _conn(get, set) : T_driverConn;
    function get__conn():T_driverConn return this._conn;
    function set__conn(v:T_driverConn):T_driverConn {
        this._conn = v;
        return v;
    }
    public var _err(get, set) : stdgo.Error;
    function get__err():stdgo.Error return this._err;
    function set__err(v:stdgo.Error):stdgo.Error {
        this._err = v;
        return v;
    }
    public function new(?_conn:T_driverConn, ?_err:stdgo.Error) this = new stdgo._internal.database.sql.Sql_T_connRequest.T_connRequest(_conn, _err);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.database.sql.Sql.Conn_static_extension) abstract Conn(stdgo._internal.database.sql.Sql_Conn.Conn) from stdgo._internal.database.sql.Sql_Conn.Conn to stdgo._internal.database.sql.Sql_Conn.Conn {
    public var _db(get, set) : DB;
    function get__db():DB return this._db;
    function set__db(v:DB):DB {
        this._db = v;
        return v;
    }
    public var _closemu(get, set) : stdgo._internal.sync.Sync_RWMutex.RWMutex;
    function get__closemu():stdgo._internal.sync.Sync_RWMutex.RWMutex return this._closemu;
    function set__closemu(v:stdgo._internal.sync.Sync_RWMutex.RWMutex):stdgo._internal.sync.Sync_RWMutex.RWMutex {
        this._closemu = v;
        return v;
    }
    public var _dc(get, set) : T_driverConn;
    function get__dc():T_driverConn return this._dc;
    function set__dc(v:T_driverConn):T_driverConn {
        this._dc = v;
        return v;
    }
    public var _done(get, set) : stdgo._internal.sync.atomic_.Atomic__Bool_.Bool_;
    function get__done():stdgo._internal.sync.atomic_.Atomic__Bool_.Bool_ return this._done;
    function set__done(v:stdgo._internal.sync.atomic_.Atomic__Bool_.Bool_):stdgo._internal.sync.atomic_.Atomic__Bool_.Bool_ {
        this._done = v;
        return v;
    }
    public var _releaseConnOnce(get, set) : stdgo._internal.sync.Sync_Once.Once;
    function get__releaseConnOnce():stdgo._internal.sync.Sync_Once.Once return this._releaseConnOnce;
    function set__releaseConnOnce(v:stdgo._internal.sync.Sync_Once.Once):stdgo._internal.sync.Sync_Once.Once {
        this._releaseConnOnce = v;
        return v;
    }
    public var _releaseConnCache(get, set) : T_releaseConn;
    function get__releaseConnCache():T_releaseConn return this._releaseConnCache;
    function set__releaseConnCache(v:T_releaseConn):T_releaseConn {
        this._releaseConnCache = v;
        return v;
    }
    public function new(?_db:DB, ?_closemu:stdgo._internal.sync.Sync_RWMutex.RWMutex, ?_dc:T_driverConn, ?_done:stdgo._internal.sync.atomic_.Atomic__Bool_.Bool_, ?_releaseConnOnce:stdgo._internal.sync.Sync_Once.Once, ?_releaseConnCache:T_releaseConn) this = new stdgo._internal.database.sql.Sql_Conn.Conn(_db, _closemu, _dc, _done, _releaseConnOnce, _releaseConnCache);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.database.sql.Sql.Tx_static_extension) abstract Tx(stdgo._internal.database.sql.Sql_Tx.Tx) from stdgo._internal.database.sql.Sql_Tx.Tx to stdgo._internal.database.sql.Sql_Tx.Tx {
    public var _db(get, set) : DB;
    function get__db():DB return this._db;
    function set__db(v:DB):DB {
        this._db = v;
        return v;
    }
    public var _closemu(get, set) : stdgo._internal.sync.Sync_RWMutex.RWMutex;
    function get__closemu():stdgo._internal.sync.Sync_RWMutex.RWMutex return this._closemu;
    function set__closemu(v:stdgo._internal.sync.Sync_RWMutex.RWMutex):stdgo._internal.sync.Sync_RWMutex.RWMutex {
        this._closemu = v;
        return v;
    }
    public var _dc(get, set) : T_driverConn;
    function get__dc():T_driverConn return this._dc;
    function set__dc(v:T_driverConn):T_driverConn {
        this._dc = v;
        return v;
    }
    public var _txi(get, set) : Tx;
    function get__txi():Tx return this._txi;
    function set__txi(v:Tx):Tx {
        this._txi = v;
        return v;
    }
    public var _releaseConn(get, set) : stdgo.Error -> Void;
    function get__releaseConn():stdgo.Error -> Void return _0 -> this._releaseConn(_0);
    function set__releaseConn(v:stdgo.Error -> Void):stdgo.Error -> Void {
        this._releaseConn = v;
        return v;
    }
    public var _done(get, set) : stdgo._internal.sync.atomic_.Atomic__Bool_.Bool_;
    function get__done():stdgo._internal.sync.atomic_.Atomic__Bool_.Bool_ return this._done;
    function set__done(v:stdgo._internal.sync.atomic_.Atomic__Bool_.Bool_):stdgo._internal.sync.atomic_.Atomic__Bool_.Bool_ {
        this._done = v;
        return v;
    }
    public var _keepConnOnRollback(get, set) : Bool;
    function get__keepConnOnRollback():Bool return this._keepConnOnRollback;
    function set__keepConnOnRollback(v:Bool):Bool {
        this._keepConnOnRollback = v;
        return v;
    }
    public var _stmts(get, set) : stdgo.Tuple<stdgo._internal.sync.Sync_Mutex.Mutex, Array<Stmt>>;
    function get__stmts():stdgo.Tuple<stdgo._internal.sync.Sync_Mutex.Mutex, Array<Stmt>> return {
        final obj = this._stmts;
        { mutex : obj.mutex, _v : [for (i in obj._v) i] };
    };
    function set__stmts(v:stdgo.Tuple<stdgo._internal.sync.Sync_Mutex.Mutex, Array<Stmt>>):stdgo.Tuple<stdgo._internal.sync.Sync_Mutex.Mutex, Array<Stmt>> {
        this._stmts = {
            final obj = v;
            { mutex : obj.mutex, _v : ([for (i in obj._v) i] : stdgo.Slice<stdgo.Ref<stdgo._internal.database.sql.Sql_Stmt.Stmt>>) };
        };
        return v;
    }
    public var _cancel(get, set) : () -> Void;
    function get__cancel():() -> Void return () -> this._cancel();
    function set__cancel(v:() -> Void):() -> Void {
        this._cancel = v;
        return v;
    }
    public var _ctx(get, set) : stdgo._internal.context.Context_Context.Context;
    function get__ctx():stdgo._internal.context.Context_Context.Context return this._ctx;
    function set__ctx(v:stdgo._internal.context.Context_Context.Context):stdgo._internal.context.Context_Context.Context {
        this._ctx = v;
        return v;
    }
    public function new(?_db:DB, ?_closemu:stdgo._internal.sync.Sync_RWMutex.RWMutex, ?_dc:T_driverConn, ?_txi:Tx, ?_releaseConn:stdgo.Error -> Void, ?_done:stdgo._internal.sync.atomic_.Atomic__Bool_.Bool_, ?_keepConnOnRollback:Bool, ?_stmts:stdgo.Tuple<stdgo._internal.sync.Sync_Mutex.Mutex, Array<Stmt>>, ?_cancel:() -> Void, ?_ctx:stdgo._internal.context.Context_Context.Context) this = new stdgo._internal.database.sql.Sql_Tx.Tx(_db, _closemu, _dc, _txi, _releaseConn, _done, _keepConnOnRollback, {
        final obj = _stmts;
        { mutex : obj.mutex, _v : ([for (i in obj._v) i] : stdgo.Slice<stdgo.Ref<stdgo._internal.database.sql.Sql_Stmt.Stmt>>) };
    }, _cancel, _ctx);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract T_connStmt(stdgo._internal.database.sql.Sql_T_connStmt.T_connStmt) from stdgo._internal.database.sql.Sql_T_connStmt.T_connStmt to stdgo._internal.database.sql.Sql_T_connStmt.T_connStmt {
    public var _dc(get, set) : T_driverConn;
    function get__dc():T_driverConn return this._dc;
    function set__dc(v:T_driverConn):T_driverConn {
        this._dc = v;
        return v;
    }
    public var _ds(get, set) : T_driverStmt;
    function get__ds():T_driverStmt return this._ds;
    function set__ds(v:T_driverStmt):T_driverStmt {
        this._ds = v;
        return v;
    }
    public function new(?_dc:T_driverConn, ?_ds:T_driverStmt) this = new stdgo._internal.database.sql.Sql_T_connStmt.T_connStmt(_dc, _ds);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.database.sql.Sql.Stmt_static_extension) abstract Stmt(stdgo._internal.database.sql.Sql_Stmt.Stmt) from stdgo._internal.database.sql.Sql_Stmt.Stmt to stdgo._internal.database.sql.Sql_Stmt.Stmt {
    public var _db(get, set) : DB;
    function get__db():DB return this._db;
    function set__db(v:DB):DB {
        this._db = v;
        return v;
    }
    public var _query(get, set) : String;
    function get__query():String return this._query;
    function set__query(v:String):String {
        this._query = v;
        return v;
    }
    public var _stickyErr(get, set) : stdgo.Error;
    function get__stickyErr():stdgo.Error return this._stickyErr;
    function set__stickyErr(v:stdgo.Error):stdgo.Error {
        this._stickyErr = v;
        return v;
    }
    public var _closemu(get, set) : stdgo._internal.sync.Sync_RWMutex.RWMutex;
    function get__closemu():stdgo._internal.sync.Sync_RWMutex.RWMutex return this._closemu;
    function set__closemu(v:stdgo._internal.sync.Sync_RWMutex.RWMutex):stdgo._internal.sync.Sync_RWMutex.RWMutex {
        this._closemu = v;
        return v;
    }
    public var _cg(get, set) : T_stmtConnGrabber;
    function get__cg():T_stmtConnGrabber return this._cg;
    function set__cg(v:T_stmtConnGrabber):T_stmtConnGrabber {
        this._cg = v;
        return v;
    }
    public var _cgds(get, set) : T_driverStmt;
    function get__cgds():T_driverStmt return this._cgds;
    function set__cgds(v:T_driverStmt):T_driverStmt {
        this._cgds = v;
        return v;
    }
    public var _parentStmt(get, set) : Stmt;
    function get__parentStmt():Stmt return this._parentStmt;
    function set__parentStmt(v:Stmt):Stmt {
        this._parentStmt = v;
        return v;
    }
    public var _mu(get, set) : stdgo._internal.sync.Sync_Mutex.Mutex;
    function get__mu():stdgo._internal.sync.Sync_Mutex.Mutex return this._mu;
    function set__mu(v:stdgo._internal.sync.Sync_Mutex.Mutex):stdgo._internal.sync.Sync_Mutex.Mutex {
        this._mu = v;
        return v;
    }
    public var _closed(get, set) : Bool;
    function get__closed():Bool return this._closed;
    function set__closed(v:Bool):Bool {
        this._closed = v;
        return v;
    }
    public var _css(get, set) : Array<T_connStmt>;
    function get__css():Array<T_connStmt> return [for (i in this._css) i];
    function set__css(v:Array<T_connStmt>):Array<T_connStmt> {
        this._css = ([for (i in v) i] : stdgo.Slice<stdgo._internal.database.sql.Sql_T_connStmt.T_connStmt>);
        return v;
    }
    public var _lastNumClosed(get, set) : haxe.UInt64;
    function get__lastNumClosed():haxe.UInt64 return this._lastNumClosed;
    function set__lastNumClosed(v:haxe.UInt64):haxe.UInt64 {
        this._lastNumClosed = v;
        return v;
    }
    public function new(?_db:DB, ?_query:String, ?_stickyErr:stdgo.Error, ?_closemu:stdgo._internal.sync.Sync_RWMutex.RWMutex, ?_cg:T_stmtConnGrabber, ?_cgds:T_driverStmt, ?_parentStmt:Stmt, ?_mu:stdgo._internal.sync.Sync_Mutex.Mutex, ?_closed:Bool, ?_css:Array<T_connStmt>, ?_lastNumClosed:haxe.UInt64) this = new stdgo._internal.database.sql.Sql_Stmt.Stmt(
_db,
_query,
_stickyErr,
_closemu,
_cg,
_cgds,
_parentStmt,
_mu,
_closed,
([for (i in _css) i] : stdgo.Slice<stdgo._internal.database.sql.Sql_T_connStmt.T_connStmt>),
_lastNumClosed);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.database.sql.Sql.Rows_static_extension) abstract Rows(stdgo._internal.database.sql.Sql_Rows.Rows) from stdgo._internal.database.sql.Sql_Rows.Rows to stdgo._internal.database.sql.Sql_Rows.Rows {
    public var _dc(get, set) : T_driverConn;
    function get__dc():T_driverConn return this._dc;
    function set__dc(v:T_driverConn):T_driverConn {
        this._dc = v;
        return v;
    }
    public var _releaseConn(get, set) : stdgo.Error -> Void;
    function get__releaseConn():stdgo.Error -> Void return _0 -> this._releaseConn(_0);
    function set__releaseConn(v:stdgo.Error -> Void):stdgo.Error -> Void {
        this._releaseConn = v;
        return v;
    }
    public var _rowsi(get, set) : Rows;
    function get__rowsi():Rows return this._rowsi;
    function set__rowsi(v:Rows):Rows {
        this._rowsi = v;
        return v;
    }
    public var _cancel(get, set) : () -> Void;
    function get__cancel():() -> Void return () -> this._cancel();
    function set__cancel(v:() -> Void):() -> Void {
        this._cancel = v;
        return v;
    }
    public var _closeStmt(get, set) : T_driverStmt;
    function get__closeStmt():T_driverStmt return this._closeStmt;
    function set__closeStmt(v:T_driverStmt):T_driverStmt {
        this._closeStmt = v;
        return v;
    }
    public var _contextDone(get, set) : stdgo._internal.sync.atomic_.Atomic__Pointer_.Pointer_<stdgo.Error>;
    function get__contextDone():stdgo._internal.sync.atomic_.Atomic__Pointer_.Pointer_<stdgo.Error> return this._contextDone;
    function set__contextDone(v:stdgo._internal.sync.atomic_.Atomic__Pointer_.Pointer_<stdgo.Error>):stdgo._internal.sync.atomic_.Atomic__Pointer_.Pointer_<stdgo.Error> {
        this._contextDone = v;
        return v;
    }
    public var _closemu(get, set) : stdgo._internal.sync.Sync_RWMutex.RWMutex;
    function get__closemu():stdgo._internal.sync.Sync_RWMutex.RWMutex return this._closemu;
    function set__closemu(v:stdgo._internal.sync.Sync_RWMutex.RWMutex):stdgo._internal.sync.Sync_RWMutex.RWMutex {
        this._closemu = v;
        return v;
    }
    public var _closed(get, set) : Bool;
    function get__closed():Bool return this._closed;
    function set__closed(v:Bool):Bool {
        this._closed = v;
        return v;
    }
    public var _lasterr(get, set) : stdgo.Error;
    function get__lasterr():stdgo.Error return this._lasterr;
    function set__lasterr(v:stdgo.Error):stdgo.Error {
        this._lasterr = v;
        return v;
    }
    public var _lastcols(get, set) : Array<Value>;
    function get__lastcols():Array<Value> return [for (i in this._lastcols) i];
    function set__lastcols(v:Array<Value>):Array<Value> {
        this._lastcols = ([for (i in v) i] : stdgo.Slice<stdgo._internal.database.sql.driver.Driver_Value.Value>);
        return v;
    }
    public var _closemuScanHold(get, set) : Bool;
    function get__closemuScanHold():Bool return this._closemuScanHold;
    function set__closemuScanHold(v:Bool):Bool {
        this._closemuScanHold = v;
        return v;
    }
    public var _hitEOF(get, set) : Bool;
    function get__hitEOF():Bool return this._hitEOF;
    function set__hitEOF(v:Bool):Bool {
        this._hitEOF = v;
        return v;
    }
    public function new(?_dc:T_driverConn, ?_releaseConn:stdgo.Error -> Void, ?_rowsi:Rows, ?_cancel:() -> Void, ?_closeStmt:T_driverStmt, ?_contextDone:stdgo._internal.sync.atomic_.Atomic__Pointer_.Pointer_<stdgo.Error>, ?_closemu:stdgo._internal.sync.Sync_RWMutex.RWMutex, ?_closed:Bool, ?_lasterr:stdgo.Error, ?_lastcols:Array<Value>, ?_closemuScanHold:Bool, ?_hitEOF:Bool) this = new stdgo._internal.database.sql.Sql_Rows.Rows(
_dc,
_releaseConn,
_rowsi,
_cancel,
_closeStmt,
_contextDone,
_closemu,
_closed,
_lasterr,
([for (i in _lastcols) i] : stdgo.Slice<stdgo._internal.database.sql.driver.Driver_Value.Value>),
_closemuScanHold,
_hitEOF);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.database.sql.Sql.ColumnType_static_extension) abstract ColumnType(stdgo._internal.database.sql.Sql_ColumnType.ColumnType) from stdgo._internal.database.sql.Sql_ColumnType.ColumnType to stdgo._internal.database.sql.Sql_ColumnType.ColumnType {
    public var _name(get, set) : String;
    function get__name():String return this._name;
    function set__name(v:String):String {
        this._name = v;
        return v;
    }
    public var _hasNullable(get, set) : Bool;
    function get__hasNullable():Bool return this._hasNullable;
    function set__hasNullable(v:Bool):Bool {
        this._hasNullable = v;
        return v;
    }
    public var _hasLength(get, set) : Bool;
    function get__hasLength():Bool return this._hasLength;
    function set__hasLength(v:Bool):Bool {
        this._hasLength = v;
        return v;
    }
    public var _hasPrecisionScale(get, set) : Bool;
    function get__hasPrecisionScale():Bool return this._hasPrecisionScale;
    function set__hasPrecisionScale(v:Bool):Bool {
        this._hasPrecisionScale = v;
        return v;
    }
    public var _nullable(get, set) : Bool;
    function get__nullable():Bool return this._nullable;
    function set__nullable(v:Bool):Bool {
        this._nullable = v;
        return v;
    }
    public var _length(get, set) : haxe.Int64;
    function get__length():haxe.Int64 return this._length;
    function set__length(v:haxe.Int64):haxe.Int64 {
        this._length = v;
        return v;
    }
    public var _databaseType(get, set) : String;
    function get__databaseType():String return this._databaseType;
    function set__databaseType(v:String):String {
        this._databaseType = v;
        return v;
    }
    public var _precision(get, set) : haxe.Int64;
    function get__precision():haxe.Int64 return this._precision;
    function set__precision(v:haxe.Int64):haxe.Int64 {
        this._precision = v;
        return v;
    }
    public var _scale(get, set) : haxe.Int64;
    function get__scale():haxe.Int64 return this._scale;
    function set__scale(v:haxe.Int64):haxe.Int64 {
        this._scale = v;
        return v;
    }
    public var _scanType(get, set) : stdgo._internal.reflect.Reflect_Type_.Type_;
    function get__scanType():stdgo._internal.reflect.Reflect_Type_.Type_ return this._scanType;
    function set__scanType(v:stdgo._internal.reflect.Reflect_Type_.Type_):stdgo._internal.reflect.Reflect_Type_.Type_ {
        this._scanType = v;
        return v;
    }
    public function new(?_name:String, ?_hasNullable:Bool, ?_hasLength:Bool, ?_hasPrecisionScale:Bool, ?_nullable:Bool, ?_length:haxe.Int64, ?_databaseType:String, ?_precision:haxe.Int64, ?_scale:haxe.Int64, ?_scanType:stdgo._internal.reflect.Reflect_Type_.Type_) this = new stdgo._internal.database.sql.Sql_ColumnType.ColumnType(_name, _hasNullable, _hasLength, _hasPrecisionScale, _nullable, _length, _databaseType, _precision, _scale, _scanType);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.database.sql.Sql.Row_static_extension) abstract Row(stdgo._internal.database.sql.Sql_Row.Row) from stdgo._internal.database.sql.Sql_Row.Row to stdgo._internal.database.sql.Sql_Row.Row {
    public var _err(get, set) : stdgo.Error;
    function get__err():stdgo.Error return this._err;
    function set__err(v:stdgo.Error):stdgo.Error {
        this._err = v;
        return v;
    }
    public var _rows(get, set) : Rows;
    function get__rows():Rows return this._rows;
    function set__rows(v:Rows):Rows {
        this._rows = v;
        return v;
    }
    public function new(?_err:stdgo.Error, ?_rows:Rows) this = new stdgo._internal.database.sql.Sql_Row.Row(_err, _rows);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.database.sql.Sql.T_driverResult_static_extension) abstract T_driverResult(stdgo._internal.database.sql.Sql_T_driverResult.T_driverResult) from stdgo._internal.database.sql.Sql_T_driverResult.T_driverResult to stdgo._internal.database.sql.Sql_T_driverResult.T_driverResult {
    public var locker(get, set) : stdgo._internal.sync.Sync_Locker.Locker;
    function get_locker():stdgo._internal.sync.Sync_Locker.Locker return this.locker;
    function set_locker(v:stdgo._internal.sync.Sync_Locker.Locker):stdgo._internal.sync.Sync_Locker.Locker {
        this.locker = v;
        return v;
    }
    public var _resi(get, set) : Result;
    function get__resi():Result return this._resi;
    function set__resi(v:Result):Result {
        this._resi = v;
        return v;
    }
    public function new(?locker:stdgo._internal.sync.Sync_Locker.Locker, ?_resi:Result) this = new stdgo._internal.database.sql.Sql_T_driverResult.T_driverResult(locker, _resi);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
class T__struct_0_static_extension {

}
typedef T__struct_0 = stdgo._internal.database.sql.Sql_T__struct_0.T__struct_0;
class T__struct_1_static_extension {
    public static function _unlockSlow(__self__:stdgo._internal.database.sql.Sql_T__struct_1.T__struct_1, _r:StdTypes.Int) {
        stdgo._internal.database.sql.Sql_T__struct_1_static_extension.T__struct_1_static_extension._unlockSlow(__self__, _r);
    }
    public static function _lockSlow(__self__:stdgo._internal.database.sql.Sql_T__struct_1.T__struct_1) {
        stdgo._internal.database.sql.Sql_T__struct_1_static_extension.T__struct_1_static_extension._lockSlow(__self__);
    }
    public static function unlock(__self__:stdgo._internal.database.sql.Sql_T__struct_1.T__struct_1) {
        stdgo._internal.database.sql.Sql_T__struct_1_static_extension.T__struct_1_static_extension.unlock(__self__);
    }
    public static function tryLock(__self__:stdgo._internal.database.sql.Sql_T__struct_1.T__struct_1):Bool {
        return stdgo._internal.database.sql.Sql_T__struct_1_static_extension.T__struct_1_static_extension.tryLock(__self__);
    }
    public static function lock(__self__:stdgo._internal.database.sql.Sql_T__struct_1.T__struct_1) {
        stdgo._internal.database.sql.Sql_T__struct_1_static_extension.T__struct_1_static_extension.lock(__self__);
    }
}
typedef T__struct_1 = stdgo._internal.database.sql.Sql_T__struct_1.T__struct_1;
typedef IsolationLevel = stdgo._internal.database.sql.Sql_IsolationLevel.IsolationLevel;
typedef RawBytes = stdgo._internal.database.sql.Sql_RawBytes.RawBytes;
typedef T_connReuseStrategy = stdgo._internal.database.sql.Sql_T_connReuseStrategy.T_connReuseStrategy;
typedef T_depSet = stdgo._internal.database.sql.Sql_T_depSet.T_depSet;
typedef T_releaseConn = stdgo._internal.database.sql.Sql_T_releaseConn.T_releaseConn;
class T_ccChecker_static_extension {
    static public function checkNamedValue(_c:T_ccChecker, _nv:NamedValue):stdgo.Error {
        return stdgo._internal.database.sql.Sql_T_ccChecker_static_extension.T_ccChecker_static_extension.checkNamedValue(_c, _nv);
    }
}
class NullString_static_extension {
    static public function value(_ns:NullString):stdgo.Tuple<Value, stdgo.Error> {
        return {
            final obj = stdgo._internal.database.sql.Sql_NullString_static_extension.NullString_static_extension.value(_ns);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function scan(_ns:NullString, _value:stdgo.AnyInterface):stdgo.Error {
        return stdgo._internal.database.sql.Sql_NullString_static_extension.NullString_static_extension.scan(_ns, _value);
    }
}
class NullInt64_static_extension {
    static public function value(_n:NullInt64):stdgo.Tuple<Value, stdgo.Error> {
        return {
            final obj = stdgo._internal.database.sql.Sql_NullInt64_static_extension.NullInt64_static_extension.value(_n);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function scan(_n:NullInt64, _value:stdgo.AnyInterface):stdgo.Error {
        return stdgo._internal.database.sql.Sql_NullInt64_static_extension.NullInt64_static_extension.scan(_n, _value);
    }
}
class NullInt32_static_extension {
    static public function value(_n:NullInt32):stdgo.Tuple<Value, stdgo.Error> {
        return {
            final obj = stdgo._internal.database.sql.Sql_NullInt32_static_extension.NullInt32_static_extension.value(_n);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function scan(_n:NullInt32, _value:stdgo.AnyInterface):stdgo.Error {
        return stdgo._internal.database.sql.Sql_NullInt32_static_extension.NullInt32_static_extension.scan(_n, _value);
    }
}
class NullInt16_static_extension {
    static public function value(_n:NullInt16):stdgo.Tuple<Value, stdgo.Error> {
        return {
            final obj = stdgo._internal.database.sql.Sql_NullInt16_static_extension.NullInt16_static_extension.value(_n);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function scan(_n:NullInt16, _value:stdgo.AnyInterface):stdgo.Error {
        return stdgo._internal.database.sql.Sql_NullInt16_static_extension.NullInt16_static_extension.scan(_n, _value);
    }
}
class NullByte_static_extension {
    static public function value(_n:NullByte):stdgo.Tuple<Value, stdgo.Error> {
        return {
            final obj = stdgo._internal.database.sql.Sql_NullByte_static_extension.NullByte_static_extension.value(_n);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function scan(_n:NullByte, _value:stdgo.AnyInterface):stdgo.Error {
        return stdgo._internal.database.sql.Sql_NullByte_static_extension.NullByte_static_extension.scan(_n, _value);
    }
}
class NullFloat64_static_extension {
    static public function value(_n:NullFloat64):stdgo.Tuple<Value, stdgo.Error> {
        return {
            final obj = stdgo._internal.database.sql.Sql_NullFloat64_static_extension.NullFloat64_static_extension.value(_n);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function scan(_n:NullFloat64, _value:stdgo.AnyInterface):stdgo.Error {
        return stdgo._internal.database.sql.Sql_NullFloat64_static_extension.NullFloat64_static_extension.scan(_n, _value);
    }
}
class NullBool_static_extension {
    static public function value(_n:NullBool):stdgo.Tuple<Value, stdgo.Error> {
        return {
            final obj = stdgo._internal.database.sql.Sql_NullBool_static_extension.NullBool_static_extension.value(_n);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function scan(_n:NullBool, _value:stdgo.AnyInterface):stdgo.Error {
        return stdgo._internal.database.sql.Sql_NullBool_static_extension.NullBool_static_extension.scan(_n, _value);
    }
}
class NullTime_static_extension {
    static public function value(_n:NullTime):stdgo.Tuple<Value, stdgo.Error> {
        return {
            final obj = stdgo._internal.database.sql.Sql_NullTime_static_extension.NullTime_static_extension.value(_n);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function scan(_n:NullTime, _value:stdgo.AnyInterface):stdgo.Error {
        return stdgo._internal.database.sql.Sql_NullTime_static_extension.NullTime_static_extension.scan(_n, _value);
    }
}
class DB_static_extension {
    static public function conn(_db:DB, _ctx:stdgo._internal.context.Context_Context.Context):stdgo.Tuple<Conn, stdgo.Error> {
        return {
            final obj = stdgo._internal.database.sql.Sql_DB_static_extension.DB_static_extension.conn(_db, _ctx);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function driver(_db:DB):Driver {
        return stdgo._internal.database.sql.Sql_DB_static_extension.DB_static_extension.driver(_db);
    }
    static public function _beginDC(_db:DB, _ctx:stdgo._internal.context.Context_Context.Context, _dc:T_driverConn, _release:stdgo.Error -> Void, _opts:TxOptions):stdgo.Tuple<Tx, stdgo.Error> {
        final _release = _release;
        return {
            final obj = stdgo._internal.database.sql.Sql_DB_static_extension.DB_static_extension._beginDC(_db, _ctx, _dc, _release, _opts);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _begin(_db:DB, _ctx:stdgo._internal.context.Context_Context.Context, _opts:TxOptions, _strategy:T_connReuseStrategy):stdgo.Tuple<Tx, stdgo.Error> {
        return {
            final obj = stdgo._internal.database.sql.Sql_DB_static_extension.DB_static_extension._begin(_db, _ctx, _opts, _strategy);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function begin(_db:DB):stdgo.Tuple<Tx, stdgo.Error> {
        return {
            final obj = stdgo._internal.database.sql.Sql_DB_static_extension.DB_static_extension.begin(_db);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function beginTx(_db:DB, _ctx:stdgo._internal.context.Context_Context.Context, _opts:TxOptions):stdgo.Tuple<Tx, stdgo.Error> {
        return {
            final obj = stdgo._internal.database.sql.Sql_DB_static_extension.DB_static_extension.beginTx(_db, _ctx, _opts);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function queryRow(_db:DB, _query:String, _args:haxe.Rest<stdgo.AnyInterface>):Row {
        return stdgo._internal.database.sql.Sql_DB_static_extension.DB_static_extension.queryRow(_db, _query, ...[for (i in _args) i]);
    }
    static public function queryRowContext(_db:DB, _ctx:stdgo._internal.context.Context_Context.Context, _query:String, _args:haxe.Rest<stdgo.AnyInterface>):Row {
        return stdgo._internal.database.sql.Sql_DB_static_extension.DB_static_extension.queryRowContext(_db, _ctx, _query, ...[for (i in _args) i]);
    }
    static public function _queryDC(_db:DB, _ctx:stdgo._internal.context.Context_Context.Context, _txctx:stdgo._internal.context.Context_Context.Context, _dc:T_driverConn, _releaseConn:stdgo.Error -> Void, _query:String, _args:Array<stdgo.AnyInterface>):stdgo.Tuple<Rows, stdgo.Error> {
        final _releaseConn = _releaseConn;
        final _args = ([for (i in _args) i] : stdgo.Slice<stdgo.AnyInterface>);
        return {
            final obj = stdgo._internal.database.sql.Sql_DB_static_extension.DB_static_extension._queryDC(_db, _ctx, _txctx, _dc, _releaseConn, _query, _args);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _query(_db:DB, _ctx:stdgo._internal.context.Context_Context.Context, _query:String, _args:Array<stdgo.AnyInterface>, _strategy:T_connReuseStrategy):stdgo.Tuple<Rows, stdgo.Error> {
        final _args = ([for (i in _args) i] : stdgo.Slice<stdgo.AnyInterface>);
        return {
            final obj = stdgo._internal.database.sql.Sql_DB_static_extension.DB_static_extension._query(_db, _ctx, _query, _args, _strategy);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function query(_db:DB, _query:String, _args:haxe.Rest<stdgo.AnyInterface>):stdgo.Tuple<Rows, stdgo.Error> {
        return {
            final obj = stdgo._internal.database.sql.Sql_DB_static_extension.DB_static_extension.query(_db, _query, ...[for (i in _args) i]);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function queryContext(_db:DB, _ctx:stdgo._internal.context.Context_Context.Context, _query:String, _args:haxe.Rest<stdgo.AnyInterface>):stdgo.Tuple<Rows, stdgo.Error> {
        return {
            final obj = stdgo._internal.database.sql.Sql_DB_static_extension.DB_static_extension.queryContext(_db, _ctx, _query, ...[for (i in _args) i]);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _execDC(_db:DB, _ctx:stdgo._internal.context.Context_Context.Context, _dc:T_driverConn, _release:stdgo.Error -> Void, _query:String, _args:Array<stdgo.AnyInterface>):stdgo.Tuple<Result, stdgo.Error> {
        final _release = _release;
        final _args = ([for (i in _args) i] : stdgo.Slice<stdgo.AnyInterface>);
        return {
            final obj = stdgo._internal.database.sql.Sql_DB_static_extension.DB_static_extension._execDC(_db, _ctx, _dc, _release, _query, _args);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _exec(_db:DB, _ctx:stdgo._internal.context.Context_Context.Context, _query:String, _args:Array<stdgo.AnyInterface>, _strategy:T_connReuseStrategy):stdgo.Tuple<Result, stdgo.Error> {
        final _args = ([for (i in _args) i] : stdgo.Slice<stdgo.AnyInterface>);
        return {
            final obj = stdgo._internal.database.sql.Sql_DB_static_extension.DB_static_extension._exec(_db, _ctx, _query, _args, _strategy);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function exec(_db:DB, _query:String, _args:haxe.Rest<stdgo.AnyInterface>):stdgo.Tuple<Result, stdgo.Error> {
        return {
            final obj = stdgo._internal.database.sql.Sql_DB_static_extension.DB_static_extension.exec(_db, _query, ...[for (i in _args) i]);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function execContext(_db:DB, _ctx:stdgo._internal.context.Context_Context.Context, _query:String, _args:haxe.Rest<stdgo.AnyInterface>):stdgo.Tuple<Result, stdgo.Error> {
        return {
            final obj = stdgo._internal.database.sql.Sql_DB_static_extension.DB_static_extension.execContext(_db, _ctx, _query, ...[for (i in _args) i]);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _prepareDC(_db:DB, _ctx:stdgo._internal.context.Context_Context.Context, _dc:T_driverConn, _release:stdgo.Error -> Void, _cg:T_stmtConnGrabber, _query:String):stdgo.Tuple<Stmt, stdgo.Error> {
        final _release = _release;
        return {
            final obj = stdgo._internal.database.sql.Sql_DB_static_extension.DB_static_extension._prepareDC(_db, _ctx, _dc, _release, _cg, _query);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _prepare(_db:DB, _ctx:stdgo._internal.context.Context_Context.Context, _query:String, _strategy:T_connReuseStrategy):stdgo.Tuple<Stmt, stdgo.Error> {
        return {
            final obj = stdgo._internal.database.sql.Sql_DB_static_extension.DB_static_extension._prepare(_db, _ctx, _query, _strategy);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function prepare(_db:DB, _query:String):stdgo.Tuple<Stmt, stdgo.Error> {
        return {
            final obj = stdgo._internal.database.sql.Sql_DB_static_extension.DB_static_extension.prepare(_db, _query);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function prepareContext(_db:DB, _ctx:stdgo._internal.context.Context_Context.Context, _query:String):stdgo.Tuple<Stmt, stdgo.Error> {
        return {
            final obj = stdgo._internal.database.sql.Sql_DB_static_extension.DB_static_extension.prepareContext(_db, _ctx, _query);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _retry(_db:DB, _fn:stdgo._internal.database.sql.Sql_T_connReuseStrategy.T_connReuseStrategy -> stdgo.Error):stdgo.Error {
        final _fn = _fn;
        return stdgo._internal.database.sql.Sql_DB_static_extension.DB_static_extension._retry(_db, _fn);
    }
    static public function _putConnDBLocked(_db:DB, _dc:T_driverConn, _err:stdgo.Error):Bool {
        return stdgo._internal.database.sql.Sql_DB_static_extension.DB_static_extension._putConnDBLocked(_db, _dc, _err);
    }
    static public function _putConn(_db:DB, _dc:T_driverConn, _err:stdgo.Error, _resetSession:Bool):Void {
        stdgo._internal.database.sql.Sql_DB_static_extension.DB_static_extension._putConn(_db, _dc, _err, _resetSession);
    }
    static public function _noteUnusedDriverStatement(_db:DB, _c:T_driverConn, _ds:T_driverStmt):Void {
        stdgo._internal.database.sql.Sql_DB_static_extension.DB_static_extension._noteUnusedDriverStatement(_db, _c, _ds);
    }
    static public function _conn(_db:DB, _ctx:stdgo._internal.context.Context_Context.Context, _strategy:T_connReuseStrategy):stdgo.Tuple<T_driverConn, stdgo.Error> {
        return {
            final obj = stdgo._internal.database.sql.Sql_DB_static_extension.DB_static_extension._conn(_db, _ctx, _strategy);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _nextRequestKeyLocked(_db:DB):haxe.UInt64 {
        return stdgo._internal.database.sql.Sql_DB_static_extension.DB_static_extension._nextRequestKeyLocked(_db);
    }
    static public function _openNewConnection(_db:DB, _ctx:stdgo._internal.context.Context_Context.Context):Void {
        stdgo._internal.database.sql.Sql_DB_static_extension.DB_static_extension._openNewConnection(_db, _ctx);
    }
    static public function _connectionOpener(_db:DB, _ctx:stdgo._internal.context.Context_Context.Context):Void {
        stdgo._internal.database.sql.Sql_DB_static_extension.DB_static_extension._connectionOpener(_db, _ctx);
    }
    static public function _maybeOpenNewConnections(_db:DB):Void {
        stdgo._internal.database.sql.Sql_DB_static_extension.DB_static_extension._maybeOpenNewConnections(_db);
    }
    static public function stats(_db:DB):DBStats {
        return stdgo._internal.database.sql.Sql_DB_static_extension.DB_static_extension.stats(_db);
    }
    static public function _connectionCleanerRunLocked(_db:DB, _d:stdgo._internal.time.Time_Duration.Duration):stdgo.Tuple<stdgo._internal.time.Time_Duration.Duration, Array<T_driverConn>> {
        return {
            final obj = stdgo._internal.database.sql.Sql_DB_static_extension.DB_static_extension._connectionCleanerRunLocked(_db, _d);
            { _0 : obj._0, _1 : [for (i in obj._1) i] };
        };
    }
    static public function _connectionCleaner(_db:DB, _d:stdgo._internal.time.Time_Duration.Duration):Void {
        stdgo._internal.database.sql.Sql_DB_static_extension.DB_static_extension._connectionCleaner(_db, _d);
    }
    static public function _startCleanerLocked(_db:DB):Void {
        stdgo._internal.database.sql.Sql_DB_static_extension.DB_static_extension._startCleanerLocked(_db);
    }
    static public function setConnMaxIdleTime(_db:DB, _d:stdgo._internal.time.Time_Duration.Duration):Void {
        stdgo._internal.database.sql.Sql_DB_static_extension.DB_static_extension.setConnMaxIdleTime(_db, _d);
    }
    static public function setConnMaxLifetime(_db:DB, _d:stdgo._internal.time.Time_Duration.Duration):Void {
        stdgo._internal.database.sql.Sql_DB_static_extension.DB_static_extension.setConnMaxLifetime(_db, _d);
    }
    static public function setMaxOpenConns(_db:DB, _n:StdTypes.Int):Void {
        stdgo._internal.database.sql.Sql_DB_static_extension.DB_static_extension.setMaxOpenConns(_db, _n);
    }
    static public function setMaxIdleConns(_db:DB, _n:StdTypes.Int):Void {
        stdgo._internal.database.sql.Sql_DB_static_extension.DB_static_extension.setMaxIdleConns(_db, _n);
    }
    static public function _shortestIdleTimeLocked(_db:DB):stdgo._internal.time.Time_Duration.Duration {
        return stdgo._internal.database.sql.Sql_DB_static_extension.DB_static_extension._shortestIdleTimeLocked(_db);
    }
    static public function _maxIdleConnsLocked(_db:DB):StdTypes.Int {
        return stdgo._internal.database.sql.Sql_DB_static_extension.DB_static_extension._maxIdleConnsLocked(_db);
    }
    static public function close(_db:DB):stdgo.Error {
        return stdgo._internal.database.sql.Sql_DB_static_extension.DB_static_extension.close(_db);
    }
    static public function ping(_db:DB):stdgo.Error {
        return stdgo._internal.database.sql.Sql_DB_static_extension.DB_static_extension.ping(_db);
    }
    static public function pingContext(_db:DB, _ctx:stdgo._internal.context.Context_Context.Context):stdgo.Error {
        return stdgo._internal.database.sql.Sql_DB_static_extension.DB_static_extension.pingContext(_db, _ctx);
    }
    static public function _pingDC(_db:DB, _ctx:stdgo._internal.context.Context_Context.Context, _dc:T_driverConn, _release:stdgo.Error -> Void):stdgo.Error {
        final _release = _release;
        return stdgo._internal.database.sql.Sql_DB_static_extension.DB_static_extension._pingDC(_db, _ctx, _dc, _release);
    }
    static public function _removeDepLocked(_db:DB, _x:T_finalCloser, _dep:stdgo.AnyInterface):() -> stdgo.Error {
        return () -> stdgo._internal.database.sql.Sql_DB_static_extension.DB_static_extension._removeDepLocked(_db, _x, _dep)();
    }
    static public function _removeDep(_db:DB, _x:T_finalCloser, _dep:stdgo.AnyInterface):stdgo.Error {
        return stdgo._internal.database.sql.Sql_DB_static_extension.DB_static_extension._removeDep(_db, _x, _dep);
    }
    static public function _addDepLocked(_db:DB, _x:T_finalCloser, _dep:stdgo.AnyInterface):Void {
        stdgo._internal.database.sql.Sql_DB_static_extension.DB_static_extension._addDepLocked(_db, _x, _dep);
    }
    static public function _addDep(_db:DB, _x:T_finalCloser, _dep:stdgo.AnyInterface):Void {
        stdgo._internal.database.sql.Sql_DB_static_extension.DB_static_extension._addDep(_db, _x, _dep);
    }
}
class T_driverConn_static_extension {
    static public function _finalClose(_dc:T_driverConn):stdgo.Error {
        return stdgo._internal.database.sql.Sql_T_driverConn_static_extension.T_driverConn_static_extension._finalClose(_dc);
    }
    static public function close(_dc:T_driverConn):stdgo.Error {
        return stdgo._internal.database.sql.Sql_T_driverConn_static_extension.T_driverConn_static_extension.close(_dc);
    }
    static public function _closeDBLocked(_dc:T_driverConn):() -> stdgo.Error {
        return () -> stdgo._internal.database.sql.Sql_T_driverConn_static_extension.T_driverConn_static_extension._closeDBLocked(_dc)();
    }
    static public function _prepareLocked(_dc:T_driverConn, _ctx:stdgo._internal.context.Context_Context.Context, _cg:T_stmtConnGrabber, _query:String):stdgo.Tuple<T_driverStmt, stdgo.Error> {
        return {
            final obj = stdgo._internal.database.sql.Sql_T_driverConn_static_extension.T_driverConn_static_extension._prepareLocked(_dc, _ctx, _cg, _query);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _validateConnection(_dc:T_driverConn, _needsReset:Bool):Bool {
        return stdgo._internal.database.sql.Sql_T_driverConn_static_extension.T_driverConn_static_extension._validateConnection(_dc, _needsReset);
    }
    static public function _resetSession(_dc:T_driverConn, _ctx:stdgo._internal.context.Context_Context.Context):stdgo.Error {
        return stdgo._internal.database.sql.Sql_T_driverConn_static_extension.T_driverConn_static_extension._resetSession(_dc, _ctx);
    }
    static public function _expired(_dc:T_driverConn, _timeout:stdgo._internal.time.Time_Duration.Duration):Bool {
        return stdgo._internal.database.sql.Sql_T_driverConn_static_extension.T_driverConn_static_extension._expired(_dc, _timeout);
    }
    static public function _removeOpenStmt(_dc:T_driverConn, _ds:T_driverStmt):Void {
        stdgo._internal.database.sql.Sql_T_driverConn_static_extension.T_driverConn_static_extension._removeOpenStmt(_dc, _ds);
    }
    static public function _releaseConn(_dc:T_driverConn, _err:stdgo.Error):Void {
        stdgo._internal.database.sql.Sql_T_driverConn_static_extension.T_driverConn_static_extension._releaseConn(_dc, _err);
    }
    public static function _unlockSlow(__self__:stdgo._internal.database.sql.Sql_T_driverConn.T_driverConn, _r:StdTypes.Int) {
        stdgo._internal.database.sql.Sql_T_driverConn_static_extension.T_driverConn_static_extension._unlockSlow(__self__, _r);
    }
    public static function _lockSlow(__self__:stdgo._internal.database.sql.Sql_T_driverConn.T_driverConn) {
        stdgo._internal.database.sql.Sql_T_driverConn_static_extension.T_driverConn_static_extension._lockSlow(__self__);
    }
    public static function unlock(__self__:stdgo._internal.database.sql.Sql_T_driverConn.T_driverConn) {
        stdgo._internal.database.sql.Sql_T_driverConn_static_extension.T_driverConn_static_extension.unlock(__self__);
    }
    public static function tryLock(__self__:stdgo._internal.database.sql.Sql_T_driverConn.T_driverConn):Bool {
        return stdgo._internal.database.sql.Sql_T_driverConn_static_extension.T_driverConn_static_extension.tryLock(__self__);
    }
    public static function lock(__self__:stdgo._internal.database.sql.Sql_T_driverConn.T_driverConn) {
        stdgo._internal.database.sql.Sql_T_driverConn_static_extension.T_driverConn_static_extension.lock(__self__);
    }
}
class T_driverStmt_static_extension {
    static public function close(_ds:T_driverStmt):stdgo.Error {
        return stdgo._internal.database.sql.Sql_T_driverStmt_static_extension.T_driverStmt_static_extension.close(_ds);
    }
    public static function unlock(__self__:stdgo._internal.database.sql.Sql_T_driverStmt.T_driverStmt) {
        stdgo._internal.database.sql.Sql_T_driverStmt_static_extension.T_driverStmt_static_extension.unlock(__self__);
    }
    public static function lock(__self__:stdgo._internal.database.sql.Sql_T_driverStmt.T_driverStmt) {
        stdgo._internal.database.sql.Sql_T_driverStmt_static_extension.T_driverStmt_static_extension.lock(__self__);
    }
}
class T_dsnConnector_static_extension {
    static public function driver(_t:T_dsnConnector):Driver {
        return stdgo._internal.database.sql.Sql_T_dsnConnector_static_extension.T_dsnConnector_static_extension.driver(_t);
    }
    static public function connect(_t:T_dsnConnector, __19:stdgo._internal.context.Context_Context.Context):stdgo.Tuple<Conn, stdgo.Error> {
        return {
            final obj = stdgo._internal.database.sql.Sql_T_dsnConnector_static_extension.T_dsnConnector_static_extension.connect(_t, __19);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
class Conn_static_extension {
    static public function close(_c:Conn):stdgo.Error {
        return stdgo._internal.database.sql.Sql_Conn_static_extension.Conn_static_extension.close(_c);
    }
    static public function _close(_c:Conn, _err:stdgo.Error):stdgo.Error {
        return stdgo._internal.database.sql.Sql_Conn_static_extension.Conn_static_extension._close(_c, _err);
    }
    static public function _txCtx(_c:Conn):stdgo._internal.context.Context_Context.Context {
        return stdgo._internal.database.sql.Sql_Conn_static_extension.Conn_static_extension._txCtx(_c);
    }
    static public function _closemuRUnlockCondReleaseConn(_c:Conn, _err:stdgo.Error):Void {
        stdgo._internal.database.sql.Sql_Conn_static_extension.Conn_static_extension._closemuRUnlockCondReleaseConn(_c, _err);
    }
    static public function beginTx(_c:Conn, _ctx:stdgo._internal.context.Context_Context.Context, _opts:TxOptions):stdgo.Tuple<Tx, stdgo.Error> {
        return {
            final obj = stdgo._internal.database.sql.Sql_Conn_static_extension.Conn_static_extension.beginTx(_c, _ctx, _opts);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function raw(_c:Conn, _f:stdgo.AnyInterface -> stdgo.Error):stdgo.Error {
        final _f = _f;
        return stdgo._internal.database.sql.Sql_Conn_static_extension.Conn_static_extension.raw(_c, _f);
    }
    static public function prepareContext(_c:Conn, _ctx:stdgo._internal.context.Context_Context.Context, _query:String):stdgo.Tuple<Stmt, stdgo.Error> {
        return {
            final obj = stdgo._internal.database.sql.Sql_Conn_static_extension.Conn_static_extension.prepareContext(_c, _ctx, _query);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function queryRowContext(_c:Conn, _ctx:stdgo._internal.context.Context_Context.Context, _query:String, _args:haxe.Rest<stdgo.AnyInterface>):Row {
        return stdgo._internal.database.sql.Sql_Conn_static_extension.Conn_static_extension.queryRowContext(_c, _ctx, _query, ...[for (i in _args) i]);
    }
    static public function queryContext(_c:Conn, _ctx:stdgo._internal.context.Context_Context.Context, _query:String, _args:haxe.Rest<stdgo.AnyInterface>):stdgo.Tuple<Rows, stdgo.Error> {
        return {
            final obj = stdgo._internal.database.sql.Sql_Conn_static_extension.Conn_static_extension.queryContext(_c, _ctx, _query, ...[for (i in _args) i]);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function execContext(_c:Conn, _ctx:stdgo._internal.context.Context_Context.Context, _query:String, _args:haxe.Rest<stdgo.AnyInterface>):stdgo.Tuple<Result, stdgo.Error> {
        return {
            final obj = stdgo._internal.database.sql.Sql_Conn_static_extension.Conn_static_extension.execContext(_c, _ctx, _query, ...[for (i in _args) i]);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function pingContext(_c:Conn, _ctx:stdgo._internal.context.Context_Context.Context):stdgo.Error {
        return stdgo._internal.database.sql.Sql_Conn_static_extension.Conn_static_extension.pingContext(_c, _ctx);
    }
    static public function _grabConn(_c:Conn, _0:stdgo._internal.context.Context_Context.Context):stdgo.Tuple.Tuple3<T_driverConn, T_releaseConn, stdgo.Error> {
        return {
            final obj = stdgo._internal.database.sql.Sql_Conn_static_extension.Conn_static_extension._grabConn(_c, _0);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
}
class Tx_static_extension {
    static public function queryRow(_tx:Tx, _query:String, _args:haxe.Rest<stdgo.AnyInterface>):Row {
        return stdgo._internal.database.sql.Sql_Tx_static_extension.Tx_static_extension.queryRow(_tx, _query, ...[for (i in _args) i]);
    }
    static public function queryRowContext(_tx:Tx, _ctx:stdgo._internal.context.Context_Context.Context, _query:String, _args:haxe.Rest<stdgo.AnyInterface>):Row {
        return stdgo._internal.database.sql.Sql_Tx_static_extension.Tx_static_extension.queryRowContext(_tx, _ctx, _query, ...[for (i in _args) i]);
    }
    static public function query(_tx:Tx, _query:String, _args:haxe.Rest<stdgo.AnyInterface>):stdgo.Tuple<Rows, stdgo.Error> {
        return {
            final obj = stdgo._internal.database.sql.Sql_Tx_static_extension.Tx_static_extension.query(_tx, _query, ...[for (i in _args) i]);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function queryContext(_tx:Tx, _ctx:stdgo._internal.context.Context_Context.Context, _query:String, _args:haxe.Rest<stdgo.AnyInterface>):stdgo.Tuple<Rows, stdgo.Error> {
        return {
            final obj = stdgo._internal.database.sql.Sql_Tx_static_extension.Tx_static_extension.queryContext(_tx, _ctx, _query, ...[for (i in _args) i]);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function exec(_tx:Tx, _query:String, _args:haxe.Rest<stdgo.AnyInterface>):stdgo.Tuple<Result, stdgo.Error> {
        return {
            final obj = stdgo._internal.database.sql.Sql_Tx_static_extension.Tx_static_extension.exec(_tx, _query, ...[for (i in _args) i]);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function execContext(_tx:Tx, _ctx:stdgo._internal.context.Context_Context.Context, _query:String, _args:haxe.Rest<stdgo.AnyInterface>):stdgo.Tuple<Result, stdgo.Error> {
        return {
            final obj = stdgo._internal.database.sql.Sql_Tx_static_extension.Tx_static_extension.execContext(_tx, _ctx, _query, ...[for (i in _args) i]);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function stmt(_tx:Tx, _stmt:Stmt):Stmt {
        return stdgo._internal.database.sql.Sql_Tx_static_extension.Tx_static_extension.stmt(_tx, _stmt);
    }
    static public function stmtContext(_tx:Tx, _ctx:stdgo._internal.context.Context_Context.Context, _stmt:Stmt):Stmt {
        return stdgo._internal.database.sql.Sql_Tx_static_extension.Tx_static_extension.stmtContext(_tx, _ctx, _stmt);
    }
    static public function prepare(_tx:Tx, _query:String):stdgo.Tuple<Stmt, stdgo.Error> {
        return {
            final obj = stdgo._internal.database.sql.Sql_Tx_static_extension.Tx_static_extension.prepare(_tx, _query);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function prepareContext(_tx:Tx, _ctx:stdgo._internal.context.Context_Context.Context, _query:String):stdgo.Tuple<Stmt, stdgo.Error> {
        return {
            final obj = stdgo._internal.database.sql.Sql_Tx_static_extension.Tx_static_extension.prepareContext(_tx, _ctx, _query);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function rollback(_tx:Tx):stdgo.Error {
        return stdgo._internal.database.sql.Sql_Tx_static_extension.Tx_static_extension.rollback(_tx);
    }
    static public function _rollback(_tx:Tx, _discardConn:Bool):stdgo.Error {
        return stdgo._internal.database.sql.Sql_Tx_static_extension.Tx_static_extension._rollback(_tx, _discardConn);
    }
    static public function commit(_tx:Tx):stdgo.Error {
        return stdgo._internal.database.sql.Sql_Tx_static_extension.Tx_static_extension.commit(_tx);
    }
    static public function _closePrepared(_tx:Tx):Void {
        stdgo._internal.database.sql.Sql_Tx_static_extension.Tx_static_extension._closePrepared(_tx);
    }
    static public function _closemuRUnlockRelease(_tx:Tx, _0:stdgo.Error):Void {
        stdgo._internal.database.sql.Sql_Tx_static_extension.Tx_static_extension._closemuRUnlockRelease(_tx, _0);
    }
    static public function _txCtx(_tx:Tx):stdgo._internal.context.Context_Context.Context {
        return stdgo._internal.database.sql.Sql_Tx_static_extension.Tx_static_extension._txCtx(_tx);
    }
    static public function _grabConn(_tx:Tx, _ctx:stdgo._internal.context.Context_Context.Context):stdgo.Tuple.Tuple3<T_driverConn, T_releaseConn, stdgo.Error> {
        return {
            final obj = stdgo._internal.database.sql.Sql_Tx_static_extension.Tx_static_extension._grabConn(_tx, _ctx);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    static public function _close(_tx:Tx, _err:stdgo.Error):Void {
        stdgo._internal.database.sql.Sql_Tx_static_extension.Tx_static_extension._close(_tx, _err);
    }
    static public function _isDone(_tx:Tx):Bool {
        return stdgo._internal.database.sql.Sql_Tx_static_extension.Tx_static_extension._isDone(_tx);
    }
    static public function _awaitDone(_tx:Tx):Void {
        stdgo._internal.database.sql.Sql_Tx_static_extension.Tx_static_extension._awaitDone(_tx);
    }
}
class Stmt_static_extension {
    static public function _finalClose(_s:Stmt):stdgo.Error {
        return stdgo._internal.database.sql.Sql_Stmt_static_extension.Stmt_static_extension._finalClose(_s);
    }
    static public function close(_s:Stmt):stdgo.Error {
        return stdgo._internal.database.sql.Sql_Stmt_static_extension.Stmt_static_extension.close(_s);
    }
    static public function queryRow(_s:Stmt, _args:haxe.Rest<stdgo.AnyInterface>):Row {
        return stdgo._internal.database.sql.Sql_Stmt_static_extension.Stmt_static_extension.queryRow(_s, ...[for (i in _args) i]);
    }
    static public function queryRowContext(_s:Stmt, _ctx:stdgo._internal.context.Context_Context.Context, _args:haxe.Rest<stdgo.AnyInterface>):Row {
        return stdgo._internal.database.sql.Sql_Stmt_static_extension.Stmt_static_extension.queryRowContext(_s, _ctx, ...[for (i in _args) i]);
    }
    static public function query(_s:Stmt, _args:haxe.Rest<stdgo.AnyInterface>):stdgo.Tuple<Rows, stdgo.Error> {
        return {
            final obj = stdgo._internal.database.sql.Sql_Stmt_static_extension.Stmt_static_extension.query(_s, ...[for (i in _args) i]);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function queryContext(_s:Stmt, _ctx:stdgo._internal.context.Context_Context.Context, _args:haxe.Rest<stdgo.AnyInterface>):stdgo.Tuple<Rows, stdgo.Error> {
        return {
            final obj = stdgo._internal.database.sql.Sql_Stmt_static_extension.Stmt_static_extension.queryContext(_s, _ctx, ...[for (i in _args) i]);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _prepareOnConnLocked(_s:Stmt, _ctx:stdgo._internal.context.Context_Context.Context, _dc:T_driverConn):stdgo.Tuple<T_driverStmt, stdgo.Error> {
        return {
            final obj = stdgo._internal.database.sql.Sql_Stmt_static_extension.Stmt_static_extension._prepareOnConnLocked(_s, _ctx, _dc);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _connStmt(_s:Stmt, _ctx:stdgo._internal.context.Context_Context.Context, _strategy:T_connReuseStrategy):stdgo.Tuple.Tuple4<T_driverConn, stdgo.Error -> Void, T_driverStmt, stdgo.Error> {
        return {
            final obj = stdgo._internal.database.sql.Sql_Stmt_static_extension.Stmt_static_extension._connStmt(_s, _ctx, _strategy);
            { _0 : obj._0, _1 : _0 -> obj._1(_0), _2 : obj._2, _3 : obj._3 };
        };
    }
    static public function _removeClosedStmtLocked(_s:Stmt):Void {
        stdgo._internal.database.sql.Sql_Stmt_static_extension.Stmt_static_extension._removeClosedStmtLocked(_s);
    }
    static public function exec(_s:Stmt, _args:haxe.Rest<stdgo.AnyInterface>):stdgo.Tuple<Result, stdgo.Error> {
        return {
            final obj = stdgo._internal.database.sql.Sql_Stmt_static_extension.Stmt_static_extension.exec(_s, ...[for (i in _args) i]);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function execContext(_s:Stmt, _ctx:stdgo._internal.context.Context_Context.Context, _args:haxe.Rest<stdgo.AnyInterface>):stdgo.Tuple<Result, stdgo.Error> {
        return {
            final obj = stdgo._internal.database.sql.Sql_Stmt_static_extension.Stmt_static_extension.execContext(_s, _ctx, ...[for (i in _args) i]);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
class Rows_static_extension {
    static public function _close(_rs:Rows, _err:stdgo.Error):stdgo.Error {
        return stdgo._internal.database.sql.Sql_Rows_static_extension.Rows_static_extension._close(_rs, _err);
    }
    static public function close(_rs:Rows):stdgo.Error {
        return stdgo._internal.database.sql.Sql_Rows_static_extension.Rows_static_extension.close(_rs);
    }
    static public function _closemuRUnlockIfHeldByScan(_rs:Rows):Void {
        stdgo._internal.database.sql.Sql_Rows_static_extension.Rows_static_extension._closemuRUnlockIfHeldByScan(_rs);
    }
    static public function scan(_rs:Rows, _dest:haxe.Rest<stdgo.AnyInterface>):stdgo.Error {
        return stdgo._internal.database.sql.Sql_Rows_static_extension.Rows_static_extension.scan(_rs, ...[for (i in _dest) i]);
    }
    static public function columnTypes(_rs:Rows):stdgo.Tuple<Array<ColumnType>, stdgo.Error> {
        return {
            final obj = stdgo._internal.database.sql.Sql_Rows_static_extension.Rows_static_extension.columnTypes(_rs);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function columns(_rs:Rows):stdgo.Tuple<Array<String>, stdgo.Error> {
        return {
            final obj = stdgo._internal.database.sql.Sql_Rows_static_extension.Rows_static_extension.columns(_rs);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function err(_rs:Rows):stdgo.Error {
        return stdgo._internal.database.sql.Sql_Rows_static_extension.Rows_static_extension.err(_rs);
    }
    static public function nextResultSet(_rs:Rows):Bool {
        return stdgo._internal.database.sql.Sql_Rows_static_extension.Rows_static_extension.nextResultSet(_rs);
    }
    static public function _nextLocked(_rs:Rows):stdgo.Tuple<Bool, Bool> {
        return {
            final obj = stdgo._internal.database.sql.Sql_Rows_static_extension.Rows_static_extension._nextLocked(_rs);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function next(_rs:Rows):Bool {
        return stdgo._internal.database.sql.Sql_Rows_static_extension.Rows_static_extension.next(_rs);
    }
    static public function _awaitDone(_rs:Rows, _ctx:stdgo._internal.context.Context_Context.Context, _txctx:stdgo._internal.context.Context_Context.Context, _closectx:stdgo._internal.context.Context_Context.Context):Void {
        stdgo._internal.database.sql.Sql_Rows_static_extension.Rows_static_extension._awaitDone(_rs, _ctx, _txctx, _closectx);
    }
    static public function _initContextClose(_rs:Rows, _ctx:stdgo._internal.context.Context_Context.Context, _txctx:stdgo._internal.context.Context_Context.Context):Void {
        stdgo._internal.database.sql.Sql_Rows_static_extension.Rows_static_extension._initContextClose(_rs, _ctx, _txctx);
    }
    static public function _lasterrOrErrLocked(_rs:Rows, _err:stdgo.Error):stdgo.Error {
        return stdgo._internal.database.sql.Sql_Rows_static_extension.Rows_static_extension._lasterrOrErrLocked(_rs, _err);
    }
}
class ColumnType_static_extension {
    static public function databaseTypeName(_ci:ColumnType):String {
        return stdgo._internal.database.sql.Sql_ColumnType_static_extension.ColumnType_static_extension.databaseTypeName(_ci);
    }
    static public function nullable(_ci:ColumnType):stdgo.Tuple<Bool, Bool> {
        return {
            final obj = stdgo._internal.database.sql.Sql_ColumnType_static_extension.ColumnType_static_extension.nullable(_ci);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function scanType(_ci:ColumnType):stdgo._internal.reflect.Reflect_Type_.Type_ {
        return stdgo._internal.database.sql.Sql_ColumnType_static_extension.ColumnType_static_extension.scanType(_ci);
    }
    static public function decimalSize(_ci:ColumnType):stdgo.Tuple.Tuple3<haxe.Int64, haxe.Int64, Bool> {
        return {
            final obj = stdgo._internal.database.sql.Sql_ColumnType_static_extension.ColumnType_static_extension.decimalSize(_ci);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    static public function length_(_ci:ColumnType):stdgo.Tuple<haxe.Int64, Bool> {
        return {
            final obj = stdgo._internal.database.sql.Sql_ColumnType_static_extension.ColumnType_static_extension.length_(_ci);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function name(_ci:ColumnType):String {
        return stdgo._internal.database.sql.Sql_ColumnType_static_extension.ColumnType_static_extension.name(_ci);
    }
}
class Row_static_extension {
    static public function err(_r:Row):stdgo.Error {
        return stdgo._internal.database.sql.Sql_Row_static_extension.Row_static_extension.err(_r);
    }
    static public function scan(_r:Row, _dest:haxe.Rest<stdgo.AnyInterface>):stdgo.Error {
        return stdgo._internal.database.sql.Sql_Row_static_extension.Row_static_extension.scan(_r, ...[for (i in _dest) i]);
    }
}
class T_driverResult_static_extension {
    static public function rowsAffected(_dr:T_driverResult):stdgo.Tuple<haxe.Int64, stdgo.Error> {
        return {
            final obj = stdgo._internal.database.sql.Sql_T_driverResult_static_extension.T_driverResult_static_extension.rowsAffected(_dr);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function lastInsertId(_dr:T_driverResult):stdgo.Tuple<haxe.Int64, stdgo.Error> {
        return {
            final obj = stdgo._internal.database.sql.Sql_T_driverResult_static_extension.T_driverResult_static_extension.lastInsertId(_dr);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function unlock(__self__:stdgo._internal.database.sql.Sql_T_driverResult.T_driverResult) {
        stdgo._internal.database.sql.Sql_T_driverResult_static_extension.T_driverResult_static_extension.unlock(__self__);
    }
    public static function lock(__self__:stdgo._internal.database.sql.Sql_T_driverResult.T_driverResult) {
        stdgo._internal.database.sql.Sql_T_driverResult_static_extension.T_driverResult_static_extension.lock(__self__);
    }
}
class IsolationLevel_static_extension {
    static public function string(_i:IsolationLevel):String {
        return stdgo._internal.database.sql.Sql_IsolationLevel_static_extension.IsolationLevel_static_extension.string(_i);
    }
}
/**
    /|*{
    	nvargs_3605910 = make([]driver.NamedValue, len(args))
    	want_3606126 = -1
    	if ds != nil {
    		gotoNext = 3606190
    		_ = gotoNext == 3606190
    		si_3606143 = ds.si
    		want_3606126 = ds.si.NumInput()
    		cc_3606163.want = want_3606126
    		gotoNext = 3606457
    	} else {
    		gotoNext = 3606457
    	}
    	_ = gotoNext == 3606457
    	nvc_3606457, ok_3606462 = si_3606143.(driver.NamedValueChecker)
    	if !ok_3606462 {
    		gotoNext = 3606506
    		_ = gotoNext == 3606506
    		nvc_3606457, ok_3606462 = ci.(driver.NamedValueChecker)
    		gotoNext = 3606554
    	} else {
    		gotoNext = 3606554
    	}
    	_ = gotoNext == 3606554
    	cci_3606554, ok_3606462 = si_3606143.(driver.ColumnConverter)
    	if ok_3606462 {
    		gotoNext = 3606600
    		_ = gotoNext == 3606600
    		cc_3606163.cci = cci_3606554
    		gotoNext = 3606863
    	} else {
    		gotoNext = 3606863
    	}
    	_ = gotoNext == 3606863
    	if 0 < len(args) {
    		gotoNext = 3608242
    		_ = gotoNext == 3608242
    		i_3606903_0, arg_3606896 = 0, args[0]
    		gotoNext = 3608243
    		_ = gotoNext == 3608243
    		if i_3606903_0 < len(args) {
    			gotoNext = 3606914
    			_ = gotoNext == 3606914
    			arg_3606896 = args[i_3606903_0]
    			nv_3606918 = &nvargs_3605910[n_3606882]
    			if np_3606940, ok_3606944 = arg_3606896.(NamedArg); ok_3606944 {
    				gotoNext = 3606969
    				_ = gotoNext == 3606969
    				if err_3606867 = validateNamedValueName(np_3606940.Name); err_3606867 != nil {
    					gotoNext = 3607027
    					_ = gotoNext == 3607027
    					return nil, err_3606867
    					gotoNext = 3607057
    				} else {
    					gotoNext = 3607057
    				}
    				_ = gotoNext == 3607057
    				arg_3606896 = np_3606940.Value
    				nv_3606918.Name = np_3606940.Name
    				gotoNext = 3607099
    			} else {
    				gotoNext = 3607099
    			}
    			_ = gotoNext == 3607099
    			nv_3606918.Ordinal = n_3606882 + 1
    			nv_3606918.Value = arg_3606896
    			checker_3607618 = defaultCheckNamedValue
    			nextCC_3607654 = false
    			_ = 0
    			gotoNext = 3607672
    			_ = gotoNext == 3607672
    			switch {
    			case nvc_3606457 != nil:
    				gotoNext = 3607683
    				_ = gotoNext == 3607683
    				nextCC_3607654 = cci_3606554 != nil
    				checker_3607618 = nvc_3606457.CheckNamedValue
    				gotoNext = 3607813
    			case cci_3606554 != nil:
    				gotoNext = 3607758
    				_ = gotoNext == 3607758
    				checker_3607618 = cc_3606163.CheckNamedValue
    				gotoNext = 3607813
    			default:
    				gotoNext = 3607813
    			}
    			_ = gotoNext == 3607813
    			gotoNext = 3607813
    			_ = gotoNext == 3607813
    			err_3606867 = checker_3607618(nv_3606918)
    			_ = 0
    			gotoNext = 3607846
    			_ = gotoNext == 3607846
    			switch err_3606867 {
    			case nil:
    				gotoNext = 3607861
    				_ = gotoNext == 3607861
    				n_3606882++
    				i_3606903_0++
    				gotoNext = 3608243
    				gotoNext = 3606893
    			case driver.ErrRemoveArgument:
    				gotoNext = 3607892
    				_ = gotoNext == 3607892
    				nvargs_3605910 = nvargs_3605910[:len(nvargs_3605910)-1]
    				i_3606903_0++
    				gotoNext = 3608243
    				gotoNext = 3606893
    			case driver.ErrSkip:
    				gotoNext = 3607972
    				_ = gotoNext == 3607972
    				if nextCC_3607654 {
    					gotoNext = 3608006
    					_ = gotoNext == 3608006
    					nextCC_3607654 = false
    					checker_3607618 = cc_3606163.CheckNamedValue
    					gotoNext = 3608117
    				} else {
    					gotoNext = 3608070
    					_ = gotoNext == 3608070
    					checker_3607618 = defaultCheckNamedValue
    					gotoNext = 3608117
    				}
    				_ = gotoNext == 3608117
    				gotoNext = 3607813
    				gotoNext = 3606893
    			default:
    				gotoNext = 3608134
    				_ = gotoNext == 3608134
    				return nil, fmt.Errorf("sql: converting argument %s type: %v", describeNamedValue(nv_3606918), err_3606867)
    				gotoNext = 3606893
    			}
    			_ = gotoNext == 3606893
    			i_3606903_0++
    			gotoNext = 3608243
    		} else {
    			gotoNext = 3608334
    		}
    		gotoNext = 3608334
    	} else {
    		gotoNext = 3608334
    	}
    	_ = gotoNext == 3608334
    	if want_3606126 != -1 && len(nvargs_3605910) != want_3606126 {
    		gotoNext = 3608371
    		_ = gotoNext == 3608371
    		return nil, fmt.Errorf("sql: expected %d arguments, got %d", want_3606126, len(nvargs_3605910))
    		gotoNext = 3608460
    	} else {
    		gotoNext = 3608460
    	}
    	_ = gotoNext == 3608460
    	return nvargs_3605910, nil
    	gotoNext = -1
    }*|/
**/
class Sql {
    /**
        Register makes a database driver available by the provided name.
        If Register is called twice with the same name or if driver is nil,
        it panics.
    **/
    static public function register(_name:String, _driver:Driver):Void {
        stdgo._internal.database.sql.Sql_register.register(_name, _driver);
    }
    /**
        Drivers returns a sorted list of the names of the registered drivers.
    **/
    static public function drivers():Array<String> {
        return [for (i in stdgo._internal.database.sql.Sql_drivers.drivers()) i];
    }
    /**
        Named provides a more concise way to create NamedArg values.
        
        Example usage:
        
        	db.ExecContext(ctx, `
        	    delete from Invoice
        	    where
        	        TimeCreated < @end
        	        and TimeCreated >= @start;`,
        	    sql.Named("start", startTime),
        	    sql.Named("end", endTime),
        	)
    **/
    static public function named(_name:String, _value:stdgo.AnyInterface):NamedArg {
        return stdgo._internal.database.sql.Sql_named.named(_name, _value);
    }
    /**
        OpenDB opens a database using a Connector, allowing drivers to
        bypass a string based data source name.
        
        Most users will open a database via a driver-specific connection
        helper function that returns a *DB. No database drivers are included
        in the Go standard library. See https://golang.org/s/sqldrivers for
        a list of third-party drivers.
        
        OpenDB may just validate its arguments without creating a connection
        to the database. To verify that the data source name is valid, call
        Ping.
        
        The returned DB is safe for concurrent use by multiple goroutines
        and maintains its own pool of idle connections. Thus, the OpenDB
        function should be called just once. It is rarely necessary to
        close a DB.
    **/
    static public function openDB(_c:Connector):DB {
        return stdgo._internal.database.sql.Sql_openDB.openDB(_c);
    }
    /**
        Open opens a database specified by its database driver name and a
        driver-specific data source name, usually consisting of at least a
        database name and connection information.
        
        Most users will open a database via a driver-specific connection
        helper function that returns a *DB. No database drivers are included
        in the Go standard library. See https://golang.org/s/sqldrivers for
        a list of third-party drivers.
        
        Open may just validate its arguments without creating a connection
        to the database. To verify that the data source name is valid, call
        Ping.
        
        The returned DB is safe for concurrent use by multiple goroutines
        and maintains its own pool of idle connections. Thus, the Open
        function should be called just once. It is rarely necessary to
        close a DB.
    **/
    static public function open(_driverName:String, _dataSourceName:String):stdgo.Tuple<DB, stdgo.Error> {
        return {
            final obj = stdgo._internal.database.sql.Sql_open.open(_driverName, _dataSourceName);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
