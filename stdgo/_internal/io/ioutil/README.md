# Module: `stdgo._internal.io.ioutil`

[(view library index)](../../../stdgo.md)


# Overview


# Index


- [Variables](<#variables>)

- [`function nopCloser(_r:stdgo._internal.io.Reader):stdgo._internal.io.ReadCloser`](<#function-nopcloser>)

- [`function readAll(_r:stdgo._internal.io.Reader):{
	_1:stdgo.Error;
	_0:stdgo.Slice<stdgo.GoUInt8>;
}`](<#function-readall>)

- [`function readDir(_dirname:stdgo.GoString):{
	_1:stdgo.Error;
	_0:stdgo.Slice<stdgo._internal.io.fs.FileInfo>;
}`](<#function-readdir>)

- [`function readFile(_filename:stdgo.GoString):{
	_1:stdgo.Error;
	_0:stdgo.Slice<stdgo.GoUInt8>;
}`](<#function-readfile>)

- [`function tempDir(_dir:stdgo.GoString, _pattern:stdgo.GoString):{
	_1:stdgo.Error;
	_0:stdgo.GoString;
}`](<#function-tempdir>)

- [`function tempFile(_dir:stdgo.GoString, _pattern:stdgo.GoString):{
	_1:stdgo.Error;
	_0:stdgo.Ref<stdgo._internal.os.File>;
}`](<#function-tempfile>)

- [`function writeFile(_filename:stdgo.GoString, _data:stdgo.Slice<stdgo.GoUInt8>, _perm:stdgo._internal.io.fs.FileMode):stdgo.Error`](<#function-writefile>)

# Variables


```haxe
import stdgo._internal.io.ioutil.Ioutil_writeFile
```


```haxe
var discard:stdgo._internal.io.Writer
```


# Functions


```haxe
import stdgo._internal.io.ioutil.Ioutil_writeFile
```


## function nopCloser


```haxe
function nopCloser(_r:stdgo._internal.io.Reader):stdgo._internal.io.ReadCloser
```


[\(view code\)](<./Ioutil_writeFile.hx#L2>)


## function readAll


```haxe
function readAll(_r:stdgo._internal.io.Reader):{
	_1:stdgo.Error;
	_0:stdgo.Slice<stdgo.GoUInt8>;
}
```


[\(view code\)](<./Ioutil_writeFile.hx#L2>)


## function readDir


```haxe
function readDir(_dirname:stdgo.GoString):{
	_1:stdgo.Error;
	_0:stdgo.Slice<stdgo._internal.io.fs.FileInfo>;
}
```


[\(view code\)](<./Ioutil_writeFile.hx#L2>)


## function readFile


```haxe
function readFile(_filename:stdgo.GoString):{
	_1:stdgo.Error;
	_0:stdgo.Slice<stdgo.GoUInt8>;
}
```


[\(view code\)](<./Ioutil_writeFile.hx#L2>)


## function tempDir


```haxe
function tempDir(_dir:stdgo.GoString, _pattern:stdgo.GoString):{
	_1:stdgo.Error;
	_0:stdgo.GoString;
}
```


[\(view code\)](<./Ioutil_writeFile.hx#L2>)


## function tempFile


```haxe
function tempFile(_dir:stdgo.GoString, _pattern:stdgo.GoString):{
	_1:stdgo.Error;
	_0:stdgo.Ref<stdgo._internal.os.File>;
}
```


[\(view code\)](<./Ioutil_writeFile.hx#L2>)


## function writeFile


```haxe
function writeFile(_filename:stdgo.GoString, _data:stdgo.Slice<stdgo.GoUInt8>, _perm:stdgo._internal.io.fs.FileMode):stdgo.Error
```


[\(view code\)](<./Ioutil_writeFile.hx#L2>)


