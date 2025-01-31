package stdgo._internal.database.sql.driver;
import stdgo._internal.errors.Errors;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.fmt.Fmt;
@:structInit @:using(stdgo._internal.database.sql.driver.Driver_TxOptions_static_extension.TxOptions_static_extension) class TxOptions {
    public var isolation : stdgo._internal.database.sql.driver.Driver_IsolationLevel.IsolationLevel = ((0 : stdgo.GoInt) : stdgo._internal.database.sql.driver.Driver_IsolationLevel.IsolationLevel);
    public var readOnly : Bool = false;
    public function new(?isolation:stdgo._internal.database.sql.driver.Driver_IsolationLevel.IsolationLevel, ?readOnly:Bool) {
        if (isolation != null) this.isolation = isolation;
        if (readOnly != null) this.readOnly = readOnly;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new TxOptions(isolation, readOnly);
    }
}
