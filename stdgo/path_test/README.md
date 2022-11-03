# Module: `stdgo.path`

[(view library index)](../stdgo.md)


# Overview


 


# Index


- [Variables](<#variables>)

- [`function exampleBase():Void`](<#function-examplebase>)

- [`function exampleClean():Void`](<#function-exampleclean>)

- [`function exampleDir():Void`](<#function-exampledir>)

- [`function exampleExt():Void`](<#function-exampleext>)

- [`function exampleIsAbs():Void`](<#function-exampleisabs>)

- [`function exampleJoin():Void`](<#function-examplejoin>)

- [`function exampleMatch():Void`](<#function-examplematch>)

- [`function exampleSplit():Void`](<#function-examplesplit>)

- [`function testBase(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testbase>)

- [`function testClean(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testclean>)

- [`function testCleanMallocs(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testcleanmallocs>)

- [`function testDir(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testdir>)

- [`function testExt(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testext>)

- [`function testIsAbs(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testisabs>)

- [`function testJoin(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testjoin>)

- [`function testMatch(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testmatch>)

- [`function testSplit(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testsplit>)

- [`function main():Void`](<#function-main>)

- [class ExtTest](<#class-exttest>)

  - [`function new(?_path:stdgo.GoString, ?_ext:stdgo.GoString):Void`](<#exttest-function-new>)

- [class IsAbsTest](<#class-isabstest>)

  - [`function new(?_path:stdgo.GoString, ?_isAbs:Bool):Void`](<#isabstest-function-new>)

- [class JoinTest](<#class-jointest>)

  - [`function new(?_elem:stdgo.Slice<stdgo.GoString>, ?_path:stdgo.GoString):Void`](<#jointest-function-new>)

- [class MatchTest](<#class-matchtest>)

  - [`function new(?_pattern:stdgo.GoString, ?_s:stdgo.GoString, ?_match:Bool, ?_err:Null<stdgo.Error>):Void`](<#matchtest-function-new>)

- [class PathTest](<#class-pathtest>)

  - [`function new(?_path:stdgo.GoString, ?_result:stdgo.GoString):Void`](<#pathtest-function-new>)

- [class SplitTest](<#class-splittest>)

  - [`function new(?_path:stdgo.GoString, ?_dir:stdgo.GoString, ?_file:stdgo.GoString):Void`](<#splittest-function-new>)

# Variables


```haxe
import stdgo.path_test.Path
```


```haxe
var _:Bool
```


# Functions


```haxe
import stdgo.path_test.Path
```


## function exampleBase


```haxe
function exampleBase():Void
```


 


[\(view code\)](<./Path.hx#L294>)


## function exampleClean


```haxe
function exampleClean():Void
```


 


[\(view code\)](<./Path.hx#L300>)


## function exampleDir


```haxe
function exampleDir():Void
```


 


[\(view code\)](<./Path.hx#L308>)


## function exampleExt


```haxe
function exampleExt():Void
```


 


[\(view code\)](<./Path.hx#L317>)


## function exampleIsAbs


```haxe
function exampleIsAbs():Void
```


 


[\(view code\)](<./Path.hx#L323>)


## function exampleJoin


```haxe
function exampleJoin():Void
```


 


[\(view code\)](<./Path.hx#L327>)


## function exampleMatch


```haxe
function exampleMatch():Void
```


 


[\(view code\)](<./Path.hx#L337>)


## function exampleSplit


```haxe
function exampleSplit():Void
```


 


[\(view code\)](<./Path.hx#L352>)


## function testBase


```haxe
function testBase(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Path.hx#L445>)


## function testClean


```haxe
function testClean(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Path.hx#L374>)


## function testCleanMallocs


```haxe
function testCleanMallocs(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Path.hx#L391>)


## function testDir


```haxe
function testDir(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Path.hx#L456>)


## function testExt


```haxe
function testExt(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Path.hx#L434>)


## function testIsAbs


```haxe
function testIsAbs(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Path.hx#L467>)


## function testJoin


```haxe
function testJoin(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Path.hx#L423>)


## function testMatch


```haxe
function testMatch(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Path.hx#L362>)


## function testSplit


```haxe
function testSplit(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Path.hx#L409>)


## function main


```haxe
function main():Void
```


 


[\(view code\)](<./Path.hx#L51>)


# Classes


```haxe
import stdgo.path_test.*
```


## class ExtTest


 


```haxe
var _ext:stdgo.GoString
```


```haxe
var _path:stdgo.GoString
```


### ExtTest function new


```haxe
function new(?_path:stdgo.GoString, ?_ext:stdgo.GoString):Void
```


 


[\(view code\)](<./Path_test.hx#L266>)


## class IsAbsTest


 


```haxe
var _isAbs:Bool
```


```haxe
var _path:stdgo.GoString
```


### IsAbsTest function new


```haxe
function new(?_path:stdgo.GoString, ?_isAbs:Bool):Void
```


 


[\(view code\)](<./Path_test.hx#L282>)


## class JoinTest


 


```haxe
var _elem:stdgo.Slice<stdgo.GoString>
```


```haxe
var _path:stdgo.GoString
```


### JoinTest function new


```haxe
function new(?_elem:stdgo.Slice<stdgo.GoString>, ?_path:stdgo.GoString):Void
```


 


[\(view code\)](<./Path_test.hx#L250>)


## class MatchTest


 


```haxe
var _err:stdgo.Error
```


```haxe
var _match:Bool
```


```haxe
var _pattern:stdgo.GoString
```


```haxe
var _s:stdgo.GoString
```


### MatchTest function new


```haxe
function new(?_pattern:stdgo.GoString, ?_s:stdgo.GoString, ?_match:Bool, ?_err:Null<stdgo.Error>):Void
```


 


[\(view code\)](<./Path_test.hx#L195>)


## class PathTest


 


```haxe
var _path:stdgo.GoString
```


```haxe
var _result:stdgo.GoString
```


### PathTest function new


```haxe
function new(?_path:stdgo.GoString, ?_result:stdgo.GoString):Void
```


 


[\(view code\)](<./Path_test.hx#L215>)


## class SplitTest


 


```haxe
var _dir:stdgo.GoString
```


```haxe
var _file:stdgo.GoString
```


```haxe
var _path:stdgo.GoString
```


### SplitTest function new


```haxe
function new(?_path:stdgo.GoString, ?_dir:stdgo.GoString, ?_file:stdgo.GoString):Void
```


 


[\(view code\)](<./Path_test.hx#L232>)


