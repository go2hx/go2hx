package stdgo._internal.time;
import stdgo._internal.errors.Errors;
import stdgo._internal.syscall.Syscall;
import stdgo._internal.syscall.js.Js;
import stdgo._internal.internal.itoa.Itoa;
import stdgo._internal.runtime.Runtime;
function _initTestingZone():Void {
        var _sources = (new stdgo.Slice<stdgo.GoString>(1, 1, ...[("../../lib/time/zoneinfo.zip" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>);
        var __tmp__ = stdgo._internal.time.Time__loadLocation._loadLocation(("America/Los_Angeles" : stdgo.GoString), _sources), _z:stdgo.Ref<stdgo._internal.time.Time_Location.Location> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            throw stdgo.Go.toInterface(((("cannot load America/Los_Angeles for testing: " : stdgo.GoString) + _err.error()?.__copy__() : stdgo.GoString) + ("; you may want to use -tags=timetzdata" : stdgo.GoString)?.__copy__() : stdgo.GoString));
        };
        (@:checkr _z ?? throw "null pointer dereference")._name = ("Local" : stdgo.GoString);
        stdgo._internal.time.Time__localLoc._localLoc = (_z : stdgo._internal.time.Time_Location.Location)?.__copy__();
    }
