package stdgo.time;
class Location_static_extension {
    static public function _lookupName(_l:Location, _name:String, _unix:haxe.Int64):stdgo.Tuple<StdTypes.Int, Bool> {
        final _l = (_l : stdgo.Ref<stdgo._internal.time.Time_Location.Location>);
        final _name = (_name : stdgo.GoString);
        final _unix = (_unix : stdgo.GoInt64);
        return {
            final obj = stdgo._internal.time.Time_Location_static_extension.Location_static_extension._lookupName(_l, _name, _unix);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _firstZoneUsed(_l:Location):Bool {
        final _l = (_l : stdgo.Ref<stdgo._internal.time.Time_Location.Location>);
        return stdgo._internal.time.Time_Location_static_extension.Location_static_extension._firstZoneUsed(_l);
    }
    static public function _lookupFirstZone(_l:Location):StdTypes.Int {
        final _l = (_l : stdgo.Ref<stdgo._internal.time.Time_Location.Location>);
        return stdgo._internal.time.Time_Location_static_extension.Location_static_extension._lookupFirstZone(_l);
    }
    static public function _lookup(_l:Location, _sec:haxe.Int64):stdgo.Tuple.Tuple5<String, StdTypes.Int, haxe.Int64, haxe.Int64, Bool> {
        final _l = (_l : stdgo.Ref<stdgo._internal.time.Time_Location.Location>);
        final _sec = (_sec : stdgo.GoInt64);
        return {
            final obj = stdgo._internal.time.Time_Location_static_extension.Location_static_extension._lookup(_l, _sec);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2, _3 : obj._3, _4 : obj._4 };
        };
    }
    static public function string(_l:Location):String {
        final _l = (_l : stdgo.Ref<stdgo._internal.time.Time_Location.Location>);
        return stdgo._internal.time.Time_Location_static_extension.Location_static_extension.string(_l);
    }
    static public function _get(_l:Location):Location {
        final _l = (_l : stdgo.Ref<stdgo._internal.time.Time_Location.Location>);
        return stdgo._internal.time.Time_Location_static_extension.Location_static_extension._get(_l);
    }
}
