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
stdgo/io/fs_test/Fs_test.hx:606: characters 77-105 : Type not found : stdgo.path.filepath.Filepath
stdgo/io/fs_test/Fs_test.hx:614: characters 33-61 : Type not found : stdgo.path.filepath.Filepath
stdgo/io/fs_test/Fs_test.hx:629: characters 28-56 : Type not found : stdgo.path.filepath.Filepath
stdgo/io_test/Io_test.hx:1800: characters 26-32 : Unknown identifier : reader
stdgo/io_test/Io_test.hx:1843: characters 26-32 : Unknown identifier : writer
stdgo/math/big/Big.hx:7635: characters 20-42 : Type not found : stdgo.encoding.gob.Gob
stdgo/math/big/Big.hx:7636: characters 20-42 : Type not found : stdgo.encoding.gob.Gob
stdgo/math/big/Big.hx:7689: characters 30-52 : Type not found : stdgo.encoding.gob.Gob
stdgo/math/big/Big.hx:7697: characters 30-52 : Type not found : stdgo.encoding.gob.Gob
stdgo/math/big/Big.hx:7703: characters 30-52 : Type not found : stdgo.encoding.gob.Gob
stdgo/math/big/Big.hx:7710: characters 30-52 : Type not found : stdgo.encoding.gob.Gob
stdgo/math/big/Big.hx:7730: characters 35-59 : Type not found : stdgo.encoding.json.Json
stdgo/math/big/Big.hx:7738: characters 42-66 : Type not found : stdgo.encoding.json.Json
stdgo/math/big/Big.hx:8517: characters 30-52 : Type not found : stdgo.encoding.hex.Hex
stdgo/math/big/Big.hx:8518: characters 30-52 : Type not found : stdgo.encoding.hex.Hex
stdgo/math/big/Big.hx:9781: characters 9-39 : Module stdgo.internal.testenv.Testenv does not define type Testenv
stdgo/math/big/Big.hx:9989: characters 20-42 : Type not found : stdgo.encoding.gob.Gob
stdgo/math/big/Big.hx:9990: characters 20-42 : Type not found : stdgo.encoding.gob.Gob
stdgo/math/big/Big.hx:10024: characters 20-42 : Type not found : stdgo.encoding.gob.Gob
stdgo/math/big/Big.hx:10025: characters 20-42 : Type not found : stdgo.encoding.gob.Gob
stdgo/math/big/Big.hx:10050: characters 31-55 : Type not found : stdgo.encoding.json.Json
stdgo/math/big/Big.hx:10057: characters 38-62 : Type not found : stdgo.encoding.json.Json
stdgo/math/big/Big.hx:10087: characters 31-54 : Type not found : stdgo.encoding.xml.Xml_
stdgo/math/big/Big.hx:10094: characters 38-61 : Type not found : stdgo.encoding.xml.Xml_
stdgo/math/big/Big.hx:10116: characters 31-61 : Module stdgo.internal.testenv.Testenv does not define type Testenv
stdgo/math/big/Big.hx:10117: characters 32-60 : Type not found : stdgo.path.filepath.Filepath
stdgo/math/big/Big.hx:10125: characters 20-38 : Type not found : stdgo.os.exec.Exec
stdgo/math/big/Big.hx:10133: characters 16-34 : Type not found : stdgo.os.exec.Exec
stdgo/math/big/Big.hx:10696: characters 12-16 : stdgo.Ref<stdgo.testing.F> has no field fuzz
stdgo/math/big/Big.hx:12687: characters 20-42 : Type not found : stdgo.encoding.gob.Gob
stdgo/math/big/Big.hx:12688: characters 20-42 : Type not found : stdgo.encoding.gob.Gob
stdgo/math/big/Big.hx:12719: characters 20-42 : Type not found : stdgo.encoding.gob.Gob
stdgo/math/big/Big.hx:12720: characters 20-42 : Type not found : stdgo.encoding.gob.Gob
stdgo/math/big/Big.hx:12744: characters 31-55 : Type not found : stdgo.encoding.json.Json
stdgo/math/big/Big.hx:12751: characters 38-62 : Type not found : stdgo.encoding.json.Json
stdgo/math/big/Big.hx:12768: characters 31-54 : Type not found : stdgo.encoding.xml.Xml_
stdgo/math/big/Big.hx:12775: characters 38-61 : Type not found : stdgo.encoding.xml.Xml_
stdgo/crypto/rand/Rand.hx:97: characters 23-49 : Type not found : stdgo.compress.flate.Flate
stdgo/crypto/rand/Rand.hx:97: characters 135-168 : Type not found : stdgo.compress.flate.Flate
stdgo/crypto/rand/Rand.hx:126: characters 9-48 : Type not found : stdgo.crypto.internal.randutil.Randutil
stdgo/crypto/sha1/Sha1.hx:2960: characters 13-32 : Type not found : stdgo.crypto.Crypto
stdgo/internal/Macro.macro.hx:35: define

```

