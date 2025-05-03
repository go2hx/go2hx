package stdgo._internal.encoding.json;
function _typeFields(_t:stdgo._internal.reflect.Reflect_type_.Type_):stdgo._internal.encoding.json.Json_t_structfields.T_structFields {
        var _current = (new stdgo.Slice<stdgo._internal.encoding.json.Json_t_field.T_field>(0, 0, ...[].concat([for (i in 0 ... (0 > 0 ? 0 : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.encoding.json.Json_t_field.T_field)])) : stdgo.Slice<stdgo._internal.encoding.json.Json_t_field.T_field>);
        var _next = (new stdgo.Slice<stdgo._internal.encoding.json.Json_t_field.T_field>(1, 1, ...[({ _typ : _t } : stdgo._internal.encoding.json.Json_t_field.T_field)].concat([for (i in 1 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.encoding.json.Json_t_field.T_field)])) : stdgo.Slice<stdgo._internal.encoding.json.Json_t_field.T_field>);
        var _count:stdgo.GoMap<stdgo._internal.reflect.Reflect_type_.Type_, stdgo.GoInt> = (null : stdgo.GoMap<stdgo._internal.reflect.Reflect_type_.Type_, stdgo.GoInt>), _nextCount:stdgo.GoMap<stdgo._internal.reflect.Reflect_type_.Type_, stdgo.GoInt> = (null : stdgo.GoMap<stdgo._internal.reflect.Reflect_type_.Type_, stdgo.GoInt>);
        var _visited = ({
            final x = new stdgo.GoMap.GoObjectMap<stdgo._internal.reflect.Reflect_type_.Type_, Bool>();
            x.t = new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.reflect.Reflect_type_.Type_", [], stdgo._internal.internal.reflect.Reflect.GoType.interfaceType(false, []), false, { get : () -> null }));
            x.__defaultValue__ = () -> false;
            {};
            cast x;
        } : stdgo.GoMap<stdgo._internal.reflect.Reflect_type_.Type_, Bool>);
        var _fields:stdgo.Slice<stdgo._internal.encoding.json.Json_t_field.T_field> = (null : stdgo.Slice<stdgo._internal.encoding.json.Json_t_field.T_field>);
        var _nameEscBuf:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode.go#L1087"
        while (((_next.length) > (0 : stdgo.GoInt) : Bool)) {
            {
                final __tmp__0 = _next;
                final __tmp__1 = (_current.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo._internal.encoding.json.Json_t_field.T_field>);
                _current = @:binopAssign __tmp__0;
                _next = @:binopAssign __tmp__1;
            };
            {
                final __tmp__0 = _nextCount;
                final __tmp__1 = ({
                    final x = new stdgo.GoMap.GoObjectMap<stdgo._internal.reflect.Reflect_type_.Type_, stdgo.GoInt>();
                    x.t = new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.reflect.Reflect_type_.Type_", [], stdgo._internal.internal.reflect.Reflect.GoType.interfaceType(false, []), false, { get : () -> null }));
                    x.__defaultValue__ = () -> (0 : stdgo.GoInt);
                    {};
                    cast x;
                } : stdgo.GoMap<stdgo._internal.reflect.Reflect_type_.Type_, stdgo.GoInt>);
                _count = @:binopAssign __tmp__0;
                _nextCount = @:binopAssign __tmp__1;
            };
            //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode.go#L1091"
            for (__4 => _f in _current) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode.go#L1092"
                if ((_visited[_f._typ] ?? false)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode.go#L1093"
                    continue;
                };
                _visited[_f._typ] = true;
                //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode.go#L1098"
                {
                    var _i = (0 : stdgo.GoInt);
                    while ((_i < _f._typ.numField() : Bool)) {
                        var _sf = (_f._typ.field(_i).__copy__() : stdgo._internal.reflect.Reflect_structfield.StructField);
//"file:///home/runner/.go/go1.21.3/src/encoding/json/encode.go#L1100"
                        if (_sf.anonymous) {
                            var _t = (_sf.type : stdgo._internal.reflect.Reflect_type_.Type_);
                            //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode.go#L1102"
                            if (_t.kind() == ((22u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                                _t = _t.elem();
                            };
                            //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode.go#L1105"
                            if ((!_sf.isExported() && (_t.kind() != (25u32 : stdgo._internal.reflect.Reflect_kind.Kind)) : Bool)) {
                                //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode.go#L1107"
                                {
                                    _i++;
                                    continue;
                                };
                            };
                        } else if (!_sf.isExported()) {
                            //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode.go#L1113"
                            {
                                _i++;
                                continue;
                            };
                        };
var _tag = (_sf.tag.get(("json" : stdgo.GoString)).__copy__() : stdgo.GoString);
//"file:///home/runner/.go/go1.21.3/src/encoding/json/encode.go#L1116"
                        if (_tag == (("-" : stdgo.GoString))) {
                            //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode.go#L1117"
                            {
                                _i++;
                                continue;
                            };
                        };
var __tmp__ = stdgo._internal.encoding.json.Json__parsetag._parseTag(_tag.__copy__()), _name:stdgo.GoString = __tmp__._0, _opts:stdgo._internal.encoding.json.Json_t_tagoptions.T_tagOptions = __tmp__._1;
//"file:///home/runner/.go/go1.21.3/src/encoding/json/encode.go#L1120"
                        if (!stdgo._internal.encoding.json.Json__isvalidtag._isValidTag(_name.__copy__())) {
                            _name = (stdgo.Go.str() : stdgo.GoString).__copy__();
                        };
var _index = (new stdgo.Slice<stdgo.GoInt>(((_f._index.length) + (1 : stdgo.GoInt) : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
//"file:///home/runner/.go/go1.21.3/src/encoding/json/encode.go#L1124"
                        _index.__copyTo__(_f._index);
_index[(_f._index.length : stdgo.GoInt)] = _i;
var _ft = (_sf.type : stdgo._internal.reflect.Reflect_type_.Type_);
//"file:///home/runner/.go/go1.21.3/src/encoding/json/encode.go#L1128"
                        if (((_ft.name() == (stdgo.Go.str() : stdgo.GoString)) && (_ft.kind() == (22u32 : stdgo._internal.reflect.Reflect_kind.Kind)) : Bool)) {
                            _ft = _ft.elem();
                        };
var _quoted = (false : Bool);
//"file:///home/runner/.go/go1.21.3/src/encoding/json/encode.go#L1135"
                        if (_opts.contains(("string" : stdgo.GoString))) {
                            //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode.go#L1136"
                            {
                                final __value__ = _ft.kind();
                                if (__value__ == ((1u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((2u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((3u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((4u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((5u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((6u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((7u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((8u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((9u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((10u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((11u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((12u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((13u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((14u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((24u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                                    _quoted = true;
                                };
                            };
                        };
//"file:///home/runner/.go/go1.21.3/src/encoding/json/encode.go#L1147"
                        if (((_name != ((stdgo.Go.str() : stdgo.GoString)) || !_sf.anonymous : Bool) || (_ft.kind() != (25u32 : stdgo._internal.reflect.Reflect_kind.Kind)) : Bool)) {
                            var _tagged = (_name != ((stdgo.Go.str() : stdgo.GoString)) : Bool);
                            //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode.go#L1149"
                            if (_name == ((stdgo.Go.str() : stdgo.GoString))) {
                                _name = _sf.name.__copy__();
                            };
                            var _field = ({ _name : _name.__copy__(), _tag : _tagged, _index : _index, _typ : _ft, _omitEmpty : _opts.contains(("omitempty" : stdgo.GoString)), _quoted : _quoted } : stdgo._internal.encoding.json.Json_t_field.T_field);
                            _field._nameBytes = (_field._name : stdgo.Slice<stdgo.GoUInt8>);
                            _nameEscBuf = stdgo._internal.encoding.json.Json__appendhtmlescape._appendHTMLEscape((_nameEscBuf.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), _field._nameBytes);
                            _field._nameEscHTML = ((("\"" : stdgo.GoString) + (_nameEscBuf : stdgo.GoString).__copy__() : stdgo.GoString) + ("\":" : stdgo.GoString).__copy__() : stdgo.GoString).__copy__();
                            _field._nameNonEsc = ((("\"" : stdgo.GoString) + _field._name.__copy__() : stdgo.GoString) + ("\":" : stdgo.GoString).__copy__() : stdgo.GoString).__copy__();
                            _fields = (_fields.__append__(_field.__copy__()) : stdgo.Slice<stdgo._internal.encoding.json.Json_t_field.T_field>);
                            //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode.go#L1168"
                            if (((_count[_f._typ] ?? (0 : stdgo.GoInt)) > (1 : stdgo.GoInt) : Bool)) {
                                _fields = (_fields.__append__(_fields[((_fields.length) - (1 : stdgo.GoInt) : stdgo.GoInt)]) : stdgo.Slice<stdgo._internal.encoding.json.Json_t_field.T_field>);
                            };
                            //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode.go#L1175"
                            {
                                _i++;
                                continue;
                            };
                        };
//"file:///home/runner/.go/go1.21.3/src/encoding/json/encode.go#L1179"
                        (@:typeIncDecStmt_escapeParens _nextCount[_ft] != null ? _nextCount[_ft]++ : (0 : stdgo.GoInt));
//"file:///home/runner/.go/go1.21.3/src/encoding/json/encode.go#L1180"
                        if ((_nextCount[_ft] ?? (0 : stdgo.GoInt)) == ((1 : stdgo.GoInt))) {
                            _next = (_next.__append__(({ _name : _ft.name().__copy__(), _index : _index, _typ : _ft } : stdgo._internal.encoding.json.Json_t_field.T_field)) : stdgo.Slice<stdgo._internal.encoding.json.Json_t_field.T_field>);
                        };
                        _i++;
                    };
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode.go#L1187"
        stdgo._internal.sort.Sort_slice.slice(stdgo.Go.toInterface(_fields), function(_i:stdgo.GoInt, _j:stdgo.GoInt):Bool {
            var _x = _fields;
            //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode.go#L1192"
            if (_x[(_i : stdgo.GoInt)]._name != (_x[(_j : stdgo.GoInt)]._name)) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode.go#L1193"
                return (_x[(_i : stdgo.GoInt)]._name < _x[(_j : stdgo.GoInt)]._name : Bool);
            };
            //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode.go#L1195"
            if ((_x[(_i : stdgo.GoInt)]._index.length) != ((_x[(_j : stdgo.GoInt)]._index.length))) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode.go#L1196"
                return ((_x[(_i : stdgo.GoInt)]._index.length) < (_x[(_j : stdgo.GoInt)]._index.length) : Bool);
            };
            //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode.go#L1198"
            if (_x[(_i : stdgo.GoInt)]._tag != (_x[(_j : stdgo.GoInt)]._tag)) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode.go#L1199"
                return _x[(_i : stdgo.GoInt)]._tag;
            };
            //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode.go#L1201"
            return (_x : stdgo._internal.encoding.json.Json_t_byindex.T_byIndex).less(_i, _j);
        });
        var _out = (_fields.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo._internal.encoding.json.Json_t_field.T_field>);
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode.go#L1211"
        {
            var __0 = (0 : stdgo.GoInt), __1 = (0 : stdgo.GoInt);
var _i = __1, _advance = __0;
            while ((_i < (_fields.length) : Bool)) {
                var _fi = (_fields[(_i : stdgo.GoInt)] : stdgo._internal.encoding.json.Json_t_field.T_field);
var _name = (_fi._name.__copy__() : stdgo.GoString);
//"file:///home/runner/.go/go1.21.3/src/encoding/json/encode.go#L1216"
                {
                    _advance = (1 : stdgo.GoInt);
                    while (((_i + _advance : stdgo.GoInt) < (_fields.length) : Bool)) {
                        var _fj = (_fields[(_i + _advance : stdgo.GoInt)] : stdgo._internal.encoding.json.Json_t_field.T_field);
//"file:///home/runner/.go/go1.21.3/src/encoding/json/encode.go#L1218"
                        if (_fj._name != (_name)) {
                            //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode.go#L1219"
                            break;
                        };
                        _advance++;
                    };
                };
//"file:///home/runner/.go/go1.21.3/src/encoding/json/encode.go#L1222"
                if (_advance == ((1 : stdgo.GoInt))) {
                    _out = (_out.__append__(_fi.__copy__()) : stdgo.Slice<stdgo._internal.encoding.json.Json_t_field.T_field>);
                    //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode.go#L1224"
                    {
                        _i = (_i + (_advance) : stdgo.GoInt);
                        continue;
                    };
                };
var __tmp__ = stdgo._internal.encoding.json.Json__dominantfield._dominantField((_fields.__slice__(_i, (_i + _advance : stdgo.GoInt)) : stdgo.Slice<stdgo._internal.encoding.json.Json_t_field.T_field>)), _dominant:stdgo._internal.encoding.json.Json_t_field.T_field = __tmp__._0, _ok:Bool = __tmp__._1;
//"file:///home/runner/.go/go1.21.3/src/encoding/json/encode.go#L1227"
                if (_ok) {
                    _out = (_out.__append__(_dominant.__copy__()) : stdgo.Slice<stdgo._internal.encoding.json.Json_t_field.T_field>);
                };
                _i = (_i + (_advance) : stdgo.GoInt);
            };
        };
        _fields = _out;
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode.go#L1233"
        stdgo._internal.sort.Sort_sort.sort(stdgo.Go.asInterface((_fields : stdgo._internal.encoding.json.Json_t_byindex.T_byIndex)));
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode.go#L1235"
        for (_i => _ in _fields) {
            var _f = (stdgo.Go.setRef(_fields[(_i : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.encoding.json.Json_t_field.T_field>);
            (@:checkr _f ?? throw "null pointer dereference")._encoder = stdgo._internal.encoding.json.Json__typeencoder._typeEncoder(stdgo._internal.encoding.json.Json__typebyindex._typeByIndex(_t, (@:checkr _f ?? throw "null pointer dereference")._index));
        };
        var _exactNameIndex = (({
            final x = new stdgo.GoMap.GoStringMap<stdgo.Ref<stdgo._internal.encoding.json.Json_t_field.T_field>>();
            x.__defaultValue__ = () -> (null : stdgo.Ref<stdgo._internal.encoding.json.Json_t_field.T_field>);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.encoding.json.Json_t_field.T_field>>) : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.encoding.json.Json_t_field.T_field>>);
        var _foldedNameIndex = (({
            final x = new stdgo.GoMap.GoStringMap<stdgo.Ref<stdgo._internal.encoding.json.Json_t_field.T_field>>();
            x.__defaultValue__ = () -> (null : stdgo.Ref<stdgo._internal.encoding.json.Json_t_field.T_field>);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.encoding.json.Json_t_field.T_field>>) : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.encoding.json.Json_t_field.T_field>>);
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode.go#L1241"
        for (_i => _field in _fields) {
            _exactNameIndex[_field._name] = (stdgo.Go.setRef(_fields[(_i : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.encoding.json.Json_t_field.T_field>);
            //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode.go#L1244"
            {
                var __tmp__ = (_foldedNameIndex != null && _foldedNameIndex.__exists__((stdgo._internal.encoding.json.Json__foldname._foldName(_field._nameBytes) : stdgo.GoString)?.__copy__()) ? { _0 : _foldedNameIndex[(stdgo._internal.encoding.json.Json__foldname._foldName(_field._nameBytes) : stdgo.GoString)?.__copy__()], _1 : true } : { _0 : (null : stdgo.Ref<stdgo._internal.encoding.json.Json_t_field.T_field>), _1 : false }), __4:stdgo.Ref<stdgo._internal.encoding.json.Json_t_field.T_field> = __tmp__._0, _ok:Bool = __tmp__._1;
                if (!_ok) {
                    _foldedNameIndex[(stdgo._internal.encoding.json.Json__foldname._foldName(_field._nameBytes) : stdgo.GoString)] = (stdgo.Go.setRef(_fields[(_i : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.encoding.json.Json_t_field.T_field>);
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode.go#L1248"
        return (new stdgo._internal.encoding.json.Json_t_structfields.T_structFields(_fields, _exactNameIndex, _foldedNameIndex) : stdgo._internal.encoding.json.Json_t_structfields.T_structFields);
    }
