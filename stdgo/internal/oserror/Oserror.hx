package stdgo.internal.oserror;

var errInvalid:stdgo.Error = stdgo.errors.Errors.new_("invalid argument");
var errPermission:stdgo.Error = stdgo.errors.Errors.new_("permission denied");
var errExist:stdgo.Error = stdgo.errors.Errors.new_("file already exists");
var errNotExist:stdgo.Error = stdgo.errors.Errors.new_("file does not exist");
var errClosed:stdgo.Error = stdgo.errors.Errors.new_("file already closed");
