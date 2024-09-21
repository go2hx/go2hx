package _internal.time_test;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.tzdata.Tzdata;
function testParseInLocation(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var __tmp__ = stdgo._internal.time.Time_loadLocation.loadLocation(("Asia/Baghdad" : stdgo.GoString)), _baghdad:stdgo.Ref<stdgo._internal.time.Time_Location.Location> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(_err));
        };
        var __0:stdgo._internal.time.Time_Time.Time = ({} : stdgo._internal.time.Time_Time.Time), __1:stdgo._internal.time.Time_Time.Time = ({} : stdgo._internal.time.Time_Time.Time);
var _t2 = __1, _t1 = __0;
        {
            var __tmp__ = stdgo._internal.time.Time_parseInLocation.parseInLocation(("Jan 02 2006 MST" : stdgo.GoString), ("Feb 01 2013 AST" : stdgo.GoString), _baghdad);
            _t1 = __tmp__._0?.__copy__();
            _err = __tmp__._1;
        };
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(_err));
        };
        var __tmp__ = _t1.zone(), __2:stdgo.GoString = __tmp__._0, _offset:stdgo.GoInt = __tmp__._1;
        if (_offset != ((0 : stdgo.GoInt))) {
            _t2 = stdgo._internal.time.Time_date.date((2013 : stdgo.GoInt), (2 : stdgo._internal.time.Time_Month.Month), (1 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), _baghdad)?.__copy__();
            if (stdgo.Go.toInterface(_t1) != stdgo.Go.toInterface(_t2)) {
                _t.fatalf(("ParseInLocation(Feb 01 2013 AST, Baghdad) = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_t1)), stdgo.Go.toInterface(stdgo.Go.asInterface(_t2)));
            };
            if (_offset != ((10800 : stdgo.GoInt))) {
                _t.fatalf(("ParseInLocation(Feb 01 2013 AST, Baghdad).Zone = _, %d, want _, %d" : stdgo.GoString), stdgo.Go.toInterface(_offset), stdgo.Go.toInterface((10800 : stdgo.GoInt)));
            };
        };
        var __tmp__ = stdgo._internal.time.Time_loadLocation.loadLocation(("America/Blanc-Sablon" : stdgo.GoString)), _blancSablon:stdgo.Ref<stdgo._internal.time.Time_Location.Location> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(_err));
        };
        {
            var __tmp__ = stdgo._internal.time.Time_parseInLocation.parseInLocation(("Jan 02 2006 MST" : stdgo.GoString), ("Feb 01 2013 AST" : stdgo.GoString), _blancSablon);
            _t1 = __tmp__._0?.__copy__();
            _err = __tmp__._1;
        };
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(_err));
        };
        _t2 = stdgo._internal.time.Time_date.date((2013 : stdgo.GoInt), (2 : stdgo._internal.time.Time_Month.Month), (1 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), _blancSablon)?.__copy__();
        if (stdgo.Go.toInterface(_t1) != stdgo.Go.toInterface(_t2)) {
            _t.fatalf(("ParseInLocation(Feb 01 2013 AST, Blanc-Sablon) = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_t1)), stdgo.Go.toInterface(stdgo.Go.asInterface(_t2)));
        };
        {
            var __tmp__ = _t1.zone();
            _offset = __tmp__._1;
        };
        if (_offset != ((-14400 : stdgo.GoInt))) {
            _t.fatalf(("ParseInLocation(Feb 01 2013 AST, Blanc-Sablon).Zone = _, %d, want _, %d" : stdgo.GoString), stdgo.Go.toInterface(_offset), stdgo.Go.toInterface((-14400 : stdgo.GoInt)));
        };
    }
