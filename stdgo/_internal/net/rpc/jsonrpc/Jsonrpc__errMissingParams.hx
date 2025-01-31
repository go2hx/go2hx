package stdgo._internal.net.rpc.jsonrpc;
import stdgo._internal.errors.Errors;
import stdgo._internal.encoding.json.Json;
import stdgo._internal.net.rpc.Rpc;
import stdgo._internal.net.Net;
import stdgo._internal.fmt.Fmt;
var _errMissingParams : stdgo.Error = stdgo._internal.errors.Errors_new_.new_(("jsonrpc: request body missing params" : stdgo.GoString));
