package stdgo.internal.oserror;

import stdgo.StdGoTypes;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.Chan;

var errNotExist:stdgo.Error = stdgo.errors.Errors.new_((("file does not exist" : GoString)));
var errExist:stdgo.Error = stdgo.errors.Errors.new_((("file already exists" : GoString)));
var errPermission:stdgo.Error = stdgo.errors.Errors.new_((("permission denied" : GoString)));
var errClosed:stdgo.Error = stdgo.errors.Errors.new_((("file already closed" : GoString)));
var errInvalid:stdgo.Error = stdgo.errors.Errors.new_((("invalid argument" : GoString)));
