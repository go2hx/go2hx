# Module stdgo.io.fs has compilation errors, please do not use:
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
stdgo/internal/Macro.macro.hx:35: define

```

