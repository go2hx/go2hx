package _internal.vendor.golang_dot_org.x.net.http.httpguts;
function headerValuesContainsToken(_values:stdgo.Slice<stdgo.GoString>, _token:stdgo.GoString):Bool {
        for (__0 => _v in _values) {
            if (_internal.vendor.golang_dot_org.x.net.http.httpguts.Httpguts__headerValueContainsToken._headerValueContainsToken(_v?.__copy__(), _token?.__copy__())) {
                return true;
            };
        };
        return false;
    }
