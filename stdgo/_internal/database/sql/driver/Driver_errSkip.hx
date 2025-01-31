package stdgo._internal.database.sql.driver;
import stdgo._internal.errors.Errors;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.fmt.Fmt;
var errSkip : stdgo.Error = stdgo._internal.errors.Errors_new_.new_(("driver: skip fast-path; continue as if unimplemented" : stdgo.GoString));
