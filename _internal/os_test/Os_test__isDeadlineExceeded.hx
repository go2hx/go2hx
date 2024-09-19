package _internal.os_test;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
function _isDeadlineExceeded(_err:stdgo.Error):Bool {
        if (!stdgo._internal.os.Os_isTimeout.isTimeout(_err)) {
            return false;
        };
        if (!stdgo._internal.errors.Errors_is_.is_(_err, stdgo._internal.os.Os_errDeadlineExceeded.errDeadlineExceeded)) {
            return false;
        };
        return true;
    }
