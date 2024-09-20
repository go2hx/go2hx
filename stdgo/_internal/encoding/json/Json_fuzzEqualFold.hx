package stdgo._internal.encoding.json;
function fuzzEqualFold(_f:stdgo.Ref<stdgo._internal.testing.Testing_F.F>):Void {
        for (__4 => _ss in (new stdgo.Slice<stdgo.GoArray<stdgo.GoString>>(25, 25, ...[
(new stdgo.GoArray<stdgo.GoString>(2, 2, ...[stdgo.Go.str()?.__copy__(), stdgo.Go.str()?.__copy__()]).__setString__() : stdgo.GoArray<stdgo.GoString>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoString>(2, 2, ...[("123abc" : stdgo.GoString), ("123ABC" : stdgo.GoString)]).__setString__() : stdgo.GoArray<stdgo.GoString>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoString>(2, 2, ...[("αβδ" : stdgo.GoString), ("ΑΒΔ" : stdgo.GoString)]).__setString__() : stdgo.GoArray<stdgo.GoString>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoString>(2, 2, ...[("abc" : stdgo.GoString), ("xyz" : stdgo.GoString)]).__setString__() : stdgo.GoArray<stdgo.GoString>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoString>(2, 2, ...[("abc" : stdgo.GoString), ("XYZ" : stdgo.GoString)]).__setString__() : stdgo.GoArray<stdgo.GoString>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoString>(2, 2, ...[("1" : stdgo.GoString), ("2" : stdgo.GoString)]).__setString__() : stdgo.GoArray<stdgo.GoString>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoString>(2, 2, ...[("hello, world!" : stdgo.GoString), ("hello, world!" : stdgo.GoString)]).__setString__() : stdgo.GoArray<stdgo.GoString>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoString>(2, 2, ...[("hello, world!" : stdgo.GoString), ("Hello, World!" : stdgo.GoString)]).__setString__() : stdgo.GoArray<stdgo.GoString>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoString>(2, 2, ...[("hello, world!" : stdgo.GoString), ("HELLO, WORLD!" : stdgo.GoString)]).__setString__() : stdgo.GoArray<stdgo.GoString>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoString>(2, 2, ...[("hello, world!" : stdgo.GoString), ("jello, world!" : stdgo.GoString)]).__setString__() : stdgo.GoArray<stdgo.GoString>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoString>(2, 2, ...[("γειά, κόσμε!" : stdgo.GoString), ("γειά, κόσμε!" : stdgo.GoString)]).__setString__() : stdgo.GoArray<stdgo.GoString>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoString>(2, 2, ...[("γειά, κόσμε!" : stdgo.GoString), ("Γειά, Κόσμε!" : stdgo.GoString)]).__setString__() : stdgo.GoArray<stdgo.GoString>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoString>(2, 2, ...[("γειά, κόσμε!" : stdgo.GoString), ("ΓΕΙΆ, ΚΌΣΜΕ!" : stdgo.GoString)]).__setString__() : stdgo.GoArray<stdgo.GoString>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoString>(2, 2, ...[("γειά, κόσμε!" : stdgo.GoString), ("ΛΕΙΆ, ΚΌΣΜΕ!" : stdgo.GoString)]).__setString__() : stdgo.GoArray<stdgo.GoString>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoString>(2, 2, ...[("AESKey" : stdgo.GoString), ("aesKey" : stdgo.GoString)]).__setString__() : stdgo.GoArray<stdgo.GoString>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoString>(2, 2, ...[("AESKEY" : stdgo.GoString), ("aes_key" : stdgo.GoString)]).__setString__() : stdgo.GoArray<stdgo.GoString>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoString>(2, 2, ...[("aes_key" : stdgo.GoString), ("AES_KEY" : stdgo.GoString)]).__setString__() : stdgo.GoArray<stdgo.GoString>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoString>(2, 2, ...[("AES_KEY" : stdgo.GoString), ("aes-key" : stdgo.GoString)]).__setString__() : stdgo.GoArray<stdgo.GoString>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoString>(2, 2, ...[("aes-key" : stdgo.GoString), ("AES-KEY" : stdgo.GoString)]).__setString__() : stdgo.GoArray<stdgo.GoString>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoString>(2, 2, ...[("AES-KEY" : stdgo.GoString), ("aesKey" : stdgo.GoString)]).__setString__() : stdgo.GoArray<stdgo.GoString>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoString>(2, 2, ...[("aesKey" : stdgo.GoString), ("AesKey" : stdgo.GoString)]).__setString__() : stdgo.GoArray<stdgo.GoString>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoString>(2, 2, ...[("AesKey" : stdgo.GoString), ("AESKey" : stdgo.GoString)]).__setString__() : stdgo.GoArray<stdgo.GoString>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoString>(2, 2, ...[("AESKey" : stdgo.GoString), ("aeskey" : stdgo.GoString)]).__setString__() : stdgo.GoArray<stdgo.GoString>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoString>(2, 2, ...[("DESKey" : stdgo.GoString), ("aeskey" : stdgo.GoString)]).__setString__() : stdgo.GoArray<stdgo.GoString>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoString>(2, 2, ...[("AES Key" : stdgo.GoString), ("aeskey" : stdgo.GoString)]).__setString__() : stdgo.GoArray<stdgo.GoString>)?.__copy__()].concat([for (i in 25 ... (25 > 25 ? 25 : 25 : stdgo.GoInt).toBasic()) new stdgo.GoArray<stdgo.GoString>(2, 2, ...[for (i in 0 ... 2) ("" : stdgo.GoString)])])) : stdgo.Slice<stdgo.GoArray<stdgo.GoString>>)) {
            _f.add(stdgo.Go.toInterface((_ss[(0 : stdgo.GoInt)] : stdgo.Slice<stdgo.GoUInt8>)), stdgo.Go.toInterface((_ss[(1 : stdgo.GoInt)] : stdgo.Slice<stdgo.GoUInt8>)));
        };
        var _equalFold = function(_x:stdgo.Slice<stdgo.GoUInt8>, _y:stdgo.Slice<stdgo.GoUInt8>):Bool {
            return (stdgo._internal.encoding.json.Json__foldName._foldName(_x) : stdgo.GoString) == ((stdgo._internal.encoding.json.Json__foldName._foldName(_y) : stdgo.GoString));
        };
        _f.fuzz(stdgo.Go.toInterface(function(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>, _x:stdgo.Slice<stdgo.GoUInt8>, _y:stdgo.Slice<stdgo.GoUInt8>):Void {
            var _got = (_equalFold(_x, _y) : Bool);
            var _want = (stdgo._internal.bytes.Bytes_equalFold.equalFold(_x, _y) : Bool);
            if (_got != (_want)) {
                _t.errorf(("equalFold(%q, %q) = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(_y), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
            };
        }));
    }
