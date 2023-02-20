# Module stdgo.io has compilation errors, please do not use:
```
stdgo/io/fs_test/Fs_test.hx:63: characters 38-302 : { sys : stdgo.AnyInterface, mode : stdgo.io.fs.FileMode, modTime : Null<stdgo.time.Time>, data : stdgo.Slice<stdgo.GoByte> } should be stdgo.testing.fstest.MapFS
stdgo/io/fs_test/Fs_test.hx:63: characters 38-302 : stdgo.testing.fstest.MapFS should be stdgo.Ref<stdgo.testing.fstest.MapFile>
stdgo/io/fs_test/Fs_test.hx:63: characters 304-570 : { sys : stdgo.AnyInterface, mode : stdgo.io.fs.FileMode, modTime : Null<stdgo.time.Time>, data : stdgo.Slice<stdgo.GoByte> } should be stdgo.testing.fstest.MapFS
stdgo/io/fs_test/Fs_test.hx:63: characters 304-570 : stdgo.testing.fstest.MapFS should be stdgo.Ref<stdgo.testing.fstest.MapFile>
stdgo/io/fs_test/Fs_test.hx:258: characters 9-11 : Unknown identifier : fs
stdgo/io/fs_test/Fs_test.hx:329: characters 59-84 : invalid type: TAbstract(stdgo.GoMap,[TAbstract(stdgo.GoString,[]),TType(stdgo.Ref,[TInst(<...>,[])])])
stdgo/io/fs_test/Fs_test.hx:329: characters 59-84 : ... For optional function argument 'globFS'
stdgo/io/fs_test/Fs_test.hx:329: characters 59-84 : ... For function argument '_fsys'
stdgo/io/fs_test/Fs_test.hx:332: characters 63-88 : invalid type: TAbstract(stdgo.GoMap,[TAbstract(stdgo.GoString,[]),TType(stdgo.Ref,[TInst(<...>,[])])])
stdgo/io/fs_test/Fs_test.hx:332: characters 63-88 : ... For optional function argument 'fs'
stdgo/io/fs_test/Fs_test.hx:332: characters 63-88 : ... For function argument '_fsys'
stdgo/io/fs_test/Fs_test.hx:349: characters 65-90 : invalid type: TAbstract(stdgo.GoMap,[TAbstract(stdgo.GoString,[]),TType(stdgo.Ref,[TInst(<...>,[])])])
stdgo/io/fs_test/Fs_test.hx:349: characters 65-90 : ... For optional function argument 'readDirFS'
stdgo/io/fs_test/Fs_test.hx:349: characters 65-90 : ... For function argument '_fsys'
stdgo/io/fs_test/Fs_test.hx:352: characters 66-91 : invalid type: TAbstract(stdgo.GoMap,[TAbstract(stdgo.GoString,[]),TType(stdgo.Ref,[TInst(<...>,[])])])
stdgo/io/fs_test/Fs_test.hx:352: characters 66-91 : ... For optional function argument 'fs'
stdgo/io/fs_test/Fs_test.hx:352: characters 66-91 : ... For function argument '_fsys'
stdgo/io/fs_test/Fs_test.hx:357: characters 27-52 : invalid type: TAbstract(stdgo.GoMap,[TAbstract(stdgo.GoString,[]),TType(stdgo.Ref,[TInst(<...>,[])])])
stdgo/io/fs_test/Fs_test.hx:372: characters 42-304 : { sys : stdgo.AnyInterface, mode : stdgo.io.fs.FileMode, modTime : Null<stdgo.time.Time>, data : stdgo.Slice<stdgo.GoByte> } should be stdgo.testing.fstest.MapFS
stdgo/io/fs_test/Fs_test.hx:372: characters 42-304 : stdgo.testing.fstest.MapFS should be stdgo.Ref<stdgo.testing.fstest.MapFile>
stdgo/io/fs_test/Fs_test.hx:372: characters 306-555 : { sys : stdgo.AnyInterface, mode : stdgo.io.fs.FileMode, modTime : Null<stdgo.time.Time>, data : stdgo.Slice<stdgo.GoUInt8> } should be stdgo.testing.fstest.MapFS
stdgo/io/fs_test/Fs_test.hx:372: characters 306-555 : stdgo.testing.fstest.MapFS should be stdgo.Ref<stdgo.testing.fstest.MapFile>
stdgo/io/fs_test/Fs_test.hx:409: characters 67-92 : invalid type: TAbstract(stdgo.GoMap,[TAbstract(stdgo.GoString,[]),TType(stdgo.Ref,[TInst(<...>,[])])])
stdgo/io/fs_test/Fs_test.hx:409: characters 67-92 : ... For optional function argument 'readFileFS'
stdgo/io/fs_test/Fs_test.hx:409: characters 67-92 : ... For function argument '_fsys'
stdgo/io/fs_test/Fs_test.hx:414: characters 67-92 : invalid type: TAbstract(stdgo.GoMap,[TAbstract(stdgo.GoString,[]),TType(stdgo.Ref,[TInst(<...>,[])])])
stdgo/io/fs_test/Fs_test.hx:414: characters 67-92 : ... For optional function argument 'fs'
stdgo/io/fs_test/Fs_test.hx:414: characters 67-92 : ... For function argument '_fsys'
stdgo/io/fs_test/Fs_test.hx:421: characters 27-52 : invalid type: TAbstract(stdgo.GoMap,[TAbstract(stdgo.GoString,[]),TType(stdgo.Ref,[TInst(<...>,[])])])
stdgo/io/fs_test/Fs_test.hx:445: characters 59-84 : invalid type: TAbstract(stdgo.GoMap,[TAbstract(stdgo.GoString,[]),TType(stdgo.Ref,[TInst(<...>,[])])])
stdgo/io/fs_test/Fs_test.hx:445: characters 59-84 : ... For optional function argument 'statFS'
stdgo/io/fs_test/Fs_test.hx:445: characters 59-84 : ... For function argument '_fsys'
stdgo/io/fs_test/Fs_test.hx:448: characters 63-88 : invalid type: TAbstract(stdgo.GoMap,[TAbstract(stdgo.GoString,[]),TType(stdgo.Ref,[TInst(<...>,[])])])
stdgo/io/fs_test/Fs_test.hx:448: characters 63-88 : ... For optional function argument 'fs'
stdgo/io/fs_test/Fs_test.hx:448: characters 63-88 : ... For function argument '_fsys'
stdgo/io/fs_test/Fs_test.hx:474: characters 57-82 : invalid type: TAbstract(stdgo.GoMap,[TAbstract(stdgo.GoString,[]),TType(stdgo.Ref,[TInst(<...>,[])])])
stdgo/io/fs_test/Fs_test.hx:474: characters 57-82 : ... For optional function argument 'subFS'
stdgo/io/fs_test/Fs_test.hx:474: characters 57-82 : ... For function argument '_fsys'
stdgo/io/fs_test/Fs_test.hx:477: characters 62-87 : invalid type: TAbstract(stdgo.GoMap,[TAbstract(stdgo.GoString,[]),TType(stdgo.Ref,[TInst(<...>,[])])])
stdgo/io/fs_test/Fs_test.hx:477: characters 62-87 : ... For optional function argument 'fs'
stdgo/io/fs_test/Fs_test.hx:477: characters 62-87 : ... For function argument '_fsys'
stdgo/io/fs_test/Fs_test.hx:609: characters 77-105 : Type not found : stdgo.path.filepath.Filepath
stdgo/io/fs_test/Fs_test.hx:617: characters 33-61 : Type not found : stdgo.path.filepath.Filepath
stdgo/io/fs_test/Fs_test.hx:632: characters 28-56 : Type not found : stdgo.path.filepath.Filepath
stdgo/io_test/Io_test.hx:1815: characters 26-32 : Unknown identifier : reader
stdgo/io_test/Io_test.hx:1858: characters 26-32 : Unknown identifier : writer
stdgo/math/big/Big.hx:7641: characters 20-42 : Type not found : stdgo.encoding.gob.Gob
stdgo/math/big/Big.hx:7642: characters 20-42 : Type not found : stdgo.encoding.gob.Gob
stdgo/math/big/Big.hx:7695: characters 30-52 : Type not found : stdgo.encoding.gob.Gob
stdgo/math/big/Big.hx:7703: characters 30-52 : Type not found : stdgo.encoding.gob.Gob
stdgo/math/big/Big.hx:7709: characters 30-52 : Type not found : stdgo.encoding.gob.Gob
stdgo/math/big/Big.hx:7716: characters 30-52 : Type not found : stdgo.encoding.gob.Gob
stdgo/math/big/Big.hx:7736: characters 35-59 : Type not found : stdgo.encoding.json.Json
stdgo/math/big/Big.hx:7744: characters 42-66 : Type not found : stdgo.encoding.json.Json
stdgo/math/big/Big.hx:8523: characters 30-52 : Type not found : stdgo.encoding.hex.Hex
stdgo/math/big/Big.hx:8524: characters 30-52 : Type not found : stdgo.encoding.hex.Hex
stdgo/math/big/Big.hx:9793: characters 9-39 : Module stdgo.internal.testenv.Testenv does not define type Testenv
stdgo/math/big/Big.hx:10001: characters 20-42 : Type not found : stdgo.encoding.gob.Gob
stdgo/math/big/Big.hx:10002: characters 20-42 : Type not found : stdgo.encoding.gob.Gob
stdgo/math/big/Big.hx:10036: characters 20-42 : Type not found : stdgo.encoding.gob.Gob
stdgo/math/big/Big.hx:10037: characters 20-42 : Type not found : stdgo.encoding.gob.Gob
stdgo/math/big/Big.hx:10062: characters 31-55 : Type not found : stdgo.encoding.json.Json
stdgo/math/big/Big.hx:10069: characters 38-62 : Type not found : stdgo.encoding.json.Json
stdgo/math/big/Big.hx:10099: characters 31-54 : Type not found : stdgo.encoding.xml.Xml_
stdgo/math/big/Big.hx:10106: characters 38-61 : Type not found : stdgo.encoding.xml.Xml_
stdgo/math/big/Big.hx:10128: characters 31-61 : Module stdgo.internal.testenv.Testenv does not define type Testenv
stdgo/math/big/Big.hx:10129: characters 32-60 : Type not found : stdgo.path.filepath.Filepath
stdgo/math/big/Big.hx:10137: characters 20-38 : Type not found : stdgo.os.exec.Exec
stdgo/math/big/Big.hx:10145: characters 16-34 : Type not found : stdgo.os.exec.Exec
stdgo/math/big/Big.hx:10711: characters 12-16 : stdgo.Ref<stdgo.testing.F> has no field fuzz
stdgo/math/big/Big.hx:12711: characters 20-42 : Type not found : stdgo.encoding.gob.Gob
stdgo/math/big/Big.hx:12712: characters 20-42 : Type not found : stdgo.encoding.gob.Gob
stdgo/math/big/Big.hx:12743: characters 20-42 : Type not found : stdgo.encoding.gob.Gob
stdgo/math/big/Big.hx:12744: characters 20-42 : Type not found : stdgo.encoding.gob.Gob
stdgo/math/big/Big.hx:12768: characters 31-55 : Type not found : stdgo.encoding.json.Json
stdgo/math/big/Big.hx:12775: characters 38-62 : Type not found : stdgo.encoding.json.Json
stdgo/math/big/Big.hx:12792: characters 31-54 : Type not found : stdgo.encoding.xml.Xml_
stdgo/math/big/Big.hx:12799: characters 38-61 : Type not found : stdgo.encoding.xml.Xml_
stdgo/crypto/rand/Rand.hx:97: characters 23-49 : Type not found : stdgo.compress.flate.Flate
stdgo/crypto/rand/Rand.hx:97: characters 135-168 : Type not found : stdgo.compress.flate.Flate
stdgo/crypto/rand/Rand.hx:126: characters 9-48 : Type not found : stdgo.crypto.internal.randutil.Randutil
stdgo/crypto/sha1/Sha1.hx:2963: characters 13-32 : Type not found : stdgo.crypto.Crypto
stdgo/internal/Macro.macro.hx:35: define

```

